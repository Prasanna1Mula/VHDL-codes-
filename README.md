# VHDL Programming Repository

This repository contains basic VHDL (VHSIC Hardware Description Language) programs that cover fundamental digital logic design concepts. Each program is designed to help you understand the core principles of digital circuits and how they can be implemented using VHDL.

## Table of Contents

1. [Logic Gates](#logic-gates)
2. [Half Adder](#half-adder)
3. [Full Adder](#full-adder)
4. [Decoder 3x8](#decoder-3x8)
5. [Encoder](#encoder)
6. [4-Bit Counter](#4-bit-counter)
7. [Multiplexer](#multiplexer)
8. [Demultiplexer](#demultiplexer)
9. [D Flip-Flop](#d-flip-flop)
10. [D Latch](#d-latch)
11. [16x1 Multiplier](#16x1-multiplier)
12. [7-Segment Decoder](#7-segment-decoder)
13. [Half Subtractor](#Half-Subtractor)
14. [Full Subtractor](#Full-Subtractor)
15. [Up-Down Counter (Async reset)](#UpDown-Counter-(Async-reset)) 


---

## 1. Logic Gates
This program implements basic logic gates: AND, OR, NOT, NAND, NOR, XOR, and XNOR.

**Description**: Logic gates are the building blocks of digital circuits. This VHDL code demonstrates how to implement these gates using behavioral modeling.

---

## 2. Half Adder
This program implements a half adder, which adds two single-bit binary numbers and produces a sum and carry output.

**Description**: A half adder is a basic digital circuit used in arithmetic operations. It has two inputs (A, B) and two outputs (Sum, Carry).

---

## 3. Full Adder
This program implements a full adder, which adds two single-bit binary numbers along with a carry input and produces a sum and carry output.

**Description**: A full adder extends the functionality of a half adder by including a carry input, making it suitable for multi-bit addition.

---

## 4. Decoder 3x8
This program implements a 3-to-8 decoder, which takes a 3-bit input and activates one of the 8 output lines based on the input combination.

**Description**: Decoders are used in digital systems to convert binary information into a set of unique outputs.

---

## 5. Encoder
This program implements an encoder, which converts a set of inputs into a binary code.

**Description**: Encoders are the reverse of decoders. They take multiple inputs and produce a binary output corresponding to the active input.

---

## 6. 4-Bit Counter
This program implements a 4-bit counter that counts from 0 to 15 and then resets.

**Description**: Counters are sequential circuits used in applications like clock division, event counting, and timing control.

---

## 7. Multiplexer
This program implements a multiplexer, which selects one of several input signals and forwards it to a single output line.

**Description**: Multiplexers are used in digital systems to route data from multiple sources to a single destination.

---

## 8. Demultiplexer
This program implements a demultiplexer, which takes a single input and routes it to one of several output lines based on a select signal.

**Description**: Demultiplexers are the reverse of multiplexers and are used to distribute data from one source to multiple destinations.

---

## 9. D Flip-Flop
This program implements a D flip-flop, which stores a single bit of data and updates it on the rising edge of a clock signal.

**Description**: D flip-flops are fundamental components in sequential circuits, used for data storage and synchronization.

---

## 10. D Latch
This program implements a D latch, which stores a single bit of data and updates it when the enable signal is active.

**Description**: D latches are level-sensitive storage elements, unlike edge-triggered D flip-flops.

---

## 11. 16x1 Multiplier
This program implements a 16x1 multiplier, which multiplies two 16-bit binary numbers and produces a 32-bit result.

**Description**: Multipliers are essential for performing multiplication operations in arithmetic logic units (ALUs).

---

## 12. 7-Segment Decoder
This program implements a 7-segment decoder, which converts a 4-bit binary input into a display pattern for a 7-segment LED.

**Description**: 7-segment decoders are used in display systems to show numeric or alphanumeric characters.

---
## 13. Half Subtractor 
This program implements a Half Subtractor, which subtracts two single-bit binary numbers and produces a difference and borrow output.

**Description**: A half subtractor is a basic digital circuit used in arithmetic operations. It has two inputs (A, B) and two outputs (Diff, Borrow). The difference (`Diff`) is the result of the subtraction, and the borrow (`Borrow`) indicates whether a borrow is needed for the subtraction.

---
## 14. Full Subtractor 
This program implements a full subtractor, which subtracts two single-bit binary numbers along with a borrow input and produces a difference and borrow output.

**Description**: A full subtractor extends the functionality of a half subtractor by including a borrow input (`Bin`), making it suitable for multi-bit subtraction. It has three inputs (A, B, Bin) and two outputs (Diff, Bout). The difference (`Diff`) is the result of the subtraction, and the borrow-out (`Bout`) indicates whether a borrow is needed for the next higher bit.

---
## 15. UpDown Counter 
This program implements a configurable N-bit up-down counter with asynchronous reset and parallel load capability.

**Description** : A versatile bidirectional counter that can count up or down based on the up control signal. Features asynchronous reset (reset) for immediate initialization. Includes parallel load functionality (load and data_in) to preset the counter value. Configurable bit-width via the WIDTH generic parameter (default: 4 bits). Outputs the current count value on count (WIDTH bits)
## How to Use
1. Compile and simulates the code using a VHDL simulator like ModelSim or Xilinx Vivado.


## Contributing
Contributions are welcome! Feel free to open a pull request if you have any improvements or additional VHDL programs.

---

Feel free to explore the code and use it as a reference for your digital design projects!
