use std::str::Chars;

#[derive(Debug, PartialEq, Eq)]
pub enum TokenPrimitive {
    Move(i8),
    Update(i8),
    Input,
    Output,
    LoopStart,
    LoopEnd,
    Debug,
}

pub fn parse(chars: Chars) -> Vec<TokenPrimitive> {
    use TokenPrimitive::*;

    chars
        .filter_map(|c| match c {
            '>' => Some(Move(1)),
            '<' => Some(Move(-1)),
            '+' => Some(Update(1)),
            '-' => Some(Update(-1)),
            '.' => Some(Output),
            ',' => Some(Input),
            '[' => Some(LoopStart),
            ']' => Some(LoopEnd),
            '?' => Some(Debug),
            _ => None,
        })
        .collect()
}
