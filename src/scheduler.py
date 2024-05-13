import json
import os

class Instruction:
    def __init__(self, line):
        self.line = line
        self.operation = None
        self.args = []
        self.dependencies = set()

    def parse(self):
        parts = self.line.split()
        if len(parts) > 0:
            self.operation = parts[0]
            self.args = parts[1:]

    def is_branch(self):
        return self.operation in ['j', 'jal', 'jr', 'beq', 'bne', 'blt', 'bge', 'bltu', 'bgeu']

    def __str__(self):
        return self.line


def parse_instructions(assembly_code):
    instructions = []
    for line in assembly_code.split('\n'):
        line = line.strip()
        if line and not line.startswith('.'):
            instruction = Instruction(line)
            instruction.parse()
            instructions.append(instruction)
    return instructions


def find_dependencies(instructions):
    labels = {}
    for i, instr in enumerate(instructions):
        for arg in instr.args:
            if arg.startswith('.'):
                labels[arg] = i
        for j, dep_instr in enumerate(instructions[:i]):
            for arg in instr.args:
                if arg == dep_instr.operation:
                    instr.dependencies.add(j)
                    break  # No need to continue searching for this dependency
    return labels




def group_instructions(instructions, fetch_width):
    groups = [[] for _ in range(fetch_width)]
    for instr in instructions:
        if instr.is_branch():
            groups[-1].append(instr)
        else:
            for group in groups:
                if len(group) < fetch_width:
                    group.append(instr)
                    break
    return groups


def print_instruction_info(instructions):
    print("All Instructions:")
    for instr in instructions:
        print(instr.line)


def print_branching_instructions(instructions):
    print("\nBranching Instructions:")
    for instr in instructions:
        if instr.is_branch():
            print(instr.line)


def print_non_branching_instructions(instructions):
    print("\nNon-Branching Instructions:")
    for instr in instructions:
        if not instr.is_branch():
            print(instr.line)


def print_dependencies(labels):
    print("\nData Dependencies:")
    for label, index in labels.items():
        print(f"{label} depends on instruction at index {index}")


def print_grouped_instructions(groups):
    print("\nGrouped Instructions:")
    for i, group in enumerate(groups):
        print(f"Fetch Group {i}:")
        for instr in group:
            print(instr.line)

def reschedule_instructions(groups, instructions):
    rescheduled_instructions = []
    max_group_size = max(len(group) for group in groups)
    position_map = {}  # Map to keep track of the position for each instruction

    for i in range(max_group_size):
        for group in groups:
            if i < len(group):
                instr = group[i]
                rescheduled_instructions.append(instr)
                position_map[instr] = len(rescheduled_instructions) - 1  # Record the position of the instruction

                # Check if the instruction has dependencies
                if instr.dependencies:
                    for dep_index in instr.dependencies:
                        dep_instr = instructions[dep_index]
                        # Ensure dependency instruction is scheduled before the current instruction
                        dep_position = position_map.get(dep_instr, -1)
                        if dep_position >= 0:
                            # Insert no-op instructions before the current instruction
                            for _ in range(dep_position + 1, len(rescheduled_instructions)):
                                rescheduled_instructions.append(Instruction("noop"))

    return rescheduled_instructions

def print_rescheduled_instructions(rescheduled_instructions):
    print("\nRescheduled Instructions:")
    for instr in rescheduled_instructions:
        print(instr.line)

def write_to_file(filename, instructions):
    with open(filename, "w") as file:
        for instr in instructions:
            file.write(instr.line + "\n")

def main():
    script_dir = os.path.dirname(os.path.abspath(__file__))
    os.chdir(script_dir)  # Change the current working directory to where the script is located

    spec_file_path = os.path.join(script_dir, "specification.json")

    with open(spec_file_path, "r") as spec_file:
        specification = json.load(spec_file)
    fetch_width = specification["Fetch Width"]

    with open("./input/test_o0.s", "r") as assembly_file:
        assembly_code = assembly_file.read()

    instructions = parse_instructions(assembly_code)

    print_instruction_info(instructions)

    print_branching_instructions(instructions)

    print_non_branching_instructions(instructions)

    labels = find_dependencies(instructions)
    print_dependencies(labels)

    grouped_instructions = group_instructions(instructions, fetch_width)
    print_grouped_instructions(grouped_instructions)

    rescheduled_instructions = reschedule_instructions(grouped_instructions, instructions)
    print_rescheduled_instructions(rescheduled_instructions)
    
    # Write rearranged instructions to file
    write_to_file("./output/rearrangedInst.s", rescheduled_instructions)
    print("Instructions written to rearrangedInst.s file")
if __name__ == "__main__":
    main()
