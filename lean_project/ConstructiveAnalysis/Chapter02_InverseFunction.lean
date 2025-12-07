import ConstructiveAnalysis.Chapter01_RealNumbers

/-!
# Chapter 2: An Inverse Function Theorem and Its Application

Definitions extracted from Bridger's 'Real Analysis: A Constructive Approach'
-/

/- NOTATION 2.0.1
   Types of real intervals: open (A, B), closed [A, B], half-open [A, B), (A, B]
-/
def IntervalTypes : Type := Identity Nat

/- DEFINITION 2.1.1
   A real-valued function f is a rule or procedure that defines, for each allowable real number x,
   another real number denoted f(x). The collection of allowable numbers x is called the domain of f.
   We say that f is defined on the interval [A, B] if every number in [A, B] is in the domain of f.
-/
def RealValuedFunction : Type := Identity Nat

/- DEFINITION 2.1.3 (INVERSE FUNCTIONS ON INTERVALS)
   We say that g : [f(A), f(B)] → [A, B] is an inverse for f if g(f(x)) = x for all x ∈ [A, B].
   We say that f and g are inverses of each other if, in addition, f(g(y)) = y for all y ∈ [f(A), f(B)].
-/
def InverseFunction : Type := Identity Nat

/- DEFINITION 2.1.4
   We write f : [A, B] → I if, for each x ∈ [A, B], f(x) ∈ I.
   1. f : [A, B] → I is called surjective (or onto) if, for each z ∈ I, there is some x ∈ [A, B] such that z = f(x).
   2. f : [A, B] → I is called injective (or 1-to-1) if f(x₁) = f(x₂) implies that x₁ = x₂.
-/
def SurjectiveInjective : Type := Identity Nat

/- DEFINITION 2.1.7 (LIPSCHITZ CONDITIONS)
   Suppose that f is defined on the interval [A, B].
   f satisfies a Lipschitz condition if there exist constants L, M > 0 such that
   L|x - y| ≤ |f(x) - f(y)| ≤ M|x - y| for all x, y ∈ [A, B].
-/
def LipschitzCondition : Type := Identity Nat

/- DEFINITION 2.2.9 (NTH ROOT)
   ⁿ√, or ( )^(1/n), is the inverse of the function ( )ⁿ.
   When n is odd, this function is defined on any interval;
   when n is even it is defined only on intervals [A, B] with A ≥ 0.
-/
def NthRoot : Type := Identity Nat

/- DEFINITION 2.3.1 (INTEGER POWERS)
   Let A be a positive real number and n an integer. Then:
   1. A⁰ = 1
   2. For n > 0, A^(n+1) = A · Aⁿ
   3. For n < 0, Aⁿ = 1/(A^(-n)) = 1/(A^|n|)
-/
def IntegerPowers : Type := Identity Nat

/- DEFINITION 2.3.5 (RATIONAL POWERS - POSITIVE)
   For a rational number r = m/n > 0 with m, n ∈ ℕ and A > 0,
   A^r = (A^m)^(1/n)
-/
def RationalPowersPositive : Type := Identity Nat

/- DEFINITION 2.3.6 (RATIONAL POWERS - NEGATIVE)
   For a rational number r < 0 and A > 0,
   A^r = 1/(A^(-r))
-/
def RationalPowersNegative : Type := Identity Nat

/- DEFINITION 2.3.12 (LIMITING FAMILY FOR A^x)
   For A > 0,
   S(A, x) = {[min(A^r, A^s), max(A^r, A^s)] : [r, s] ∈ x*}
-/
def ExponentialLimitingFamily : Type := Identity Nat

/- DEFINITION 2.3.14 (THE EXPONENTIAL FUNCTION)
   For A > 0, A^x = lim(S(A, x))
-/
def ExponentialFunction : Type := Identity Nat

/- DEFINITION 2.3.23 (LOGARITHM)
   When 0 < A < 1 or A > 1, log_A(x) is the inverse of the function A^x.
-/
def Logarithm : Type := Identity Nat

/- DEFINITION 2.4.1 (LAMBDA FAMILY)
   For a > 1 let
   Λ(a) = {[(a^(-x) - 1)/(-x), (a^x - 1)/x] : x > 0}
-/
def LambdaFamily : Type := Identity Nat

/- DEFINITION 2.4.3 (L(a))
   Let L(a) = lim(Λ(a))
   (Think of L(a) as ln(a).)
-/
def LFunction : Type := Identity Nat

/- DEFINITION 2.4.7 (EULER NUMBER)
   The Euler number is given by e = 2^(1/L(2))
-/
def EulerNumber : Type := Identity Nat

/- NOTATION 2.4.13
   From now on we will use ln(a) in place of log_e(a)
-/
def NaturalLogarithm : Type := Identity Nat

/- DEFINITION 2.4.14 (THE POWER FUNCTION)
   For x > 0 and real u,
   x^u = e^(u · ln x)
-/
def PowerFunction : Type := Identity Nat
