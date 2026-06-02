# 🔄 8x3 Encoder

## 📘 Definition
An **8x3 Encoder** is a combinational circuit that converts **8 input lines** into a **3-bit binary code**.  
Only one input should be active at a time.

## ⚙️ Working Principle
- Inputs: D0–D7 (8 lines).  
- Outputs: Y2, Y1, Y0 (3-bit binary).  
- Logic: Output represents the position of the active input line.  
- Example: If D5 = 1 → Output = 101 (binary for 5).  

## 📊 Truth Table

| Input Line | Y2 | Y1 | Y0 |
|------------|----|----|----|
| D0 = 1     | 0  | 0  | 0  |
| D1 = 1     | 0  | 0  | 1  |
| D2 = 1     | 0  | 1  | 0  |
| D3 = 1     | 0  | 1  | 1  |
| D4 = 1     | 1  | 0  | 0  |
| D5 = 1     | 1  | 0  | 1  |
| D6 = 1     | 1  | 1  | 0  |
| D7 = 1     | 1  | 1  | 1  |

## ✅ Key Points
- Converts 8 inputs into 3-bit binary code.  
- Only one input should be active at a time.  
- Implemented using OR gates.  

## 📌 Applications
- Data compression in digital systems.  
- Priority encoders (extended form).  
- Used in digital communication and processor design.  
