import ConstructiveAnalysis.Chapter00_Preliminaries

/-!
# Chapter 1: The Real Numbers and Completeness

Definitions extracted from Bridger's 'Real Analysis: A Constructive Approach'
-/

/- DEFINITION 1.1.1
   $I$ is a rational interval means $I = \lfloor r , s \rfloor$, where r and s are rational numbers and $r \leq s$.
   The intervals $\lfloor r , s \rfloor$ and $\lfloor u , v \rfloor$ are equal precisely when $r = u$ and $s = v$
-/
def RationalInterval : Type := Identity Nat

/- DEFINITION 1.1.2
   $x \in \lfloor r , s \rfloor$ means that x is a rational number and $r \leq x \leq s$
-/
def IntervalMembership : Type := Identity Nat

/- DEFINITION 1.1.4 (INCLUSION OF INTERVALS)
   $\lfloor r , s \rfloor \subset \lfloor u , v \rfloor$ means that $u \leq r$ and $s \leq v$
-/
def IntervalInclusion : Type := Identity Nat

/- DEFINITION 1.1.8 (ADDITION OF INTERVALS)
   $I + J$ is the interval $[r + u, s + v]$
-/
def IntervalAddition : Type := Identity Nat

/- DEFINITION 1.1.9 (NEGATION OF INTERVALS)
   $-I$ is the interval $\lfloor -s, -r \rfloor$
-/
def IntervalNegation : Type := Identity Nat

/- DEFINITION 1.1.10 (SUBTRACTION OF INTERVALS)
   $J - I$ is the interval $J + (-I) = [u - s, v - r]$
-/
def IntervalSubtraction : Type := Identity Nat

/- NOTATION 1.1.11 (THE 0 INTERVAL)
   We will occasionally denote the interval $[0, 0]$ simply by 0.
-/
def ZeroInterval : Type := Identity Nat

/- DEFINITION 1.1.13 (MULTIPLICATION OF INTERVALS)
   For $I = [r, s]$ and $J = \lfloor u, v \rfloor$:
   $IJ = [\min(ru, rv, su, sv), \max(ru, rv, su, sv)]$
-/
def IntervalMultiplication : Type := Identity Nat

/- DEFINITION 1.1.14
   I is the smallest interval having the property P means:
   1. I has property P, and
   2. If J has property P, then $I \subset J$
-/
def SmallestInterval : Type := Identity Nat

/- DEFINITION 1.1.18 (STRICT INEQUALITY FOR INTERVALS)
   $I < J$ (also written $J > I$) means that $s < u$
-/
def IntervalStrictInequality : Type := Identity Nat

/- DEFINITION 1.1.20 (RECIPROCAL)
   For $I > 0$ or $I < 0$, $1/I$ is the interval $\lfloor 1/s, 1/r \rfloor$
-/
def IntervalReciprocal : Type := Identity Nat

/- DEFINITION 1.1.22 (LENGTH)
   $\ell(I) = s - r$ is the length of $\lfloor r, s \rfloor$
-/
def IntervalLength : Type := Identity Nat

/- DEFINITION 1.1.28 (ABSOLUTE VALUE FOR INTERVALS)
   |I| = I when r > 0, -I when s < 0, [0, max(-r, s)] when $r \leq 0 \leq s$
-/
def IntervalAbsoluteValue : Type := Identity Nat

/- DEFINITION 1.1.31 (MAX AND MIN FOR INTERVALS)
   $\max(I, J) = [\max(r, u), \max(s, v)]$
   $\min(I, J) = [\min(r, u), \min(s, v)]$
-/
def IntervalMaxMin : Type := Identity Nat

/- DEFINITION 1.1.35
   $\max(I_1, \ldots, I_n) = [\max(r_1, \ldots, r_n), \max(s_1, \ldots, s_n)]$
   $\min(I_1, \ldots, I_n) = [\min(r_1, \ldots, r_n), \min(s_1, \ldots, s_n)]$
-/
def IntervalMaxMinN : Type := Identity Nat

/- DEFINITION 1.2.1
   We say the intervals I and J intersect, or meet, if there is a rational number x
   which belongs to both I and J (i.e. $x \in I$ and $x \in J$)
-/
def IntervalsIntersect : Type := Identity Nat

/- NOTATION 1.2.3
   If I and J intersect, their intersection is an interval given by
   $I \cap J = [\max(r, u), \min(s, v)]$
-/
def IntervalIntersection : Type := Identity Nat

/- NOTATION 1.2.5
   For intervals $I_k = \lfloor r_i, s_i \rfloor$ that intersect,
   $\bigcap_{k=1}^n I_i = [\max(r_1, \ldots, r_n), \min(s_1, \ldots, s_n)]$
-/
def IntervalIntersectionN : Type := Identity Nat

/- DEFINITION 1.2.8
   F is a consistent family of intervals means that for every pair of intervals
   I and J in F, I and J intersect.
-/
def ConsistentFamily : Type := Identity Nat

/- NOTATION 1.2.11
   If F is a family of rational intervals, then $I \in F$ means that I is an interval of F.
-/
def FamilyMembership : Type := Identity Nat

/- DEFINITION 1.2.12
   Given F and G families of intervals:
   $F + G$ is the family $\{I + J \mid I \in F, J \in G\}$
   $-F$ is the family $\{-I \mid I \in F\}$
   $FG$ is the family $\{IJ \mid I \in F, J \in G\}$
   $|F|$ is the family $\{|I| \mid I \in F\}$
   If at least one interval of F doesn't contain 0, then $1/F$ is the family $\{1/I \mid I \in F \text{ and } 0 \notin I\}$
   $\max(F, G)$ is the family $\{\max(I, J) \mid I \in F, J \in G\}$
   $\min(F, G)$ is the family $\{\min(I, J) \mid I \in F, J \in G\}$
   $F - G$ is the family $F + (-G)$
-/
def FamilyArithmetic : Type := Identity Nat

/- DEFINITION 1.2.14 (CONSISTENT FAMILIES)
   Given two families of intervals F and G, we say F is consistent with G if each interval
   from the family F intersects each interval from the family G. This relation is denoted $F \sim G$
-/
def FamiliesConsistent : Type := Identity Nat

/- DEFINITION 1.2.19 (STRICT INEQUALITY FOR FAMILIES)
   Given two families of intervals F and G, $F < G$ means that we can find at least one
   I in F and one J in G, with $I < J$
-/
def FamilyStrictInequality : Type := Identity Nat

/- DEFINITION 1.2.23 (WEAK INEQUALITY: FAMILIES)
   $F \leq G$ means $F > G$ is false; i.e., no interval of F lies wholly to the right
   of any interval in G. This is also written $G \geq F$
-/
def FamilyWeakInequality : Type := Identity Nat

/- DEFINITION 1.2.25
   If $\lfloor r, s \rfloor$ is an interval of the family F, then r is called a lower bound of F
   and s is called an upper bound of F
-/
def FamilyBounds : Type := Identity Nat

/- DEFINITION 1.3.1
   The family F is fine when, for each positive rational ε, there is an interval in F
   that has length less than ε
-/
def FineFamily : Type := Identity Nat

/- NOTATION 1.3.10
   For each rational number c, we will also use c to denote the family of intervals
   whose sole member is $\lfloor c, c \rfloor$; that is, c will also denote $\{[c, c]\}$
-/
def RationalAsFamily : Type := Identity Nat

/- DEFINITION 1.3.15
   If F is a fine and consistent family, define $F^*$ to be the family of all $[a, b]$
   that intersect every member of F (or, equivalently, all $\lfloor a, b \rfloor$ such that $a \leq F \leq b$)
-/
def MaximalFamily : Type := Identity Nat

/- DEFINITION 1.4.1 (REAL NUMBER)
   A real number is a fine and consistent family of rational intervals.
   We use the symbol ℝ to denote the reals, and the expression $A \in \mathbb{R}$ means that A is a real number.
-/
def RealNumber : Type := Identity Nat

/- DEFINITION 1.4.2 (EQUALITY OF REALS)
   $A = B$ as real numbers means $A \sim B$ as families of intervals.
-/
def RealEquality : Type := Identity Nat

/- DEFINITION 1.4.5
   $A \in \mathbb{R}^*$ means that $A \in \mathbb{R}$ and either $A < 0$ or $A > 0$
-/
def NonzeroReal : Type := Identity Nat

/- DEFINITION 1.5.3 (SUBTRACTION AND DIVISION)
   $A - B$ means $A + (-B)$ and, for $B \in \mathbb{R}^*$, $A/B$ means $A(1/B)$
-/
def RealSubtractionDivision : Type := Identity Nat

/- DEFINITION 1.5.33 (RULING OUT)
   To say that statements $P_1, P_2, \ldots, P_N$ can't all be ruled out is to say that
   they can't all be false; in other words, if they are all false it leads to a contradiction.
-/
def RulingOut : Type := Identity Nat

/- DEFINITION 1.5.39 (BETWEENNESS)
   A is between B and C means $\min(B, C) \leq A \leq \max(B, C)$
-/
def Betweenness : Type := Identity Nat

/- DEFINITION 1.7.1 (REAL INTERVAL)
   $\lfloor A, B \rfloor$ is a real interval when A and B are real numbers and $A \leq B$.
   If X is a real number, then $X \in \lfloor A, B \rfloor$ means $A \leq X \leq B$.
-/
def RealInterval : Type := Identity Nat

/- DEFINITION 1.7.5
   For any family of real intervals S:
   1. S is consistent means that every pair of intervals in S intersect.
   2. S is fine means that, for each ε > 0 there is an interval I in S with ℓ(I) < ε
-/
def RealFamilyConsistentFine : Type := Identity Nat

/- DEFINITION 1.7.8 (OVERSPREADS)
   The rational interval $\lfloor r, s \rfloor$ overspreads the real interval $\lfloor A, B \rfloor$
   means $r \leq A \leq B \leq s$
-/
def Overspreads : Type := Identity Nat

/- DEFINITION 1.7.9 (lim(S))
   For a consistent and fine family S of real intervals, lim(S) is the family of all
   rational intervals that overspread at least one interval of S
-/
def LimitOfFamily : Type := Identity Nat

/- DEFINITION 1.8.1
   A limiting family S is a fine and consistent family of real intervals.
   The limit of such a family is the real number lim(S) contained in each interval of S.
-/
def LimitingFamily : Type := Identity Nat

/- NOTATION 1.8.2
   $S \to X$ means S is a limiting family and $X = \lim(S)$
-/
def ConvergesToLimit : Type := Identity Nat

/- DEFINITION 1.8.3
   If $\lfloor A, B \rfloor$ is an interval of the family S, then A is called a lower bound for S
   and B is called an upper bound for S
-/
def RealFamilyBounds : Type := Identity Nat

/- DEFINITION 1.8.11 (Goldbach Number)
   $G = \{[G_N - 1/2^{N-1}, G_N + 1/2^{N-1}], N = 1, 2, ...\}$
   where $G_N$ are partial sums related to the Goldbach conjecture.
   G is a fine and consistent family, so G is a real number.
-/
def GoldbachNumber : Type := Identity Nat
