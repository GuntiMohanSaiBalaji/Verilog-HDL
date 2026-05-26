# 🔄 Johnson Counter

## 📘 Definition
A **Johnson Counter** (also called a Twisted Ring Counter) is a type of sequential counter built using flip-flops.  
It differs from a ring counter because the **inverted output of the last flip-flop** is fed back to the input of the first.

## ⚙️ Working Principle
- Consists of `n` flip-flops connected in series.
- The inverted output of the last flip-flop is fed back to the first flip-flop.
- Produces `2n` unique states (twice as many as a ring counter).
- The sequence alternates between runs of `1`s and `0`s.

## 🧮 Characteristics
- **Modulus (MOD):** Equal to `2n`, it is a **MOD 2N counter**.
- **States:** Exactly `2n` valid states.
- **Initialization:** Self-starting (no preset required).
- **Efficiency:** More efficient than ring counter since it uses all flip-flops to generate twice the states.

## 📊 Example (4-bit Johnson Counter)

| Clock | Q1 | Q2 | Q3 | Q4 |
|-------|----|----|----|----|
| 0     | 0  | 0  | 0  | 0  |
| 1     | 1  | 0  | 0  | 0  |
| 2     | 1  | 1  | 0  | 0  |
| 3     | 1  | 1  | 1  | 0  |
| 4     | 1  | 1  | 1  | 1  |
| 5     | 0  | 1  | 1  | 1  |
| 6     | 0  | 0  | 1  | 1  |
| 7     | 0  | 0  | 0  | 1  |
| 8     | 0  | 0  | 0  | 0  |

## ✅ Advantages
- Self-starting (no need for preset).
- Generates `2n` states with `n` flip-flops.
- Efficient use of hardware compared to ring counter.

## ⚠️ Limitations
- Decoding logic can be more complex than ring counter.
- Not suitable for all counting applications.

## 📌 Applications
- Sequence generators  
- Digital timing circuits  
- Pattern generation  
- Control circuits  
