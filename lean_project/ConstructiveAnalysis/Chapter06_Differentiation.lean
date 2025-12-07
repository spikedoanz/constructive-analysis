import ConstructiveAnalysis.Chapter05_Integral

/-!
# Chapter 6: Differentiation

Definitions extracted from Bridger's 'Real Analysis: A Constructive Approach'
-/

/- DEFINITION 6.1.1 (DIFFERENCE QUOTIENT)
   The change in the values of a function f divided by the change in its inputs,
   (f(y) - f(x)) / (y - x), is called the difference quotient of f.
-/
def DifferenceQuotient : Type := Identity Nat

/- DEFINITION 6.1.2
   r(x, y) → 0 as y → x on E ⊂ ℝ means that for each ε > 0 there is a δ > 0
   (depending on ε) such that |r(x, y)| ≤ ε whenever x and y are in E and 0 < |y - x| < δ.
-/
def LimitAsApproaches : Type := Identity Nat

/- DEFINITION 6.1.4 (UNIFORMLY DIFFERENTIABLE)
   If the equivalent conditions hold, we say that f is uniformly differentiable on E,
   with derivative g(x). (Uniformly differentiable will often be abbreviated as UD.)
   The derivative will usually be denoted f'(x).
-/
def UniformlyDifferentiable : Type := Identity Nat

/- DEFINITION 6.1.9 (MODULUS OF DIFFERENTIABILITY)
   For ε > 0 in the definition of UD, the δ > 0 mentioned in the first two equivalent
   conditions and implied by r(x, y) → 0 in the third, is called a modulus of differentiability.
   It depends on the function f, the set E, and ε, so may be denoted δ_f(ε, E).
-/
def ModulusOfDifferentiability : Type := Identity Nat

/- DEFINITION 6.3.4 (ANTIDERIVATIVE)
   F is an antiderivative of f on E means F is uniformly differentiable on E and F' = f on E.
-/
def Antiderivative : Type := Identity Nat

/- DEFINITION 6.3.7 (MONOTONICITY)
   Let f be defined on a set E.
   1. f is strictly increasing on E means for all x < y in E, f(x) < f(y)
   2. f is strictly decreasing on E means for all x < y in E, f(x) > f(y)
   3. f is weakly increasing (non-decreasing) on E means for all x ≤ y in E, f(x) ≤ f(y)
   4. f is weakly decreasing (non-increasing) on E means for all x ≤ y in E, f(x) ≥ f(y)
-/
def Monotonicity : Type := Identity Nat

/- DEFINITION 6.4.5 (HIGHER DERIVATIVES)
   For an integer n > 0, the function f is n-times differentiable, with nth derivative f^(n)
   if f is uniformly differentiable and f' is (n-1)-times differentiable with (f')^(n-1) = f^(n).
-/
def HigherDerivatives : Type := Identity Nat

/- DEFINITION 6.5.9 (UNIFORM CONTINUITY IN TWO VARIABLES)
   The function f(x, t) is said to be uniformly continuous on the set Q = E × T = {(x, t) | x ∈ E and t ∈ T}
   if for each ε > 0 there is a δ > 0 (depending on ε and f and the set Q) such that
   |f(x₁, t₁) - f(x₂, t₂)| ≤ ε whenever |(x₁, t₁) - (x₂, t₂)| < δ.
-/
def UniformContinuityTwoVariables : Type := Identity Nat

/- DEFINITION 6.5.11 (PARTIAL DERIVATIVE)
   If the function f(·, t) (for t fixed) is uniformly differentiable on E, then we denote
   its derivative by f_x(x, t). This is usually called the partial derivative with respect to x
   and is also denoted ∂f/∂x.
-/
def PartialDerivative : Type := Identity Nat

/- DEFINITION 6.5.14 (UNIFORM CONVERGENCE OF INTEGRAL)
   The integral ∫_a^∞ f(x, t) dt is said to converge uniformly if for any ε > 0,
   we can find R(ε) (independent of x) such that
   |F(x) - ∫_a^M f(x, t) dt| ≤ ε when M > R(ε).
-/
def UniformConvergenceOfIntegral : Type := Identity Nat
