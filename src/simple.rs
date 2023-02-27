use std::process::exit;

use crate::{BFExecutor, BFState};
use crate::{Read, Write};

pub struct SimpleInterpreter<S> {
    state: S,
    program: Vec<char>,
}

impl<S: BFState<Cell = u8>> SimpleInterpreter<S> {
    // type parameter D tells if we should go forward or backward
    fn matching_bracket<const D: bool>(&self, mut index: usize) -> Option<usize> {
        let mut bracket_count = if D { 1 } else { -1 };

        while bracket_count != 0 {
            if D {
                index += 1;
            } else {
                index -= 1;
            }

            match self.program.get(index).copied() {
                Some('[') => bracket_count += 1,
                Some(']') => bracket_count -= 1,
                None => return None,
                _ => (),
            }
        }

        Some(index)
    }
}

impl<S: BFState<Cell = u8>> BFExecutor for SimpleInterpreter<S> {
    fn load(program: &str) -> Self {
        Self {
            state: BFState::new(),
            program: program.chars().into_iter().collect(),
        }
    }

    fn run(&mut self, mut input: impl Read, mut output: impl Write) {
        let mut index = 0_usize;
        while let Some(token) = self.program.get(index) {
            match token {
                '>' => self.state.move_pointer(1),
                '<' => self.state.move_pointer(-1),
                '+' => *self.state.cell_mut() += 1,
                '-' => *self.state.cell_mut() -= 1,
                '.' => {
                    output
                        .write(&[*self.state.cell()])
                        .map_err(|_| exit(0))
                        .unwrap();
                }
                ',' => {
                    let mut data = [0];
                    input.read(&mut data).map_err(|_| exit(0)).unwrap();
                    *self.state.cell_mut() = data[0];
                }
                '[' => {
                    if *self.state.cell() == 0 {
                        index = self
                            .matching_bracket::<true>(index)
                            .expect("ERROR: no matching `]`!");
                    }
                }
                ']' => {
                    if *self.state.cell() != 0 {
                        index = self
                            .matching_bracket::<false>(index)
                            .expect("ERROR: no matching `[`!");
                    }
                }
                _ => (),
            }

            index += 1;
        }
    }
}
