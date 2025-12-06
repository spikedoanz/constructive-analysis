# 7.1 Sequences of Functions

A sequence of functions ( $f _ { n }$ ) is a generalization of the notion of a sequence of numbers $\left( a _ { n } \right)$ . Thus, instead of numbers $a _ { n }$ ， for each $n \in \mathbb N$ we will be given some function $f _ { n } : S \to \mathbb { R }$ ,where $S \subset \mathbb { R }$ . Here is a somewhat more formal definition,though none is really needed.

DEFINITiON 7.1.1 A sequence of functions on a set $S \subset \mathbb { R }$ is a rule or procedure which associates with each whole number $n \in \mathbb N$ a function $f _ { n } : S \to \mathbb { R }$ .The sequence is usually denoted ( $f _ { n }$ )or even ( $f _ { n } ( x ) )$ (as long as this is not confused with the sequence of numbers ( $f _ { n } ( x )$ ）.

As with sequences of numbers, we are interested in convergence and what properties of the functions are preserved in the limit function when the sequence does converge. The simplest kind of convergence is called pointwise convergence.

DEFINITION 7.1.2 A sequence of functions ( $f _ { n }$ ）on $S$ is said to converge pointwise to the function $f$ (defined on $S$ ）if,for each $s \in S$ , the sequence of numbers $( f _ { n } ( s ) )$ converges to the number $f ( s )$

EXAMPLE 7.1.3 For $n = 1 , 2 , \ldots$ ，let $f _ { n } ( x ) = x ^ { n }$ . Then $f _ { n } ( s ) \to 0$ for each $s \in S =$ $\lfloor 0 , 1 )$ . The reason that we stick to the half-open interval $[ 0 , 1 )$ is that $f _ { n } ( 1 ) = 1$ (not $0$ )for all $_ n$

EXAMPLE 7.1.4 For $n = 1 , 2 , \ldots$ let $Q _ { n } ( x ) = \left( 1 + { \frac { x } { n } } \right) ^ { n }$ Then $( f _ { n } ( s ) ) \to e ^ { s }$ for any s (see exercise $\boldsymbol { \it 6 }$ on page 112).

ExAMPLE 7.1.5 For $n = 0 , 1 , \ldots$ ，let $\begin{array} { r } { S _ { n } ( x ) = \sum _ { k = 0 } ^ { n } x ^ { k } = 1 + x + x ^ { 2 } + \cdot \cdot \cdot + x ^ { n } . } \end{array}$ Then $( f _ { n } ( s ) ) \to { \frac { 1 } { 1 - s } }$ for each $s \in S = ( - 1 , 1 )$ ;the $S _ { n } ( x )$ are the partial sums of $a$ geometric series.

As we shall see, pointwise convergence is not enough to ensure that the limit of uniformly continuous functions be uniformly continuous. We need a stronger condition,and here it is.

DEFINITION 7.1.6 That a sequence of functions ( $f _ { n }$ ）on $S$ converges to a function $f : S  \mathbb { R }$ uniformly on $S$ means that for each $\epsilon > 0$ ， there is some number $N ( \epsilon )$ such that $| f _ { n } ( s ) - f ( s ) | \leq \epsilon$ for all $s \in S$ when $n \geq N ( \epsilon )$ .When this is the case, $N ( \epsilon )$ is called a modulus of convergence.

The key point here is that the number $N ( \epsilon )$ such that $| f _ { n } ( s ) - f ( s ) | \leq \epsilon$ depends only on $\epsilon$ and not on any particular value of $s$ . This is similar to the situation for uniform continuity,where a modulus of continuity $\delta ( \epsilon )$ (such that $| f ( x ) - f ( y ) | \leq \epsilon$ when $| x - y | < \delta ( \epsilon )$ ） depends only on $\epsilon$ and not on (say) $_ { x }$ or $_ y$

To say that $f _ { n } ( x )$ lies within $\epsilon$ of $f ( x )$ means that the graph of $y = f _ { n } ( x )$ lies within a strip of vertical width $2 \epsilon$ centered around the graph of $y = f ( x )$ . The diagram below shows such a strip and one function $f _ { 1 } ( x )$ that does not quite lie within this strip and another, $f _ { 2 } ( x )$ that does.

![](images/374d5fb6619d7dcba4ce89392eec39111069a08b68a6a29be23e08a6584cb7bf.jpg)  
ExAMPLE 7.1.7 Let $S$ be any closed subinterual of $( - 1 , 1 )$ , and let $\textstyle f _ { n } ( x ) = \sum _ { k = 0 } ^ { n } x ^ { k }$ Then $f _ { n } ( x )  f ( x ) = { \frac { 1 } { 1 - x } }$ uniformly on $S$ te prffe that the convergence is not uniform on all of $S = ( - 1 , 1 )$ ，as we will see later.

DEFINITION 7.1.8 A sequence offunctions ( $f _ { n } )$ is uniformly Cauchy on $S$ if for each $\epsilon > 0$ there is a whole number $N ( \epsilon )$ such that $| f _ { n } ( s ) - f _ { m } ( s ) | \leq \epsilon$ for all $s \in S$ when $m , n > N ( \epsilon )$

It is clear that if $\left( f _ { n } \right)$ is uniformly Cauchy on $S$ , then the sequence of numbers $\left( f _ { n } ( s ) \right)$ is a Cauchy sequence,so it has a limit (Theorem 3.1.14),which we denote $f ( s )$ . This definition makes $f$ into a function $S \to \mathbb { R }$ . We will soon see that even if ( $f _ { n }$ ) is not uniformly Cauchy, the sequence of numbers ( $f _ { n } ( s ) )$ may form a Cauchy sequence. So, in this case also, we can define $f \left( s \right) = \operatorname* { l i m } \left( f _ { n } ( s ) \right)$ . This function is called the pointwise limit of the sequence ( $f _ { n }$ ）

PROPOSITION 7.1.9 If $( f _ { n } ) \to f$ uniformly on $S$ ，then ( $f _ { n }$ ） is uniformly Cauchy on$S$

Proof.Exercise.

PROPOSITION 7.1.10 If( $f _ { n _ { \mathrm { ~ , ~ } } }$ ） is uniformly Cauchy on $S$ ， it converges uniformly on$S$ to the pointwise limit function f(s)= lim fn(s).

Proof. Since ( $f _ { n }$ ) is uniformly Cauchy there is a modulus of convergence $N ( \epsilon )$ .Let $_ n$ be any number $> N \left( \epsilon \right)$ ; the claim is that $| f _ { n } ( s ) - f ( s ) | \leq \epsilon$ for any $s \in S$ .Let's hold $_ { n }$ fixed and suppose that $m > n$ . The triangle inequality gives

$$
| f _ { n } ( s ) - f ( s ) | \leq \underbrace { | f _ { n } ( s ) - f _ { m } ( s ) | } _ { A } + \underbrace { | f _ { m } ( s ) - f ( s ) | } _ { B } .
$$

Since $m , n \geq N ( \epsilon )$ ，we know that $A \leq \epsilon$ . But we are free to make $_ { m }$ as big as we want without changing $_ n$ ， so we can use the fact that, for any particular $s \in S$ ， the sequence of numbers $f _ { m } ( s ) \to f ( s )$ .Given any $\epsilon ^ { \prime } > 0$ ， choose $_ { m }$ so big that the quantity $B \ < \ \epsilon ^ { \prime }$ .So,without changing $| f _ { n } ( s ) - f ( s ) |$ or $_ n$ or $\epsilon$ ，we see that $| f _ { n } ( s ) - f ( s ) | \leq \epsilon + \epsilon ^ { \prime }$ for any $\epsilon ^ { \prime } > 0$ . The Wiggle Lemma now applies to tell us that $| f _ { n } ( s ) - f ( s ) | \leq \epsilon$ $|$

This proof seems like magic, so read over the logic carefully! We have actually used this reasoning before: see Lemma 3.1.15 on page 1O4，which says that the same modulus establishing that a sequence is Cauchy can be used as a modulus of convergence.

As promised, we now show that the uniform limit of uniformly continuous functions is itself UC. The main part of the argument is contained in the following lemmas (see Definition 6.1.2 to review the meaning of $r ( x , y ) \to 0$ as $y - x  0$ ） Also, $r _ { n } ( x , y )  r ( x , y )$ uniformly means what you'd expect: give $\epsilon > 0$ ，there is a modulus $N ( \epsilon )$ — depending only on $r$ and $\epsilon$ — such that $| r _ { n } ( x , y ) - r ( x , y ) | < \epsilon$ when $n > N ( \epsilon )$ (for all $x , y \in S$ ）

LEMMA 7.1.11 Suppose we have a sequence of functions $r _ { n } ( x , y )$ ， and another function $r ( x , y )$ ， all defined for $x , y \in S$ ， and satisfying

1. $r _ { n } ( x , y ) \to 0$ as $y - x  0$ on $S$

2. $r _ { n } ( x , y )  r ( x , y )$ uniformly on $S$

Then $r ( x , y ) \to 0$ as $y - x \to 0$ on $S$

Proof. Basically, $r _ { n } ( x , y )$ can be made close to $r ( x , y )$ and $r \left( x , y \right)$ close to $0$ , so it's the usual adding and subtracting, triangle inequality gambit:

$$
\left| r ( x , y ) \right| \leq \left| r ( x , y ) - r _ { n } ( x , y ) \right| + \left| r _ { n } ( x , y ) \right| .
$$

The first term on the right can be made small by making $_ n$ sufficiently large, independent of $_ x$ and $_ y$ ，say $n = N ( \epsilon / 2 )$ . But since $r _ { n } ( x , y ) \to 0$ for this particular $_ n$ ， there is a $\delta = \delta ( r _ { n } , \epsilon / 2 )$ which makes the second term also less than $\epsilon / 2$ as long as $| y - x | < \delta$ ■

LEMMA 7.1.12 If $( f _ { n } ) \to f$ uniformly on $S$ ，then $f _ { n } ( y ) - f _ { n } ( x ) \to f ( y ) - f ( x )$ uniformly on $S$

Proof. We just have to make

$$
| ( f _ { n } ( y ) - f _ { n } ( x ) ) - ( f ( y ) - f ( x ) ) | = | ( f _ { n } ( y ) - f ( y ) ) + ( f ( x ) - f _ { n } ( x ) ) |
$$

smaller than $\epsilon$ by making $_ n$ sufficiently large.But this is a simple ( $\epsilon / 2$ ） triangle inequality argument.

THEOREM 7.1.13 If $f _ { n }  f$ uniformly on $S$ ，and each $f _ { n }$ is uniformly continuous on $S$ ，then $f$ is uniformly continuous on $S$ as well.

Proof. Use the previous two lemmas, taking $r _ { n } ( x , y ) = f _ { n } ( y ) - f _ { n } ( x )$ and $r ( x , y ) =$ $f ( y ) - f ( x )$ ■

We also have a partial converse to this theorem.

PROPOSITION 7.1.14 Suppose $( f _ { n } ( x ) ) \to f ( x )$ pointwise on $\lfloor a , b \rfloor$ . Suppose also that each $f _ { n }$ is (weakly) increasing and $f$ is uniformly continuous on $\lfloor a , b \rfloor$ . Then

1. $f$ is weakly increasing on $\lfloor a , b \rfloor$ ，and

2. $( f _ { n } ) \to f$ uniformly on $[ a , b ]$

Proof. See exercises■

REMARk 7.1.15 This proposition also holds with the same hypotheses except each function $f _ { n }$ is weakly decreasing.

Recall that uniformly continuous functions extend to a set $S$ from a dense subset $D$ (see Theorem 4.2.11)；we can combine this fact with Theorem 7.1.13 to obtain the following result.

PROPOSITION 7.1.16 Suppose $D$ is dense in $S$ ，each $f _ { n }$ is uniformly continuous on $D$ ，and $( f _ { n } ) \to f$ uniformly on $D$ Let $\overline { { f _ { n } } }$ and $\overline { { f } }$ be the (uniformly continuous) extensions of these functions to $S$ . Then ${ \overline { { f _ { n } } } } \to { \overline { { f } } }$ uniformly on $S$

Proof. Suppose $_ { x }$ isin $S$ ； since $D$ is dense in $S$ ， we_can find a $_ y$ in $D$ which is arbitrarily close to $_ { x }$ . Noting that ${ \overline { { f } } } ( y ) = f ( y )$ since $\overline { { f } }$ extends $f$ , and (similarly) ${ \overline { { f _ { n } } } } ( y ) = f _ { n } ( y )$ ，we have

$$
\begin{array} { r l r } { \left| \overline { { f } } ( x ) - \overline { { f _ { n } } } ( x ) \right| } & { \leq } & { \left| \overline { { f } } ( x ) - \overline { { f } } ( y ) \right| + \left| \overline { { f } } ( y ) - \overline { { f _ { n } } } ( x ) \right| } \\ & { \leq } & { \underbrace { \left| \overline { { f } } ( x ) - \overline { { f } } ( y ) \right| } _ { \overline { { f } } \mathrm { ~ i s ~ U C ~ } } + \underbrace { \left| f ( y ) - f _ { n } ( y ) \right| } _ { f _ { n } \to f \mathrm { ~ u n i f o r m l y } } + \underbrace { \left| \overline { { f _ { n } } } ( y ) - \overline { { f _ { n } } } ( x ) \right| } _ { \overline { { f _ { n } } } \mathrm { ~ i s ~ U C ~ } } . } \end{array}
$$

Given $\epsilon > 0$ ， suppose $n > N ( \epsilon / 3 )$ where $N ( \epsilon / 3 )$ is a modulus of convergence for ${ \overline { { f _ { n } } } } \to f$ on $D$ . That makes the middle term above $\leq \epsilon / 3$ . By choosing $_ y$ sufficiently close to $_ { x }$ , uniform continuity of $\overline { { f } }$ and $\overline { { f _ { n } } }$ makes the other two terms $\leq \epsilon / 3$ as well.

Not only are Theorem 7.1.13 and Proposition 7.1.16 useful in proving that certain limit functions are uniformly continuous, their contrapositives can be used to show that certain sequences of functions do not converge uniformly; in other words,if the functions are UC,but their limit is not, then the convergence can not have been uniform. Here are some examples.

EXAMPLE 7.1.17 For $n = 1 , 2 , \ldots$ ，let $f _ { n } ( x ) \ = \ x ^ { n }$ . Consider these functions on $S \ = \ \lfloor 0 , 1 \rfloor$ ，and let $D = \lfloor 0 , 1 \rfloor$ ，a dense subset of $S$ .On $D$ ， $f _ { n } ( x )  0$ If the convergence on $D$ were uniform, $\left( f _ { n } \right)$ would converge to a function $f$ identically 0 on $D$ ．Proposition 7.1.16 guarantees that they converge to O on $S$ as well.But clearly $f _ { n } ( 1 ) = 1$ for all $_ n$ ， so this can't happen. There is no continuous function on $S = \lfloor 0 , 1 \rfloor$ which is $0$ on $\lfloor 0 , 1 )$ but takes the value 1 at 1. So ( $f _ { n }$ ）converges pointwise but not uniformly. Here is a picture of some of these functions. Note that for large $_ n$ ， the functions stay close to the $_ { x }$ -axis more and more.

![](images/8b9633c1d23f6ded705a7afe9dbf7bcae20ac63c23f0e771bcb77ebad1f6e476.jpg)  
$f _ { 1 } , f _ { 2 } , f _ { 3 } , f _ { 5 }$ ，and $f _ { 1 0 }$

EXAMPLE 7.1.18 Here is another example similar to the one above.

$$
g _ { n } ( x ) = \left\{ \begin{array} { c c c } { { - 1 } } & { { i f } } & { { x \leq - \displaystyle \frac { 1 } { n } } } \\ { { \sin \left( \displaystyle \frac { n \pi x } { 2 } \right) } } & { { i f } } & { { - \displaystyle \frac { 1 } { n } \leq x \leq \displaystyle \frac { 1 } { n } } } \\ { { 1 } } & { { i f } } & { { \displaystyle \frac { 1 } { n } \leq x } } \end{array} \right.
$$

As n gets larger, the graph of $g _ { n }$ gets closer and closer to the $_ y$ -axis, while the strip where it is not equal to $^ { 1 }$ or $^ { - 1 }$ gets narrower and narrower. Denote by $g ( x )$ the pointwise limit of $g _ { n } ( x )$ .If $x < 1$ ,then $g ( x ) = - 1$ ； $i f x > 1$ ,then $g ( x ) = 1$ ,while $g ( 0 ) = 0$ . Please note that for a given $_ { x }$ , we may not be able to determine which of these three conditions hold; nevertheless, it is not hard to show that the function $g$ cannot be continuous,even though each $g _ { n }$ is,in fact,differentiable.

![](images/6b9eee765ea624113c1ce586c97a6db221cdb1535882c62f029355e974a0a0ab.jpg)  
$g _ { 1 }$ ， $g _ { 2 }$ ， $g _ { 3 }$ ， $g _ { 4 }$ ，and $g _ { 1 0 }$

We conclude with two useful tests for proving convergence of sequences obtained by taking sums of functions. We'll see more of this in section 7.3 on power series.

THEOREM 7.1.19（WEIERSTRASS M-TEST） Suppose $f _ { n }$ is a sequence of functions all on a set $n = 0 , 1 , \ldots$ $S \subset \mathbb { R }$ and and all $M _ { n }$ a sequence of non-negative numbers, with $x \in S$ If $\textstyle \sum _ { n = 0 } ^ { \infty } M _ { n }$ converges then $\scriptstyle \sum _ { n = 0 } ^ { \infty } f _ { n } ( x )$ $| f _ { n } ( x ) | \leq M _ { n }$ conuerges for uniformly(and absolutely） on $S$

Proof. Exercise—use the Cauchy criterion for convergence.

$\mathrm { E x A M P L E ~ 7 . 1 . 2 0 ~ } \sum _ { n = 1 } ^ { \infty } { \frac { \cos n x } { n ^ { 2 } } }$ converges uniformly and absolutely on all of $\mathbb { R }$

The following is an easy generalization of Dirichlet's convergence test for series of numbers—see Theorem 3.3.38.

THEOREM 7.1.21（DIRICHLET's TEST FOR UNIFORM CONVERGENCE) SuppOSe the sequences of functions $( f _ { k } ( x ) )$ and $( g _ { k } ( x ) )$ satisfy the following conditions on an interval $I$ ：

1. The partial sums $\scriptstyle \sum _ { k = 0 } ^ { n } f _ { k } ( x )$ are bounded by some number $B$

2. $( g _ { k } ) \longrightarrow 0$ uniformly on $I$

3. $g _ { k } ( x ) \geq g _ { k + 1 } ( x )$ for all $k$ and all $x \in I$

Then $\scriptstyle \sum _ { k = 0 } ^ { n } f _ { n } g _ { n }$ converges uniformly on $I$

Proof. See the outline of the proof of the Dirichlet Test for numbers in exercise 12 on page 129.■

ExAMPLE 7.1.22 ∑=1 $\scriptstyle \sum _ { k = 1 } ^ { \infty } { \frac { \sin ( k x ) } { k } }$ converges uniformly on the interval $\lfloor \pi / 2 , 3 \pi / 2 \rfloor$ It does not converge uniformly on $[ - \pi / 2 , \pi / 2 ]$ however. See the exercises at the end of this section.

# Exercises

1. Let $S$ be any cosed subinterval of $( - 1 , 1 )$ and let $\textstyle f _ { n } ( x ) = \sum _ { k = 0 } ^ { n } x ^ { k }$ Prove that $f _ { n } ( x )  f ( x ) = { \frac { 1 } { 1 - x } }$ uniformly on $S$ (see example 3.3.9).

2. Prove that if $f _ { n }  f$ uniformly on $S$ , then $f _ { n }$ is uniformly Cauchy on $S$

3.The uniform limit of uniformly continuous functions must be uniformly continuous. What does this tell us about the sequence of functions $f _ { n } ( x ) \ =$ $\frac { 1 } { 1 + ( n x - 1 ) ^ { 2 } }$ on the interval $[ 0 , 1 ]$ ? (Hint:What is the limit function $f ( x )$ on $[ 0 , 1 ] ~ ?$ ）

4. Prove that $f _ { n }  f$ uniformly on $S$ if and only if there is a sequence $\left( a _ { n } \right)$ of positive numbers with $a _ { n } \to 0$ such that, for $_ { n }$ sufficiently large, $| f _ { n } ( x ) - f ( x ) | \leq$ $a _ { n }$ for all $x \in S$

Prove that the sequence of functions $\left( f _ { n } \right)$ is Cauchy convergent on $S$ if and only if there is a convergent sequence of numbers $\left( a _ { n } \right)$ such that, for all $_ { n }$ sufficiently large, $| f _ { n } ( x ) - f _ { m } ( x ) | \leq | a _ { n } - a _ { m } |$ for all $x \in S$

5.Discuss the convergence on $\lfloor 0 , 1 \rfloor$ of the following sequences of functions. (Hint: Use calculus to find the max of the functions on $\lfloor 0 , 1 \rfloor$ and apply the previous exercise.)

$f _ { n } ( x ) = { \frac { x ^ { 2 } } { x ^ { 2 } + ( n x - 1 ) ^ { 2 } } }$ (b) $f _ { n } ( x ) = x ^ { n } ( 1 - x )$ （c） $f _ { n } ( x ) = n x ^ { n } ( 1 { - } x )$ (Hint: show that the max of $f _ { n } ( x )$ on $\lfloor 0 , 1 \rfloor$ approaches$1 / e$ ）(d) $f _ { n } ( x ) = n ^ { 3 } x ^ { n } ( 1 - x ) ^ { 4 }$ (e） $\begin{array} { l c r } { f _ { n } ( x ) = \displaystyle \frac { n x ^ { 2 } } { 1 + n x } } \\ { f _ { n } ( x ) = \displaystyle \frac { 1 } { 1 + x ^ { n } } } \end{array}$

(These are from [Kaczor&Nowak, 200].)

6.Discuss the convergence of $f _ { n } ( x ) = \cos ^ { n } x ( 1 - \cos ^ { n } x )$ on the interval $\lfloor 0 , \pi / 2 \rfloor$ and on $\lfloor \pi / 4 , \pi / 2 \rfloor$ . Use the same ideas as the previous exercise.

7. Prove that $\scriptstyle \sum _ { n = 1 } ^ { \infty } { \frac { \sin n x } { n ^ { \alpha } } }$ converges uniformly and absolutely on all of $\mathbb { R }$ when $\alpha \geq 2$

8.Prove the Weierstrass M-Test (Theorem 7.1.19).

9. Prove Dirichlet's test for uniform convergence (Theorem 7.1.21) using the ideas outlined in exercise 12 on page 129.

10. (Project）The series sin(kx) is an example of a Fourier series: a representation of a function in terms of the family of trig functions $\mathrm { s i n } ( k x )$ and $\cos ( k x )$ ， $k = 0 , 1 , 2 , . . .$ Here is a plot of the partial sum $\scriptstyle \sum _ { k = 1 } ^ { 1 0 } { \frac { \sin ( k x ) } { k } }$ 0sin(kx) (Note that this has period $2 \pi$ ）

![](images/8f28908d3ed1732adb29a1c563fade2e26b21b1e9d8874a889ee5a36c800d9f7.jpg)

(a) $\scriptstyle \sum _ { k = 1 } ^ { \infty } { \frac { \sin ( k x ) } { k } }$ converges uniformly on any interval that doesn't contain an integral multuple of $2 \pi$ . This is a consequence of Dirichlet’s test for uniform convergence-see Example 3.3.39 for details.

(b) On the interval $( 0 , 2 \pi )$ ， the series converges to $\begin{array} { r } { f ( x ) = \frac { 1 } { 2 } ( \pi - x ) } \end{array}$ It is, in fact,the Fourier series for ${ \frac { 1 } { 2 } } ( \pi - x )$ .(The function $f$ is defined on $( 0 , 2 \pi )$ .We make it periodic by defining $f ( x \pm 2 k \pi ) = f ( x )$ for $_ { x }$ not in $( 0 , 2 \pi )$ .） But the Fourier series for a function doesn't always converge uniformly to that function. However,it does if the function is uniformly differentiable,which $\scriptstyle { \frac { 1 } { 2 } } ( \pi - x )$ certainly is； see Theorem 8.3.1. There are similar examples discussed at the end of Section 8.3.

(c) This series does not converge uniformly on any interval containing O (or any other integral multiple of $\boldsymbol { \pi }$ ):see the plot above.Here is an outline of a proof from [Spivak, 1994].

$$
{ \mathrm { i . ~ } } \left| \sum _ { k = N } ^ { 2 N } \sin k x \right| = \left| \sum _ { k = 0 } ^ { N } \sin k x \right|
$$

$\left| \sum _ { k = 0 } ^ { N } \sin k x \right| \geq { \frac { N } { \pi } }$ ii. Use the calculation in Example 3.3.39 to show when $N$ is lare (When $N$ is large, $\sin \left( { \frac { ( N + 1 ) \pi } { 2 N } } \right)$ is close to $1$ , so is $\geq \frac { 1 } { 2 }$ .） iii. For large $N$ ， $\left| \sum _ { k = N } ^ { 2 N } { \frac { \sin k x } { k } } \right| \geq { \frac { 1 } { 2 \pi } }$ 2N , so the series can't converge uniformly on $\lfloor 0 , 2 \pi \rfloor$ , for example.

(d） The term-by-term derivatives of this series don't converge at all (use exercise 23 below） so their sum can't converge either.

11.Prove tat if $\scriptstyle \sum _ { k = 0 } ^ { \infty } a _ { k }$ is absolutely couvergent, then $\scriptstyle \sum _ { k = 0 } ^ { n } a _ { n } \sin ( n x )$ is uniformly convergent on all of $\mathbb { R }$

12. Discuss the convergence of $\sum _ { k = 1 } ^ { \infty } ( - 1 ) ^ { k - 1 } { \frac { x ^ { 2 } + k } { k ^ { 2 } } }$ on the interval $[ 0 , 1 ]$ . Is it uniform? Absolute?

13.What can you say about the values of the function below(from [Spivak,1994l)?

$$
f ( x ) = \operatorname* { l i m } _ { n \to \infty } ( \operatorname* { l i m } _ { k \to \infty } ( \cos n ! \pi x ) ^ { 2 k } )
$$

14. The sequence $s _ { n } = \sum _ { k = 1 } ^ { n } { \frac { ( - 1 ) ^ { k + 1 } { x ^ { k } } } { k } }$ converges pointwise on $( - 1 , 1 ]$ . Show that this convergence is actually uniform on $\lfloor 0 , 1 \rfloor$

15. Let $S$ be any closed subinterval of $( - 1 , 1 )$ , and let $\textstyle f _ { n } ( x ) = \sum _ { k = 0 } ^ { n } x ^ { k }$

(a) Prove that $f _ { n } ( x )  f ( x ) = { \frac { 1 } { 1 - x } }$ uniformly on $S$

(b） This sequence does not converge at the endpoints $x = 1 , - 1$ . Suppose we replace the partial sums $f _ { n } \left( x \right)$ by their averages,

$$
s _ { M } ( x ) = { \textstyle { \frac { 1 } { M + 1 } } } \sum _ { n = 0 } ^ { M } \underbrace { \left( \sum _ { k = 0 } ^ { n } x ^ { k } \right) } _ { f _ { n } ( x ) } .
$$

Now

$$
\begin{array} { r c l } { { s _ { 2 K - 1 } ( - 1 ) } } & { { = } } & { { { \frac { K } { 2 K + 1 } } } } \\ { { s _ { 2 K } ( - 1 ) } } & { { = } } & { { { \frac { 1 } { 2 } } } } \end{array}
$$

Show that $s _ { M } ( x ) \to f ( x )$ at least pointwise on $\lfloor - 1 , 1 \rfloor$ (c） Is the convergence $s _ { M } ( x ) \to f ( x )$ uniform on $\lfloor - 1 , 1 \rfloor$ ？

16. Suppose that $( P _ { n } ) \to P$ uniformly on all of $\mathbb { R }$ ，where the $P _ { n }$ are polynomials. Prove that $P$ is also a polynomial.

17.Suppose that $f _ { n }  f$ and $g _ { n }  g$ ,both uniformly on $S$ ，and let $_ { \alpha }$ and $\beta$ be constants. Show that $\alpha f _ { n } + \beta g _ { n }  \alpha f + \beta g$ uniformly on $S$

18. Suppose that $f _ { n }  f$ and $g _ { n } \\to g$ ，both uniformly on $S$ .Show by example that $f _ { n } g _ { n }$ need not converge uniformly to $f g$ . Does it converge pointwise?

19.(See previous exercise.） Suppose $f _ { n }  f$ and $g _ { n }  g$ ， both uniformly on $S$ ， and $| f _ { n } ( x ) | , | g _ { n } ( x ) | < M$ for all $_ { n }$ and $x \in S$ . Then $f _ { n } g _ { n } \to f g$ uniformly on $S$

20.Suppose $f _ { n }  f$ and $g _ { n } \\to g$ ，both uniformly on $S$ .Find conditions under which $f _ { n } / g _ { n }$ will converge uniformly to $f / g$ on $S$

21.Prove the following result from the text.

PROPOSITION 7.1.14 Suppose $( f _ { n } ( x ) ) \to f ( x )$ pointwise on $\lfloor a , b \rfloor$ . Suppose also that each $f _ { n }$ is (weakly） increasing and $f$ is uniformly continuous on $\lfloor a , b \rfloor$ Then

(a) $f$ is weakly increasing on $\lfloor a , b \rfloor$ ， (b) $( f _ { n } ) \to f$ uniformly on $[ a , b ]$

(Hint: $f$ is (weakly) increasing since weak inequalities are preserved in the limit (see Proposition 3.1.10). Since $f$ is UC, given $\epsilon > 0$ ,le $\mathrm { ~ t ~ } \delta = \delta ( \epsilon / 2 )$ be a modulus of continuity for $\epsilon / 2$ .Partition $\lfloor a , b \rfloor$ by points $a = x _ { 0 } < x _ { 1 } < \dots < x _ { k } = b$ ， where $x _ { j } - x _ { j - 1 } < \delta / 2$ .Also,choose $N$ such that $| f _ { n } ( x _ { i } ) - f ( x _ { i } ) | < \epsilon / 2$ for all $i = 0 , \ldots k$ ，when $n > N$ . For any $x \in \left\lfloor a , b \right\rfloor$ ， we can find some $j$ such that $| x - x _ { j } | < \delta / 2$ ，s0 $x \in \lfloor x _ { j - 1 } , x _ { j + 1 } \rfloor$ , and we have

$$
f ( x _ { j - 1 } ) - \epsilon / 2 \le f _ { n } ( x _ { j - 1 } ) \le f _ { n } ( x ) \le f _ { n } ( x _ { j + 1 } ) \le f ( x _ { j + 1 } ) + \epsilon / 2 .
$$

Combine this with the uniform continuity of $f$ to show $- \epsilon \le f _ { n } ( x ) - f ( x ) \le \epsilon .$ ）

22.The sequence $( { \sqrt { n } } \cos ( n x ) )$ does not converge. To see this, first note that

$$
\textstyle \left| { \frac { \cos n x } { n } } \right| = { \frac { 1 } { n ^ { 3 / 2 } } } \left| { \sqrt { n } } \cos n x \right| .
$$

Since $\scriptstyle \sum _ { n = 1 } ^ { \infty } \left| \cos n x \right| / n$ diverges, $| { \sqrt { n } } \cos n x |$ is unbounded. Why?

(Incidentally, the oscillations of ${ \sqrt { n } } \cos ( n x )$ as $n  \infty$ must be unbounded, since $\scriptstyle \sum _ { n = 1 } ^ { \infty } ( \cos n x ) / n$ converges.)

23.If $_ x$ is not a multiple of $2 \pi$ ， the sequence $( \cos n x )$ does not converge,even pointwise. Here is an outline of a proof from A. Zelevinsky.

LEMMA. If the sequence $\cos ( n x )$ converges, then $\cos x = 1$

Proof. First,use the familiar identity $\cos ( x \pm y ) = \cos x \cos y \mp \sin x \sin y$ to prove that

$$
\cos \left( 2 n x \right) = 2 \cos ^ { 2 } \left( n x \right) - 1
$$

and

$$
\cos \left( ( n + 1 ) x \right) + \cos \left( ( n - 1 ) x \right) = 2 \cos \left( n x \right) \cos x .
$$

Assume $\cos \pi x = z$ .Passing to the limit in the first formula above gives $n { \longrightarrow } \infty$   
$z = 2 z ^ { 2 } - 1$ ，s0 $| z | > 0$ .Passing to the limit in the second formula gives   
$z = z \cos x$ ，hence $\cos x = 1$ as desired. (Note that $\sin ( n x )$ doesn't converge   
either unless $\sin x = 0$ .） $\vartriangle$

The formula $\cos ( x \pm y ) = \cos x \cos y \mp \sin x \sin y$ and other properties of the trig functions are derived in the Section 7.5.

# 7.2Integrals and Derivatives of Sequences

In this section we ask,“What happens to a convergent sequence of functions( $f _ { n }$ ） when we integrate or differentiate it?” This will have important applications in the next section when the sequence consists of partial sums of power series. You will probably notice that there is a strong resemblance between the results and proofs here and those of Section 6.5 when we were looking at integrals and derivatives of a family of functions $f ( x , t )$ parametrized by $_ { x }$ . Here we can think of $_ n$ as a discrete parameter for the functions $f _ { n } ( t )$

The case of integration is the most easily settled.

PROPOSITION 7.2.1 Suppose $f _ { n } \ \to \ f$ uniformly on $[ a , b ]$ ， with each $f _ { n }$ uniformly continuous on $\lfloor a , b \rfloor$ . Then for any $p , x \in \lfloor a , b \rfloor$ ，

1. $\textstyle { \int _ { p } ^ { x } f _ { n } \to \int _ { p } ^ { x } f }$

2.1f $N ( \epsilon )$ is a modulus of convergence for $f _ { n } \to f$ ,then $\begin{array} { r } { N \left( \frac { \epsilon } { b - a } \right) } \end{array}$ is a modulus of convergence for $\begin{array} { r } { \int _ { p } ^ { x } f _ { n } \to \int _ { p } ^ { x } f } \end{array}$ ， so this convergence is uniform as convergence of functions on $\lfloor a , b \rfloor$ ·

Proof. Exercise; use $\begin{array} { r } { g \leq M \Longrightarrow \int _ { a } ^ { b } g \leq M ( b - a ) } \end{array}$

It is important, of course, that $f _ { n }  f$ uniformly, as the next example shows.

EXAMPLE 7.2.2 Let $h _ { n } ( x ) = \left\{ \begin{array} { c c c } { { 2 n ^ { 2 } x } } & { { i f } } & { { 0 \leq x \leq 1 / ( 2 n ) } } \\ { { 2 n - 2 n ^ { 2 } x } } & { { i f } } & { { 1 / ( 2 n ) \leq x \leq 1 / n } } \\ { { 0 } } & { { i f } } & { { 1 / n \leq x } } \end{array} \right. .$

![](images/e7a7db36ef5f7790e936a257dae661f47d869518e793297d77c5c959262b385a.jpg)  
$h _ { 1 }$ ， $h _ { 3 }$ ， $h _ { 5 }$ ， $h _ { 7 }$ ，and $h _ { 1 0 }$

Here we have a sequence of continuous, piecewise linear functions $h _ { n }$ . For each $_ n$ ， $\begin{array} { r } { \int _ { 0 } ^ { 1 } h _ { n } = \frac { 1 } { 2 } } \end{array}$ . The sequence $h _ { n } ( x ) \to 0$ for $x = 0$ and for each $x > 0$ ; for these $_ x$ ， $h _ { n } \to h$ where $h$ is the O. function. However, we have $\begin{array} { r } { \int _ { 0 } ^ { 1 } h _ { n } \to \frac { 1 } { 2 } \ne 0 = \int _ { 0 } ^ { 1 } h } \end{array}$ . Thus, the convergence can not be uniform in view of the result we have just proved.

This example is even more interesting. Each $h _ { n } ( x )$ is uniformly continuous on $[ 0 , 1 ]$ ， the limit function $h = 0$ is, of course, uniformly continuous on $[ 0 , 1 ]$ ，and the convergence is uniform on any interval $\lfloor a , b \rfloor \subset ( 0 , 1 ]$ ，and $h _ { n } ( 0 )  h ( 0 ) = 0$ ； nevertheless, the convergence is not uniform on all of $[ 0 , 1 ]$

Even improper integrals can behave well with respect to convergence.

PROPOsITiON 7.2.3 Suppose that the sequence of uniformly continuous functions $f _ { n }$ converges uniformly to $f$ on every finite closed subinterval of $\lfloor a , \infty )$ .Suppose that $\int _ { a } ^ { b \to \infty } f _ { n }$ go $C ( \epsilon )$ $_ { n }$ $\begin{array} { r } { \left| \int _ { M } ^ { N } f _ { n } \right| \le \epsilon } \end{array}$ $M , N > C ( \epsilon )$ $\textstyle \int _ { a } ^ { \infty } f$

$$
\int _ { a } ^ { \infty } f _ { n } \longrightarrow \int _ { a } ^ { \infty } f .
$$

Proof. To prove that $\textstyle \int _ { a } ^ { \infty } f$ exists, we must show that $\textstyle \int _ { a } ^ { M } f$ is Cauchy. Given $\epsilon > 0$ choose $M , N > C ( \epsilon )$ . Then

$$
\begin{array} { r c l } { \left| \displaystyle \int _ { M } ^ { N } f \right| } & { \le } & { \displaystyle \left| \displaystyle \int _ { M } ^ { N } f - f _ { n } \right| + \left| \displaystyle \int _ { M } ^ { N } f _ { n } \right| } \\ & { \le } & { \displaystyle \left| \displaystyle \int _ { M } ^ { N } f - f _ { n } \right| + \epsilon . } \end{array}
$$

Holding $M , ~ N$ fixed, we can make $_ { n }$ so large that $\begin{array} { r } { \left| \int _ { M } ^ { N } f - f _ { n } \right| } \end{array}$ is arbitrarily small this because $\lfloor M , N \rfloor$ is a finite interval and $f _ { n }  f$ converges uniformly. The Wiggle Lemma now tells us that $\begin{array} { r } { \left| \int _ { M } ^ { N } f \right| \leq \epsilon } \end{array}$ Thus $\textstyle \int _ { a } ^ { \infty } f$ exists，so we compare it with $\int _ { a } ^ { \infty } f _ { n }$

$$
\left| \int _ { a } ^ { \infty } f _ { n } - \int _ { a } ^ { \infty } f \right| \leq \underbrace { \left| \int _ { a } ^ { \infty } f _ { n } - \int _ { a } ^ { N } f _ { n } \right| } _ { \mathbf { A } } + \underbrace { \left| \int _ { a } ^ { N } f _ { n } - f \right| } _ { \mathbf { B } } + \underbrace { \left| \int _ { a } ^ { N } f - \int _ { a } ^ { \infty } f \right| } _ { \mathbf { C } } .
$$

Supoose we are given $\epsilon > 0$ . By choosing $N$ large enough,we can make $A$ smaller than $\epsilon / 3$ independent of $_ { n }$ ,because of our assumption about the uniform convergence of $\int _ { a } ^ { \infty } f _ { n }$ Making $N$ even larger if necessary will ensure that $C$ is smaller than $\epsilon / 3$ because we have just shown that $\textstyle \int _ { a } ^ { \infty } f$ converges. Thus，we choose some $N$ ， depending only on $\epsilon$ , which makes both of these two parts $\leq \epsilon / 3$ . Now we can make $B$ smaller than $\epsilon / 3$ by making $_ n$ sufficiently large since the interval $\lfloor a , N \rfloor$ is finite and $f _ { n }  f$ uniformly (Proposition 7.2.1). Thus, $\textstyle \left| \int _ { a } ^ { \infty } f _ { n } - \int _ { a } ^ { \infty } f \right|$ can be made $\leq \epsilon$ by making $_ n$ sufficiently large.

As was the case for improper integrals of functions of the type $f ( x , t )$ (see Proposition 6.5.16) the uniform convergence assumption about the improper integral $\int _ { a } ^ { \infty } f _ { n }$ will be satisfied when we have a “dominated convergence” assumption; here's how it goes.

COROLLARY 7.2.4 （DOMINATED CONVERGENCE III） Suppose that the sequence of uniformly continuous functions $f _ { n }$ converges uniformly to $f$ on every finite closed subinterval of $\lfloor a , \infty )$ . Suppose that there is a UC function $g$ such that $| f _ { n } | \le g$ for all $_ { n }$ and $\textstyle \int _ { a } ^ { \infty } g$ exists. Then $\textstyle \int _ { a } ^ { \infty } f$ exists and

$$
\int _ { a } ^ { \infty } f _ { n } \longrightarrow \int _ { a } ^ { \infty } f .
$$

The situation for differentiability is more complicated. Consider the sequences: $f _ { n } ( x ) = { \frac { 1 } { n } } \sin ( n x )$ and $g _ { n } ( x ) = { \frac { 1 } { \sqrt { n } } } \sin ( n x )$ .In both cases,the functions are niformly differentiable on, say, the finite interval $\lfloor - \pi , \pi \rfloor$ and each sequence converges uniformly to $0$ on $\lfloor - \pi , \pi \rfloor$ as $n \to \infty$ ，.However, it can be shown (see exercises on page 233) that the derivatives in each case don't even converge (except at $x = 0$ ） It is clear what is happening here. The functions $f _ { n }$ and $g _ { n }$ oscillate more and more frequently for large $_ n$ because of the $\sin ( n x )$ ; however, the $_ n$ or $\sqrt { n }$ in the denominator makes them approach $0$ as $n \longrightarrow \infty$ , so it doesn't matter. On the other hand, this rapid oscillation makes the derivatives oscillate just as fast (they include a $\cos n x$ ）， but without the redeeming value of going to $0$ in amplitude.

This last example shows that there is not much hope of deducing differentiability from mere convergence of a sequence of functions—even from uniform convergence. As we have remarked before, differentiation tends to make functions worse in terms of behavior while integration has the opposite effect (see Remark 6.3.23). So,we take a different tack,and assume the derivatives converge instead of the original functions. Is that good enough? Well, not quite: suppose $f _ { n } ( x ) = n$ . Then all the derivatives are $0$ ， so they certainly converge,but the $f _ { n }$ certainly don't. We need one more little piece: convergence of $f _ { n } ( x )$ for at least one value of $_ { x }$ .Here is the standard result.

THEOREM 7.2.5 Suppose each $f _ { n }$ is uniformly differentiable on a finite interval $I$ and $f _ { n } ^ { \prime } \to g$ uniformly on $I$ . If we can find some $p \in { I }$ with $f _ { n } ( p ) \to L$ (for some $L$ ),then $f _ { n }$ converges uniformly on $I$ to a function $f$ that is uniformly differentiable on $I$ with $f ^ { \prime } = g$

Proof. One might be tempted to look at the limit of the difference quotients $\frac { f _ { n } ( y ) - f _ { n } ( x ) } { y - x }$ but this quickly leads to complications; it is much easier to use the Fundamental Theorem.Define

$$
\begin{array} { r c l } { { F _ { n } ( x ) } } & { { = } } & { { f _ { n } ( p ) + \displaystyle \int _ { p } ^ { x } f _ { n } ^ { \prime } } } \\ { { } } & { { } } & { { } } \\ { { f ( x ) } } & { { = } } & { { L + \displaystyle \int _ { p } ^ { x } g } } \end{array}
$$

By the Fundamental Theorem, $F _ { n }$ and $f _ { n }$ differ by a constant; since $F _ { n } ( p ) = f _ { n } ( p )$ ， $F _ { n } = f _ { n } \mathrm { o n } I$ . Because we have shown that integration preserves uniform convergence (Proposition 7.2.1)，we know that $\textstyle { \int _ { p } ^ { x } f _ { n } ^ { \prime } \to \int _ { p } ^ { x } g }$ uniformly. Since $f _ { n } ( p ) \to L$ as a sequence of constants, it is easy to see that $\begin{array} { r } { f _ { n } = f _ { n } ( p ) + \int _ { p } ^ { x } f _ { n } ^ { \prime } \to f } \end{array}$ uniformly on $I$ Clearly $f ^ { \prime } = g$ ■

COROLLARY 7.2.6 If $f _ { n }$ is uniformly differentiable on the finite interval $I$ ， $f _ { n }  f$ ， and $f _ { n } ^ { \prime }  g$ ， both uniformly on $I$ ，then $f$ is also $U D$ on $I$ ，with $f ^ { \prime } = g$

Proof.Exercise.

# Exercises

1. Prove the following from the text.

PROPOSITION 7.2.1 Suppose $f _ { n }  f$ uniformly on $\lfloor a , b \rfloor$ with each $f _ { n }$ uniformly continuous on $[ a , b ]$ . Then for any $p , x \in \lfloor a , b \rfloor$ ，

(a) $\begin{array} { r } { \int _ { p } ^ { x } f _ { n } \to \int _ { p } ^ { x } f } \end{array}$   
(b)1 $N ( \epsilon )$ is a modulus of concergence for $f _ { n } \ \to \ f$ hen $\begin{array} { r } { N \left( \frac { \epsilon } { b - a } \right) } \end{array}$ is $a$ modulus of convergence for $\begin{array} { r } { \int _ { p } ^ { x } f _ { n } \to \int _ { p } ^ { x } f } \end{array}$ , so this convergence is uniform as convergence of functions on $[ a , b ]$

2. Examine the convergence of the sequence of functions $f _ { n } ( x ) = { \frac { x } { 1 + n ^ { 2 } x ^ { 2 } } }$ x and their derivatives, on $I = \left\lfloor - 1 , 1 \right\rfloor$

3. The sequence of partial sums $\textstyle S _ { n } = \sum _ { k = 0 } ^ { n } x ^ { k }$ converges uniformly to $\frac { 1 } { 1 - x }$ on every closed subinterval of $( - 1 , 1 )$

(a) On closed subintervals of $( - 1 , 1 )$ ， show that the partial sums $\scriptstyle \sum _ { k = 1 } ^ { n } { \frac { x ^ { k } } { k } }$ converge to $- \ln ( 1 - x )$ uniformly.   
(b） Show that this convergence is uniform on closed subintervals of $\lfloor - 1 , 1 \rfloor$ as well. (Hint:on the left half of this interval you have an alternating series.)   
(c） Deduce that $\ln 2 = 1 - { \frac { 1 } { 2 } } + { \frac { 1 } { 3 } } - { \frac { 1 } { 4 } } + { \frac { 1 } { 5 } } - \cdot \cdot \cdot$   
(d) $\sum _ { k = 1 } ^ { n } { \frac { x ^ { k } } { k } } \to - \ln ( 1 - x )$ pointwise on $\lfloor - 1 , 1 \rfloor$ . Why can't this e nform convergence on all of $\lfloor - 1 , 1 \rfloor$ ？

4. Analyze the partial sums $\begin{array} { r } { S _ { n } = \sum _ { k = 0 } ^ { n } ( - 1 ) ^ { k } x ^ { k } } \end{array}$ in a similar way (see previous exercise).

5.Let $E _ { n } ( x ) = \sum _ { k = 0 } ^ { n } { \frac { x ^ { k } } { k ! } } .$

(a) Show that ( $E _ { n }$ ） converges uniformly on every finite subinterval of $\mathbb { R }$ (b） Show that $E _ { n } ^ { \prime } ( x ) = E _ { n - 1 } ( x )$ ， so the derivatives converge as well. (c) Let $E ( x ) = \operatorname* { l i m } ( E _ { n } ( x ) )$ and show that $E$ is uniformly differentiable on every finite subinterval of $\mathbb { R }$ ,with $E ^ { \prime } ( x ) = E ( x )$

(d) Deduce that $E ( x ) = e ^ { x }$ (Hint: Look at $Q ( x ) = { \frac { E ( x ) } { e ^ { x } } }$ and show that $Q ^ { \prime } ( x ) = 0$ for all $_ { x }$ ）

This is an example of a power series expansion. We will study these in more detail in the next section.

6. Prove the following corollary to Theorem 7.2.5.

COROLLARY 7.2.6 If $f _ { n }$ is uniformly differentiable on the finite interval $I$ ，and $f _ { n }  f$ ，and $f _ { n } ^ { \prime }  g$ ， both uniformly on $I$ ，then $f$ is also UD on $I$ with $f ^ { \prime } = g$

7. Prove Corollary 7.2.4(Dominated Convergence III).

$\zeta ( x ) = \sum _ { n = 1 } ^ { \infty } { \frac { 1 } { n ^ { x } } } .$

(a） Prove this converges pointwise for $x > 1$   
(b) Prove this converges uniformly on closed finite subintervals of $( 1 , \infty )$   
(c） Calculate $\zeta ^ { \prime } ( x )$ . Where is it defined?

The Zeta function $\zeta ( z )$ can also be defined for complex numbers $z$ and plays a very important role in number theory and the distribution of primes; it is the subject of the famous-and unsolved at the time of this writing —Riemann Hypothesis.

9. The length of the diagonal of the unit square is $\sqrt { 2 }$ . On the other hand, you can “approximate” this diagonal by a sequence of staircase-like approximationssee diagram (a) below. If you lay the lower triangle down on the $x$ -axis, you get diagram (b） below.

![](images/d4e34089d985a9a36385a44908b8c16f2fd81c0431d1613334212fcb3ee771a1.jpg)

It is clear that the length of any of these staircase approximations is exactly 2. However, as functions whose graphs are shown in diagram (b),they converge uniformly to a function whose graph has length $\sqrt { 2 }$ . Since arc length is given by an integral, why don't the integrals of the staircase approximations approach $\sqrt { 2 }$ ？

# 7.3Power Series

In this section we look at series that are formally like polynomials having infinite degree. Their limits are called power series. Typically,a power series looks like

$$
S ( x ) = s _ { 0 } + s _ { 1 } x + s _ { 2 } x ^ { 2 } + \cdot \cdot \cdot + s _ { n } x ^ { n } + \cdot \cdot \cdot
$$

Before studying the specifics of power series, we can make some general statements about series of functions.

DEFINITION 7.3.1 Let $\left( f _ { k } ( x ) \right)$ be a sequence of functions all defined on $S \subset \mathbb { R }$ .Let n be their nth partial sum.If, for , the sequence $\begin{array} { r } { F _ { n } ( x ) = \sum _ { k = 0 } ^ { n } f _ { k } ( x ) } \end{array}$ $x \in S$ $( F _ { n } ( x ) )$ convergestodnumber(whichwellcll )we say that converges pointuiseand write $\textstyle \sum _ { k = 0 } ^ { \infty } f _ { k } ( x ) = F ( x )$ If the sequence $F _ { n }$ ）conuerges uniformty on $S$ ， we say that $\textstyle \sum _ { k = 0 } ^ { \infty } f _ { k }$ converges uniformly to $F$ on $S$

Note that $\textstyle \sum _ { k = 0 } ^ { \infty } f _ { k }$ converges uniformly on $S$ to $F$ means that given $\epsilon > 0$ , there is a number $N ( \epsilon )$ such that, for all $x \in S$ ，

$$
\boxed { F ( x ) - \sum _ { k = 0 } ^ { n } f _ { k } ( x ) } \Bigg | \leq \epsilon \quad \mathrm { ~ w h e n ~ } n > N ( \epsilon ) .
$$

（ $N ( \epsilon )$ depends only on $\epsilon$ , not on any $x \in S$ .）

PROPOSITION 7.3.2 For a sequence of functions $\left( f _ { k } \right)$ om $S \subset \mathbb { R }$ ，

1. $\scriptstyle \sum _ { k = 0 } ^ { \infty } f _ { k } ( x )$ converges pointwiseifand onlyifgiven $x \in S$ and $\epsilon > 0$ ，there is an integer $N ( x , \epsilon )$ such that $\textstyle | \sum _ { k = m } ^ { n } f _ { k } ( x ) | < \epsilon$ for all $n \geq m \geq N ( x , \epsilon )$

$\scriptstyle \sum _ { k = 0 } ^ { \infty } f _ { k } ( x )$ forad $\epsilon > 0$ tger $N ( \epsilon )$ $\textstyle | \sum _ { k = m } ^ { n } f _ { k } ( x ) | < \epsilon$ $x \in S$ $n \ge m \ge N ( \epsilon )$

Proof. These are simply restatements of the Cauchy criterion for convergence. ■

THEOREM 7.3.3(COMPARISON TEST FOR FUNCTION SERIES） SuppOSe that for all$x \in S$ and $k = 0 , 1 , \ldots$ ， we have $| f _ { k } ( x ) | \leq g _ { k } ( x )$ . Then

1 $\scriptstyle \sum _ { k = 0 } ^ { \infty } g _ { k } ( x )$ converges pointwise $\textstyle \implies \sum _ { k = 0 } ^ { \infty } f _ { k } ( x )$ converges pointwise.   
2. $\scriptstyle \sum _ { k = 0 } ^ { \infty } g _ { k } ( x )$ converges uniformly $\begin{array} { r } { \implies \sum _ { k = 0 } ^ { \infty } f _ { k } ( x ) } \end{array}$ converges uniformly.

Proof. $\begin{array} { r } { | \sum _ { k = m } ^ { n } f _ { k } ( x ) | \leq \sum _ { k = m } ^ { n } | f _ { k } ( x ) | \leq \sum _ { k = m } ^ { n } g _ { k } ( x ) } \end{array}$ ; now use the preceding proposition.

We now turn to the special case of power series. The preceding comparison test will be used to compare power series with geometric series; the latter converge uniformly when they converge.

DEFINITION 7.3.4（POWER SERIES） Let （ $s _ { n }$ ） be a sequence of numbers. The power series with coeffcients ( $s _ { n }$ ） is the sequence of polynomials $\left( S _ { n } ( x ) \right)$ given by

$$
S _ { n } ( x ) = \sum _ { k = 0 } ^ { n } s _ { k } x ^ { k } .
$$

We could have defined the power series in the more usual and less abstract way as an “infinite”polynomial

$$
\sum _ { k = 0 } ^ { \infty } s _ { k } x ^ { k } .
$$

The problem is,what sense is to be made of such an infinite sum? However, we will not actually push this abstraction; in fact,we immediately move away from it when the sequence of partial sums $S _ { n } ( x )$ converges.

DEFINITION 7.3.5 If for some number $_ { x }$ , the sequence of partial sums ( $\textstyle | S _ { n } ( x ) )$ converges to a number $S ( x )$ , then we write

$$
S ( x ) = \operatorname* { l i m } _ { n \to \infty } S _ { n } ( x ) = \sum _ { k = 0 } ^ { \infty } { s _ { k } x ^ { k } } .
$$

EXAMPLE 7.3.6 The power series $\begin{array} { r } { ( G _ { n } ( x ) ) = \left( \sum _ { k = 0 } ^ { n } a x ^ { k } \right) } \end{array}$ is q geometric series and converges uniformly to $\frac { a } { 1 - x }$ for any $_ x$ in $[ - r , r ]$ ，with $0 \leq r < 1$ . In this case we write ∑=0 $\textstyle \sum _ { k = 0 } ^ { \infty } a x ^ { k } = { \frac { a } { 1 - r } }$ ·

Proof. We know the series converges, and the convergence is uniform since

$$
\begin{array} { l l l } { \displaystyle \left. G _ { n } ( x ) - \frac { 1 } { 1 - x } \right. } & { = } & { \displaystyle \left. \frac { a ( 1 - x ^ { n + 1 } ) } { 1 - x } - \frac { a } { 1 - x } \right. } \\ & { = } & { \displaystyle \left. \frac { x ^ { n } } { 1 - x } \right. } \\ & { \leq } & { \displaystyle \left( \frac { 1 } { 1 - r } \right) r ^ { n } \to 0 } \end{array}
$$

Geometric power series converge absolutely and uniformly within their interval of convergence. We will exploit this fact to demonstrate a similar property for power series in general,using the comparison test for series of functions. Thus, the advantage of power series over series of arbitrary functions is that convergence for a particular $_ { x }$ give convergence for smaller $_ { x }$ ; this is the substance of the following central result. (It is called“Convergence in a Disk”because it also holds in the complex plane—the space of complex numbers $z$ —where $| z | < r$ describes a disk. This is discussed in Chapter 8.)

THEOREM 7.3.7 (CONVERGENCE IN A DISK)

1.If $\begin{array} { r } { S _ { n } ( a ) = \sum _ { k = 0 } ^ { n } s _ { k } a ^ { k } } \end{array}$ converges and $0 \leq r < | a |$ ，then $S _ { n } ( x )$ converges uniformly and absolutely for all $_ { x }$ with $| x | \le r$

2.1f $S _ { n } ( a )$ does not converge, then neither does $S _ { n } ( x )$ for any $_ { x }$ with $| x | > | a |$

Proof. To prove the first part, suppose $S _ { n } ( a )$ converges. The key to this whole proof is to note that the terms of $\scriptstyle \sum _ { k = 0 } ^ { n } s _ { k } a ^ { k }$ are bounded since the terms of a convergent series must approach $0$ . Let's write $\left| s _ { k } a ^ { k } \right| \leq M$ for all $k$ ，so that $| s _ { k } | \leq M | a | ^ { - k }$ .If $| x | \leq r < | a |$ ，then $\left| { \frac { r } { a } } \right| < 1$ and $\left| x \right| ^ { k } \leq r ^ { k } < \left| a \right| ^ { k }$ . Therefore

$$
\left| a _ { k } x ^ { k } \right| \leq M \left| a ^ { - k } \right| \left| r ^ { k } \right| = M \left| { \frac { r } { a } } \right| ^ { k } .
$$

Thus,the series of absolute values is dominated by a convergent geometric series (independent of $_ x$ )，so converges uniformly and absolutely by the comparison test stated above.

To prove the second part， suppose that $| x | > | a |$ .By the first part, $S _ { n } ( x )$ converges implies $S _ { n } ( a )$ converges. But $S _ { n } ( a )$ doesn't, so neither does $S _ { n } ( x )$ $\mid$

THEOREM 7.3.8 （MAIN CONVERGENCE THEOREM） Let（ $s _ { n }$ ） be a sequence of coef-ficients and $R$ a positive number. For convenience, let $B = 1 / R$ . The following fourconditions are equivalent.

1. For all $x \in ( - R , R )$ ， $s _ { k } x ^ { k } \to 0$ as $k \to \infty$

2. For each $\epsilon > 0$ ， there is an integer $N ( \epsilon )$ such that $| s _ { k } | \le ( B + \epsilon ) ^ { k }$ when $k > N ( \epsilon )$

3. The series $\scriptstyle \sum _ { k = 0 } ^ { \infty } s _ { k } x ^ { k }$ comverges for all $| x | < R$

4.For all $x \in ( - R , R )$ ， $k s _ { k } x ^ { k - 1 } \to 0$ as $k \to \infty$

Proof. We will show that $( 1 ) \implies ( 2 ) \implies ( 3 ) \implies ( 4 ) \implies ( 1 ) .$ $( 1 ) \implies ( 2 )$ : Given $\epsilon > 0$ ,let $x = { \frac { 1 } { B + \epsilon } }$ s0 $x < { \frac { 1 } { B } } = R$ . Since $s _ { k } x ^ { k } \to 0$ ， we know that there is some $N ( \epsilon )$ such that $\begin{array} { r } { \left| s _ { k } x ^ { k } \right| = \left| s _ { k } \frac { 1 } { ( B + \epsilon ) ^ { k } } \right| \leq 1 } \end{array}$ whenever $k > N ( \epsilon )$ . This implies that $| s _ { k } | \le ( B + \epsilon ) ^ { k }$

$( 2 ) \implies ( 3 )$ Suppose $0 \leq | x | < R$ We can find $\epsilon$ so small that $\begin{array} { r } { | x | < \frac { 1 } { B + \epsilon } < R } \end{array}$ which we write as $\left( B + \epsilon \right) \left| x \right| < 1$ . Combining this with our assumption about $\left| { s _ { k } } \right|$ ， withaconvergenteetrcris we see that $\left| s _ { k } x ^ { k } \right| \leq [ ( B + \epsilon ) | x | ] ^ { k }$ for all $\scriptstyle \sum _ { k = 0 } ^ { \infty } s _ { k } x ^ { k }$ $k > N ( \epsilon )$ . But this is a termwise comparison Converges bythcomparisontest (Theorem 3.3.17).

$( 3 ) \implies ( 4 )$ If $\scriptstyle \sum _ { k = 1 } ^ { n } s _ { k } x ^ { k }$ converges for $| x | < R$ , then $\left| s _ { k } x ^ { k } \right| \to 0$ as $k \to \infty$ .As in the $( 2 ) \implies$ (3)argument, chose $\epsilon$ so that $\begin{array} { r } { | x | < \frac { 1 } { B + \epsilon } < R } \end{array}$ . This makes $\begin{array} { r } { 1 < \frac { 1 } { ( B + \epsilon ) | x | } } \end{array}$ so let $\begin{array} { r } { \frac { 1 } { ( B + \epsilon ) | x | } = 1 + t } \end{array}$ with $t > 0$ Since $\scriptstyle \sum _ { k = 0 } ^ { \infty } s _ { k } \left( { \frac { 1 } { B + \epsilon } } \right) ^ { k }$ converges, chose $N$ large enough so that $\begin{array} { r } { s _ { k } \left( \frac { 1 } { B + \epsilon } \right) ^ { k } < 1 } \end{array}$ when $k > N$ . Putting these pieces together, we have

$$
\begin{array} { c } { { k s _ { k } x ^ { k - 1 } \leq k ( B + \epsilon ) ^ { k } | x | ^ { k - 1 } = \displaystyle \frac { 1 } { | x | } k \left[ ( B + \epsilon ) | x | \right] ^ { k } } } \\ { { = \displaystyle \frac { 1 } { | x | } \frac { k } { ( 1 + t ) ^ { k } } . } } \end{array}
$$

However, $\begin{array} { r } { \frac { k } { ( 1 + t ) ^ { k } } \to 0 } \end{array}$ as $k \to \infty$ since exponentialfunctions dominate powerfunctions (Proposition 3.2.13).

$( 4 ) \implies ( 1 )$ ： $\begin{array} { r } { s _ { k } x ^ { k } = \frac { x } { k } ( k s _ { k } x ^ { k - 1 } )  0 } \end{array}$ ■

COROLLARY 7.3.9 If the sequence $\left( { \boldsymbol { s } } _ { k } p ^ { k } \right)$ is bounded for some $_ { p }$ ，then $R = | p |$ satisfies the equivalent conditions (1)-(4).

Proof. Say $\left| s _ { k } p ^ { k } \right| \leq M$ for all $k \geq$ some $N$ . Then for all $| x | < | p |$ and $k \geq N$ ，we have $\left| s _ { k } x ^ { k } \right| \leq M \cdot | x / p | ^ { k } \to 0$ , since $| x / p | < 1$ ■

$p > 0$ $\textstyle \sum _ { k = 0 } ^ { N } \left| s _ { k } \right| p ^ { k } \leq M$ for ll $N$ then $R = p$

REMARk 7.3.11 If the equivalent conditions (1)-(4) of the Main Convergence Theorem above hold for all $R > 0$ , then we usually write $R = \infty$ . In this case, $B = 0$ and the series converges for all numbers $_ { x }$ . On the other hand, if the series converges only for $x = 0$ ， we write $R = 0$

DEFINITION 7.3.12 When $\scriptstyle \sum _ { k = 0 } ^ { n } s _ { k } x ^ { k }$ converges for $_ { x }$ in some interual $I$ ,it defines a function

$$
S ( x ) = \sum _ { k = 0 } ^ { \infty } s _ { k } x ^ { k } : I \longrightarrow \mathbb { R } .
$$

COROLLARY 7.3.13 Suppose $\begin{array} { r } { S ( x ) = \sum _ { k = 0 } ^ { \infty } s _ { k } x ^ { k } } \end{array}$ on $( - R , R )$ Then $S$ is uniformly differentiable on all closed subintervals $\lfloor a , b \rfloor$ of $( - R , R )$ with derivative $S ^ { \prime } ( x ) \ =$ $\scriptstyle \sum _ { k = 0 } ^ { \infty } k s _ { k } x ^ { k - 1 }$

Proof. We know that the last sum converges by the Main Convergence Theorem. The rest follows Corollary 7.2.6 about uniform convergence of derivatives, proved in the last section. Note also that by the Convergence-in-a-Disk Theorem (7.3.7),all convergence is uniform on any $\lfloor - r , r \rfloor$ with $0 \leq r < R$ ■

COROLLARY 7.3.14 Suppose $\begin{array} { r } { S ( x ) = \sum _ { k = 0 } ^ { \infty } s _ { k } x ^ { k } } \end{array}$ on $( - R , R )$ Then $S$ is uniformly continuous on any subinterval of $( - R , R )$ on which $S ^ { \prime }$ is bounded; in particular,it is uniformly continuous on any finite closed subinterval $\lfloor a , b \rfloor \subset ( - R , R )$

EXAMPLE 7.3.15 The functions

$$
\begin{array} { r l r } { 1 / ( 1 - x ) } & { = } & { 1 + x + x ^ { 2 } + \dots } \\ { 1 / ( 1 + x ) } & { = } & { 1 - x + x ^ { 2 } - \dots . . . } \end{array}
$$

are defined on $( - 1 , 1 )$ .Neither can be $U C$ on this interval since neither has an extension to all of $\lfloor - 1 , 1 \rfloor$ ， but they are both UC on closed subintervals. A similar statement (and argument) holds for uniform differentiability. For more on these series, see Abel's Summation Theorem below.

COROLLARY 7.3.16 Suppose $\begin{array} { r } { f ( x ) = \sum _ { k = 0 } ^ { \infty } s _ { k } x ^ { k } } \end{array}$ on $( - R , R )$ .Then

$$
F ( x ) = \sum _ { k = 0 } ^ { \infty } { \frac { s _ { k } x ^ { k + 1 } } { k + 1 } }
$$

is an anti-derivative for $f$ (i.e. $F ^ { \prime } = f$ ）on any closed subinterval of $( - R , R )$

DEFINITION 7.3.17 Given any sequence $\left( t _ { k } \right)$ ， and an increasing sequence of nonnegative integers $( n ( k ) )$ ， the sequence $\left( u _ { k } \right) = \left( t _ { n ( k ) } \right)$ is said to be a subsequence of the original sequence $t _ { n }$

EXAMPLE 7.3.18 Suppose $\begin{array} { r } { ( t _ { k } ) = \left( \frac { 1 } { k } \right) = \frac { 1 } { 1 } , \frac { 1 } { 2 } , \frac { 1 } { 3 } , . . . , \frac { 1 } { k } , . . . } \end{array}$

1.If $n ( k ) = k ^ { 2 }$ ， then $\begin{array} { r } { \left( t _ { n ( k ) } \right) = \frac { 1 } { 1 } , \frac { 1 } { 4 } , \frac { 1 } { 9 } , \dots , \frac { 1 } { k ^ { 2 } } , \dots . } \end{array}$ is q subsequence of $\left( t _ { k } \right)$

2.1f $n ( k ) = 2 k - 1$ then $\begin{array} { r } { \left( t _ { n ( k ) } \right) = \frac { 1 } { 1 } , \frac { 1 } { 3 } , \frac { 1 } { 5 } , \dots , \frac { 1 } { 2 k - 1 } , \dots } \end{array}$ is q subsequence of $\left( t _ { k } \right)$

3.If $n ( k ) = k ^ { 2 } - 6 k + 1$ ， then $\left( t _ { n \left( k \right) } \right)$ is not a subsequence, since $n ( k )$ is not increasing:

$$
\begin{array} { r } { \big ( t _ { n ( k ) } \big ) = \frac { 1 } { 5 } , \frac { 1 } { 2 } , \frac { 1 } { 1 } , \frac { 1 } { 1 } , \frac { 1 } { 2 } , \frac { 1 } { 5 } , \dots . } \end{array}
$$

On the other hand, if we restrict to $k > 3$ , then we are $O k$

4 Ifn(k）={1ks edn is edn , then $\left( t _ { n \left( k \right) } \right)$ is again not a subsequence:

$$
\begin{array} { r } { \left( t _ { n ( k ) } \right) = \frac { 1 } { 1 } , \frac { 1 } { 2 } , \frac { 1 } { 1 } , \frac { 1 } { 4 } , \frac { 1 } { 1 } , \frac { 1 } { 6 } , \dots . } \end{array}
$$

REMARK 7.3.19 It is easily seen that if a sequence converges to a limit $L$ ，then so does any subsequence. By looking at the last example above you can see why restricting the subscripts $n ( k )$ to an increasing sequence of numbers is important for this to hold.

PROPOS7.e $\scriptstyle \sum _ { k = 0 } ^ { \infty } s _ { k } x ^ { k }$ comverges on $( - R , R )$ If any subsequence of $\left( \left| s _ { k } \right| ^ { 1 / k } \right)$ converges to a limit $L$ ,then $L \leq B$ （ $= 1 / R$

Proof. Suppose a subsequence of $| s _ { n } | ^ { 1 / n }$ converges to $L > B$ .Let $\begin{array} { r } { \epsilon = \frac { L - B } { 2 } } \end{array}$ so that $L - \epsilon = B + \epsilon$ . Then for each $_ { n }$ there is an $m > n$ such that $| s _ { m } | ^ { 1 / m } > L - \epsilon$ In other words, $| s _ { m } | > ( B + \epsilon ) ^ { m }$ . But this violates part (2) of the Main Convergence Theorem 7.3.8. Thus, $L > B$ is false, so $L \leq B$

COROLLARY 7.3.21 If any subsequence of $| s _ { n } | ^ { 1 / n }$ converges to $L$ ， then any $R$ that satisfies equivalent conditions $( 1 ) - ( 4 )$ of the Main Convergence Theorem also satisfies $R \leq 1 / L$

COROLLARY 7.3.22 If $| s _ { n } | ^ { 1 / n } \to L$ ,then $R = 1 / L$ satisfies the equivalent conditions of the Main Convergence Theorem.

Proof. Part (2) of the theorem is satisfied by $1 / R = B = L$

DEFINITiON 7.3.23 Whenever we have a largest value of R for which the equivalent conditions of the Main Convergence Theorem hold, we call it the radius of convergence of the power series.

REMARk 7.3.24 It is important to be very clear on the role of the radius of convergence. If $R > 0$ is the radius of convergence of a power series, then

1. For any $0 \leq a < R$ , the power series converges absolutely and uniformly when $| x | \le a$ (i.e. in $[ - a , a ] .$ ).

2. The power series diverges for $| x | > R$

3. When $| x | = R$ (i.e. $x = R$ or $x = - R$ ), the power series may or may not converge at $_ { x }$ : see exercises.

concergence of the series COROLLARY 7.3.25 If $| s _ { k } | ^ { 1 / k } \to L$ $\scriptstyle \sum _ { k = 0 } ^ { \infty } s _ { k } x ^ { k }$ as $k  \infty$ ，then $R = 1 / L$ is the radius of (This follows from the previous two corollaries.)

ExAMPLE 7.3.26 Since $\scriptstyle \operatorname* { l i m } _ { k \to \infty } k ^ { 1 / k } = 1$ (Proposition 3.2.17), thesies $\scriptstyle \sum _ { k = 0 } ^ { \infty } k x ^ { k }$ converges on $( - 1 , 1 )$ . Of course this is nothing new. In fact, you can calculate what this converges to. (What is it?)

(For another calculation of $\scriptstyle \operatorname* { l i m } _ { k \to \infty } k ^ { 1 / k }$ , look at the function $x ^ { 1 / x } = e ^ { { \frac { 1 } { x } } \ln x }$ Its derivative is $\begin{array} { r } { \frac { 1 } { x ^ { 2 } } ( 1 - \ln x ) x ^ { 1 / x } } \end{array}$ , which is negative for $x > e$ Thus, $x ^ { 1 / x }$ is decreasing for $x > e$ Also， $\begin{array} { r } { \operatorname* { l i m } _ { x  \infty } \frac { \ln x } { x } = 0 } \end{array}$ since powers dominate logs (Corollry 3.2.16). We conclude that $k ^ { 1 / k }$ decreases to $1$ as $k \to \infty$ ）

The ratio test (Corollary 3.3.24) is probably the most widely-used test to check for convergence of a power series.

E $\scriptstyle \sum _ { k = 1 } ^ { \infty } { \frac { x ^ { k } } { 2 ^ { k } k ^ { 2 } } } ?$ The ratio of

$$
{ \frac { x ^ { k + 1 } } { 2 ^ { k + 1 } ( k + 1 ) ^ { 2 } } } \cdot { \frac { 2 ^ { k } k ^ { 2 } } { x ^ { k } } } = { \frac { k ^ { 2 } } { ( k + 1 ) ^ { 2 } } } \cdot { \frac { 1 } { 2 } } \cdot x ,
$$

whose limit as $k  \infty$ is simply $\frac x 2$ - Thus， the cut-off for convergence is $| x | = 2$ ， so the radius of convergence is 2. The series converges when $x = 2$ or $x = - 2$ ，S0 its interval of convergence is actually $\lfloor - 2 , 2 \rfloor$ ，in which it converges absolutely and uniformly.

Once we know that a function has a power series representation on a non-trivial interval, then that representation is unique; in fact,the coefficients $s _ { k }$ are determined by evaluation of the derivatives of the function at $0$

TH 7.3.28(U & ERIEs SupTose $\begin{array} { r } { S ( x ) \ = \ \sum _ { k = 0 } ^ { \infty } s _ { k } x ^ { k } } \end{array}$ $( - R , R )$ $R > 0$ $k$

$$
s _ { k } = \frac { S ^ { ( k ) } ( 0 ) } { k ! } ,
$$

where $S ^ { ( k ) }$ denotes the kth derivative of $S$

Proof. Induction shows that the $i$ th derivative of $x ^ { k }$ is $k ( k - 1 ) \dots ( k - i + 1 ) x ^ { k - i }$ (When $i = 0$ this is interpreted, as usual, to mean simply $x ^ { k }$ ,and when $i > k$ this becomes simply $0$ .） Thus, we have (by Corollary 7.3.13)

$$
S ^ { ( i ) } ( x ) = \sum _ { k = 0 } ^ { \infty } k ( k - 1 ) \ldots ( k - i + 1 ) s _ { k } x ^ { k - i } .
$$

All terms with $i > k$ are $0$ ， and all terms with $i < k$ have a positive power of $_ { x }$ ， so they all become $0$ if we let $x = 0$ . Thus $S ^ { ( k ) } ( 0 ) = ( k ! ) s _ { k }$ ，which establishes the theorem.■

COROLLARY 7.3.29 If the function $S$ is given by a power series on some interval $( - R , R )$ with $R > 0$ ，and if all derivatives of $S$ vanish at $0$ ，then $S$ is constant on $( - R , R )$

There are non-zero functions which have derivatives of all orders,all of which vanish at $x = 0$ . Such a function cannot be given by a power series in any interval containing zero, since such a power series would then have to be identically zero (see Example 7.4.10 in the next section).

If we have two functions given by converging power series, we could reasonably ask if their sum, difference, product and quotient are also given by converging power series.If yes,then the coefficients of these series are determined,as we have just seen.Here is the answer to the convergence question.

THEOREM7.3.30 Suppose $\begin{array} { r } { S ( x ) = \sum _ { k = 0 } ^ { \infty } s _ { k } x ^ { k } } \end{array}$ with radius of conwergence $R _ { S }$ and $\textstyle T ( x ) = \sum _ { k = 0 } ^ { \infty } t _ { k } x ^ { k }$ with radius of convergence $R _ { T }$

1. $\begin{array} { r } { ( S \pm T ) \left( x \right) = \sum ( s _ { k } \pm t _ { k } ) x ^ { k } } \end{array}$ with radius of convergence $\ge \operatorname* { m i n } ( R _ { S } , R _ { T } )$

2. $\begin{array} { r } { S T ( x ) = \sum _ { k = 0 } ^ { \infty } u _ { k } x ^ { k } } \end{array}$ with radius of convergence $\ge \operatorname* { m i n } ( R _ { S } , R _ { T } )$ where $u _ { k } =$ $\scriptstyle \sum _ { j = 0 } ^ { k } s _ { j } t _ { k - j }$

3.1f $| T ( 0 ) | > 0$ $( i . e . | t _ { 0 } | > 0 ,$ ), then $1 / T$ has a power series erpansion converging in some interval $[ - \alpha , \alpha ]$ with $0 < \alpha \leq R _ { T }$

Proof. Part $^ { 1 }$ is straightforward. For part 2, note that

$$
\begin{array} { r c l } { \displaystyle \left( \sum _ { k = 0 } ^ { N } s _ { k } x ^ { k } \right) \left( \sum _ { \lambda = 0 } ^ { M } t _ { \lambda } x ^ { \lambda } \right) } & { = } & { \displaystyle \sum _ { k = 0 } ^ { N } \sum _ { \lambda = 0 } ^ { M } s _ { k } t _ { \lambda } x ^ { k + \lambda } } \\ { \displaystyle \sum _ { k = 0 } ^ { N } \sum _ { \lambda = 0 } ^ { M } \left| s _ { k } t _ { \lambda } x ^ { k + \lambda } \right| } & { = } & { \displaystyle \left( \sum _ { k = 0 } ^ { N } \left| s _ { k } \right| \left| x \right| ^ { k } \right) \left( \sum _ { \lambda = 0 } ^ { M } \left| t _ { \lambda } \right| \left| x \right| ^ { \lambda } \right) } \\ & { \leq } & { \displaystyle \left( \sum _ { k = 0 } ^ { \infty } \left| s _ { k } \right| \left| x \right| ^ { k } \right) \left( \sum _ { \lambda = 0 } ^ { \infty } \left| t _ { \lambda } \right| \left| x \right| ^ { \lambda } \right) . } \end{array}
$$

If $| x | < \operatorname* { m i n } ( R _ { S } , R _ { T } )$ , then both infinite sums in the last expression are finite. Thus, the product series,and hence its terms,must be bounded, so it converges absolutely by Corollary 7.3.10 of the Main Convergence Theorem. Since the product series converges absolutely, its terms can be rearranged or collected to put it in the form $\scriptstyle \sum _ { k = 0 } ^ { \infty } u _ { k } x ^ { k }$ (see Proposition 3.3.45).

The uniqueness of power series expansions for a given function tells us that the power series given by this theorem are the only ones that converge to the given sum, difference and product functions.

The situation for the reciprocal is a bit more complicated since it is diffcult to write down, explicitly, the formulas for the coefficients of $1 / T ( x )$ . Suppose we write

$$
1 / T ( x ) = v _ { 0 } + v _ { 1 } x + v _ { 2 } x ^ { 2 } + v _ { 3 } x ^ { 3 } + \cdots .
$$

Then we must have

$$
\left( \sum _ { k = 0 } ^ { \infty } t _ { k } x ^ { k } \right) \cdot \left( \sum _ { \lambda = 0 } ^ { \infty } v _ { \lambda } x ^ { \lambda } \right) = 1 + 0 \cdot x + 0 \cdot x ^ { 2 } + 0 \cdot x ^ { 3 } + \cdots .
$$

From the second part of this theorem,we know what the coefficients of the left-hand product are,so we get the equations

$$
\begin{array} { r c l } { { t _ { 0 } v _ { 0 } } } & { { = } } & { { 1 } } \\ { { } } & { { } } & { { } } \\ { { t _ { 0 } v _ { 1 } + t _ { 1 } v _ { 0 } } } & { { = } } & { { 0 } } \\ { { } } & { { } } & { { } } \\ { { t _ { 0 } v _ { 2 } + t _ { 1 } v _ { 1 } + t _ { 2 } v _ { 0 } } } & { { = } } & { { 0 } } \\ { { } } & { { } } & { { } } \\ { { } } & { { } } & { { \mathrm { e t c . } } } \end{array}
$$

Since $| t _ { 0 } | > 0$ we can solve the first equation for $v _ { 0 }$ . Putting this into the second equation,we can solve for $v _ { 1 }$ . We can continue in this way, solving successively for each new $v _ { \lambda }$ in terms of the $t _ { k }$ s and the previous values of $v _ { i }$ . The question is: does this new power series have a positive radius of convergence? Here is an outline of a proof that it does (adapted from [Spivak 1994]).

1. Suppose $\begin{array} { r } { T ( x ) = \sum _ { k = 0 } ^ { \infty } t _ { k } x ^ { k } } \end{array}$ converges for $_ { x }$ equal to some positive $r \leq R _ { T }$ ： note that $v _ { 0 } = 1 / t _ { 0 }$ and $v _ { \lambda } = - \frac { 1 } { t _ { 0 } } \sum _ { j = 0 } ^ { \lambda - 1 } v _ { j } t _ { \lambda - j }$ (from equations above） for $\lambda > 0$

2. All terms $\left| t _ { k } r ^ { k } \right|$ are bounded by some number $M$ , and we have

$$
\left| v _ { \lambda } x ^ { \lambda } \right| \leq { \frac { M } { \left| t _ { 0 } \right| } } \sum _ { j = 0 } ^ { \lambda - 1 } \left| v _ { \lambda } x ^ { \lambda } \right| .
$$

3. Let $N = \operatorname* { m a x } ( M , { \sqrt { 2 } } )$ ; then $\left| v _ { \lambda } r ^ { \lambda } \right| \le \frac { 1 } { t _ { 0 } } N ^ { 2 \lambda }$ (induction on $\lambda$ ）

4. Deduce that $\scriptstyle \sum _ { \lambda = 0 } ^ { \infty } v _ { \lambda } x ^ { \lambda }$ when $\left| { \frac { x } { r } } \right|$ is small enough (and positive).

(Anotherprofofthisteomfooregeralore $\textstyle \sum _ { k = 0 } ^ { \infty } s _ { k } ( x - a ) ^ { k }$ can be found in [Strichartz,1995],p. 288.）

COROLLARY 7.3.31 Supp08e $\textstyle f \left( x \right) = \sum _ { k = 0 } ^ { \infty } s _ { k } x ^ { k }$ on the closed interoal $\lfloor a , b \rfloor$ Then for any $\alpha , \beta \in \lfloor a , b \rfloor$ ，

$$
\int _ { \alpha } ^ { \beta } f ( x ) = \sum _ { k = 0 } ^ { \infty } \int _ { \alpha } ^ { \beta } ( s _ { k } x ^ { k } ) = \sum _ { k = 0 } ^ { \infty } { \frac { s _ { k } } { k + 1 } } \left( \beta ^ { k + 1 } - \alpha ^ { k + 1 } \right) .
$$

Proof.Let $\begin{array} { r } { G ( x ) = \sum _ { k = 0 } ^ { \infty } \frac { s _ { k } } { k + 1 } \left( x ^ { k + 1 } - \alpha ^ { k + 1 } \right) = \sum _ { k = 0 } ^ { \infty } \frac { s _ { k } } { k + 1 } x ^ { k + 1 } - \sum _ { k = 0 } ^ { \infty } \frac { s _ { k } } { k + 1 } \alpha ^ { k + 1 } } \end{array}$ (All of these converge by what we have already proved about power series.) Then $G ( x )$ and $\textstyle \int _ { \alpha } ^ { x } f ( x )$ have the same derivative and agree at $x = \alpha$ ，s0 $\begin{array} { r } { G ( x ) = \int _ { \alpha } ^ { x } f ( x ) } \end{array}$

EXAMPLE 7.3.32 (GEOMETRIC SERIEs) We start with the two series

$$
{ \begin{array} { l } { \displaystyle { \frac { 1 } { 1 - x } } = 1 + x + x ^ { 2 } + x ^ { 3 } + \cdots } \\ { \displaystyle { \frac { 1 } { 1 + x } } = 1 - x + x ^ { 2 } - x ^ { 3 } + \cdots . } \end{array} }
$$

These both have a radius of convergence of 1 and thus converge in $( - 1 , 1 )$ . Integrating term by term gives us

$$
\begin{array} { r } { - \ln ( 1 - x ) = x + x ^ { 2 } / 2 + x ^ { 3 } / 3 + x ^ { 4 } / 4 + \cdot \cdot \cdot } \\ { \ln ( 1 + x ) = x - x ^ { 2 } / 2 + x ^ { 3 } / 3 - x ^ { 4 } / 4 + \cdot \cdot \cdot } \end{array}
$$

and by adding, we obtain

$$
\ln \left( { \frac { 1 + x } { 1 - x } } \right) = 2 x + 2 x ^ { 3 } / 3 + 2 x ^ { 5 } / 5 + \cdot \cdot \cdot .
$$

The first of these converges on $\lfloor - 1 , 1 \rfloor$ ， the second on $( - 1 , 1 ]$ ， and the last on $( - 1 , 1 )$

Let's look at the second. $I t$ is not difficult to show that it converges uniformly and absolutely on $\lfloor - r , 1 \rfloor$ for any $0 \leq r < 1$ (it's an alternating series). It follows that its limit as $x \to 1$ equals its value at $x = 1$ ， the sum of the alternating harmonic series.But its value for $x \ : < \ : 1$ is $\ln ( 1 + x )$ ，a function uniformly continuous on (at least) [O,1]. It follows that the sum of the alternating harmonic series is simply $\ln ( 2 )$ . (This was also proved in an exercise to the last section.)

We can also obtain a series for $\ln ( 2 )$ by letting $\begin{array} { r } { x = \frac { 1 } { 2 } } \end{array}$ in the first series.

Note that the first of these series converges much more slowly than the second. (See the exercises at the end of this section for a more detailed discussion.） The advantage of the third series is that is can be used to calculate values of $\ln ( y )$ for all $y > 0$ by letting $\begin{array} { r } { x = \frac { y - 1 } { y + 1 } } \end{array}$

If we substitute $x ^ { 2 }$ for $_ { x }$ in the second series, we get

$$
\begin{array} { c } { { \displaystyle \frac { 1 } { 1 + x ^ { 2 } } = 1 - x ^ { 2 } + x ^ { 4 } - x ^ { 6 } + \cdot \cdot \cdot } } \\ { { = \displaystyle \sum _ { i = 0 } ^ { \infty } ( - 1 ) ^ { i } x ^ { 2 i } . } } \end{array}
$$

This converges on $( - 1 , 1 )$ ; once again, we integrate both sides to obtain

$$
\begin{array} { l } { \arctan ( x ) = x - x ^ { 3 } / 3 + x ^ { 5 } / 5 - x ^ { 7 } / 7 + \cdot \cdot \cdot } \\ { = \displaystyle \sum _ { i = 0 } ^ { \infty } ( - 1 ) ^ { i } \frac { x ^ { 2 i + 1 } } { 2 i + 1 } . } \end{array}
$$

This now converges on $( - 1 , 1 ]$ . When $x = 1$ , we get the famous but slowly converging series:

$$
\arctan ( 1 ) = 1 - 1 / 3 + 1 / 5 - 1 / 7 + 1 / 9 - 1 / 1 1 + \cdots .
$$

In Section 7.5, where we define $\boldsymbol { \mathcal { U } }$ and the periodic functions, we will prove that this value is $\pi / 4$ (see page 266).

EXAMPLE 7.3.33(THE EXPONENTIAL FUNCTION AS A POWER SERIES)

$$
\exp ( x ) = \sum _ { k = 0 } ^ { \infty } { \frac { x ^ { k } } { k ! } } = 1 + { \frac { x } { 1 ! } } + { \frac { x ^ { 2 } } { 2 ! } } + \cdot \cdot \cdot + { \frac { x ^ { n } } { n ! } } + \cdot \cdot \cdot
$$

This power series converges uniformly and absolutely on any interval $\lfloor - R , R \rfloor$ ， and it is easily checked (term-by-term differentiation) that $\exp ( x )$ is its own derivative. We already know that $e ^ { x }$ has this property, so form the quotient $Q ( x ) = { \frac { \exp ( x ) } { e ^ { x } } }$ $Q ^ { \prime } ( x ) = 0$ ，s0 $Q$ is constant; $Q ( 0 ) = 1$ ， so we conclude that $\exp ( x ) = e ^ { x }$ . (This was the subject of an exercise in the last section).

In general,we know that if a power series converges for $x = R > 0$ ，then it converges uniformly on closed subintervals of $( - R , R )$ .On the other hand, it may or may not converge at $x = R$ or $x = - R$ . For example, $x - x ^ { 2 } / 2 + x ^ { 3 } / 3 - x ^ { 4 } / 4 + \cdot \cdot \cdot$ converges at $x = 1$ but not at $x = - 1$ and is, in fact,uniformly convergent throughout $\lfloor - a , 1 \rfloor$ for $0 \leq a < 1$ .Is this always the case that if a power series converges at $x = R > 0$ , then it is uniformly convergent in $[ - a , R ]$ for $0 \leq a < R$ ?The answer is yes,as shown in a famous theorem proved more than two centuries ago by Niels Abel.We establish first a preliminary result that is useful in itself.

LEMMA 7.3.34（ABEL's LEMMA） Suppose $b _ { 1 } \geq b _ { 2 } \geq \cdots$ , with each $b _ { i } \geq 0$ . Suppose also that the partial sums $\begin{array} { r } { A _ { n } = \sum _ { j = 1 } ^ { n } a _ { j } } \end{array}$ all lie in $\lfloor m , M \rfloor$ . Then the partial sums $\textstyle \sum _ { j = k } ^ { n } a _ { j } b _ { j }$ all lie in $\left[ m b _ { k } , M b _ { k } \right]$

Proof. We use the same trick (sometimes called “Abel summation"） that we used in proving Dirichlet's Test (3.3.38):

$$
{ \begin{array} { l l l } { a _ { k } b _ { k } + \cdot \cdot \cdot + a _ { n } b _ { n } } & { = } & { A _ { k } b _ { k } + \left( A _ { k + 1 } - A _ { k } \right) b _ { k + 1 } + \cdot \cdot \cdot } \\ & & { + ( A _ { n - 1 } - A _ { n } ) b _ { n - 1 } + ( A _ { n } - A _ { n - 1 } ) b _ { n } } \\ & { = } & { A _ { k } { \big ( } b _ { k } - b _ { k + 1 } { \big ) } + A _ { k + 1 } { \big ( } b _ { k + 1 } - b _ { k + 2 } { \big ) } + \cdot \cdot \cdot } \\ & & { + A _ { n - 1 } { \big ( } b _ { n - 1 } - b _ { n } { \big ) } + A _ { n } b _ { n } } \end{array} }
$$

For each $j$ ， $m \leq A _ { j } \leq M$ ，

$$
\begin{array} { l c l } { m b _ { k } } & { = } & { m ( b _ { k } - b _ { k + 1 } ) + m ( b _ { k + 1 } - b _ { k + 2 } ) + \cdot \cdot \cdot + m ( b _ { n - 1 } - b _ { n } ) + m b _ { n } } \\ & { \leq } & { A _ { k } ( b _ { k } - b _ { k + 1 } ) + A _ { k + 1 } ( b _ { k + 1 } - b _ { k + 2 } ) + \cdot \cdot \cdot + A _ { n - 1 } ( b _ { n - 1 } - b _ { n } ) + A _ { n } b _ { n } } \\ & { \leq } & { M ( b _ { k } - b _ { k + 1 } ) + M ( b _ { k + 1 } - b _ { k + 2 } ) + \cdot \cdot \cdot + M ( b _ { n - 1 } - b _ { n } ) + M b _ { n } } \\ & { = } & { M b _ { k } , } \end{array}
$$

since the first and third sums telescope. Thus, $a _ { k } b _ { k } + \cdot \cdot \cdot + a _ { n } b _ { n } \in \left\lfloor m b _ { k } , M b _ { k } \right\rfloor$ as required.

THEOREM 7.3.35 （ABEL's SUMMATION THEOREM） Suppose that the power series $\scriptstyle \sum _ { k = 0 } ^ { \infty } a _ { k } x ^ { k }$ $\textstyle f ( x ) = \sum _ { k = 0 } ^ { \infty } a _ { k } x ^ { k }$ converges when $x = 1$ Then it converges uniformly on $\lfloor 0 , 1 \rfloor$ $[ 0 , 1 ]$ $\operatorname* { l i m } _ { x \to 1 ^ { - } } f ( x ) \ =$ ，so that $\begin{array} { r } { f ( 1 ) = \sum _ { k = 0 } ^ { \infty } a _ { k } } \end{array}$

Proof. Exercise (apply Abel's Lemma with $b _ { j } = x ^ { j }$ ）

COROLLARY7336ose $\scriptstyle \sum _ { k = 0 } ^ { \infty } a _ { k } x ^ { k }$ comwerges when $x = R$ for some $R > 0$ . Then it converges uniformly on $[ - a , R ]$ for $0 \leq a < R$

Proof. Exercise. ■

REMARK7.337isroidesotheroftattheei $\scriptstyle \sum _ { k = 1 } ^ { \infty } { \frac { ( - 1 ) ^ { k + 1 } } { k } }$ converges to $\ln { 2 }$ .

But there's more to Abel's Theorem. Suppose we don't know whether a numerical   
series $\scriptstyle \sum _ { k = 0 } ^ { \infty } a _ { k }$ converges. We can make this series into the power series $P ( x ) =$   
$\scriptstyle \sum _ { k = 0 } ^ { \infty } a _ { k } x ^ { k }$ .If our original series did converge， say $\textstyle \sum _ { k = 0 } ^ { \infty } a _ { k } \ = \ A$ ，then Abel’s   
Theorem tells us that lim P(x) = A as well. So we turn this around into a definition.   
DEmImITIONO DEINTION7.3.38（ABELSUMMABILY)eseries $L$ $\scriptstyle \sum _ { k = 0 } ^ { \infty } a _ { k } x ^ { k }$ UMABILIT Il $x \in \left[ 0 , 1 \right)$ $\scriptstyle \sum _ { k = 0 } ^ { \infty } a _ { k }$ $\operatorname* { l i m } _ { x \to 1 ^ { - } } \sum _ { k = 0 } ^ { \infty } a _ { k } x ^ { k } = L$ is said to be Abel   
(Note that $x \to 1 ^ { - }$ means we restrict $_ x$ to $x < 1$ ）

We can now interpret Abel's Theorem as saying that if a series converges to $A$ ，then it is Abel summable to $A$ .So Abel summability is most interesting for series that don't converge,or whose convergence properties are unknown. The nonconverging series $1 - 1 + 1 - 1 + \cdot \cdot .$ is actually Abel summable-see the exercises. We will use Abel summability in Chapter 8 to discuss the convergence of Fourier series (see page 286).

Of course,it is reasonable to ask,“When does Abel summability imply convergence?” Not always, as $1 - 1 + 1 - 1 + \cdot \cdot .$ shows,but sometimes.Here is Tauber's1 famous partial converse to Abel's Theorem.

THEOREM 7.3.39 (TAUBER’s THEOREM) SupOse $\scriptstyle \sum _ { k = 0 } ^ { \infty } a _ { k }$ is Abel summable to $L$ and the summands satisfy

$$
\operatorname* { l i m } _ { k \to \infty } k \cdot a _ { k } = 0 .
$$

$\scriptstyle \sum _ { k = 0 } ^ { \infty } a _ { k }$ converges to $L$

Proof. Outlined in the exercises.■

There is a famous generalization of Tauber's theorem,due to Hardy and Littlewood. Even though the change in the hypothesis from Tauber's Theorem seems minor,the proof of the Hardy-Littlewood theorem is so diffcult that it is beyond the scope of this book. Here is its deceptively simple statement.

THEOREM7.3.40 (HARDY-LITTLEWOOD TAUBERIAN THEOREMSuppOSe $\scriptstyle \sum _ { k = 0 } ^ { \infty } a _ { k }$ is Abel summable to $L$ and the summands satisfy

$$
k \cdot a _ { k } \leq C ,
$$

where $C$ is a positive constant. Then $\scriptstyle \sum _ { k = 0 } ^ { \infty } a _ { k }$ comverges to $L$

There are other summability methods besides Abel summability,and there are variations for integrals instead of sums. Theorems like Abel's,which assert that convergent series are summable in these other senses,and sum to what they converge to, are now usually called Abelian theorems. Converses (more properly, partial converses)，which state that under certain conditions summability implies convergence,are called Tauberian theorems. For a brief review of some of the literature, see [Borwein, 2005].

# Exercises

1. Suppose ( $f _ { n }$ ） is a sequence of functions on defined on $S$ such that

(a) $f _ { n } ( x ) \geq f _ { n + 1 } ( x )$ for all $_ n$ (b) $f _ { n } \to 0$ uniformly on $S$

Prove that $\textstyle \sum _ { n = 0 } ^ { \infty } ( - 1 ) ^ { n } f ( x )$ converges uniformly on $S$

Is the convergence necessarily absolute? Give some examples.

2. Show how the proposition below folows from a similar result about sequences of functions (Theorem 7.2.5).

PROPOSITION． Suppose（ $f _ { n }$ ） is a sequence of functions differentiable on $\lfloor a , b \rfloor$ such that

（(@) $\textstyle \sum _ { n = 0 } ^ { \infty } f _ { n } ( c )$ converges for some $c \in \lfloor a , b \rfloor$ (b) $\textstyle \sum _ { n = 0 } ^ { \infty } f _ { n } ^ { \prime } ( x )$ converges uniformly on $[ a , b ]$

Then $\textstyle \sum _ { n = 0 } ^ { \infty } f ( x )$ converges uniformly on $\lfloor a , b \rfloor$ to a differentablefunction wose derivative is $\textstyle \sum _ { n = 0 } ^ { \infty } f _ { n } ^ { \prime } ( x )$

3. Suppose $s _ { k } = P ( k )$ is a polynomial in $k$ Prove that $\scriptstyle \sum _ { k = 0 } ^ { \infty } s _ { k } x ^ { k }$ comverges exactly when $| x | < 1$

4. It was pointed Out that $\scriptstyle \sum _ { k = 0 } ^ { \infty } k x ^ { k }$ hasaradiusofovegeeftaig with a geometric series, deduce this radius of convergence and calculate the actual value of this series for $x \in ( - 1 , 1 )$

5.Findtheradiusofoecef $\scriptstyle \sum _ { k = 0 } ^ { \infty } \sin ( k ) x ^ { k }$ and $\scriptstyle \sum _ { k = 0 } ^ { \infty } \cos ( k ) x ^ { k }$ Whatabout convergence at $x = 1 , - 1$ ？

6.A hypergeometric series is one where the coefficients of $x ^ { k }$ are rational functions of $k$ ： $s _ { k } = P ( k ) / Q ( k )$ . Check online references at

$$
\mathrm { h t t p : / / m a t h w o r l d . w o l f r a m . c o m / H y p e r g e o m e t r i c S e r i e s . h t m 1 }
$$

and

http : //en.wikipedia.org/wiki/Hypergeometric_series.

Prove that $R = 1$ is a radius of convergence for a hypergeometric series. (Hint: Prove that it suffces to show that $\operatorname* { l i m } _ { n \to \infty } | p ( n ) | ^ { 1 / n } = 1$ when $p ( n )$ is a polynomial in $_ { n }$ see Corollary 7.3.25.)

7. To see what can happen at the boundary of the interval of convergence, consider the series tEd Each has radius of convergence with $| x | = 1$

8. Finish the proof of Abel's Summation Theorem (7.3.35). As suggested, apply c onvuenice, $b _ { j } = x ^ { j }$ isin $x \in$ $[ 0 , 1 ]$ $\textstyle \sum _ { j = 0 } ^ { \infty } a _ { j }$ $a _ { k } + a _ { k + 1 } + \cdots + a _ { n } $ $\lfloor - \epsilon , \epsilon \rfloor$ $k$ sufficiently large, so the same is true for their limits as $k \to \infty$

9. Use Abel's Summation Theorem (7.3.35) to prove the following.

LLAR $\textstyle f ( x ) = \sum _ { k = 0 } ^ { \infty } a _ { k } x ^ { k }$ co $x = R$ $R > 0$ $[ - a , R ]$ $0 \leq a < R$ (Hint: Show that the series $\begin{array} { r } { g ( y ) = \sum _ { k = 0 } ^ { \infty } \left( a _ { k } R ^ { k } \right) y ^ { k } } \end{array}$ converges at $y = 1$ ; apply Abel's Theorem. Compare $f \left( x \right)$ and $g ( y )$ and their limits.)

10.Suppose $\scriptstyle \sum _ { k = 0 } ^ { \infty } a _ { k }$ and $\scriptstyle \sum _ { k = 0 } ^ { \infty } b _ { k }$ aree product is defined to be $\scriptstyle \sum _ { k = 0 } ^ { \infty } c _ { k }$ ，where

$$
c _ { k } = ( a _ { 0 } b _ { k } + a _ { 1 } b _ { k - 1 } + \cdots + a _ { j } b _ { k - j } + \cdots a _ { k } b _ { 0 } ) = \sum _ { j = 0 } ^ { k } a _ { j } b _ { k - j } .
$$

$\scriptstyle \sum _ { k = 0 } ^ { \infty } c _ { k }$ cxists,sho that $\begin{array} { r } { \left( \sum _ { k = 0 } ^ { \infty } a _ { k } \right) \left( \sum _ { k = 0 } ^ { \infty } b _ { k } \right) = \sum _ { k = 0 } ^ { \infty } c _ { k } } \end{array}$ (Hint: Lok at the associated power series $\sum a _ { k } x ^ { k }$ etc.and use Theorem 7.3.35; remember how polynomials are multiplied; see also the proof of Theorem 7.3.30)

11.Using the ideas in the prof of Theorem_7.3.30,show thatif $\scriptstyle \sum _ { k = 0 } ^ { \infty } b _ { k }$ convergeabsolutelythde $\scriptstyle \sum _ { k = 0 } ^ { \infty } c _ { k }$ where $c _ { k } = ( a _ { 0 } b _ { k } + a _ { 1 } b _ { k - 1 } +$ $\scriptstyle \sum _ { k = 0 } ^ { \infty } a _ { k }$ and $\cdot \cdot \cdot + a _ { j } b _ { k - j } + \cdot \cdot \cdot a _ { k } b _ { 0 } )$ .Thus $\begin{array} { r } { \left( \sum _ { k = 0 } ^ { \infty } a _ { k } \right) \left( \sum _ { k = 0 } ^ { \infty } b _ { k } \right) = \sum _ { k = 0 } ^ { \infty } c _ { k } } \end{array}$ by the previous exercise.

12. (From [Spivak 1994]): Show that the series

$$
\sum _ { k = 0 } ^ { \infty } { \frac { x ^ { 2 n + 1 } } { 2 n + 1 } } - { \frac { x ^ { n + 1 } } { 2 n + 2 } }
$$

converges uniformly to $\textstyle { \frac { 1 } { 2 } } \ln ( x + 1 )$ on $\lfloor - a , a \rfloor$ for $0 < a < 1$ ,but that at $x = 1$ $\mathrm { l n 2 }$ $x = 1$ $\textstyle \sum _ { k = 0 } ^ { \infty } { \frac { 1 } { 2 n + 1 } } - { \frac { 1 } { 2 n + 2 } }$ 2n+2.） Why is this not a violation of Abel's Summation Theorem?

13.Find and prove a generalization of Abel's Summation Theorem (7.3.35） that appiesto seresof the form $\scriptstyle \sum _ { k = 0 } ^ { \infty } a _ { k } f _ { k } ( x )$

14.As was mentioned in the text, the series $1 - 1 + 1 - 1 + \cdot \cdot .$ is Abel summable: show this and find its Abel limit.

15. Here is an outline of the proof of Tauber's Theorem (7.3.39). First, prove the following.

LEMMA.If $u \geq 0$ , then for every positive integer $k$ ， $1 - u ^ { k } \leq k ( 1 - u )$

LEMMA. If the sequence $\left( a _ { n } \right)$ converges to a then so does the sequence of qverages $\textstyle \left( ( 1 / n ) \sum _ { k = 1 } ^ { n } a _ { k } \right)$

(Induction works for the first of these; the second was an exercise on page 107.) Here are the hypotheses (and notation) for Tauber's Theorem.

(@) $\begin{array} { l } { P ( x ) = \sum _ { k = 0 } ^ { \infty } a _ { k } x } \\ { \displaystyle \operatorname* { l i m } _ { x \to 1 ^ { - } } P ( x ) = L . } \\ { \displaystyle \operatorname* { l i m } _ { k \to \infty } k ~ a _ { k } = 0 . } \end{array}$ converges for $| x | < 1$   
(b)  
  
(c）

We want to make $\scriptstyle \sum _ { k = 0 } ^ { \prime \prime } a _ { k }$ within $\epsilon$ of $L$ by making $_ { n }$ larger than some $N$

$$
\left| \sum _ { k = 0 } ^ { n } a _ { k } - L \right| \leq \underbrace { \left| \sum _ { k = 0 } ^ { n } a _ { k } - \sum _ { k = 0 } ^ { n } a _ { k } \ x ^ { k } \right| } _ { S _ { 1 } } + \underbrace { \left| \sum _ { k = 0 } ^ { n } a _ { k } \ x ^ { k } - P ( x ) \right| } _ { S _ { 2 } } + \underbrace { | P ( x ) - L | } _ { S _ { 3 } } .
$$

Note that the last term, $S _ { 3 }$ ， has no $_ { n }$ in it; we remedy this by letting $x =$ $1 - 1 / n$ . The idea now is to show that each of the three terms can be made less than $\epsilon / 3$ by making $_ { n }$ bigger than numbers $N _ { 1 }$ ， $N _ { 2 }$ ， $N _ { 3 }$ ；we then let $N = \operatorname* { m a x } ( N _ { 1 } , N _ { 2 } , N _ { 3 } )$

By the first lemma,

$$
S _ { 1 } \leq \left| \sum _ { k = 0 } ^ { n } a _ { k } ( 1 - ( 1 - 1 / n ) ^ { k } ) \right| \leq ( 1 / n ) \sum _ { k = 1 } ^ { n } k \left| a _ { k } \right| ,
$$

and this last quantity can be made $\leq \epsilon / 3$ by the second lemma.

Fo $S _ { 2 }$ chosc $N _ { 2 }$ So tiat $_ n$ $| a _ { n } | < \epsilon / 3$ for $n > N _ { 2 }$ $\begin{array} { r } { \operatorname { t h e n } S _ { 2 } = \left| \sum _ { k = n + 1 } ^ { \infty } a _ { k } \ x ^ { k } \right| \leq } \end{array}$ $\sum _ { n + 1 } ^ { \infty } { \frac { \epsilon } { 3 n } } ~ x ^ { k }$

This last is a geometric series which is $\leq \epsilon / 3$ when $x = 1 - 1 / n$

Finally, $P ( 1 - 1 / n ) \longrightarrow L$ when $_ { n }$ is sufficiently large, so $S _ { 3 }$ can be made small.

# 7.4 Taylor Series

# Introduction

In this section, we will use a slight generalization of the kind of series we have been discussing. Instead of sums of terms in powers of $_ x$ ， we will consider sums of terms in powers of $( x - c )$ for a fixed number $c$ . Everything we have said up to now has an analogue if we replace $_ { x }$ by $x - c$ , including the notions of convergence and radius of convergence. For example, consider the following corollary to Abel's Summation Theorem.

ORLAY7336oseo $\scriptstyle \sum _ { k = 0 } ^ { \infty } a _ { k } x ^ { k }$ converges when $x = R$ for iome $R > 0$ . Then it converges uniformly on $[ - a , R ]$ for $0 \leq a < R$

We can rewrite it by replacing $_ { x }$ by $x - c$ to obtain the following.

COROLLARY 7.4.1（CENTERED AT $c$ ）Suppose $\scriptstyle \sum _ { k = 0 } ^ { \infty } a _ { k } \left( x - c \right) ^ { k }$ converges when $x =$ $c + R$ for some $R > 0$ . Then it converges uniformly on $\lfloor c - a , c + R \rfloor$ for $0 \leq a < R$

Proof. When $x = c { + } R$ tttt $\scriptstyle \sum _ { k = 0 } ^ { \infty } a _ { k } R ^ { k }$ converges. By the first version of the corollary, $\scriptstyle \sum _ { k = 0 } ^ { \infty } a _ { k } x ^ { k }$ Converges uniformly for $- a \leq x \leq R$ Replacing $_ x$ by $x - c$ we see that $\scriptstyle \sum _ { k = 0 } ^ { \infty } a _ { k } \left( x - c \right) ^ { k }$ convergesfor $- a \leq x - c \leq R$ ,i.e. $c - a \leq x \leq c + R$ ■

This proof is typical of how much of the theory already proved for power series of the form $\scriptstyle \sum _ { k = 0 } ^ { \infty } a _ { k } x ^ { k }$ translateseasilyintothetheoryforseries $\scriptstyle \sum _ { k = 0 } ^ { \infty } a _ { k } \left( x - c \right) ^ { k }$ Here is another simple rewrite of a result stated previously for powers of $_ { x }$ :Theorem 7.3.28 on the uniqueness of power series representations.

THEOREM 7.4.2（UNIQUENESS OF POWER SERIES） SuppOSe

$$
S ( x ) = \sum _ { k = 0 } ^ { \infty } s _ { k } \left( x - c \right) ^ { k }
$$

converges on $( c - R , c + R )$ for some $R > 0$ . Then for all $k$

$$
s _ { k } = \frac { S ^ { ( k ) } ( c ) } { k ! } ,
$$

where $S ^ { ( k ) }$ denotes the kth derivative of $S$

To prove this we could simply redo the proof already given in the case $c = 0$ (see: Theorem 7.3.28),but in order to see the translation from “centered at $0 ^ { \circ }$ to “centered at $_ c$ ,” it would be better to use a method with more general applicability. If we let $( - R , R )$ $y = x - c$ The series ,then as $\begin{array} { r } { S ( x ) = \sum _ { k = 0 } ^ { \infty } s _ { k } \left( x - c \right) ^ { k } } \end{array}$ $_ x$ takes on values in becomes $( c - R , c + R )$ $\begin{array} { r } { \bar { S } ( y ) = \sum _ { k = 0 } ^ { \infty } s _ { k } y ^ { k } } \end{array}$ ， $_ y$ takes on values which then converges uniformly for $y \in ( - R , R )$ .By the uniqueness theorem for series centered at 0 (Theorem 7.3.28), the coefficients of $\check { S } ( y )$ are given by $s _ { k } = \frac { \breve { S } ^ { ( k ) } ( 0 ) } { k ! }$ Since $\tilde { S } ( y ) = \tilde { S } ( x - c ) = S ( x )$ ，

$$
\frac { d ( \widetilde { S } ( y ) ) } { d x } = \frac { d \left( \widetilde { S } ( y ) \right) } { d y } \frac { d y } { d x }
$$

and by the chain rule,

$$
\left. \frac { d ( \widetilde { S } ( y ) ) } { d x } \right| _ { y = x - c } = \frac { d ( S ( x ) ) } { d x } = \frac { d ( \widetilde { S } ( y ) ) } { d y } .
$$

In other words, $S ^ { \prime } { ( x ) } = \widetilde { S } ^ { \prime } { ( y ) }$ (the first as a function of $_ { x }$ , the second as a function of $_ y$ ).Inductively,this holds for the higher derivatives as well: $S ^ { ( k ) } ( x ) = \tilde { S } ^ { ( k ) } ( y )$ When $x = c$ ， $y = 0$ ，s0

$$
s _ { k } = \frac { \widetilde { S } ^ { ( k ) } ( 0 ) } { k ! } = \frac { \widetilde { S } ^ { ( k ) } ( c ) } { k ! } .
$$

Just as we used the chain rule in the previous argument, we can use the change of variable formula for integrals to reformulate Corollary 7.3.31 of the previous section on definite integrals of series.

COROLLARY 7.4.3 Suppose $\begin{array} { r } { f \left( x \right) = \sum _ { k = 0 } ^ { \infty } s _ { k } ( x - c ) ^ { k } } \end{array}$ on the closed interval $\lfloor a , b \rfloor$ Then, for any $\alpha , \beta \in \lfloor a , b \rfloor$ ，

$$
\int _ { \alpha } ^ { \beta } f ( x ) = \sum _ { k = 0 } ^ { \infty } \int _ { \alpha } ^ { \beta } ( s _ { k } ( x - c ) ^ { k } ) = \sum _ { k = 0 } ^ { \infty } { \frac { s _ { k } } { k + 1 } } \left( ( \beta - c ) ^ { k + 1 } - ( \alpha - c ) ^ { k + 1 } \right) .
$$

$y = x - c$ $\begin{array} { r } { \tilde { f } ( y ) = \sum _ { k = 0 } ^ { \infty } s _ { k } y ^ { k } } \end{array}$ $y \in \left[ a - c , b - c \right]$ $\begin{array} { r } { \int _ { \alpha - c } ^ { \beta - c } \tilde { f } ( y ) d y = \sum _ { k = 0 } ^ { \infty } s _ { k } \int _ { \alpha - c } ^ { \beta - c } y ^ { k } d y } \end{array}$ $x = y + c$ to deduce

$$
\int _ { \alpha - c } ^ { \beta - c } { \tilde { f } } ( y ) d y = \int _ { \alpha } ^ { \beta } f ( x ) d x
$$

and

$$
\int _ { \alpha - c } ^ { \beta - c } y ^ { k } d y = \int _ { \alpha } ^ { \beta } ( x - c ) ^ { k } d x .
$$

In the previous discussion, the function $f ( x )$ was defined as a power series. We now turn around the situation and start with a function $f ( x )$ and ask if it can be computed as the limit of a power series. By Theorem 7.4.2，we know what the coefficients of this series must be.

DEFINITION 7.4.4 （TAYLOR POLYNOMIALS） SuppOSe the function $f$ is $_ { n }$ -times differentiable on the interval $( a , b )$ ，and $c \in ( a , b )$ .For $k = 0 \dots n - 1$ ， define the Taylor polynomials for $f$ ， centered at $c$ by

$$
\begin{array} { r c l } { { T _ { 0 } ( f , x , c ) } } & { { = } } & { { f ( c ) } } \\ { { } } & { { } } & { { } } \\ { { T _ { k + 1 } ( f , x , c ) } } & { { = } } & { { T _ { k } ( f , x , c ) + \displaystyle \frac { f ^ { ( k + 1 ) } ( c ) } { ( k + 1 ) ! } \cdot ( x - c ) ^ { k + 1 } . } } \end{array}
$$

In practice,we will be dealing with only one function $f$ and only one real number $c$ at a time, so we will adopt the more compact notation $T _ { n } ( x ) = T _ { n } ( f , x , c )$ We will always assume that $f$ is differentiable enough times so that the particular Taylor polynomials we are working with make sense.

$$
T _ { n } ( x ) = \sum _ { k = 0 } ^ { n } { \frac { f ^ { ( k ) } ( x ) } { k ! } } \cdot ( x - c ) ^ { k }
$$

PROPOSITION 7.4.5 $T _ { n } ( x )$ is the unique polynomial of degree $_ n$ in $( x - c )$ with the property that its kth derivative at $c$ equals the kth derivative of $f$ at $c$ for $k = 0 \dots n$

COROLLARY 7.4.6 Let $R _ { n } ( x ) ~ = ~ f ( x ) - T _ { n } ( x )$ .Then $R _ { n } ( c ) ~ = ~ R _ { n } ^ { \prime } ( c ) ~ = ~ \cdot \cdot ~ = ~$ $R _ { n } ^ { ( n ) } ( c ) = 0$

Recall (Definition 5.2.7) that functions and $h$ don't cross in an interval $I$ when $g$ $g \leq h$ on all of $I$ or $h \leq g$ on all of $I$

LEMMA 7.4.7 If $c , t \in ( a , b )$ ， the functions $g$ and $h$ don't cross in $( a , b )$ ，and $K$ is any constant, then the functions $K g ( t ) \cdot ( t - c )$ and $K h ( t ) \cdot ( t - c )$ don't cross in $\vert \operatorname* { m i n } ( c , x ) , \operatorname* { m a x } ( c , x ) \vert$ ·

The proof is a tedious though straightforward analysis of the several cases.

THEOREM 7.4.8（TAYLOR POLYNOMIALS WITH REMAINDER） SupPOSe the function $f$ is $( n + 1 )$ -times differentiable on the interval $E$ and $x , c \in E$ . Suppose further that $f ^ { ( n + 1 ) } ( t )$ lies between $_ { m }$ and $M$ for all $t \in E$ . Then the remainder, or error term $R _ { n } ( f , x , c ) = f ( x ) - T _ { n } ( f , x , c )$ lies between $m ( x - c ) ^ { n + 1 } / ( n + 1 ) !$ and $M ( x -$ $c ) ^ { n + 1 } / ( n + 1 )$

Proof. Replacing $f$ by $f \mathrm { ~ - ~ } T _ { n }$ ，we preserve our hypotheses，and so we can asSume $f ( c ) = f ^ { \prime } ( c ) = \cdot \cdot \cdot = f ^ { ( n ) } ( c ) = 0$ (the higher derivatives remain the same). We now have to show that $f ( x )$ lies between the stated fractions. Proceed by induction．The function $f ^ { \prime } ( t )$ is $k$ -times differentiable and its $k$ th derivative lies between $_ { m }$ and $M$ .By assumption ( $k = 0$ )，or induction hypothesis, $f ^ { \prime } ( t )$ lies between $\textstyle { \frac { m ( t - c ) ^ { k } } { ( k ) ! } }$ and M(t-e).By the preceding lemma,these last functions don't cross on $\vert \operatorname* { m i n } ( x , c ) , \operatorname* { m a x } ( x , c ) \vert$ , so we can use our result on functions that don't cross (Proposition 5.2.9) to conclude that the integrals preserve betweenness. More precisely, $\begin{array} { r } { \int _ { c } ^ { x } f ^ { \prime } ( t ) d t = f ( x ) - f ( c ) = f ( x ) } \end{array}$ lies between $\begin{array} { r l } { { } } & { { } { \frac { m ( t - c ) ^ { k + 1 } } { ( k + 1 ) ! } } \left( = \int _ { c } ^ { x } { \frac { m ( t - c ) ^ { k } } { ( k ) ! } } d t \right) } \end{array}$ and $\begin{array} { r } { { \frac { M ( t - c ) ^ { k + 1 } } { ( k + 1 ) ! } } \left( = \int _ { c } ^ { x } { \frac { M ( t - c ) ^ { k } } { ( k ) ! } } d t \right) } \end{array}$

DEFINITION 7.4.9 If the sequence of Taylor polynomials $T _ { n } ( f , x , c )$ converges for $- R < x - c < R$ ，then

$$
\sum _ { i = 0 } ^ { \infty } T _ { n } ( f , x , c ) = \sum _ { i = 0 } ^ { \infty } { \frac { f ^ { ( i ) } ( c ) ( x - c ) ^ { i } } { i ! } }
$$

is called the Taylor series for $f$ around $x = c$ ， denoted $T ( f , x , c )$

Even if the Taylor series converges,it may not converge to the function $f$ itself. Here is the classic example.

EXAMPLE 7.4.10 Let $f ( x ) ~ = ~ e ^ { - 1 / x ^ { 2 } }$ .This function is uniformly continuous for $| x | > 0$ ，and $f ( x )  0$ as $x \to 0$ . Thus, $f$ can be extended to all of $\mathbb { R }$ with $f ( 0 ) = 0$ Computing a few derivatives of $f$ reveals that, for $| x | > 0$ ， each derivative is of the form $\begin{array} { r } { \frac { P ( 1 / x ) } { e ^ { 1 / x ^ { 2 } } } = \frac { P ( u ) } { e ^ { u ^ { 2 } } } } \end{array}$ where $P$ is a polynomial and $u = 1 / x$ As $x \to 0 , u \to \infty$ Since exponential functions dominate polynomials (Proposition 3.2.15)， it is easily checked that these derivatives all erist at $0$ and are equal to zero; i.e. $f ^ { ( k ) } ( 0 ) = 0$ for all $k \geq 0$ (see exercises). Thus, the Taylor series for $f$ around $0$ is identically $0$ ，s0 it doesn't converge to $f$

So how do we know when a convergent Taylor series actually converges to the function that it is built on? We have to look at the remainder term $R _ { n } ( f , x , c ) =$ $f ( x ) - T _ { n } ( f , x , c )$ and show that it goes to $0$ as $n \to \infty$ . From the Theorem 7.4.8, we know that $R _ { n } ( f , x , c )$ lies in the interval

$$
\left[ \operatorname* { m i n } \left( \frac { m ( x - c ) ^ { n + 1 } } { ( n + 1 ) ! } , \frac { M ( x - c ) ^ { n + 1 } } { ( n + 1 ) ! } \right) , \operatorname* { m a x } \left( \frac { m ( x - c ) ^ { n + 1 } } { ( n + 1 ) ! } , \frac { M ( x - c ) ^ { n + 1 } } { ( n + 1 ) ! } \right) \right] ,
$$

SO

$$
| R _ { n } ( f , x , c ) | \leq \frac { ( M - m ) \left| x - c \right| ^ { n + 1 } } { ( n + 1 ) ! } .
$$

EXAMPLE 7.4.11（EXPONENTIAL SERIES） $f ( x ) = e ^ { x }$ ， $c = 1$ $f ^ { ( k ) } ( x ) = f ( x ) = e ^ { x }$ On the interval $[ a , b ]$ (containing 1) we can take $m = e ^ { u }$ ， $M = e ^ { b }$ ； also, $- ( b - a ) \leq$ $x - c \leq b - a$ ， so we have

$$
| R _ { n } ( f , x , c ) | \leq { \frac { ( e ^ { b } - e ^ { a } ) ( b - a ) ^ { n + 1 } } { ( n + 1 ) ! } } .
$$

We know fromtheratio test that $et { } { ' } \sum _ { k = 0 } ^ { \infty } \frac { k ^ { n } } { n ! }$ conuerges, $s o \ \frac { k ^ { n } } { n ! } \to 0$ as $n \longrightarrow \infty$ . Thus, $| R _ { n } ( f , x , c ) | \to 0$ ， so the Taylor series for $e ^ { x }$ centered at $1$ (or any other number) converges on any finite interval. Of course, we have already seen this in Example 7.3.33.

EXAMPLE 7.4.12（BINOMIAL SERIES） Let $B ( x ) \ = \ ( 1 + x ) ^ { p }$ ，where $p$ is any real number.Its derivatives are

$$
\begin{array} { l c l } { { B ^ { \prime } ( x ) } } & { { = } } & { { p ( 1 + x ) ^ { p - 1 } } } \\ { { B ^ { \prime \prime } ( x ) } } & { { = } } & { { p ( p - 1 ) ( 1 + x ) ^ { p - 2 } } } \\ { { } } & { { } } & { { \cdot \cdot } } \\ { { B ^ { ( k ) } ( x ) } } & { { = } } & { { p ( p - 1 ) \cdot \cdot \cdot ( p - k + 1 ) ( 1 + x ) ^ { p - k } . } } \end{array}
$$

If we define the hthbinomialcoeffcienttoe (2)p(-1).(p-k1) and ${ \binom { p } { 0 } } = 1$ ，then

$$
T _ { n } ( g , x , 0 ) = { \binom { p } { 0 } } + { \binom { p } { 1 } } x + { \binom { p } { 2 } } x ^ { 2 } + \cdot \cdot \cdot + { \binom { p } { n } } x ^ { n } = \sum _ { k = 0 } ^ { n } { \binom { p } { k } } x ^ { k } .
$$

(Note that if $_ { p }$ is a non-negative whole number, $\binom { p } { k } = 0$ for $k > p$ ， since one of the factors of its numerator will be $( p - p ) = 0$ .）As usual, we check the ratio test first:

$$
{ \frac { \left| { \binom { p } { k + 1 } } x ^ { k + 1 } \right| } { \left| { \binom { p } { k } } x ^ { k } \right| } } = \left| { \frac { p - k } { k + 1 } } x \right| = { \frac { k - p } { k + 1 } } | x | \quad \ w h e n \ k > p .
$$

Thus, letting $k  \infty$ we see that the ratio is $| x |$ ， so the binomial series converges absolutely and uniformly in the interval $( - 1 , 1 )$ . But what does it converge to? First,

$$
\begin{array} { r c l } { { B ^ { \prime } ( x ) } } & { { = } } & { { \binom { p } { 1 } + \binom { p } { 2 } 2 x + \binom { p } { 3 } 3 x ^ { 2 } + \cdots + \binom { p } { k + 1 } ( k + 1 ) x ^ { k } + \cdots } } \\ { { ( 1 + x ) B ^ { \prime } ( x ) } } & { { = } } & { { \binom { p } { 1 } + \binom { p } { 2 } 2 x + \binom { p } { 3 } 3 x ^ { 2 } + \cdots + \binom { p } { k + 1 } ( k + 1 ) x ^ { k } + \cdots } } \\ { { } } & { { } } & { { + \binom { p } { 1 } x + \binom { p } { 2 } 2 x ^ { 2 } + \cdots + \binom { p } { k } ( k ) x ^ { k } + \cdots } } \end{array}
$$

At this point we note that, except for $x ^ { 0 }$ , the coefficient of $x ^ { k }$ in $( 1 + x ) B ^ { \prime } ( x )$ is

$$
{ \binom { p } { k + 1 } } ( k + 1 ) + { \binom { p } { k } } ( k ) = p { \binom { p } { k } } .
$$

Since we can also write ${ \binom { p } { 1 } } = p { \binom { p } { 0 } }$ ， this relation is true for $k = 0$ also, and we have

$$
( 1 + x ) B ^ { \prime } ( x ) = p \sum _ { k = 0 } ^ { \infty } \binom { p } { k } x ^ { k } = p B ( x ) .
$$

Now compute

$$
\begin{array} { r c l } { \displaystyle \left( \frac { B ( x ) } { ( 1 + x ) ^ { p } } \right) ^ { \prime } } & { = } & { \displaystyle \frac { ( 1 + x ) ^ { p } B ^ { \prime } ( x ) - B ( x ) p ( 1 + x ) ^ { p - 1 } } { ( 1 + x ) ^ { 2 p } } } \\ & & { = } & { \displaystyle \frac { ( 1 + x ) ^ { p } B ^ { \prime } ( x ) - ( 1 + x ) B ^ { \prime } ( x ) ( 1 + x ) ^ { p - 1 } } { ( 1 + x ) ^ { p } } } \\ & { = } & { 0 . } \end{array}
$$

Thus, $\frac { B ( x ) } { ( 1 + x ) ^ { p } }$ is constant on $( - 1 , 1 )$ But $\frac { B ( 0 ) } { ( 1 + 0 ) ^ { p } } = 1$ ，80 $( 1 + x ) ^ { p }$ is, in fact, equal to its Taylor erpansion $B ( x )$ on $( - 1 , 1 )$

In the Appendix to this chapter, we show that $B \left( x \right)$ also converges pointwise (though not absolutely） at $x \ = \ - 1$ ，and $x \ = \ 1$ .Thus，by the Abel Summation Theorem (7.3.35),

Note that we didn't use the remainder term in this argument.

The following theorem gives an explicit calculation for the remainder term. This calculation is rarely made,however, since it is generally difficult to estimate the size of the $( n + 1 )$ st derivative.

THEOREM 7.4.13(INTEGRAL FORM OF THE REMAINDER） If the first $n + 1$ deriv-atives of $f$ exist on $\displaystyle \left\lfloor c , x \right\rfloor$ ，then

$$
R _ { n } ( f , x , c ) = \int _ { c } ^ { x } { \frac { f ^ { ( n + 1 ) } ( t ) } { n ! } } ( x - t ) ^ { n } d t .
$$

Proof. Consider the remainder as a function of t: Rn(f,x,t)= f(x)-∑k=0 f（k）(2）. $( x - t ) ^ { k }$ . We will differentiate and then integrate $R _ { n }$ (notice that almost everything cancels,or telescopes).

$$
\begin{array} { r c l } { \displaystyle \frac { d ( R _ { n } ( f , x , t ) } { d t } } & { = } & { \displaystyle \frac { d f ( x ) } { d t } - \left[ \sum _ { k = 0 } ^ { n } \frac { f ^ { ( k ) } ( t ) } { k ! } \cdot ( x - t ) ^ { k } \right] ^ { \prime } } \\ & { = } & { 0 - \displaystyle ( - f ^ { \prime } ( t ) \Big ) } \\ & & { - \left[ - f ^ { \prime } ( t ) + \frac { f ^ { \prime \prime } ( t ) } { 1 ! } ( x - t ) \right] } \\ & & { - \displaystyle \left[ \frac { - f ^ { \prime \prime } ( t ) } { 1 ! } ( x - t ) + \frac { f ^ { \prime \prime } ( t ) } { 2 ! } ( x - t ) ^ { 2 } \right] - \cdots } \\ & & { - \displaystyle \left[ \frac { - f ^ { ( n ) } ( t ) } { ( n - 1 ) ! } ( x - t ) ^ { n - 1 } + \frac { f ^ { ( n + 1 ) } ( t ) } { n ! } ( x - t ) ^ { n } \right] } \\ & { - } & { - \displaystyle \frac { f ^ { ( n + 1 ) } ( t ) } { n ! } ( x - t ) ^ { n } . } \end{array}
$$

Our result now follows from integrating this from $c$ to $_ x$ ， since $R _ { n } ( f , x , x ) = 0$

# Exercises

1. Find the sums and intervals of convergence of the following.

(a) ∑=1kk-1 (b) $\begin{array} { r } { \sum _ { k = 1 } ^ { \infty } k x ^ { k - 1 } } \\ { \sum _ { k = 1 } ^ { \infty } k ^ { 2 } x ^ { k - 1 } } \\ { \sum _ { k = 1 } ^ { \infty } \frac { x ^ { k + 2 } } { k ( k + 2 ) } } \end{array}$

2. This exercise verifies the claims made about the function $e ^ { - 1 / x ^ { 2 } }$

(a) Prove that all of the derivatives of e-1/x² are of the form P(u),where $P$ is a polynomial and $u = 1 / x ^ { 2 }$   
(b） Prove that the derivatives are all uniformly continuous on $\mathbb { R } - \{ 0 \}$ and have limit $0$ as $x \to 0$

(c） Conclude that $e ^ { - 1 / x ^ { 2 } }$ is infinitelydiferentiable and allits derivatives vanish at $0$

$f ( x ) = \sum _ { n = 0 } ^ { \infty } { \frac { \cos ( n ^ { 2 } x ) } { e ^ { n } } }$

(a) Prove that this series converges absolutely and uniformly on all of $\mathbb { R }$ (Hint: Use the Weierstrass MTest (Theorem 7.1.19).   
(b） Prove the same for all derivatives of $f$   
(c） Show that the Taylor series for $f$ around $c = 0$ diverges for all $| x | > 0$

This is another example of an infinitely differentiable function whose Taylor series doesn't converge to it.

4.Find the Taylor series,and its interval of convergence, for the following functions (from [Kaczor&Nowak, 2000]):

$$
\begin{array} { r l } & { f ( x ) = \ln ( 1 + x ) \mathrm { ~ a r o u n d ~ } c = 0 } \\ & { f ( x ) - \frac { 1 } { 2 } \ln \frac { 1 + x } { 1 - x } \mathrm { ~ a r o u n d ~ } c - 0 } \\ & { f ( x ) = \ln ( 1 + x + x ^ { 2 } ) \mathrm { ~ a r o u n d ~ } c = 0 } \\ & { f ( x ) - \frac { 1 } { 1 - 5 x } + 6 x ^ { 2 } \mathrm { , ~ a r o u n d ~ } c = 0 } \\ & { f ( x ) = \frac { e ^ { x } } { 1 - x } \mathrm { ~ a r o u n d ~ } c = 0 } \\ & { f ( x ) = ( x + 1 ) e ^ { z } \mathrm { ~ a r o u n d ~ } c = 1 } \\ & { f ( x ) = \frac { e ^ { x } } { x } \mathrm { ~ a r o u n d ~ } c = 1 . } \end{array}
$$

5. Find the sum of each of the following series. (Hint: These are values of Taylor series.)

$$
\begin{array} { r l } & { \sum _ { n = 0 } ^ { \infty } \frac { 2 ^ { - n } } { n + 3 } \mathrm { ~ a n d } \sum _ { n = 0 } ^ { \infty } \frac { ( n + 3 ) } { 2 ^ { n } } } \\ & { \sum _ { n = 0 } ^ { \infty } \frac { 1 } { ( 2 n ) ! } } \\ & { \sum _ { n = 0 } ^ { \infty } \frac { n } { 2 ^ { n } } } \\ & { \sum _ { n = 1 } ^ { \infty } \frac { ( - 1 ) ^ { n + 1 } } { n ( n + 1 ) } } \\ & { \sum _ { n = 2 } ^ { \infty } \frac { ( - 1 ) ^ { n } } { n ^ { 2 } + n - 2 } } \\ & { \sum _ { n = 0 } ^ { \infty } \frac { 3 ^ { n } ( n + 1 ) } { n ! } } \end{array}
$$

6.Suppose that $y = f ( x )$ satisfies the differential equation $y ^ { \prime } - y = e ^ { x }$ . Find the Taylor expansion for $f$ and its radius of convergence. Find a simple expression for $f$

# 7.5 The Periodic Functions

The goal of this section is to define the trigonometric functions,particularly the sine and cosine,completely rigorously and without the aid of pictures or triangles. Our tools will be power series,estimates,and results from calculus,especially the consequences of $f ^ { \prime } > 0$ and $f ^ { \prime } = 0$ on an interval. We start with the series defined recursively:

$ \begin{array} { l } { { \displaystyle { \boldsymbol { s } } _ { 0 } = 0 , { \boldsymbol { s } } _ { 1 } = 1 , { \boldsymbol { s } } _ { j + 2 } = { \frac { - { \boldsymbol { s } } _ { j } } { ( j + 1 ) ( j + 2 ) } } ; } \\ { { \boldsymbol { S } } _ { n } ( { \boldsymbol { x } } ) = \sum _ { j = 0 } ^ { 2 n + 1 } { \boldsymbol { s } } _ { j } x ^ { j } = \sum _ { k = 0 } ^ { n } { \frac { ( - 1 ) ^ { k } } { ( 2 k + 1 ) ! } } x ^ { 2 k + 1 } = x - { \frac { x ^ { 3 } } { 3 ! } } + { \frac { x ^ { 5 } } { 5 ! } } - { \frac { x ^ { 7 } } { 7 ! } } + \cdot \cdot \cdot } \end{array} }$ 2. c0 = 1,c1 =0,Cj+2 = $C _ { n } ( x ) = \sum _ { j = 0 } ^ { 2 n } c _ { j } x ^ { j } = \sum _ { k = 0 } ^ { n } { \frac { ( - 1 ) ^ { k } } { ( 2 k ) ! } } x ^ { 2 k } = 1 - { \frac { x ^ { 2 } } { 2 ! } } + { \frac { x ^ { 4 } } { 4 ! } } - { \frac { x ^ { 6 } } { 6 ! } } + \cdot \cdot \cdot$ $c _ { j + 2 } = \frac { - c _ { j } } { ( j + 1 ) ( j + 2 ) }$

Of course, these come from the well-known Taylor series, but here we are starting with them instead of deriving them.

Note that our notation here is not the same one that we usually use for power series. The degrees of $S _ { n } ( x )$ and $C _ { n } ( x )$ are $2 n + 1$ and $2 n$ respectively；the $k$ th term of $C _ { n } ( x )$ ， for example, involves $x ^ { 2 k }$ . The reason is that both series have a lot of $0$ terms and writing a formula taking this into account would be very messy. Furthermore,when these O terms are discarded, both series are clearly alternating, so the error in truncating them is no bigger than the first term deleted—at least once the terms start decreasing,which they eventually do when $_ { n }$ is big enough.（Think about how we know this.)

LEMMA 7.5.1 Both $S _ { n } ( x )$ and $C _ { n } ( x )$ converge uniformly and absolutely for $x \in$ $( - R , R )$ , for any $R \geq 0$

This follows directly from the ratio test.

Here are plots of $C _ { 5 } ( x )$ and $S _ { 5 } ( x )$ ：

![](images/df6742fd159b2bf9750cc0cf9f6ceb307bfa040ea0c654dc6543ec676db7afb8.jpg)

$$
\begin{array} { r l } {  { l . \ \sin ( x ) = \operatorname* { l i m } _ { n \to \infty } S _ { n } ( x ) = \sum _ { k = 0 } ^ { \infty } ( - 1 ) ^ { k } \cdot \frac { x ^ { 2 k + 1 } } { ( 2 k + 1 ) ! } . } } \\ { \quad } \\ { \quad \ell . \ \cos ( x ) = \operatorname* { l i m } _ { n \to \infty } C _ { n } ( x ) = \sum _ { k = 0 } ^ { \infty } ( - 1 ) ^ { k } \cdot \frac { x ^ { 2 k } } { ( 2 k ) ! } . } \end{array}
$$

The following key facts about sine and cosine follow directly from their definitions and our general results about alternating series and power series.

# PROPOSITION 7.5.3 (BASIC PROPERTIES)

1. For any $R > 0$ , there is a positive integer $N ( R )$ such that $\sin ( x )$ (respectively, $\cos ( x ) )$ lies between $S _ { n } ( x )$ and $S _ { n + 1 } ( x )$ (respectively $C _ { n } ( x )$ and $C _ { n + 1 } ( x )$ ）when $n \geq N ( R )$ and $x \in ( - R , R )$ .In fact, $N ( R )$ can be taken to be any integer $N \geq R$

2. $\sin ( 0 ) = 0$ and $\cos ( 0 ) = 1$

3. $\sin ( - x ) = - \sin ( x )$ and $\cos ( - x ) = \cos ( x )$

$$
\frac { d ( \sin ( x ) ) } { d x } = \cos ( x ) \ a n d \ \frac { d ( \cos ( x ) ) } { d x } = - \sin ( x ) .
$$

Proof. The only assertion that is not straightforward is the first.By the alternating series test (Corollary 3.3.33), the limits will lie between consecutive partial sums once the terms of the series begin decreasing in absolute value. This will happen when $n \geq R$ , since ${ \frac { x ^ { k + 1 } } { ( k + 1 ) ! } } = { \frac { x ^ { k } } { k ! } } { \frac { x } { k + 1 } }$ and $\left| { \frac { x } { k + 1 } } \right| < 1$ when $x \in ( - R , R )$ and $k \geq n \geq R$

COROLLARY 7.5.4 For any constants $A$ and $B$ ， the function $\omega ( x ) = A \sin ( x ) +$ $B \cos ( x )$ satisfies the differential equation $\omega ^ { \prime \prime } = - \omega$

The sine and cosine functions are determined by their values at $0$ and the differential equation $\omega ^ { \prime \prime } = - \omega$ which they satisfy. This is a special case of a far more general theorem about solutions of differential equations. In this special case,however,we can use the simple consequence (Corollary 6.3.3) of LBC that a function whose derivative vanishes on an interval must be constant on that interval. Before applying this to the differential equation for sine and cosine, we'll warm up by using it to prove an even more basic fact about the sine and cosine.

PROPOSITION 7.5.5 $\sin ^ { 2 } ( x ) + \cos ^ { 2 } ( x ) = 1$ for all $_ x$ (Note that $\sin ^ { 2 } ( x )$ means simply $( \sin ( x ) ) ^ { 2 }$ ; this time-saving but sometimes confusing notation for powers of trigonometric functions dates back to the l8th century and was used by William Jones (1675-1749).)

Proof. Let $f ( x ) = \sin ^ { 2 } ( x ) + \cos ^ { 2 } ( x )$ .An easy calculation shows that $f ^ { \prime } ( x )$ is identically $0$ ，S0 $f ( x )$ is constant.Since $f ( 0 ) = 1$ ，we are done. (Can you imagine how hard it would be to prove this simple identity directly from the power series?)

Now,as promised, we show that linear combinations of sine and cosine are the only solutions to $\omega ^ { \prime \prime } = - \omega$

PROPOSITION 7.5.6 Suppose $f$ is a function defined and twice uniformly differentiable on an interval $I$ which contains $0$ and may possibly be all of $\mathbb { R }$ . Suppose that $f$ has the property that $f ^ { \prime \prime } = - f$ on $I$ . Then

$$
f ( x ) = f ( 0 ) \cos x + f ^ { \prime } ( 0 ) \sin ( x )
$$

for all $x \in I$

Proof. Let $\omega ( x ) = f ( 0 ) \sin x + f ^ { \prime } ( 0 ) \cos x$ and $g = ( \omega - f ) ^ { 2 } + ( \omega ^ { \prime } - f ^ { \prime } ) ^ { 2 }$ .From Corollary 7.5.4 and the assumptions on $f$ , we easily see that $g ^ { \prime } ( x ) = 0$ on $I$ ，s0 $g$ is constant on $I$ . Since $\omega$ and $f$ agree at $0$ ， $g$ is identically O on $I$ . If a sum of squares is $0$ , each must be $0$ (Propositions 1.5.9 and 1.5.14). Thus, $\omega = f$ on $I$ ■

COROLLARY 7.5.7 （ADDITION FORMULAS） For any $_ { \alpha }$ and $\beta$

1. $\sin ( \alpha + \beta ) = \sin ( \alpha ) \cos ( \beta ) + \cos ( \alpha ) \sin ( \beta ) .$   
2. $\cos ( \alpha + \beta ) = \cos ( \alpha ) \cos ( \beta ) - \sin ( \alpha ) \sin ( \beta ) .$

Proof. Exercise■

We now turn to the definition of $\boldsymbol { \pi }$ . There are a number of routes to take. Had we developed the notion of arclength,we might have defined $\boldsymbol { \pi }$ as the length of some circular arc—but we didn't go down this road. Using our approach,we might have defined $\boldsymbol { \mathcal { U } }$ to be either the first (smallest）positive root of $\sin x$ or twice the first positive root of $\mathrm { c o s } x$ .The problem here is that these roots are both larger than 1. As a result,we may have to take more terms than we'd like of our series to ensure that these terms are decreasing (so that we can locate $\sin x$ or $\mathrm { c o s } x$ between consecutive partial sums). It turns out that the actual arithmetic is simplest if we define $\boldsymbol { \mathcal { U } }$ to be 4 times the first positive number where $\sin ( x ) = \cos ( x )$ . To do that, we have to show that such a number exists. The idea will be to show that the function $\sin ( x ) - \cos ( x )$ is negative at $x = 0$ ，positive at $x = 1$ , and has positive derivative on the interval $[ 0 , 1 ]$ .We can then invoke the derivative version of the Inverse Function Theorem (Corollary 6.3.15).

# LEMMA 7.5.8

1. $\sin ( x ) \geq 0$ on [0,2] $a n d > 0$ on $( 0 , 2 ]$

2. $\begin{array} { r } { \frac { 1 } { 2 } \leq \cos ( x ) \leq 1 } \end{array}$ on $[ 0 , 1 ]$

3. $\begin{array} { r } { \sin ( x ) + \cos ( x ) \geq \frac { 1 } { 2 } } \end{array}$ on the interval $[ 0 , 1 ]$

4 $\sin ( 0 ) - \cos ( 0 ) < 0$ ， $\sin ( 1 ) - \cos ( 1 ) > 0 .$

Proof. When $x \in ( 0 , 2 ]$ , the terms of the sine series are decreasing in size; when $x \in \left[ 0 , 1 \right]$ , the same is true for the cosine series. By Proposition 7.5.3 and what we know about alternating decreasing series,we see that sine and cosine lie between consecutive partial sums of their power series. Thus,we have

$$
\begin{array} { l } { { x - { \displaystyle \frac { x ^ { 3 } } { 6 } } \leq \sin ( x ) \leq x \quad { \mathrm { f o r ~ } } x \in [ 0 , 2 ] } } \\ { { 1 - { \displaystyle \frac { x ^ { 2 } } { 2 } } \leq \cos ( x ) \leq 1 \quad { \mathrm { f o r ~ } } x \in [ 0 , 1 ] . } } \end{array}
$$

As0, $\begin{array} { r } { x - \frac { x ^ { 3 } } { 6 } = x \left( 1 - \frac { x ^ { 2 } } { 6 } \right) } \end{array}$ andtatireti $x \in \ [ 0 , 2 ]$ ， which establishes part (1). $\textstyle 1 - { \frac { x ^ { 2 } } { 2 } } \geq 1 - { \frac { 1 } { 2 } }$ when $x \in \ [ 0 , 1 ]$ ，which establishes part (2). Part (3) now follows by addition of inequalities.

The first inequality of part (4) is clear from the power series themselves. To prove the second part, note that $\cos ( 1 )$ lies between its 3rd and 4th partial sums,i.e.,

$$
1 - { \frac { 1 } { 2 } } + { \frac { 1 } { 2 4 } } - { \frac { 1 } { 7 2 0 } } \leq \cos ( 1 ) \leq 1 - { \frac { 1 } { 2 } } + { \frac { 1 } { 2 4 } } .
$$

Thus $\cos ( 1 ) \leq \frac { 1 3 } { 2 4 }$ Since we alredy know that $\begin{array} { r } { \sin ( 1 ) \geq \frac { 5 } { 6 } } \end{array}$ , we se that $\sin ( x ) -$ $\begin{array} { r } { \cos ( x ) \ge \frac { 5 } { 6 } - \frac { 1 3 } { 2 4 } = \frac { 7 } { 2 4 } > 0 } \end{array}$

Let $\phi ( x ) = \sin ( x ) - \cos ( x )$ . Then $\phi ^ { \prime } ( x ) = \cos ( x ) + \sin ( x ) > \frac { 1 } { 2 }$ on $\lfloor 0 , 1 \rfloor$ ,so it has an inverse on $\lfloor \phi ( 0 ) , \phi ( 1 ) \rfloor$ by the derivative version of the Inverse Function Theorem (Corollary 6.3.15). Since $\phi ( 0 ) < 0$ and $\phi ( 1 ) > 0$ ， $\phi$ has a unique root in $[ 0 , 1 ]$ We will define $\pi$ to be 4 times this root.

DEFINITION 7.5.9 $\textstyle { \frac { \pi } { 4 } }$ is the unique number $_ { x }$ in $[ 0 , 1 ]$ for which $\sin ( x ) = \cos ( x )$

# LEMMA 7.5.10

1. $0 < \pi / 2 < 2$

2. $\cos ( \pi / 2 ) = 0$ and $\pi / 2$ is the smallest positive zero of the cosine.

3. $\sin ( \pi / 2 ) = 1$

4 $\cos ( x )$ decreases from 1 to 0 on $[ 0 , \pi / 2 ]$

Proof. Part (1) follows from $0 < \pi / 4 < 1$ . From the addition formula for the cosine, $\cos ( \pi / 2 ) = \cos ^ { 2 } ( \pi / 4 ) - \sin ^ { 2 } ( \pi / 4 )$ ，which is O by definition of $\boldsymbol { \pi }$ . Suppose $C > 0$ and

$\cos ( C ) = 0$ . We must show that $C \geq \pi / 2$ .If $C \geq 2$ , then this is certainly the case by part (1). Suppose $0 < C \le 2$ . By the addition formula for the cosine again,

$$
\begin{array} { c } { 0 = \cos ( C ) = \cos ^ { 2 } ( C / 2 ) - \sin ^ { 2 } ( C / 2 ) } \\ { = ( \cos ( C / 2 ) - \sin ( C / 2 ) ) ( \cos ( C / 2 ) + \sin ( C / 2 ) ) . } \end{array}
$$

However,we already know that the second factor is greater than $1 / 2$ ，so the first factor must be $0$ . This means that $C / 2$ is a number between O and $^ { 1 }$ with $\sin ( C / 2 ) =$ $\cos ( C / 2 )$ . Thus, $C / 2 = \pi / 4$ $C \geq \pi / 2$

Since $\sin ^ { 2 } ( \pi / 2 ) + \cos ^ { 2 } ( \pi / 2 ) = \sin ^ { 2 } ( \pi / 2 ) = 1$ and $\sin ( \pi / 2 ) \geq 0$ (by Lemma 7.5.8), we must have $\sin ( \pi / 2 ) = 1$

Finally, the derivative of $\cos ( x )$ is $- \sin ( x )$ , which is negative on $( 0 , \pi / 2 ] \subset ( 0 , 2 ]$ ， also by Lemma 7.5.8.

We now can use the addition formulas to prove al of the nice symmetry properties of sine and cosine; for example, $\cos ( x ) = \sin ( \pi / 2 - x )$ and $\cos ( \pi / 2 + x ) = - \sin ( x ) =$ $- \cos ( \pi / 2 - x )$ .This enables us to piece together the sine and cosine functions between $0$ and $2 \pi$ . That's all we need,because of the following results (whose proof we leave as an exercise).

# PROPOSITION 7.5.11

1. The zeros of $\sin ( x )$ are exactly the numbers $k \pi$ for integer $k$   
2. The zeros of $\cos ( x )$ are exactly the numbers $\pi / 2 + k \pi$ for integer $k$   
3. $2 \pi$ is the smallest positive number $P$ for which $\cos ( x + P ) = \cos ( x )$ for all $_ x$   
4 $2 \pi$ is the smallest positive number $P$ for which $\sin ( x + P ) = \sin ( x )$ for all $_ x$

DEFINITION 7.5.12 A function $f$ is periodic if there is a number $P$ such that $f ( x +$ $P ) = f ( x )$ for all $_ x$ in the domain of $f$ with $x + P$ also in the domain of $f$ $P$ is then called a period of $f$ .If $P$ is the smallest positive period for $f$ , then it is called the period of $f$

The derivative of a periodic function is itself periodic,but this is not necessarily true for the antiderivative: see the exercises. On the other hand,we do have a kind of periodicity for definitive integrals,as the following proposition shows.

PROPOSITION 7.5.13 Suppose $f$ is uniformly continuous on an interval $I$ and has period $P$ .If $^ { u }$ ， $b$ ， $a + P$ and $b + P$ are all in $I$ ，then

$$
\int _ { a } ^ { a + P } f = \int _ { b } ^ { b + P } f .
$$

Proof. See the exercises.I

DEFINITION 7.5.14（THE TANGENT） $\tan ( x ) = { \frac { \sin x } { \cos x } }$ where cos(x) ≠ 0.

PROPOSITION 7.5.15 The period of $\sin { b x }$ and $\cos b x$ is $2 \pi / b$ ; the period of $\tan b x$ is $\pi / b$

By the Quotient Rule, the derivative of $\tan ( x )$ is cos2()，which is positive except at the zeros of $\cos ( x )$ ，where tan is undefined; $\tan ( x )$ is negative and unbounded near $- \pi / 2$ and positive and unbounded near $\pi / 2$

$$
\tan : ( - \pi / 2 , \pi / 2 ) \longrightarrow ( - \infty , \infty )
$$

and this function is uniformly continuous and differentiable on every closed subinterval of $( - \pi / 2 , \pi / 2 )$ . Thus, $\tan ( x )$ has an inverse function which we'll call, temporarily, invtan $( x )$

$$
\mathrm { i n v t a n } : ( - \infty , \infty ) \to ( - \pi / 2 , \pi / 2 ) .
$$

$\begin{array} { r } { \arctan ( x ) = \int _ { 0 } ^ { x } \frac { d u } { 1 + u ^ { 2 } } } \end{array}$ $u = \tan ( t )$

$$
\begin{array} { l l l } { \arctan ( x ) = \displaystyle \int _ { 0 } ^ { x } \frac { d u } { 1 + u ^ { 2 } } = \displaystyle \int _ { \mathrm { i n v t a n } ( 0 ) } ^ { \mathrm { i n v t a n } ( x ) } \frac { 1 } { 1 + \tan ^ { 2 } ( t ) } \cdot \frac { 1 } { \cos ^ { 2 } ( t ) } d t } \\ { \displaystyle } & { = \displaystyle \int _ { 0 } ^ { \mathrm { i n v t a n } ( x ) } \frac { 1 } { \sin ^ { 2 } ( t ) + \cos ^ { 2 } ( t ) } d t } \\ { \displaystyle } & { = \mathrm { i n v t a n } ( x ) . } \end{array}
$$

So, at last, we have $\operatorname { i n v t a n } ( x ) = \arctan ( x )$ ； in particular,

$$
\begin{array} { c } { { \mathrm { i n v t a n } ( x ) = \displaystyle \arctan ( x ) = \sum _ { k = 0 } ^ { \infty } ( - 1 ) ^ { i } \frac { x ^ { 2 i + 1 } } { 2 i + 1 } \quad \mathrm { ( o n ~ } ( - 1 , 1 ] ) ; } } \\ { { \mathrm { i n v t a n } ( 1 ) = \pi / 4 = 1 - 1 / 3 + 1 / 5 - 1 / 7 + \cdots } } \end{array}
$$

(see exercises).

# Exercises

1.Prove that the power series used in the definition of the sine and cosinesee Definition 7.5.2—do, in fact, converge uniformly and absolutely on every interval $\lfloor - R , R \rfloor$

2. Prove the addition formulas for $\sin \left( \alpha + \beta \right)$ and $\cos \left( \alpha + \beta \right)$

3.Prove the following from the text.

PROPOSITION 7.5.11

(a) The zeros of $\sin ( x )$ are eractly at the numbers kπ for integer $k$

(b) The zeros of $\cos ( x )$ are exactly at the numbers $\pi / 2 + k \pi$ for integer $k$   
(c） $2 \pi$ is the smallest positive number $P$ for which $\cos ( x + P ) = \cos ( x )$ for all $_ { x }$   
(d) $2 \pi$ is the smallest positive number $P$ for which $\sin ( x + P ) = \sin ( x )$ for all $_ { x }$

4.Prove that $3 < \pi < 4$

5.Use the results from this section to describe or sketch one period of the sine or cosine curve,explaining features such as increasing/decreasing, lying above or below the tangent line (concavity),zeros,and maxima/minima.

6. The unit circle consists of those pairs $( x , y )$ such that $x ^ { 2 } + y ^ { 2 } = 1$

(a） Suppose $( x , y )$ is on the unit circle and $y > 0$ . Prove that there is a unique number $\alpha \in ( 0 , \pi )$ such that $x = \cos \alpha$ and $y = \sin \alpha$ . (Such a point is on the “upper half’ of the unit circle.)   
(b） Suppose $( x , y )$ is on the unit circle and $y < 0$ . Prove that there is a unique number $\alpha \in ( \pi , 2 \pi )$ such that $x = \cos \alpha$ and $y = \sin \alpha$ .(Such a point is on the “lower half” of the unit circle.)   
(c） Show that the unit circle consists of precisely those points $( \cos \alpha , \sin \alpha )$ where $\alpha \in \lfloor 0 , 2 \pi )$ , and this representation is unique.

7. Proposition 7.5.13 says that if $f$ has period $P$ ,then $\textstyle { \int _ { a } ^ { a + P } f = \int _ { b } ^ { b + P } f }$ Prove this by showing that $\begin{array} { r } { G ( x ) = \int _ { x } ^ { x + P } f } \end{array}$ is constant.

8.(From [Kaczor&Nowak, 2000]； The Weierstrass M-test, Theorem 7.1.19, will be useful for these.)

(a） Show that the function

$$
f ( x ) = \sum { \frac { \cos ( n x ) } { 1 + n ^ { 2 } } }
$$

is differentiable on $\left\lfloor \pi / 6 , 1 1 \pi / 6 \right\rfloor$

(b） Show that the function

$$
f ( x ) = \sum _ { n = 1 } ^ { \infty } { \frac { \sin ( n x ^ { 2 } ) } { 1 + n ^ { 3 } } }
$$

is differentiable on all of $\mathbb { R }$

(c） Show that the function

$$
f ( x ) = \sum _ { n = 1 } ^ { \infty } { \sqrt { n } } ( \tan x ) ^ { n }
$$

is differentiable on every closed subinterval of $( - \pi / 4 , \pi / 4 )$

9. Prove in detail that $1 - 1 / 3 + 1 / 5 - 1 / 7 + \cdot \cdot \cdot$ converges to $\pi / 4$ . The problem is that the geometric series for $\frac { 1 } { 1 + x ^ { 2 } }$ only converges for $- 1 < x < 1$ ，while the term-by-term integral of this series converges on $- 1 < x \leq 1$ ，and it's at $x = 1$ that we get our series for $\pi / 4$ . Note that this convergence is very slow, so that this series is a pretty inefficient way to compute $\boldsymbol { \mathcal { U } }$

10.Find the Taylor series,and its interval of convergence, for the following functions (from [Kaczor&Nowak, 2000]):

$$
\begin{array} { r l } & { f ( x ) = \sin ( x ^ { 3 } ) \mathrm { ~ a r o u n d ~ } c = 0 } \\ & { f ( x ) = ( \sin x ) ^ { 3 } \mathrm { ~ a r o u n d ~ } c = 0 } \\ & { f \left( x \right) = \sin x \cos 3 x \mathrm { ~ a r o u n d ~ } c = 0 } \\ & { f \left( x \right) = \sin ^ { 6 } x + \cos ^ { 6 } ( x ) \mathrm { ~ a r o u n d ~ } c = 0 } \\ & { f ( x ) = \displaystyle \frac { \cos x } { x } \mathrm { ~ a r o u n d ~ } c = 1 , | x | > 0 } \\ & { f ( x ) = x \arctan x - \frac { 1 } { 2 } \ln ( 1 + x ^ { 2 } ) . } \end{array}
$$

11. Find the sum of each of the following series (from [Kaczor&Nowak, 2000]). (Hint:These are values of Taylor series.)

@

# Appendix: Raabe's Test and Binomial Series

Applying the ratio tst to $\scriptstyle \sum _ { k = 0 } ^ { \infty } { \binom { p } { k } }$ isiocusieii1) are a whole series of tests that make fine adjustments to the ratio test. Here is the first of this series; others can be found in [Lewin, 2003].

PROPOSITION 7.5.16（RAABE's TEST） Suppose $s _ { n }$ is a sequence of positive numbers.

1. If there is q number $A > 1$ such that $\frac { s _ { n + 1 } } { s _ { n } } \leq 1 - \frac { A } { n }$ for all sufficientlylarge $_ { n }$ then $\scriptstyle \sum _ { n = 0 } ^ { \infty } s _ { n }$ converges.

2. If there is a number $A < 1$ such that ${ \frac { s _ { n + 1 } } { s _ { n } } } \geq 1 - { \frac { A } { n } }$ for all sufficiently large $_ { n }$ then $\scriptstyle \sum _ { n = 0 } ^ { \infty } s _ { n }$ diverges.

3. (Limit form): Suppose $\operatorname* { l i m } _ { n \to \infty } n \left( 1 - { \frac { s _ { n + 1 } } { s _ { n } } } \right) = k$ The series $\textstyle \sum _ { n = 0 } ^ { \infty } s _ { n }$ converges if $k > 1$ ， diverges if $k < 1$ ， and the test gives no information if $k = 1$

Proof. (We acknowledge [Lewin, 2003] for this nice proof.） First,we need a preliminary result which is most easily proved using the $\infty / \infty$ case of 'Hopital's rule (see Proposition 6.4.12).

$\operatorname* { l i m } _ { x \to \infty } x \left( 1 - { \frac { ( x - 1 ) ^ { \alpha } } { x ^ { \alpha } } } \right) = \alpha .$

We prove part (1). Without loss of generality, we can assume $\frac { s _ { n + 1 } } { s _ { n } } \leq 1 - \frac { A } { n }$ for all n and A > 1. Choose any r with 1 < r < A, and let bn = $b _ { n } = \frac { 1 } { \left( n - 1 \right) ^ { r } }$ for $n = 2 , 3 , \ldots$ Then the series $\sum { _ { n = 2 } ^ { \infty } b _ { n } }$ converges (since $r > 1$ ). We also have

$$
\operatorname* { l i m } _ { n \to \infty } n \left( 1 - { \frac { b _ { n + 1 } } { b _ { n } } } \right) = \operatorname* { l i m } _ { n \to \infty } n \left( 1 - { \frac { ( n - 1 ) ^ { r } } { n ^ { r } } } \right) = r .
$$

te ratio co Thus, when $_ n$ is large enough, $n \left( 1 - \frac { b _ { n + 1 } } { b _ { n } } \right) < A$ ，s0 $\frac { s _ { n + 1 } } { s _ { n } } \leq 1 - \frac { A } { n } < \frac { b _ { n + 1 } } { b _ { n } }$ $\scriptstyle \sum _ { n = 0 } ^ { \infty } s _ { n }$ roverge. bn+1.By

The other parts are proved similarly. $|$

Itisnowargdaiofstt $\scriptstyle \sum _ { k = 0 } ^ { \infty } \mid \left( { p \atop k } \right) \mid$ converges when $p > 0$ and diverges when $p < 0$ . So what happens to $\textstyle \sum _ { k = 0 } ^ { \infty } { \binom { p } { k } }$ when $p < 0 \rangle$ If $p \leq - 1$ , it is easy to see that $\big | \left( { \binom { p } { k } } \right| \geq 1$ So the series diverges. The remaining case is $- 1 < p < 0$ ,which we now deal with.

We first note that $\left( { \frac { p } { k } } \right) = ( - 1 ) ^ { k } \left| \left( { \frac { p } { k } } \right) \right|$ , since $- 1 < p < 0$ , so we are dealing with an alternating series,which will converge if the terms go to $0$ ,by the alternating series test.

we lmow thtitstemnsgogto shown(Proposition3.41)that Let $a _ { k } = \left| \left( { p \atop k } \right) \right|$ ， $b _ { k } = 1 - \frac { a _ { k + 1 } } { a _ { k } } = \frac { p + 1 } { k + 1 }$ but $\scriptstyle \sum _ { k = 0 } ^ { \infty } b _ { k }$ $\textstyle \sum _ { k = 0 } ^ { \infty } b _ { k }$ diverges implies Since diergsHoweeei is basically the harmonic series, $a _ { k } \to 0$ . Thus, $\textstyle \sum _ { k = 0 } ^ { \infty } { \binom { p } { k } }$ converges conditionally when $- 1 < p < 0$

Here is thesummarythen,forthebiniomialsies $\textstyle \sum _ { k = 0 } ^ { \infty } { \binom { p } { k } }$

· When $p \leq - 1$ , the series diverges.   
· When $- 1 < p < 0$ , the series converges conditionally.   
· When $p > 0$ , the series converges absolutely.

