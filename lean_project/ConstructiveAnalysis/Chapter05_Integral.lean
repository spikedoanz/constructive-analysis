import ConstructiveAnalysis.Chapter04_Continuity

/-!
# Chapter 5: The Riemann Integral

Definitions extracted from Bridger's 'Real Analysis: A Constructive Approach'
-/

/- DEFINITION 5.1.4
   For any u, v ∈ I,
   ∫ᵤᵛ g = ∫_{min(u,v)}^v g - ∫_{min(u,v)}^u g
-/
def IntegralOrientation : Type := Identity Nat

/- DEFINITION 5.1.6 (PARTITION)
   A sequence of points a = p₀ ≤ p₁ ≤ ... ≤ pₙ = b is called a partition
   of the interval [a, b].
-/
def Partition : Type := Identity Nat

/- DEFINITION 5.1.8 (RIEMANN SUM)
   Assume g is defined on [a, b]. For any partition a = p₀ ≤ p₁ ≤ ... ≤ pₙ = b
   and points xᵢ ∈ [pᵢ₋₁, pᵢ], a number of the form Σᵢ₌₁ⁿ g(xᵢ)(pᵢ - pᵢ₋₁)
   is called a Riemann sum.
-/
def RiemannSum : Type := Identity Nat

/- DEFINITION 5.1.9 (INTEGRAL FAMILY)
   Given a uniformly continuous function g on [a, b], define the family
   I(g; [a, b]) = {[Σᵢ₌₁ⁿ Lᵢ Δᵢ, Σᵢ₌₁ⁿ Uᵢ Δᵢ]},
   where a = p₀ ≤ p₁ ≤ ... ≤ pₙ = b is any partition of [a, b],
   and Lᵢ ≤ g ≤ Uᵢ on [pᵢ₋₁, pᵢ] and Δᵢ = pᵢ - pᵢ₋₁ for i = 1, ..., n.
-/
def IntegralFamily : Type := Identity Nat

/- DEFINITION 5.1.11 (RIEMANN INTEGRAL)
   ∫ₐᵇ g = lim(I(g; [a, b]))
-/
def RiemannIntegral : Type := Identity Nat

/- DEFINITION 5.2.7 (FUNCTIONS DON'T CROSS)
   That g and h don't cross on [a, b] means that either g ≥ h on all of [a, b]
   or h ≥ g on all of [a, b].
-/
def FunctionsDontCross : Type := Identity Nat

/- DEFINITION 5.3.5 (IMPROPER INTEGRAL)
   The symbol ∫ₐᵇ f (where either one of a or b or both may be ∞) is called
   an improper integral if f is not UC on [a, b] (half open or open when an endpoint is ∞).
-/
def ImproperIntegral : Type := Identity Nat

/- DEFINITION 5.3.6
   Suppose that c is either a finite number or ∞, and that f is uniformly continuous
   on every finite subinterval of I = [a, c).
-/
def UCOnFiniteSubintervals : Type := Identity Nat

/- NOTATION 5.3.9 (CONVERGENT IMPROPER INTEGRAL)
   When an improper integral converges, we say that it exists, and write
   ∫ₐ^∞ f or ∫ₐᶜ f (respectively: ∫_{-∞}^b f or ∫_c^b f) for the number L it converges to.
-/
def ConvergentImproperIntegral : Type := Identity Nat

/- DEFINITION 5.3.10 (DIVERGENT INTEGRAL)
   If lim_{M→∞} ∫ₐᴹ f = -∞ or +∞, we say that the integral diverges
   (similarly for ∫_{M→-∞}^b f).
-/
def DivergentIntegral : Type := Identity Nat

/- DEFINITION 5.3.15
   When f is uniformly continuous on every finite subinterval of (-∞, ∞),
   the integral ∫_{-∞}^∞ f exists if both integrals ∫_{-∞}^a f and ∫_a^∞ f exist;
   we write ∫_{-∞}^∞ f = ∫_{-∞}^a f + ∫_a^∞ f.
-/
def IntegralOverReals : Type := Identity Nat

/- DEFINITION 5.3.16
   Suppose f is uniformly continuous on all closed subintervals of [a, c) and of (c, b].
   If the limits lim_{M→c-} ∫_a^M f and lim_{M→c+} ∫_M^b f both exist, then we define
   ∫_a^b f = lim_{M→c-} ∫_a^M f + lim_{M→c+} ∫_M^b f.
-/
def IntegralWithSingularity : Type := Identity Nat

/- DEFINITION 5.3.20
   A function f, UC on every finite subinterval of (-∞, ∞), is said to be
   absolutely integrable if ∫_{-∞}^∞ |f| converges.
-/
def AbsolutelyIntegrable : Type := Identity Nat

/- DEFINITION 5.3.25 (GAMMA FUNCTION)
   For x > 0, the Gamma function is defined by
   Γ(x) = ∫_0^∞ t^{x-1} e^{-t} dt
-/
def GammaFunction : Type := Identity Nat

/- DEFINITION 5.3.26 (LAPLACE TRANSFORM)
   For certain functions h(t), the Laplace transform H of h is defined by
   H(x) = ∫_0^∞ e^{-xt} h(t) dt
-/
def LaplaceTransform : Type := Identity Nat

/- DEFINITION 5.3.28 (RIEMANN INTEGRABILITY)
   f is said to be Riemann integrable over an interval [a, b] if there is a partition
   a = p₀ ≤ p₁ ≤ ... ≤ pₙ₋₁ ≤ pₙ = b such that the integrals (proper or improper)
   Vₖ = ∫_{pₖ₋₁}^{pₖ} f for k = 1, ..., n exist.
   When this is the case, we define ∫_a^b f = V₁ + V₂ + ... + Vₙ.
-/
def RiemannIntegrability : Type := Identity Nat
