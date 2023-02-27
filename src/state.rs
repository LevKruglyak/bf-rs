use crate::BFState;

pub struct StackAllocatedState<const N: usize> {
    memory: [u8; N],
    pointer: usize,
}

impl<const N: usize> BFState for StackAllocatedState<N> {
    type Cell = u8;

    fn new() -> Self {
        Self {
            memory: [0; N],
            pointer: 0,
        }
    }

    #[inline(always)]
    fn move_pointer(&mut self, offset: i32) {
        self.pointer = self.pointer.wrapping_add_signed(offset as isize);
    }

    #[inline(always)]
    fn cell(&self) -> &Self::Cell {
        &self.memory[self.pointer]
    }

    #[inline(always)]
    fn cell_mut(&mut self) -> &mut Self::Cell {
        &mut self.memory[self.pointer]
    }

    #[inline(always)]
    fn cell_slice(&self) -> &[Self::Cell] {
        &self.memory[self.pointer..self.pointer + 1]
    }

    #[inline(always)]
    fn cell_mut_slice(&mut self) -> &mut [Self::Cell] {
        &mut self.memory[self.pointer..self.pointer + 1]
    }

    fn print_debug(&self) {
        print!("[{}] > ", self.pointer);
        for i in 0..26 {
            let j = self.pointer + i - 10;
            if self.memory.get(j).is_none() {
                print!("\x1b[31m{:2}\x1b[0m ", 0);
            } else {
                if j == self.pointer {
                    print!("\x1b[93m{:2}\x1b[0m ", self.memory[j]);
                } else {
                    print!("{:2} ", self.memory[j]);
                }
            }
        }
        println!();
    }
}

pub struct InfiniteState<C> {
    // memory that goes in the positive direction
    memory: Vec<C>,
    // memory that goes in the negative direction
    neg_memory: Vec<C>,
    pointer: i32,
}

impl<C: Default + Copy> BFState for InfiniteState<C> {
    type Cell = C;

    fn new() -> Self {
        Self {
            memory: vec![C::default(); 65_536],
            neg_memory: vec![],
            pointer: 0,
        }
    }

    fn move_pointer(&mut self, offset: i32) {
        self.pointer += offset;

        if offset > 0 && self.pointer > 0 && self.memory.get(self.pointer as usize).is_none() {
            self.memory
                .resize_with(self.memory.len() + offset as usize, Default::default)
        }

        if offset < 0
            && self.pointer < 0
            && self.neg_memory.get((-self.pointer - 1) as usize).is_none()
        {
            self.memory
                .resize_with(self.memory.len() + -offset as usize, Default::default)
        }
    }

    fn cell(&self) -> &C {
        if self.pointer < 0 {
            &self.neg_memory[(-self.pointer - 1) as usize]
        } else {
            &self.memory[self.pointer as usize]
        }
    }

    fn cell_mut(&mut self) -> &mut C {
        if self.pointer < 0 {
            &mut self.neg_memory[(-self.pointer - 1) as usize]
        } else {
            &mut self.memory[self.pointer as usize]
        }
    }

    fn cell_slice(&self) -> &[Self::Cell] {
        if self.pointer < 0 {
            let offset = (-self.pointer - 1) as usize;
            &self.neg_memory[offset..offset + 1]
        } else {
            let offset = self.pointer as usize;
            &self.memory[offset..offset + 1]
        }
    }

    fn cell_mut_slice(&mut self) -> &mut [Self::Cell] {
        if self.pointer < 0 {
            let offset = (-self.pointer - 1) as usize;
            &mut self.neg_memory[offset..offset + 1]
        } else {
            let offset = self.pointer as usize;
            &mut self.memory[offset..offset + 1]
        }
    }

    fn print_debug(&self) {
        unimplemented!()
    }
}
