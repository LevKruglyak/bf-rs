use crate::parser::TokenPrimitive;

#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub enum ExtraOperators {
    None,
    Set(u8),
    InfiniteLoop,
    InfiniteLoopUnless(u8),
    Debug,
}

#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub enum TokenOptimized {
    Move(i32),
    Update(u8),
    Input,
    Output,
    LoopStart,
    LoopEnd,
    LinkedLoopStart(u32),
    LinkedLoopEnd(u32),
    Extra(ExtraOperators),
}

pub fn collapse(tokens: Vec<TokenPrimitive>) -> Vec<TokenOptimized> {
    use TokenPrimitive::*;

    let mut collapsed_tokens = Vec::new();

    let mut index = 0;

    while let Some(token) = tokens.get(index) {
        match token {
            Move(offset) => {
                let mut result = *offset as i32;
                while let Some(Move(delta)) = tokens.get(index + 1) {
                    result += *delta as i32;
                    index += 1;
                }

                if result != 0 {
                    collapsed_tokens.push(TokenOptimized::Move(result));
                }
            }
            Update(offset) => {
                let mut result = 0_u8.wrapping_add_signed(*offset);
                while let Some(Update(delta)) = tokens.get(index + 1) {
                    result = result.wrapping_add_signed(*delta);
                    index += 1;
                }

                if result != 0 {
                    collapsed_tokens.push(TokenOptimized::Update(result));
                }
            }
            Input => collapsed_tokens.push(TokenOptimized::Input),
            Output => collapsed_tokens.push(TokenOptimized::Output),
            LoopStart => collapsed_tokens.push(TokenOptimized::LoopStart),
            LoopEnd => collapsed_tokens.push(TokenOptimized::LoopEnd),
            Debug => collapsed_tokens.push(TokenOptimized::Extra(ExtraOperators::Debug)),
        }

        index += 1;
    }

    collapsed_tokens
}

pub fn link(tokens: &mut Vec<TokenOptimized>) {
    use TokenOptimized::*;

    let mut loop_stack = vec![];

    let mut index = 0;
    while let Some(&token) = tokens.get(index) {
        match token {
            LoopStart => {
                loop_stack.push(index);
            }
            LoopEnd => {
                let start_index = loop_stack.pop().expect("ERROR: no matching `[`!");

                tokens[start_index] = LinkedLoopStart(index as u32);
                tokens[index] = LinkedLoopEnd(start_index as u32);
            }
            _ => (),
        }

        index += 1;
    }

    if !loop_stack.is_empty() {
        panic!("ERROR: no matching `]`!");
    }
}

fn clear_pattern(tokens: &Vec<TokenOptimized>, index: &mut usize) -> Option<TokenOptimized> {
    use TokenOptimized::*;

    if let Some(&[LoopStart, Update(n), LoopEnd]) = tokens.get(*index..*index + 3) {
        *index += 2;

        if n % 2 == 0 {
            return Some(Extra(ExtraOperators::InfiniteLoopUnless(0)));
        } else {
            return Some(Extra(ExtraOperators::Set(0)));
        }
    }

    None
}

pub fn pattern_match(tokens: Vec<TokenOptimized>) -> Vec<TokenOptimized> {
    let mut pattern_matched = Vec::new();

    let mut index = 0;
    while let Some(&token) = tokens.get(index) {
        if let Some(clear_token) = clear_pattern(&tokens, &mut index) {
            pattern_matched.push(clear_token);
        } else {
            pattern_matched.push(token);
        }

        index += 1;
    }

    pattern_matched
}

#[cfg(test)]
mod tests {
    use crate::optimizer::pattern_match;

    use super::{clear_pattern, ExtraOperators::*, TokenOptimized::*};

    #[test]
    fn test_clear_pattern() {
        let tokens = vec![LoopStart, Update(255), LoopEnd];
        let mut index = 0;
        assert_eq!(clear_pattern(&tokens, &mut index), Some(Extra(Set(0))));

        let tokens = vec![LoopStart, Update(2), LoopEnd];
        let mut index = 0;
        assert_eq!(
            clear_pattern(&tokens, &mut index),
            Some(Extra(InfiniteLoopUnless(0)))
        );

        let tokens = vec![Move(1), LoopStart, Update(255), LoopEnd, Move(1)];
        assert_eq!(pattern_match(tokens), vec![Move(1), Extra(Set(0)), Move(1)]);
    }
}
