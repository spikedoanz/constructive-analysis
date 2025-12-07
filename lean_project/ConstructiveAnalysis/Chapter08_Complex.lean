import ConstructiveAnalysis.Chapter07_FunctionSequences

/-!
# Chapter 8: The Complex Numbers and Fourier Series

Definitions extracted from Bridger's 'Real Analysis: A Constructive Approach'
-/

/- DEFINITION 8.1.1 (COMPLEX NUMBERS)
   A complex number is an ordered pair (a, b) of real numbers.
   Two complex numbers (a, b) and (c, d) are equal exactly when a = c and b = d.

   · z ∈ ℂ means z is a complex number.
   · The reals ℝ are embedded in the complex numbers ℂ by a → (a, 0).
   · We define i = (0, 1).
   · Complex numbers are added: (a, b) + (c, d) = (a + c, b + d).
   · Complex numbers are multiplied: (a, b) · (c, d) = (ac - bd, bc + ad).
   · If z = a + bi, then a and b are the real and imaginary parts of z; i² = -1.
   · If a² + b² > 0, then a + bi is called a unit with inverse (a - bi)/(a² + b²).
   · The norm or length of z = a + bi is |z| = √(a² + b²).
   · The conjugate of z = a + bi is z̄ = a - bi.
-/
def ComplexNumber : Type := Identity Nat

/- DEFINITION 8.2.8 (COMPLEX INTEGRAL)
   Suppose f : I → ℂ, f(t) = u(t) + iv(t) where u and v are Riemann integrable in I. Then
   ∫_a^b f(t) dt = ∫_a^b u(t) dt + i ∫_a^b v(t) dt,
   where [a, b] ⊂ I.
-/
def ComplexIntegral : Type := Identity Nat

/- DEFINITION 8.2.10 (COMPLEX FOURIER SERIES)
   If the real-valued, Riemann integrable function f is 2π-periodic, its complex Fourier series is given by
   Σ_{k=-∞}^∞ cₖ e^{ikθ}
   where
   cₖ = (1/2π) ∫_{-π}^π f(t) e^{-ikt} dt.
-/
def ComplexFourierSeries : Type := Identity Nat

/- DEFINITION 8.2.12 (INNER PRODUCT)
   If f and φ are 2π-periodic functions on the interval [-π, π], their inner product is given by
   ⟨f, φ⟩ = (1/2π) ∫_{-π}^π f(t) φ̄(t) dt,
   where φ̄(t) is the complex conjugate of φ(t).
-/
def InnerProduct : Type := Identity Nat

/- DEFINITION 8.2.14 (FUNCTION NORM AND ORTHOGONALITY)
   The norm of a function φ is given by
   ‖φ‖ = √⟨φ, φ⟩ = ((1/2π) ∫_{-π}^π |φ(t)|² dt)^{1/2}.

   φ and ψ are called orthogonal if ⟨φ, ψ⟩ = 0.
   A family of functions {φₖ}, k = 0, 1, ... is called orthonormal if
   ⟨φᵢ, φⱼ⟩ = 1 if i = j, 0 if i ≠ j.
-/
def FunctionNorm : Type := Identity Nat

/- DEFINITION 8.2.18 (INNER PRODUCTS OF COMPLEX VECTORS)
   For complex vectors v = (v₁, v₂, ..., vₙ) and w = (w₁, w₂, ..., wₙ),
   the dot or inner product is given by
   v · w = Σₖ₌₁ⁿ vₖ w̄ₖ.

   The length, or norm, of v is given by
   ‖v‖ = √(v · v) = √(|v₁|² + |v₂|² + ... + |vₙ|²).
-/
def ComplexVectorInnerProduct : Type := Identity Nat

/- DEFINITION 8.3.3 (POISSON KERNEL)
   P(r, φ) = (1/2π) Σₖ₌₋∞^∞ e^{ikφ} r^|k| (defined for 0 ≤ r < 1)
   is called the Poisson kernel.
-/
def PoissonKernel : Type := Identity Nat

/- DEFINITION 8.3.5 (CONVOLUTION)
   For f and g uniformly continuous on [-π, π], their convolution f * g is given by
   (f * g)(x) = ∫_{-π}^π f(x - t) g(t) dt.
-/
def Convolution : Type := Identity Nat
