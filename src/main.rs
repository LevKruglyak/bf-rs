use std::{
    fs::File,
    io::{stdin, stdout, Read, Write},
    time::Instant,
};

pub trait BFCommand<S: BFState> {
    fn execute(&self, state: &mut S, index: &mut usize, input: impl Read, output: impl Write);
}

pub trait BFState {
    type Cell;

    fn new() -> Self;

    fn move_pointer(&mut self, offset: i32);

    fn cell(&self) -> &Self::Cell;

    fn cell_mut(&mut self) -> &mut Self::Cell;

    fn cell_slice(&self) -> &[Self::Cell];

    fn cell_mut_slice(&mut self) -> &mut [Self::Cell];

    fn print_debug(&self);
}

pub trait BFExecutor {
    fn load(program: &str) -> Self;

    fn run(&mut self, input: impl Read, output: impl Write);

    fn run_stdio(&mut self) {
        self.run(stdin(), stdout());
    }
}

pub mod executor;
pub mod optimizer;
pub mod parser;
pub mod simple;
pub mod state;

// Brainfuck language specification
// --------------------------------
// >	Move the pointer to the right
// <	Move the pointer to the left
// +	Increment the memory cell at the pointer
// -	Decrement the memory cell at the pointer
// .	Output the character signified by the cell at the pointer
// ,	Input a character and store it in the cell at the pointer
// [	Jump past the matching ] if the cell at the pointer is 0
// ]	Jump back to the matching [ if the cell at the pointer is nonzero

#[derive(Default)]
enum Interpreters {
    Simple,
    #[default]
    Optimized,
}

struct Config {
    a: u32,
    b: i32,
    c: bool,
}

impl Default for Config {
    fn default() -> Self {
        Self {
            a: 10,
            b: 10,
            c: false,
        }
    }
}

fn main() -> Result<(), Box<dyn std::error::Error>> {
    let args: Vec<String> = std::env::args().collect();

    let mut contents = String::default();
    File::open(args.get(1).expect("missing filename!"))?.read_to_string(&mut contents)?;

    use Interpreters::*;
    let interpreter = if let Some(interpreter) = args.get(2) {
        match interpreter.as_str() {
            "-O0" => Simple,
            "-O1" => Optimized,
            _ => panic!("ERROR: unknown interpreter type!"),
        }
    } else {
        Default::default()
    };

    use executor::OptimizedInterpreter;
    use simple::SimpleInterpreter;
    use state::*;

    let start = Instant::now();
    match interpreter {
        Simple => SimpleInterpreter::<InfiniteState<u8>>::load(&contents).run_stdio(),
        Optimized => {
            OptimizedInterpreter::<StackAllocatedState<65_536>>::load(&contents).run_stdio()
        }
    };

    println!("\nElapsed time: {:?}", start.elapsed());

    Ok(())
}
