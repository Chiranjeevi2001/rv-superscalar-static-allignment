# rv-superscalar-static-alignment
We used optimiser 0 in cross compilation to RISC 5 architecture and we read the instructions from file and are able to identify branch instructions based on the keywords like beq,bne,blt,bge.We found out dependencies in the assembly code.

We created a specification file of type json and stored fetch width and depth of stages as key value pairs and used this data in grouping instructions.

The rearranged instructions will be written into specification.s file.
