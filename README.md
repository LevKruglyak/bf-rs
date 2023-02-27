# Brainfuck Interpreter

A simple optimizing brainfuck interpreter written in Rust.

## Usage

Several example programs are provided:

```sh
cargo run --release examples/serpinski.bf
```

## Debugging

If the interpreter encounters a ```?``` character, it will print a slice of the program tape.
