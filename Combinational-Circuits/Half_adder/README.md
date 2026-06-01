# 🔄 Half Adder

## 📘 Definition
A **Half Adder** is a combinational circuit that performs the addition of two single-bit binary numbers.  
It produces a **Sum** and a **Carry** output.

## ⚙️ Working Principle
- Inputs: A, B (1-bit each).  
- Outputs: Sum (S), Carry (C).  
- Logic:  
  - Sum = A ⊕ B  
  - Carry = A · B  

## 📊 Truth Table

| A | B | Sum | Carry |
|---|---|-----|-------|
| 0 | 0 |  0  |   0   |
| 0 | 1 |  1  |   0   |
| 1 | 0 |  1  |   0   |
| 1 | 1 |  0  |   1   |

## ✅ Key Points
- Simplest adder circuit.  
- Cannot handle carry input (hence "half").  
- Basis for building Full Adders.  

## 📌 Applications
- Basic arithmetic operations.  
- Used in constructing Full Adders and larger adders.  
