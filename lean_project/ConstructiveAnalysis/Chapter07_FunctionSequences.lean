import ConstructiveAnalysis.Chapter06_Differentiation

/-!
# Chapter 7: Sequences and Series of Functions

Definitions extracted from Bridger's 'Real Analysis: A Constructive Approach'
-/

/- DEFINITION 7.1.1 (SEQUENCE OF FUNCTIONS)
   A sequence of functions on a set S ⊂ ℝ is a rule or procedure which associates
   with each whole number n ∈ ℕ a function fₙ : S → ℝ.
   The sequence is usually denoted (fₙ) or even (fₙ(x)).
-/
def FunctionSequence : Type := Identity Nat

/- DEFINITION 7.1.2 (POINTWISE CONVERGENCE)
   A sequence of functions (fₙ) on S is said to converge pointwise to the function f
   (defined on S) if, for each s ∈ S, the sequence of numbers (fₙ(s)) converges to the number f(s).
-/
def PointwiseConvergence : Type := Identity Nat

/- DEFINITION 7.1.6 (UNIFORM CONVERGENCE OF FUNCTIONS)
   That a sequence of functions (fₙ) on S converges to a function f : S → ℝ uniformly on S
   means that for each ε > 0, there is some number N(ε) such that |fₙ(s) - f(s)| ≤ ε
   for all s ∈ S when n ≥ N(ε). When this is the case, N(ε) is called a modulus of convergence.
-/
def UniformConvergenceOfFunctions : Type := Identity Nat

/- DEFINITION 7.1.8 (UNIFORMLY CAUCHY)
   A sequence of functions (fₙ) is uniformly Cauchy on S if for each ε > 0 there is a
   whole number N(ε) such that |fₙ(s) - fₘ(s)| ≤ ε for all s ∈ S when m, n > N(ε).
-/
def UniformlyCauchy : Type := Identity Nat

/- DEFINITION 7.3.1 (SERIES OF FUNCTIONS)
   Let (fₖ(x)) be a sequence of functions all defined on S ⊂ ℝ.
   Let Fₙ(x) = Σₖ₌₀ⁿ fₖ(x) be their nth partial sum.
   If, for x ∈ S, the sequence (Fₙ(x)) converges to a number F(x),
   we say that Σₖ₌₀^∞ fₖ converges pointwise and write Σₖ₌₀^∞ fₖ(x) = F(x).
   If the sequence (Fₙ) converges uniformly on S, we say that Σₖ₌₀^∞ fₖ converges uniformly to F on S.
-/
def FunctionSeries : Type := Identity Nat

/- DEFINITION 7.3.4 (POWER SERIES)
   Let (sₙ) be a sequence of numbers. The power series with coefficients (sₙ)
   is the sequence of polynomials (Sₙ(x)) given by
   Sₙ(x) = Σₖ₌₀ⁿ sₖ xᵏ
-/
def PowerSeries : Type := Identity Nat

/- DEFINITION 7.3.5 (CONVERGENT POWER SERIES)
   If for some number x, the sequence of partial sums (Sₙ(x)) converges to a number S(x),
   then we write S(x) = lim_{n→∞} Sₙ(x) = Σₖ₌₀^∞ sₖ xᵏ.
-/
def ConvergentPowerSeries : Type := Identity Nat

/- DEFINITION 7.3.12 (POWER SERIES FUNCTION)
   When Σₖ₌₀^∞ sₖ xᵏ converges for x in some interval I, it defines a function
   S(x) = Σₖ₌₀^∞ sₖ xᵏ : I → ℝ.
-/
def PowerSeriesFunction : Type := Identity Nat

/- DEFINITION 7.3.17 (SUBSEQUENCE)
   Given any sequence (tₖ), and an increasing sequence of nonnegative integers (n(k)),
   the sequence (uₖ) = (t_{n(k)}) is said to be a subsequence of the original sequence (tₙ).
-/
def Subsequence : Type := Identity Nat

/- DEFINITION 7.3.23 (RADIUS OF CONVERGENCE)
   Whenever we have a largest value of R for which the equivalent conditions of the
   Main Convergence Theorem hold, we call it the radius of convergence of the power series.
-/
def RadiusOfConvergence : Type := Identity Nat

/- DEFINITION 7.4.4 (TAYLOR POLYNOMIALS)
   Suppose the function f is n-times differentiable on the interval (a, b), and c ∈ (a, b).
   For k = 0 ... n-1, define the Taylor polynomials for f, centered at c by:
   T₀(f, x, c) = f(c)
   T_{k+1}(f, x, c) = Tₖ(f, x, c) + (f^{(k+1)}(c) / (k+1)!) · (x - c)^{k+1}

   Equivalently: Tₙ(x) = Σₖ₌₀ⁿ (f^{(k)}(c) / k!) · (x - c)ᵏ
-/
def TaylorPolynomials : Type := Identity Nat

/- DEFINITION 7.4.9 (TAYLOR SERIES)
   If the sequence of Taylor polynomials Tₙ(f, x, c) converges for -R < x - c < R, then
   Σᵢ₌₀^∞ (f^{(i)}(c)(x - c)ⁱ / i!)
   is called the Taylor series for f around x = c, denoted T(f, x, c).
-/
def TaylorSeries : Type := Identity Nat

/- DEFINITION 7.5.9 (PI/4)
   π/4 is the unique number x in [0, 1] for which sin(x) = cos(x).
-/
def PiOverFour : Type := Identity Nat

/- DEFINITION 7.5.12 (PERIODIC FUNCTION)
   A function f is periodic if there is a number P such that f(x + P) = f(x)
   for all x in the domain of f with x + P also in the domain of f.
   P is then called a period of f.
   If P is the smallest positive period for f, then it is called the period of f.
-/
def PeriodicFunction : Type := Identity Nat

/- DEFINITION 7.5.14 (THE TANGENT)
   tan(x) = sin(x) / cos(x) where cos(x) ≠ 0.
-/
def Tangent : Type := Identity Nat
