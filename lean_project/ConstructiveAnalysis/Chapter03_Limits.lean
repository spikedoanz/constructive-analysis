import ConstructiveAnalysis.Chapter02_InverseFunction

/-!
# Chapter 3: Limits, Sequences and Series

Definitions extracted from Bridger's 'Real Analysis: A Constructive Approach'
-/

/- DEFINITION 3.1.1
   A sequence a of real numbers is a function a : ℕ → ℝ
-/
def Sequence : Type := Identity Nat

/- NOTATION 3.1.2
   It is customary to denote a(k) by aₖ and the sequence itself by (aₖ).
   Also, sometimes a₀ is omitted, so that the first term of the sequence is a₁.
-/
def SequenceNotation : Type := Identity Nat

/- DEFINITION 3.1.3
   A sequence of real numbers (aₖ) is said to converge to the real number L if,
   for any ε > 0 there is an integer Nₐ(ε) ≥ 0 such that |aᵢ - L| ≤ ε whenever i ≥ Nₐ(ε).
   L is called the limit of the sequence, and we write (aₖ) → L, or L = lim_{k→∞}(aₖ).
   Nₐ(ε) is called a modulus of convergence for (aₖ).
-/
def SequenceConvergence : Type := Identity Nat

/- DEFINITION 3.1.11
   The sequence (aₖ) is called a Cauchy sequence if, for any ε > 0 there is an integer
   Nₐ(ε) > 0 such that |aᵢ - aⱼ| ≤ ε whenever i and j ≥ Nₐ(ε).
   Nₐ(ε) is called a modulus of convergence for the sequence (aₖ).
-/
def CauchySequence : Type := Identity Nat

/- DEFINITION 3.2.1
   lim_{x→∞} f(x) = L (L a real number) means that, given any ε > 0,
   there is an integer M ≥ 0 such that |f(x) - L| < ε for all x > M.
-/
def LimitAtInfinity : Type := Identity Nat

/- DEFINITION 3.2.2
   lim_{x→∞} f(x) = ∞ (respectively, lim_{x→∞} f(x) = -∞) means that,
   given an integer N > 0, there is an integer M > 0 such that f(x) > N
   (respectively f(x) < -N) for all x > M.
-/
def LimitIsInfinity : Type := Identity Nat

/- DEFINITION 3.2.5
   Let a and L be real numbers. We say that the limit of f(x) as x approaches a is L
   if for any ε > 0 there is a δ > 0 such that |f(x) - L| < ε whenever 0 < |x - a| < δ.
   In this case we write lim_{x→a} f(x) = L.
-/
def LimitAtPoint : Type := Identity Nat

/- DEFINITION 3.3.1 (PARTIAL SUMS)
   The partial sums Sₙ of this sequence are defined by:
   S₀ = s₀
   S_{k+1} = Sₖ + s_{k+1}
   We also write Sₙ = Σₖ₌₀ⁿ sₖ = s₀ + s₁ + ··· + sₙ

   If (Sₙ) → L, we say the series Σₖ₌₀^∞ sₖ converges to L.
   If there is no limit we say the series fails to converge;
   if the series fails to converge because lim_{n→∞} Sₙ = ∞ or -∞,
   then we say the series diverges.
-/
def PartialSums : Type := Identity Nat

/- DEFINITION 3.3.26
   Σₖ₌₀^∞ sₖ is said to be absolutely convergent if Σₖ₌₀^∞ |sₖ| converges.
   If a series converges but is not absolutely convergent, it is called conditionally convergent.
-/
def AbsolutelyConvergent : Type := Identity Nat

/- DEFINITION 3.3.31
   The sequence sₖ alternates in sign if sₖ · s_{k+1} ≤ 0 for all k ≥ 0;
   in other words, the product of any two consecutive terms is non-positive.
   In this case, Σₖ₌₀^∞ sₖ is called an alternating series.
-/
def AlternatingSeries : Type := Identity Nat

/- DEFINITION 3.3.35 (ALTERNATING HARMONIC SERIES)
   The alternating harmonic series A is given by
   Σₖ₌₀^∞ ((-1)^k)/(k+1) = 1 - 1/2 + 1/3 - 1/4 + ···
-/
def AlternatingHarmonicSeries : Type := Identity Nat

/- DEFINITION 3.3.42 (REARRANGEMENT)
   A rearrangement of a series Σₖ₌₀^∞ sₖ is a series Σₖ₌₀^∞ tₖ where each term
   of the first series appears exactly once in the second, and each term
   of the second appears exactly once in the first.

   More technically: a permutation of the natural numbers σ : ℕ → ℕ
   transforms Σₖ₌₀^∞ sₖ into Σₖ₌₀^∞ s_{σ(k)}.
-/
def Rearrangement : Type := Identity Nat
