use std::process::exit;

use crate::optimizer::{ExtraOperators, TokenOptimized};
use crate::{BFExecutor, BFState};
use crate::{Read, Write};

use crate::optimizer::*;
use crate::parser::parse;

pub struct OptimizedInterpreter<S> {
    state: S,
    program: Vec<TokenOptimized>,
}

impl<S: BFState<Cell = u8>> BFExecutor for OptimizedInterpreter<S> {
    fn load(program: &str) -> Self {
        let program = parse(program.chars());
        let program = collapse(program);
        let mut program = pattern_match(program);
        link(&mut program);

        Self {
            state: BFState::new(),
            program,
        }
    }

    fn run(&mut self, mut input: impl Read, mut output: impl Write) {
        self.state = BFState::new();

        let mut index = 0;
        while let Some(&token) = self.program.get(index) {
            use TokenOptimized::*;
            match token {
                Move(offset) => self.state.move_pointer(offset),
                Update(offset) => {
                    let value = *self.state.cell();
                    *self.state.cell_mut() = value.wrapping_add(offset);
                }
                Output => {
                    output
                        .write(self.state.cell_slice())
                        .map_err(|_| exit(0))
                        .unwrap();
                }
                Input => {
                    input
                        .read(self.state.cell_mut_slice())
                        .map_err(|_| exit(0))
                        .unwrap();
                }
                LinkedLoopStart(end) => {
                    if *self.state.cell() == 0 {
                        index = end as usize;
                    }
                }
                LinkedLoopEnd(start) => {
                    if *self.state.cell() != 0 {
                        index = start as usize;
                    }
                }
                Extra(ExtraOperators::Set(n)) => {
                    *self.state.cell_mut() = n;
                }
                Extra(ExtraOperators::InfiniteLoop) => {
                    panic!("ERROR: reached infinite loop!");
                }
                Extra(ExtraOperators::InfiniteLoopUnless(value)) => {
                    if *self.state.cell() != value {
                        panic!("ERROR: reached infinte loop!");
                    }
                }
                Extra(ExtraOperators::Debug) => {
                    self.state.print_debug();
                }
                _ => {
                    panic!("ERROR: shouldn't happen!");
                }
            }

            index += 1;
        }
    }
}
