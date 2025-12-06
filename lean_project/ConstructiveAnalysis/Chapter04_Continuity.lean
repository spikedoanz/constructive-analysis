/-!
# Chapter 4: Uniform Continuity

Definitions extracted from Bridger's 'Real Analysis: A Constructive Approach'
-/

-- We only need natural numbers as a foundation

/- DEFINITION 4.1.3
   4.1.3 The function $f$ is uniformly continuous (UC) on $S \subset \mathbb { R }$ if for each $\epsilon > 0$ we can find a $\delta > 0$ (depending on $\epsilon$ and $f$ ）such that
   
   $$
   | f ( y ) - f ( x ) | \leq \epsilon \quad w h e n e v e r { x , y } \in S { \ a n d } \ | y - x | < \delta
   $$
-/

/- DEFINITION 4.1.13
   4.1.13 $f$ is bounded on $S$ if there is α constant such that $| f ( x ) | < K$ for all $x \in S$
-/

/- DEFINITION 4.1.14
   4.1.14 $g$ is bounded away from $\boldsymbol { \mathit { 0 } }$ on $S$ if there is a constant $L > 0$ such that $| g \left( x \right) | > L$ for all $x \in S$
-/

/- DEFINITION 4.2.7
   4.2.7 Let $S \subset T$ be sets of real numbers. $S$ is dense in $T$ means that every open interval of $\mathbb { R }$ which intersects $T$ also intersects $S$
-/

/- DEFINITION 4.2.14
   4.2.14 If $x _ { 1 } , \ldots , x _ { n } \in \left\lfloor a , b \right\rfloor$ ， then $P = \left\lfloor a , b \right\rfloor - \left\{ x _ { 1 } , . . . , x _ { n } \right\}$ consists of those $x \in \lfloor a , b \rfloor$ such that $\left| x - x _ { i } \right| > 0$ for $i = 1 , \ldots , n$ ： $P$ is called a (finitely) punctured interval.
   
   The following tells us that a finitely punctured interval $P$ is dense in $\lfloor a , b \rfloor$
-/

/- DEFINITION 4.2.17
   4.2.17 $A \cup B$ ， the union of two sets (for us they will be intervals), consists of those x for which it can be determined that x lies in $A$ or $_ { x }$ lies in $B$
-/
