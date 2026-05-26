# 🔄 JK Flip-Flop

## 📘 Definition
A **JK Flip-Flop** is a universal bistable device.  
It improves on the SR flip-flop by removing the invalid state.

## ⚙️ Working Principle
- Inputs: J (Set), K (Reset), Clock.  
- Output changes on clock edge depending on J and K.  
- J = K = 1 → Toggle state.  

## 📊 Truth Table

| J | K | Q(next) | Function   |
|---|---|---------|------------|
| 0 | 0 | Q       | No change  |
| 0 | 1 | 0       | Reset      |
| 1 | 0 | 1       | Set        |
| 1 | 1 | Q̅      | Toggle     |

## ✅ Key Points
- Eliminates invalid state of SR flip-flop.  
- Can act as SR, D, or T flip-flop.  
- Used in counters, registers, and frequency division.  
- Race-around problem occurs if clock pulse is too long.  

