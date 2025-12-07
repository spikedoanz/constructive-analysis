import ConstructiveAnalysis.Chapter03_Limits

/-!
# Chapter 4: Uniform Continuity

Definitions extracted from Bridger's 'Real Analysis: A Constructive Approach'
-/

/- DEFINITION 4.1.3
   The function f is uniformly continuous (UC) on S ⊂ ℝ if for each ε > 0
   we can find a δ > 0 (depending on ε and f) such that
   |f(y) - f(x)| ≤ ε whenever x, y ∈ S and |y - x| < δ
-/
def UniformlyContinuous : Type := Identity Nat

/- DEFINITION 4.1.13
   f is bounded on S if there is a constant K such that |f(x)| < K for all x ∈ S
-/
def BoundedFunction : Type := Identity Nat

/- DEFINITION 4.1.14
   g is bounded away from 0 on S if there is a constant L > 0 such that
   |g(x)| > L for all x ∈ S
-/
def BoundedAwayFromZero : Type := Identity Nat

/- DEFINITION 4.2.7
   Let S ⊂ T be sets of real numbers. S is dense in T means that every open interval
   of ℝ which intersects T also intersects S.
-/
def DenseSubset : Type := Identity Nat

/- DEFINITION 4.2.14 (PUNCTURED INTERVAL)
   If x₁, ..., xₙ ∈ [a, b], then P = [a, b] - {x₁, ..., xₙ} consists of those x ∈ [a, b]
   such that |x - xᵢ| > 0 for i = 1, ..., n. P is called a (finitely) punctured interval.
-/
def PuncturedInterval : Type := Identity Nat

/- DEFINITION 4.2.17
   A ∪ B, the union of two sets (for us they will be intervals), consists of those x
   for which it can be determined that x lies in A or x lies in B.
-/
def SetUnion : Type := Identity Nat
