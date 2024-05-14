# rv-superscalar-static-alignment

## 1. Collecting Benchmark Workload

Collect benchmark workload from open-source suits or from SPEC. Store the C file in the `./src/input/` directory with the name `test.c`

## 2. Cross Compiling C/C++ Source Workload 

Cross-compile the C/C++ source workload to the RISCV architecture for Assembly code generation by follwing the below steps:

- Download the RISC-V GCC cross-compiler:
  ```bash
  wget https://github.com/xpack-dev-tools/riscv-none-elf-gcc-xpack/releases/download/v13.2.0-2/xpack-riscv-none-elf-gcc-13.2.0-2-linux-x64.tar.gz
  ```

- Install dependencies:
  ```bash
  sudo apt install libsdl2-dev libsdl2-mixer-dev
  ```

- Extract the contents of the file:
  ```bash
  tar -xvzf xpack-riscv-none-elf-gcc-13.2.0-2-linux-x64.tar.gz
  ```

- Add the path to the bin directory to the PATH environment variable:
  ```bash
  cd xpack-riscv-none-elf-gcc-13.2.0-2
  export PATH=$PATH:`pwd`/bin
  ```

- Check if the path is added to the PATH environment variable:
  ```bash
  echo $PATH
  ```

### 2.1. Compile Benchmark Code

Compile the benchmark code named `test.c` using the following commands based on optimization levels required:

```bash
riscv-none-elf-gcc -march=rv32i -mabi=ilp32 -O0 -S test.c -o test_o0.s
riscv-none-elf-gcc -march=rv32i -mabi=ilp32 -O1 -S test.c -o test_o1.s
riscv-none-elf-gcc -march=rv32i -mabi=ilp32 -O2 -S test.c -o test_o2.s
riscv-none-elf-gcc -march=rv32i -mabi=ilp32 -O3 -S test.c -o test_o3.s
riscv-none-elf-gcc -march=rv32i -mabi=ilp32 -Os -S test.c -o test_os.s
riscv-none-elf-gcc -march=rv32i -mabi=ilp32 -Ofast -S test.c -o test_ofast.s
```

## 2.2. Verification with RISC-V Emulator

Install the RISC-V emulator by running the following commands one after the other:

```bash
git clone https://github.com/sysprog21/rv32emu
cd rv32emu
git checkout -b new_branch 6c3d9a62d6e979fdd146507df8669d06bbb60c9a
make
make check
./build/rv32emu ./build/hello.elf
./build/rv32emu --stats ../test.elf
```

## 2.3. Compile Final Assembly File

Compile the final assembly file to get the ELF file:
```bash
riscv-none-elf-gcc -march=rv32i -mabi=ilp32 -o test.elf test.s
```

## 3. Cleaning up Assembly Code

Cleaning up the Assembly code has been handled in the `scheduler.py`.

## 4. Scheduler Design

### 4.1. Parsing to identify the instruction 
  Assembly Code has been processed  by the function `parse_instructions()` to generate instructions removing the Assembler directives etc..
### 4.2. Dependency detection
  The dependencies among instructions are detected using the function `find_dependencies()`.
### 4.3. Reordering of the instruction for scheduling
  This step is done using the functions `reschedule_instructions()` and `group_instructions()`
## 5. Configuration File Creation
All the required parameters like fetch width and Number of pipeline stages etc.. are given as input in the `specification.json` file.


We used optimisation `o0` in cross compilation to RISCV architecture.
We read the instructions from file and are able to identify branch instructions based on the keywords like `beq,bne,blt,bge`.
We found out dependencies in the assembly code.
We created a specification file of type json and stored fetch width and depth of stages as key value pairs and used this data in grouping instructions.
The rearranged instructions will be written into `rearrangedInst.s` file.
