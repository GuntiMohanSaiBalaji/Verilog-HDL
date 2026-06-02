# 🔄 Multiplexer (MUX)

## 📘 Definition
A **Multiplexer (MUX)** is a combinational circuit that selects one of many input signals and forwards it to a single output line, based on select inputs.

## ⚙️ Working Principle
- Inputs: Multiple data inputs (e.g., 4 for 4x1 MUX).  
- Select Lines: Control which input is passed to output.  
- Output: Single line carrying the selected input.  
- Logic: For 4x1 MUX → Output = (S0,S1) select one of A, B, C, D.  

## 📊 Example (4x1 MUX)

| S1 | S0 | Output |
|----|----|--------|
| 0  | 0  | A      |
| 0  | 1  | B      |
| 1  | 0  | C      |
| 1  | 1  | D      |

## ✅ Key Points
- Acts as a **data selector**.  
- Reduces hardware by sharing one output line.  
- Can implement logic functions.  

## 📌 Applications
- Data routing in digital systems.  
- Used in ALUs and processors.  
- Logic function implementation.  
