# 🔄 Ripple Carry Adder (RCA)

## 📘 Definition
A **Ripple Carry Adder** is a digital circuit that adds two binary numbers using a series of full adders.  
The carry output from each full adder "ripples" into the next stage, hence the name.

## ⚙️ Working Principle
- Built by connecting multiple **full adders** in series.  
- Each full adder adds corresponding bits of inputs **A** and **B** plus the carry from the previous stage.  
- The final carry out is the overall carry of the addition.  
- Delay increases with the number of bits because each carry must propagate through all stages.

## 🧮 Characteristics
- **Inputs:** Two n-bit numbers (A, B) and an initial carry (Cin).  
- **Outputs:** n-bit Sum (S) and final carry (Cout).  
- **Hardware:** Simple design, but slower for large n.  

## 📊 Example (4-bit RCA)

| Stage | A[i] | B[i] | Cin | Sum | Cout |
|-------|------|------|-----|-----|------|
| FA0   | A0   | B0   | Cin | S0  | C1   |
| FA1   | A1   | B1   | C1  | S1  | C2   |
| FA2   | A2   | B2   | C2  | S2  | C3   |
| FA3   | A3   | B3   | C3  | S3  | Cout |

## ✅ Advantages
- Simple and easy to design.  
- Direct extension of full adder logic.  
- Suitable for small bit-width additions.  

## ⚠️ Limitations
- Slow for large bit-widths due to carry propagation delay.  
- Not efficient for high-speed arithmetic operations.  

## 📌 Applications
- Basic arithmetic units in processors.  
- Small-scale digital systems.  
- Foundation for advanced adders (Carry Lookahead, Carry Select).  
