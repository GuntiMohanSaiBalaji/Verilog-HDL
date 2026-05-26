# 🔄 SR Flip-Flop

## 📘 Definition
An **SR Flip-Flop** (Set-Reset Flip-Flop) is the simplest bistable device.  
It has two inputs: **S (Set)** and **R (Reset)**, and two outputs: **Q** and **Q̅**.

## ⚙️ Working Principle
- **S = 1, R = 0 → Set (Q = 1)**  
- **S = 0, R = 1 → Reset (Q = 0)**  
- **S = 0, R = 0 → No change**  
- **S = 1, R = 1 → Invalid state**  

## 📊 Truth Table

| S | R | Q(next) | Function   |
|---|---|---------|------------|
| 0 | 0 | Q       | No change  |
| 0 | 1 | 0       | Reset      |
| 1 | 0 | 1       | Set        |
| 1 | 1 | ?       | Invalid    |

## ✅ Key Points
- Simplest flip-flop design.  
- Invalid state when both inputs are 1.  
- Basis for JK and D flip-flops.  
- Used in simple memory storage and control circuits.  

