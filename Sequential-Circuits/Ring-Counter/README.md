# 🔄 Ring Counter

## 📘 Definition
A **Ring Counter** is a type of sequential digital counter built using flip-flops.  
It is essentially a **shift register** with the output of the last flip-flop fed back to the input of the first, forming a "ring."


## ⚙️ Working Principle
- Consists of `n` flip-flops connected in a series.
- Only **one flip-flop** is set to `1` at any given time; others remain `0`.
- On each clock pulse, the `1` shifts to the next flip-flop.
- After `n` pulses, the `1` returns to the first flip-flop, completing the cycle.


## 🧮 Characteristics
- **Modulus (MOD):** Equal to the number of flip-flops (`n`), it is a **MOD N counter**
- **States:** Exactly `n` valid states (one-hot encoding).
- **Initialization:** Requires presetting one flip-flop to `1` before operation.


## 📊 Example (4-bit Ring Counter)

 Clock  Q1  Q2  Q3  Q4 
 
 0      1   0   0   0  
 1      0   1   0   0  
 2      0   0   1   0  
 3      0   0   0   1  
 4      1   0   0   0  
 

## ✅ Advantages
- Simple design and decoding.
- One-hot representation reduces logic complexity.
- Useful in control circuits and sequence generation.
  

## ⚠️ Limitations
- Requires initialization (cannot self-start).**self start can be done using NOR gate**
- Inefficient use of flip-flops compared to binary counters (only `n` states instead of `2^n`).

## 📌 Applications
- Sequence generators
- used in SAR type ADC
- Timing circuits
- Control units in digital systems
- LED chasers and pattern generators
