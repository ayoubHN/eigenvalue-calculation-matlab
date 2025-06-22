# Eigenvalue Calculation – MATLAB Implementation

This repository contains MATLAB implementations of classical numerical methods for computing eigenvalues, developed as part of my Bachelor's thesis:  
**"Eigenvalue Calculation: Theory and Numerical Methods"**  
📄 [View Full Report (PDF)](./report/bachelor-thesis-eigenvalue.pdf)

---

## 📌 About the Project

This project explores and implements various iterative and direct methods for computing the eigenvalues of a matrix. Each method is written in MATLAB with clarity and mathematical accuracy in mind.

> 🧠 The goal is to compare convergence, accuracy, and computational efficiency of the algorithms.

---

## 🧮 Implemented Methods

Located in the [`src/`](./src) folder:

- `jacobi.m` — Jacobi Method
- `powerm.m` — Power Method
- `invpowerLU.m` — Inverse Power Method with LU decomposition
- `myqrmethod.m` — Classical QR Algorithm
- `my_givens_QR.m` — Givens Rotation QR Decomposition
- `my_householder_QR.m` — Householder Transformation
- `my_gram_schmidt.m` — Gram-Schmidt QR Decomposition
- `testQRJac.m` — Test file for QR and Jacobi methods

---

## 🧪 Examples

Example use cases and matrices are available in the [`examples/`](./examples) folder (to be added).

---

## 📁 Project Structure

```bash
├── src/           # MATLAB implementations
├── report/        # Thesis report (PDF)
├── examples/      # Sample matrix inputs and test cases
└── README.md

🚀 How to Run
Make sure you have MATLAB or GNU Octave installed.

Run from MATLAB console:
matlab
Copy
Edit
% Load a matrix
A = rand(4);                % Example: random 4x4 matrix

% Run a method
eigvals = powerm(A);        % Power Method
eigvals_jac = jacobi(A);    % Jacobi Method
eigvals_qr = myqrmethod(A); % Classical QR
Each .m file is independent and well-documented.

📚 References
Golub, G. H., & Van Loan, C. F. (2013). Matrix Computations (4th ed.). Johns Hopkins University Press.

Trefethen, L. N., & Bau, D. (1997). Numerical Linear Algebra. SIAM.

Bachelor's Thesis: bachelor-thesis-eigenvalue.pdf

## 👤 Author

- **Ayoub Elhassani**  
- 📧 ayoubelhassani32@gmail.com  
- 🔗 [LinkedIn](https://www.linkedin.com/in/ayoub-elhassani)  
- 🔗 [GitHub](https://github.com/ayoubHN)

