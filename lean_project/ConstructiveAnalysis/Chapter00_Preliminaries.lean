-- Placeholder type for definitions to be formalized later
def Identity (α : Type) : Type := α

/-!
# Chapter 0: Preliminaries

Definitions extracted from Bridger's 'Real Analysis: A Constructive Approach'
-/

/- NOTATION O.1.1
   O.1.1 n E N means that n is a natural number.

   One of the most useful properties of $\mathbb { N }$ is the following,which we have put in a box because of its importance.
-/

/- NOTATION 0.1.3
   0.1.3 $n \in \mathbb { Z }$ means that n is an integer.

   So, we can now turn to the fractions.
-/

/- DEFINITION O.2.1
   O.2.1 (RATIONAL NUMBERs) A rational number is an ordered pair $a / b$ ， where a and b are integers and $b \neq 0$

   1. $a / b = c / d$ means $a d = c b$
-/
def RationalNumber : Type := Identity Nat

/- NOTATION 0.2.2
   0.2.2 $r \in \mathbb { Q }$ means that $r$ is a rational number.
-/

/- DEFINITION 0.2.4
   0.2.4 $r \ \leq \ s$ means that $r \ > \ s$ is false, i.e. $r \ \leq \ s$ means that either $r < s$ or $r = s$ . This is also written $s \geq r$
-/
def RationalLe : Type := Identity Nat

/- DEFINITION (Integer Equality)
   For integers, $\langle m , n \rangle = \langle m ^ { \prime } , n ^ { \prime } \rangle$ means $m + n ^ { \prime } = m ^ { \prime } + n$
-/
def IntegerEquality : Type := Identity Nat

/- DEFINITION (Integer Addition)
   $\langle m , n \rangle + \langle m ^ { \prime } , n ^ { \prime } \rangle = \langle m + m ^ { \prime } , n + n ^ { \prime } \rangle$
-/
def IntegerAddition : Type := Identity Nat

/- DEFINITION (Integer Multiplication)
   $\langle m , n \rangle \cdot \langle m ^ { \prime } , n ^ { \prime } \rangle = \langle m m ^ { \prime } + n n ^ { \prime } , m n ^ { \prime } + m ^ { \prime } n \rangle$
-/
def IntegerMultiplication : Type := Identity Nat

/- DEFINITION (Integer Negation)
   If $a = \langle m , n \rangle$, define $- a$ to be $\langle n , m \rangle$
-/
def IntegerNegation : Type := Identity Nat

/- DEFINITION (Rational Arithmetic)
   For rationals $r = a / b$ and $s = c / d$：
   · (Sums and Negatives) $r + s = \frac{ad + bc}{bd}$, $-r = \frac{-a}{b} = \frac{a}{-b}$
   · (Products and Reciprocals) $rs = \frac{ac}{bd}$, and if $r \neq 0$, then $1/r = \frac{b}{a}$
   · (Differences and Quotients) $r - s = r + (-s)$, and if $s \neq 0$, then $r/s = r(1/s)$
-/
def RationalArithmetic : Type := Identity Nat
