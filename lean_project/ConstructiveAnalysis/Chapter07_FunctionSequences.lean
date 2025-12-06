/-!
# Chapter 7: Sequences and Series of Functions

Definitions extracted from Bridger's 'Real Analysis: A Constructive Approach'
-/

-- We only need natural numbers as a foundation

/- DEFINITION 7.1.1
   7.1.1 A sequence of functions on a set $S \subset \mathbb { R }$ is a rule or procedure which associates with each whole number $n \in \mathbb N$ a function $f _ { n } : S \to \mathbb { R }$ .The sequence is usually denoted ( $f _ { n }$ )or even ( $f _ { n } ( x ) )$ (as long as this is not confused with the sequence of numbers ( $f _ { n } ( x )$ ）.
   
   As with sequences of numbers, we are interested in convergence and what properties of the functions are preserved in the limit function when the sequence does converge. The simplest kind of convergence is called pointwise convergence.
-/

/- DEFINITION 7.1.2
   7.1.2 A sequence of functions ( $f _ { n }$ ）on $S$ is said to converge pointwise to the function $f$ (defined on $S$ ）if,for each $s \in S$ , the sequence of numbers $( f _ { n } ( s ) )$ converges to the number $f ( s )$
-/

/- DEFINITION 7.1.6
   7.1.6 That a sequence of functions ( $f _ { n }$ ）on $S$ converges to a function $f : S  \mathbb { R }$ uniformly on $S$ means that for each $\epsilon > 0$ ， there is some number $N ( \epsilon )$ such that $| f _ { n } ( s ) - f ( s ) | \leq \epsilon$ for all $s \in S$ when $n \geq N ( \epsilon )$ .When this is the case, $N ( \epsilon )$ is called a modulus of convergence.
   
   The key point here is that the number $N ( \epsilon )$ such that $| f _ { n } ( s ) - f ( s ) | \leq \epsilon$ depends only on $\epsilon$ and not on any particular value of $s$ . This is similar to the situation for uniform continuity,where a modulus of continuity $\delta ( \epsilon )$ (such that $| f ( x ) - f ( y ) | \leq \epsilon$ when $| x - y | < \delta ( \epsilon )$ ） depends only on $\epsilon$ and not on (say) $_ { x }$ or $_ y$
   
   To say that $f _ { n } ( x )$ lies within $\epsilon$ of $f ( x )$ means that the graph of $y = f _ { n } ( x )$ lies within a strip of vertical width $2 \epsilon$ centered around the graph of $y = f ( x )$ . The diagram below shows such a strip and one function $f _ { 1 } ( x )$ that does not quite lie within this strip and another, $f _ { 2 } ( x )$ that does.
   
   ![](images/374d5fb6619d7dcba4ce89392eec39111069a08b68a6a29be23e08a6584cb7bf.jpg)  
-/

/- DEFINITION 7.1.8
   7.1.8 A sequence offunctions ( $f _ { n } )$ is uniformly Cauchy on $S$ if for each $\epsilon > 0$ there is a whole number $N ( \epsilon )$ such that $| f _ { n } ( s ) - f _ { m } ( s ) | \leq \epsilon$ for all $s \in S$ when $m , n > N ( \epsilon )$
   
   It is clear that if $\left( f _ { n } \right)$ is uniformly Cauchy on $S$ , then the sequence of numbers $\left( f _ { n } ( s ) \right)$ is a Cauchy sequence,so it has a limit (Theorem 3.1.14),which we denote $f ( s )$ . This definition makes $f$ into a function $S \to \mathbb { R }$ . We will soon see that even if ( $f _ { n }$ ) is not uniformly Cauchy, the sequence of numbers ( $f _ { n } ( s ) )$ may form a Cauchy sequence. So, in this case also, we can define $f \left( s \right) = \operatorname* { l i m } \left( f _ { n } ( s ) \right)$ . This function is called the pointwise limit of the sequence ( $f _ { n }$ ）
-/

/- DEFINITION 7.3.1
   7.3.1 Let $\left( f _ { k } ( x ) \right)$ be a sequence of functions all defined on $S \subset \mathbb { R }$ .Let n be their nth partial sum.If, for , the sequence $\begin{array} { r } { F _ { n } ( x ) = \sum _ { k = 0 } ^ { n } f _ { k } ( x ) } \end{array}$ $x \in S$ $( F _ { n } ( x ) )$ convergestodnumber(whichwellcll )we say that converges pointuiseand write $\textstyle \sum _ { k = 0 } ^ { \infty } f _ { k } ( x ) = F ( x )$ If the sequence $F _ { n }$ ）conuerges uniformty on $S$ ， we say that $\textstyle \sum _ { k = 0 } ^ { \infty } f _ { k }$ converges uniformly to $F$ on $S$
   
   Note that $\textstyle \sum _ { k = 0 } ^ { \infty } f _ { k }$ converges uniformly on $S$ to $F$ means that given $\epsilon > 0$ , there is a number $N ( \epsilon )$ such that, for all $x \in S$ ，
   
   $$
   \boxed { F ( x ) - \sum _ { k = 0 } ^ { n } f _ { k } ( x ) } \Bigg | \leq \epsilon \quad \mathrm { ~ w h e n ~ } n > N ( \epsilon ) .
   $$
   
   （ $N ( \epsilon )$ depends only on $\epsilon$ , not on any $x \in S$ .）
-/

/- DEFINITION 7.3.4
   7.3.4（POWER SERIES） Let （ $s _ { n }$ ） be a sequence of numbers. The power series with coeffcients ( $s _ { n }$ ） is the sequence of polynomials $\left( S _ { n } ( x ) \right)$ given by
   
   $$
   S _ { n } ( x ) = \sum _ { k = 0 } ^ { n } s _ { k } x ^ { k } .
   $$
   
   We could have defined the power series in the more usual and less abstract way as an “infinite”polynomial
   
   $$
   \sum _ { k = 0 } ^ { \infty } s _ { k } x ^ { k } .
   $$
   
   The problem is,what sense is to be made of such an infinite sum? However, we will not actually push this abstraction; in fact,we immediately move away from it when the sequence of partial sums $S _ { n } ( x )$ converges.
-/

/- DEFINITION 7.3.5
   7.3.5 If for some number $_ { x }$ , the sequence of partial sums ( $\textstyle | S _ { n } ( x ) )$ converges to a number $S ( x )$ , then we write
   
   $$
   S ( x ) = \operatorname* { l i m } _ { n \to \infty } S _ { n } ( x ) = \sum _ { k = 0 } ^ { \infty } { s _ { k } x ^ { k } } .
   $$
-/

/- DEFINITION 7.3.12
   7.3.12 When $\scriptstyle \sum _ { k = 0 } ^ { n } s _ { k } x ^ { k }$ converges for $_ { x }$ in some interual $I$ ,it defines a function
   
   $$
   S ( x ) = \sum _ { k = 0 } ^ { \infty } s _ { k } x ^ { k } : I \longrightarrow \mathbb { R } .
   $$
-/

/- DEFINITION 7.3.17
   7.3.17 Given any sequence $\left( t _ { k } \right)$ ， and an increasing sequence of nonnegative integers $( n ( k ) )$ ， the sequence $\left( u _ { k } \right) = \left( t _ { n ( k ) } \right)$ is said to be a subsequence of the original sequence $t _ { n }$
-/

/- DEFINITION 7.3.23
   7.3.23 Whenever we have a largest value of R for which the equivalent conditions of the Main Convergence Theorem hold, we call it the radius of convergence of the power series.
-/

/- DEFINITION 7.4.4
   7.4.4 （TAYLOR POLYNOMIALS） SuppOSe the function $f$ is $_ { n }$ -times differentiable on the interval $( a , b )$ ，and $c \in ( a , b )$ .For $k = 0 \dots n - 1$ ， define the Taylor polynomials for $f$ ， centered at $c$ by
   
   $$
   \begin{array} { r c l } { { T _ { 0 } ( f , x , c ) } } & { { = } } & { { f ( c ) } } \\ { { } } & { { } } & { { } } \\ { { T _ { k + 1 } ( f , x , c ) } } & { { = } } & { { T _ { k } ( f , x , c ) + \displaystyle \frac { f ^ { ( k + 1 ) } ( c ) } { ( k + 1 ) ! } \cdot ( x - c ) ^ { k + 1 } . } } \end{array}
   $$
   
   In practice,we will be dealing with only one function $f$ and only one real number $c$ at a time, so we will adopt the more compact notation $T _ { n } ( x ) = T _ { n } ( f , x , c )$ We will always assume that $f$ is differentiable enough times so that the particular Taylor polynomials we are working with make sense.
   
   $$
   T _ { n } ( x ) = \sum _ { k = 0 } ^ { n } { \frac { f ^ { ( k ) } ( x ) } { k ! } } \cdot ( x - c ) ^ { k }
   $$
-/

/- DEFINITION 7.4.9
   7.4.9 If the sequence of Taylor polynomials $T _ { n } ( f , x , c )$ converges for $- R < x - c < R$ ，then
   
   $$
   \sum _ { i = 0 } ^ { \infty } T _ { n } ( f , x , c ) = \sum _ { i = 0 } ^ { \infty } { \frac { f ^ { ( i ) } ( c ) ( x - c ) ^ { i } } { i ! } }
   $$
   
   is called the Taylor series for $f$ around $x = c$ ， denoted $T ( f , x , c )$
   
   Even if the Taylor series converges,it may not converge to the function $f$ itself. Here is the classic example.
-/

/- DEFINITION 7.5.9
   7.5.9 $\textstyle { \frac { \pi } { 4 } }$ is the unique number $_ { x }$ in $[ 0 , 1 ]$ for which $\sin ( x ) = \cos ( x )$
-/

/- DEFINITION 7.5.12
   7.5.12 A function $f$ is periodic if there is a number $P$ such that $f ( x +$ $P ) = f ( x )$ for all $_ x$ in the domain of $f$ with $x + P$ also in the domain of $f$ $P$ is then called a period of $f$ .If $P$ is the smallest positive period for $f$ , then it is called the period of $f$
   
   The derivative of a periodic function is itself periodic,but this is not necessarily true for the antiderivative: see the exercises. On the other hand,we do have a kind of periodicity for definitive integrals,as the following proposition shows.
-/

/- DEFINITION 7.5.14
   7.5.14（THE TANGENT） $\tan ( x ) = { \frac { \sin x } { \cos x } }$ where cos(x) ≠ 0.
-/
