# Simple CPU in VHDL for FPGA Implementation

## Introduction

This project involves designing and implementing a simple Central Processing Unit (CPU) in VHDL for deployment on an FPGA board. The CPU is composed of two primary components: the Arithmetic Logic Unit (ALU) and the Control Unit. Together, they facilitate data processing and system operation.

### Key Features
- **Arithmetic Logic Unit (ALU):** Performs data processing and computation.
- **Control Unit:** Coordinates system operation using a finite state machine (FSM) and a 3x8 decoder.
- **Registers:** Two 8-bit registers provide input to the ALU for processing.
- **Seven-Segment Display:** Outputs results and system information for user interaction.

### CPU Components
1. **Control Unit:**
   - **Finite State Machine (FSM):** Acts as a 3-bit program counter.
   - **3x8 Decoder:** Serves as memory, outputting one of eight opcodes for instruction processing.

2. **Arithmetic Logic Unit (ALU):**
   - Executes operations based on opcodes received from the decoder.
   - Processes two 8-bit binary inputs.
   - Leverages unique digits from the partner's student number for certain operations.

3. **Registers:**
   - Two 8-bit registers store and provide inputs to the ALU.

### Workflow
1. **Opcode Decoding:** The 3x8 decoder outputs operation codes that dictate the ALU's computations.
2. **Computation:** The ALU performs the operations using the decoded opcodes and input data.
3. **Display:** Results and relevant information are displayed on the FPGA's seven-segment display.

### Objectives
- Design the CPU architecture using VHDL.
- Implement the design on an FPGA board.
- Ensure correct operation of the ALU and control unit.
- Output computational results and system status on a seven-segment display.

### Tools and Technologies
- **VHDL:** Hardware description language for CPU design.
- **FPGA Board:** Target platform for implementation.
- **Simulation Tools:** Verify the design before deployment.

### Getting Started

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/mahbub87/Simple-VHDL-CPU.git
   ```
2. Use software such as Quartus to run the project 
3. Navigate to the project directory and set up the Altera board (EP2C35F672C6)
4. Run the desired simulations by making each ALU the top level identity
5. Use 8 switches and push buttons to simulate the I/O and CPU clock cycle
