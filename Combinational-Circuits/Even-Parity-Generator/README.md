# 🔄 4-bit Even Parity Generator

## 📘 Definition
A **4-bit Even Parity Generator** is a combinational circuit that generates a parity bit for 4 input bits (A, B, C, D).  
It ensures the total number of 1s (including the parity bit) is **even**.

## ⚙️ Working Principle
- Inputs: A, B, C, D (4 bits).  
- Output: Parity bit (P).  
- Logic:  
  - P = A ⊕ B ⊕ C ⊕ D  
- If the number of 1s in inputs is odd → P = 1 (to make total even).  
- If the number of 1s in inputs is even → P = 0 (total remains even).  

## 📊 Truth Table (4-bit Data)

| A | B | C | D | Parity Bit (P) | Total 1s (Even?) |
|---|---|---|---|----------------|------------------|
| 0 | 0 | 0 | 0 | 0              | 0 (Even)         |
| 0 | 0 | 0 | 1 | 1              | 2 (Even)         |
| 0 | 0 | 1 | 0 | 1              | 2 (Even)         |
| 0 | 0 | 1 | 1 | 0              | 2 (Even)         |
| 0 | 1 | 0 | 0 | 1              | 2 (Even)         |
| 0 | 1 | 0 | 1 | 0              | 2 (Even)         |
| 0 | 1 | 1 | 0 | 0              | 2 (Even)         |
| 0 | 1 | 1 | 1 | 1              | 4 (Even)         |
| 1 | 0 | 0 | 0 | 1              | 2 (Even)         |
| 1 | 0 | 0 | 1 | 0              | 2 (Even)         |
| 1 | 0 | 1 | 0 | 0              | 2 (Even)         |
| 1 | 0 | 1 | 1 | 1              | 4 (Even)         |
| 1 | 1 | 0 | 0 | 0              | 2 (Even)         |
| 1 | 1 | 0 | 1 | 1              | 4 (Even)         |
| 1 | 1 | 1 | 0 | 1              | 4 (Even)         |
| 1 | 1 | 1 | 1 | 0              | 4 (Even)         |

## ✅ Key Points
- Ensures even number of 1s in 4-bit data.  
- Implemented using XOR gates.  
- Simple error detection mechanism.  

## 📌 Applications
- Error detection in communication systems.  
- Memory error checking.  
- Data transmission protocols.  
