# 4.1 Definitions and Elementary Properties

A function $f$ is continuous if $f ( x )$ is close to $f \left( y \right)$ when $_ { x }$ is close to $_ y$ .We will soon state this precisely. The functions one generally encounters in mathematics are continuous where they are well-defined. This is particularly clear for those functions that are defined by extending the arithmetic operations of the rationals to the reals.

EXAMPLE 4.1.1 Let $f ( x ) = x ^ { 3 }$ . Here $f$ is defined on rationals from the start. To extend $f$ to reals,we need to know that $f$ sends fine and consistent families of rational intervals into fine and consistent families of rational intervals via $f \left( \left[ r , s \right] \right) = \left[ r ^ { 3 } , s ^ { 3 } \right]$ Since consistency is trivial, the real issue is that $f$ sends short interuals into short intervals, that is, $f ( r ) = r ^ { 3 }$ is close to $f \left( s \right) = s ^ { 3 }$ when $r$ is close to $s$ . The fact that this is true makes $f$ continuous as a function of rationals or reals, as we shall see.

ExAMPLE 4.1.2 Let $f \left( x \right) = A ^ { x }$ . Here we used the formulo ${ \mathit { \Omega } } _ { ^ { \prime } } ( A ^ { m } ) ^ { 1 / n } = { \bigl ( } A ^ { 1 / n } { \bigr ) } ^ { n }$ and the Inverse Function Theorem to show that $f$ can be defined when $x = m / n$ is rational. Then we defined $f$ on reals $_ { x }$ by showing that the family of intervals $f \left( \left. r , s \right. \right) = \left. A ^ { r } , A ^ { s } \right.$ is fine and consistent. Once again, the issue becomes whether $f ( r ) = A ^ { r }$ is close to $f ( s ) = A ^ { s }$ when $r$ is close to $s$

In both of the above examples,Lipschitz conditions are available to guarantee that $f$ sends nearby inputs into nearby values:

$$
L \cdot ( y - x ) \leq f ( y ) - f ( x ) \leq K \cdot ( y - x ) .
$$

However, there are many examples of non-Lipschitz functions that are nonetheless continuous. In this chapter we separate the idea of close inputs implying close outputs from Lipschitz conditions and study it on its own. This is uniform continuity.

DEFINITION 4.1.3 The function $f$ is uniformly continuous (UC) on $S \subset \mathbb { R }$ if for each $\epsilon > 0$ we can find a $\delta > 0$ (depending on $\epsilon$ and $f$ ）such that

$$
| f ( y ) - f ( x ) | \leq \epsilon \quad w h e n e v e r { x , y } \in S { \ a n d } \ | y - x | < \delta
$$

REMARK 4.1.4 We will call the number $\delta$ a modulus of continuity for E. Of course, a modulus of continuity for $\epsilon$ is not unique: if $\delta$ is a modulus of continuity for $\epsilon$ ， then so is $\delta / 2$ for example. Nevertheless,we may sometimes denote a modulus of continuity for $\epsilon$ by $\delta ( \epsilon )$ or $\delta _ { f } ( \epsilon )$ (or even $\delta _ { f , S } ( \epsilon )$ , if necessary).

REMARK 4.1.5 The δ that is chosen depends on $f$ ， $\epsilon$ ，and $S$ ， but it doesn't depend on the particular values $_ { x }$ and $_ y$ other than that they lie in $S$ .There is another notion of continuity，continuity at a point, in which the $\delta$ depends on a particular point. We will not be using this notion, but see exercise 13 on page 147 for a brief discussion.

PROPOSITION 4.1.6 If $f$ satisfies an absolute-value Lipschitz condition of the type $| f ( y ) - f ( x ) | < K | y - x |$ （ $K > 0$ ）on $S$ ，then $f$ is uniformly continuous on $S$

We know from Corollary 1.5.31 that $L \cdot ( y - x ) \leq f ( y ) - f ( x ) \leq K \cdot ( y - x )$ implies that

$$
| f ( y ) - f ( x ) | \leq \operatorname* { m a x } ( | L | \cdot | y - x | , | K | \cdot | y - x | ) = K | y - x | .
$$

Therefore,a two-sided Lipschitz condition implies an absolute-value one. This means that all the functions for which we have established these conditions are UC.

EXAMPLE 4.1.7 Let $f ( x ) = x ^ { 2 }$ and $S = \left\lfloor A , B \right\rfloor$ . Then $| f ( y ) - f ( x ) | = \left| y ^ { 2 } - x ^ { 2 } \right| =$ $| y - x | | y + x | < K \cdot | y - x |$ where $K$ is any number bounding both $2 | A |$ and $2 | B |$ Given $\epsilon > 0$ ，choose $\delta > 0$ to be any number less than $\epsilon / K$ ; then

$$
| f ( y ) - f ( x ) | = \left| y ^ { 2 } - x ^ { 2 } \right| \leq | y - x | \cdot K < ( \epsilon / K ) \cdot K = \epsilon .
$$

PROPOSITION 4.1.8 (LOG AND EXPONENTIAL FUNCTIONS)

1. For $A > 0$ ， $A ^ { x }$ is uniformly continuous on any finite interval.

2. For any $A > 0$ ， $c > 0$ ， $\log _ { A } ( x )$ is uniformly continuous on any interval $\lfloor c , \infty )$

Proof. Both of these functions satisfy Lipschitz conditions. The details are left for the exercises.

EXAMPLE 4.1.9 You can prove that a function is not uniformly continuous by producing a sequence of numbers $x _ { 1 } , x _ { 2 } , \ldots , x _ { n } , \ldots .$ that get arbitrarily close but whose function values $f ( x _ { 1 } ) , f ( x _ { 2 } ) , \dots$ ， don't get arbitrarily close. For example， let $x _ { k } =$ $e ^ { - k } \ = \ 1 / e ^ { k }$ ； then $\begin{array} { r } { x _ { k } \ - \ x _ { k + 1 } \ = \ \frac { e - 1 } { e ^ { k + 1 } } } \end{array}$ e can be made as smallas we please, but $\ln ( x _ { k } ) - \ln ( x _ { k + 1 } ) = ( - k ) - ( - k - 1 ) = 1$ . Thus, the function In is not continuous in any interual containing all these $x _ { k }$ ; for example, ln is not continuous on any interval $( 0 , c ]$ ， $c > 0$ . (Also, see the exercises.)

EXAMPLE 4.1.10 $I t$ is easy to see that the function $f ( x ) = x$ is $U C$ on all of $\mathbb { R }$ However, $g ( x ) = x ^ { 2 }$ is not UC on all of $\mathbb { R }$ . To see this, we compute

$$
\left| g ( y ) - g ( x ) \right| = \left| y ^ { 2 } - x ^ { 2 } \right| = \left| y + x \right| \left| y - x \right| .
$$

No matter how small the $| y - x |$ term is, we can always make the $| y + x |$ term much bigger. For example， no matter what $\delta$ we choose, we can always make $| y + x | | y - x | > 1$ .To see this, work backwards. Suppose $| y - x | < \delta$ ，say $y =$ $x + \delta / 2$ . Then

$$
( y + x ) ( y - x ) > 1
$$

gives

$$
\left( 2 x + \delta / 2 \right) \left( \delta / 2 \right) > 1
$$

which we can solve for $_ x$ to obtain

$$
x > \frac { 2 } { 2 \delta } - \frac { \delta } { 4 } .
$$

$S o$ , no matter what $\delta > 0$ we try to use for a modulus of continuity, we can't ensure that $\left| y ^ { 2 } - x ^ { 2 } \right| < 1$ : we simply make $_ y$ and $_ { x }$ close together but bigger than $\frac { 2 } { 2 \delta } - \frac { \delta } { 4 }$

So far the examples of UC functions have all satisfied Lipschitz conditions. But UC was advertised as a generalization of Lipschitz: Can it be that every UC function must satisfy Lipschitz conditions? The answer is no. The functions $x ^ { 1 / N }$ with $N > 1$ ， for example, do not satisfy Lipschitz conditions on any interval containing $0$ ,but are UC wherever they are defined. Showing this for the function $x ^ { 1 / 3 }$ is in the exercises. To see what's going on, let’s consider the square-root function on an interval $( 0 , c ]$ If it satisfied an absolute-value Lipschitz condition, we'd have:

$$
\left| { \sqrt { y } } - { \sqrt { x } } \right| = \left| { \frac { y - x } { { \sqrt { y } } + { \sqrt { x } } } } \right| \leq K \left| y - x \right| ,
$$

SO

$$
\left| { \frac { 1 } { { \sqrt { y } } + { \sqrt { x } } } } \right| \leq K .
$$

But $\frac { 1 } { { \sqrt { y } } + { \sqrt { x } } }$ can't be bounded on $( 0 , c ]$ , since we can certainly make it as big as   
we please by making $_ y$ and $_ { x }$ close to $0$ .For example, take $x , y < \frac { 1 } { 2 ^ { 2 M + 2 } }$ ； then   
$\frac { 1 } { \sqrt { y } + \sqrt { x } } > 2 ^ { M }$

Now we go through the standard verification that a property-in this case uniform continuity—behaves reasonably well under the usual arithmetic operations.

PROPOSITION 4.1.11 Suppose $f$ and $g$ are uniformly continuous on $S$ ，and $k$ is any number. Then

1. $f + g$ is uniformly continuous on $S$

2. $k f$ is uniformly continuous on $S$ for any constant $k$

Proof. We'll just prove part (1). This turns out to be an “ $\epsilon$ -over- $2$ ”proof,and provides a good illustration of how the triangle inequality is often used in analysis. Please study it carefully since there will be lots more like it.

We begin by writing out what we must prove. Given $\epsilon > 0$ ， we must make $| ( f + g ) ( y ) - ( f + g ) ( x ) |$ smaller than $\epsilon$ by making $| y - x |$ sufficiently small. Then

$$
\left| ( f + g ) ( y ) - ( f + g ) ( x ) \right| = \left| f ( y ) + g ( y ) - f ( x ) - g ( x ) \right| .
$$

Since we know about $f$ and $g$ separately, we rearrange and use the triangle inequality to obtain

$$
\begin{array} { r l r } { | ( f + g ) ( y ) - ( f + g ) ( x ) | } & { = } & { | [ f ( y ) - f ( x ) ] + [ g ( y ) - g ( x ) ] | } \\ & { \leq } & { \underbrace { | f ( y ) - f ( x ) | } _ { \mathrm { f i r s t ~ p i e c e } } + \underbrace { | g ( y ) - g ( x ) | } _ { \mathrm { s e c o n d ~ p i e c e } } } \end{array}
$$

Since we want this to be less than $\epsilon$ ，we make each piece of the last expression less than $\epsilon / 2$ . Since $f$ is UC,there is a modulus of continuity for $f$ , call it $\delta _ { f } ( \epsilon / 2 )$ ,which makes the frst piece $\leq \epsilon / 2$ when $| y - x | < \delta _ { f } ( \epsilon / 2 )$ . We can also find a modulus of continuity $\delta _ { g } ( \epsilon / 2 )$ for $g$ so that the second piece $\leq \epsilon / 2$ when $| y - x | < \delta _ { g } ( \epsilon / 2 )$ However, we want both pieces to be $\leq \epsilon / 2$ ，s0 $| y - x |$ must be less than both $\delta _ { f } ( \epsilon / 2 )$ and $\delta _ { g } ( \epsilon / 2 )$ .Let $\delta = \operatorname* { m i n } ( \delta _ { f } ( \epsilon / 2 ) , \delta _ { g } ( \epsilon / 2 ) )$ .If $| y - x | < \delta$ then both pieces of the above inequality will be less than $\epsilon / 2$ ,so their sum will be less than $\epsilon$ . Thus

$$
\begin{array} { r c l } { { | ( f + g ) ( y ) - ( f + g ) ( x ) | } } & { { \le } } & { { | f ( y ) - f ( x ) | + | g ( y ) - g ( x ) | } } \\ { { } } & { { } } & { { \le } } & { { \epsilon / 2 + \epsilon / 2 = \epsilon . } } \end{array}
$$

The composition of UC functions is also UC.

PROPOSITION 4.1.12 Suppose $f$ is UC on a set $S$ and $_ { g }$ is UC on a set $T$ ， and that $g ( x ) \in S$ for any $x \in T$ . Then the composition $f \circ g$ ， defined by $( f \circ g ) ( x ) = f ( g ( x ) )$ ， is $U C$ on $S$ . Furthermore, a modulus of continuity for the composition is given by

$$
\delta _ { f \circ g } ( \epsilon ) = \delta _ { g } ( \delta _ { f } ( \epsilon ) ) .
$$

Proof. All we have to do is unravel the definitions. $| f ( g ( y ) ) - f ( g ( x ) ) |$ will be less than $\epsilon$ when $| g ( y ) - g ( x ) |$ is less than $\delta _ { f } ( \epsilon )$ ,which will happen when $| y - x | <$ $\delta _ { g } ( \delta _ { f } ( \epsilon ) )$ ■

The situation for products and quotients is a bit more complicated. As we saw in Example 4.1.10 above, $_ x$ is UC on all of $\mathbb { R }$ ，but $x ^ { 2 } = x \cdot x$ isn't．The problem stems from the unboundedness of the factors in the product $( x ) ( x )$

DEFINITION 4.1.13 $f$ is bounded on $S$ if there is α constant such that $| f ( x ) | < K$ for all $x \in S$

DEFINITION 4.1.14 $g$ is bounded away from $\boldsymbol { \mathit { 0 } }$ on $S$ if there is a constant $L > 0$ such that $| g \left( x \right) | > L$ for all $x \in S$

PROPOSITION 4.1.15 Suppose $f$ and $g$ are uniformly continuous on $S \subset \mathbb { R }$

1.If $f$ and $g$ are bounded on $S$ , then fg is uniformly continuous on $S$

2.If $g$ is bounded away from O on $S$ ，then $1 / g$ is uniformly continuous on $S$

Proof. We will prove just the quotient part. By the hypothesis,we may suppose that there is a number $L > 0$ such that $| g ( x ) | > L$ for all $x \in S$ . Then

$$
\begin{array} { r } { \displaystyle \left. \frac { 1 } { g ( y ) } - \frac { 1 } { g ( x ) } \right. = \displaystyle \left. \frac { g ( x ) - g ( y ) } { g ( x ) g ( y ) } \right. } \\ { \displaystyle \leq \frac { \lvert g ( x ) - g ( y ) \rvert } { L ^ { 2 } } . } \end{array}
$$

f $\epsilon > 0$ is given, let $\delta = \delta _ { g } ( L ^ { 2 } \epsilon )$ , so that $| g ( y ) - g ( x ) | \leq L ^ { 2 } \epsilon$ when $| y - x | < \delta$ . Then

$$
\begin{array} { l l l } { \displaystyle \left. \frac { 1 } { g ( y ) } - \frac { 1 } { g ( x ) } \right. } & { \le } & { \displaystyle \frac { | g ( x ) - g ( y ) | } { L ^ { 2 } } } \\ & { \le } & { \displaystyle \frac { L ^ { 2 } \epsilon } { L ^ { 2 } } = \epsilon . } \end{array}
$$

The proof for the product is left as an exercise.

The boundedness and bounded away from O conditions of the previous proposition are sufficient but not necessary. In other words, they ensure the continuity of the product or reciprocal, but the product or reciprocal might be continuous even without them. Here are some examples.

1. Since the function $_ { x }$ is UC on all of $R$ ，but $x ^ { 2 } = x x$ is not UC on all of $R$ ，we see that the product of uniformly continuous functions need not be uniformly continuous without further assumptions. On the other hand, if $S$ is the (infinite) interval $\lfloor 1 , \infty )$ ,then $_ { x }$ and $1 / x$ are both UC on $S$ ， $_ { x }$ is unbounded, yet their product is UC.Thus,we don't always need the boundedness condition.   
2. Similarly, while $_ { x }$ is UC on all of $R$ , it is not bounded away from O on any interval $( 0 , q ]$ （ $q > 0$ )，and $1 / x$ is not uniformly continuous on any of these intervals. So,without further assumptions,the reciprocal of a UC function need not be UC.On the other hand, the function $1 / x$ is uniformly continuous but not bounded away from O on $\lfloor 1 , \infty )$ ，yet its reciprocal is UC.Thus,the reciprocal of a UC function may be UC,even though the original function is not bounded away from 0.

An important part of real analysis—indeed, of mathematics in general—is the use of examples that show the extent to which theorems hold and the extent that their hypotheses are really needed. (Reading the first part of the example above, you may suspect that in order for the product of two UC functions to be UC, it's enough that one of them be bounded. Show by example that this is not true.)

COROLLARY 4.1.16 Since x is uniformly continuous, so is any polynomial on a finite interval. Rational functions are uniformly continuous on any finite interval where their denominators are bounded away from 0.

On finite, closed intervals,uniformly continuous functions must be bounded. We will now prove a strong version of this fact.

PROPOSITION 4.1.17 If $f$ is uniformly continuous on the finite interval $[ a , b ]$ ，then for each $\epsilon > 0$ we can find numbers $u , v \in \lfloor a , b \rfloor$ such that $f ( u ) - \epsilon \le f ( x ) \le f ( v ) + \epsilon$ for all $x \in \left[ a , b \right]$

We prove this by means of two lemmas (1.6.12 and 1.6.13) already stated. We now give the proofs that were originally left as exercises.

LEMMA 4.1.18 Suppose $a = x _ { 0 } < x _ { 1 } < \dots < x _ { N } = b$ ，with $x _ { i } - x _ { i - 1 } < \delta$ for $1 \leq i \leq N$ . Then, for each $_ x$ in $\lfloor a , b \rfloor$ ， we can find an $x _ { k }$ such that $| x - x _ { k } | < \delta$

Proof. We apply $\epsilon$ -trichotomy (Proposition 1.6.9),with $\epsilon = \delta$ ，to $_ x$ and $x _ { 0 }$ . Since $x < x _ { 0 }$ is false, $_ { x }$ is either within $\delta$ of $x _ { 0 }$ (so $k = 0$ ，or $x > x _ { 0 }$ .We continue to apply $\epsilon$ -trichotomy successively to $_ x$ and $x _ { i }$ until we find some biggest $_ { m }$ such that $\boldsymbol { x } \prec \boldsymbol { x } _ { m }$ or $_ { x }$ lies within $\delta$ of $x _ { m }$ .(we know there has to be one since $_ { x }$ can't be greater than $x _ { N }$ ). Then we have $x _ { m - 1 } < x < x _ { m }$ so we can take $k$ to be either $_ { m }$ or $m - 1$

LEMMA 4.1.19 Given numbers $F _ { 0 } , F _ { 1 } \ldots , F _ { N }$ ，and $\epsilon > 0$ ， there are indices $L$ and $K$ such that, for all $j$ ， $F _ { K } < F _ { j } + \epsilon$ and $F _ { j } - \epsilon < F _ { L }$

Proof. We can use induction on $N$ .The case $N = 0$ is obvious. Suppose that $N > 0$ and the lemma is true for $N - 1$ ; then we can find $T$ with $F _ { T } < F _ { j } + \epsilon$ for $j = 0 , \ldots , N - 1$ .If $F _ { T } < F _ { N }$ or is within $\epsilon$ of $F _ { N }$ ，let $K = T$ If $F _ { N } < F _ { T }$ ，let $K = N$ . A similar idea is used to select $F _ { L }$ . Note that we have used $\epsilon$ -trichotomy again.■

Proof of Proposition 4.1.17. Let $\delta = \delta ( \epsilon / 2 )$ be a modulus of continuity for $f$ Choose $N$ so large that $\begin{array} { r } { \frac { b - a } { N } < \delta } \end{array}$ and let $\begin{array} { r } { x _ { i } = a + i \left( \frac { b - a } { N } \right) } \end{array}$ By Lemma 4.1.18, given $_ { x }$ in $\lfloor a , b \rfloor$ ， $_ { x }$ is within $\delta$ of some $x _ { k }$ ，S0 $f ( x _ { k } ) < f ( x ) + \epsilon / 2$ . By the Lemma 4.1.19 applied to $F _ { j } = f ( x _ { j } )$ ， there is some $K$ with $f ( x _ { K } ) < f ( x _ { j } ) + \epsilon / 2$ for all $j$ . Thus, $f ( x _ { K } ) - \epsilon < f ( x _ { k } ) - \epsilon / 2 < f ( x )$ ， so we can take $u = x _ { K }$ . The construction of $v$ is similar, but uses the other half of Lemma 4.1.19 (with $F _ { L }$ ）■

COROLLARY 4.1.20 If $f$ is uniformly continuous on the finite interval $\lfloor a , b \rfloor$ ，then there is a constant $K$ such that $| f ( x ) | \leq K$ for all $x \in \left[ a , b \right]$

PROPOSITION 4.1.21 Suppose $f$ is uniformly continuous on an interval $I = \lfloor a , b \rfloor$ ( $a < b$ ). If there is an $x _ { 0 } \in I$ such that $f ( x _ { 0 } ) > 0$ then $f$ is bounded away from $0$ in some subinterval $\lfloor c , d \rfloor$ $c < d$ ）of $I$ containing $x _ { 0 }$

The proof is left as an exercise.

Proposition 4.1.17 is also as close as we can come, in general, to constructing the max and min of a function on a finite closed interval. When we discuss differentiability, we will see another approach which, in special cases,will yield these extreme values exactly.

To demonstrate how continuity can be verified, we show that the nth-root function is uniformly continuous wherever it is defined on the real line. We begin with a simple lemma,easily proved by induction.

LEMMA 4.1.22 For any integer $n \geq 1$ and real number u with $0 \leq u \leq 1$ ，

$$
( 1 - u ) ^ { n } \leq 1 - u ^ { n } .
$$

In fact, this lemma is true even when $n \geq 1$ is any real number. Since the proof of this more general fact is best accomplished using derivatives, we postpone it until later. We can now apply this lemma to $u = x / y$ ，where $x = a ^ { 1 / n }$ and $y = b ^ { 1 / n }$ .

COROLLARY 4.1.23 For reals $0 \leq a \leq b$ ，

$$
b ^ { 1 / n } - a ^ { 1 / n } \leq ( b - a ) ^ { 1 / n } .
$$

This shows easily that the $_ { n }$ th-root function, for positive integers $_ { n }$ , is uniformly continuous on the non-negative real axis. In fact, $| b ^ { 1 / n } - a ^ { 1 / n } |$ will be less than $\epsilon$ provided $| b - a | < \epsilon ^ { n }$ . In the case of $_ n$ odd, the $_ n$ th-root function is defined on the whole real line,and some simple algebraic inequalities show that for these functions, $| b - a | < ( \epsilon / 2 ) ^ { n }$ works to establish uniform continuity (see the exercises).

# Exercises

1. Suppose you draw the graph of $y = f ( x )$ over the interval $a \leq x \leq b$ ，and imagine a rectangle of width $\delta$ and height $\epsilon$ with sides parallel to the axes. Express the statement that $\delta$ is a modulus of continuity for $\epsilon$ in terms of what happens as you move this box around the graph. Here is a picture showing a $\delta$ （ $= 1 / 2$ ）which works in some intervals but not in others,with $\epsilon = 1 / 2$

![](images/83e546e33299599cf07bb47fca5bb839f8e853ae5974049d9c3b00fa1f3d4f2f.jpg)

2.Prove (from the text) that a constant multiple of a uniformly continuous function on $S$ is also uniformly continuous.Also prove that the difference of UC functions is UC.

3. Show that the following functions are not uniformly continuous on $( 0 , 1 )$ (you may assume the usual properties of the trigonometric functions). For a proof that a function is not UC,see Example 4.1.9 in the text.

$\begin{array} { r l r l r l } { a . ~ e ^ { 1 / x } } & { { } ~ b . ~ \sin ( 1 / x ) } & { ~ c . ~ e ^ { x } \cos ( 1 / x ) } & { ~ d . ~ \cos ( x ) \cos ( \pi / x ) } \end{array}$

4. Prove that if $f$ satisfies a Lipschitz condition of the type $| f ( y ) - f ( x ) | \leq K | y -$ $x |$ （ $K > 0$ ）on $S$ ,then $f$ is uniformly continuous on $S$

5.Prove that if $f$ satisfies a Lipschitz condition of the type $A ( y - x ) \leq f ( y ) -$ $f ( x ) \leq B ( y - x )$ where $A , B > 0$ ，then $f$ is uniformly continuous (see the previous exercise as well as Corollary 1.5.31).

6. Give detailed proofs that the logarithm and exponential functions are uniformly continuous on appropriate intervals.

7.Prove that if $f$ and $g$ are uniformly continuous and bounded functions, then their product $f g$ is also uniformly continuous.(Hint:Add and subtract $f \left( x \right) g \left( y \right)$ in $| f ( y ) g ( y ) - f ( x ) g ( x ) |$ .）Deduce that,on a finite interval $\lfloor A , B \rfloor$ ， the product of uniformly continuous intervals must be uniformly continuous.

8.Just for practice,prove that the polynomial $x ^ { 3 } - x + 1$ is uniformly continuous ontheteral5il $\scriptstyle { \frac { 1 } { 2 x + 3 } }$ and $\sqrt { 2 x + 3 }$ are uniformly continuous on this interval.

9.Suppose the functions $f$ and $g$ are UC on the finite interval $\lfloor a , b \rfloor$ . Define the functions $h ( x ) = \operatorname* { m i n } ( f ( x ) , g ( x ) )$ and $H ( x ) = \operatorname* { m a x } ( f ( x ) , g ( x ) )$ .Show that $h$ and $H$ are UC on $\lfloor a , b \rfloor$ . Deduce that the absolute value function is UC.

10. Suppose $f$ is UC on $\lfloor a , \infty )$ and lim f(x) is finite. Prove that $f$ is bounded on $\lfloor a , \infty )$ . What if we just assume that $f$ is UC on every finite subinterval of $\lfloor a , \infty )$ ？Will $f$ be UC on $\lfloor a , \infty )$ ？

11.Prove the following from the text.

PROPOSITION 4.1.21 Suppose $f$ is uniformly continuous on an interval $I =$ $[ a , b ]$ $a < b$ ). If there is an $x _ { 0 } \in I$ such that $f ( x _ { 0 } ) > 0$ then $f$ is bounded away from O in some subinterval $\lfloor c , d \rfloor$ $c < d$ ）of $I$ containing $x _ { 0 }$

12. Here we look at functions satisfying certain simple identities (called functional equations). We assume in each case that the function $f$ is UC on every finite interval $\lfloor a , b \rfloor$ ．Prove the following statements. (It is recommended that you follow the order listed.)

(a)If $f$ satisfies $f ( x + y ) = f ( x ) + f ( y )$ , then there is a real number $_ { \alpha }$ such that $f ( x ) = \alpha x$ for all $_ { x }$ .(Hint: What does $\alpha$ have to be?) (b) Find all $f$ which satisfy the conditions $f ( 1 ) > 0$ and $f ( x + y ) = f ( x ) f ( y )$

(c) (Here $f$ is UC on every finite interval $\lfloor a , b \rfloor$ with $a > 0$ .）Show that if $f$ is not identically O and satisfies $f ( x y ) = f ( x ) + f ( y )$ then $f$ is a log function. (Hint: Think of a trick so that you can use part (a).)   
(d) (Here $f$ is UC on every finite interval $\lfloor a , b \rfloor$ with $a > 0$ .）Show that if $f$ is not identically $0$ and satisfies $f ( x y ) = f ( x ) f ( y )$ ，then $f$ is a power function $f ( x ) = x ^ { \alpha }$

13.That a function $f$ is continuous at the point $x _ { 0 }$ （ $x _ { 0 }$ in the domain of $f$ ）means that，given $\epsilon > 0$ ， there exists a $\delta > 0$ (possibly depending on $x _ { 0 }$ ）such that $| f ( x ) - f ( x _ { 0 } ) | < \epsilon$ whenever $| x - x _ { 0 } | < \delta$

(a) Prove that $f$ is continuous at $x _ { 0 }$ if and only if f(xo)= lim f(x). x→x0   
(b）Prove that $f$ UC on $S$ implies that $f$ is continuous at each point of $S$   
(c） The converse of the above is not true. Show that the function $f ( x ) = 1 / x$ is continuous at each point of $( 0 , 1 ]$ ，for example,but is not uniformly continuous on $( 0 , 1 ]$ . Also, the function $x ^ { 2 }$ is continuous at every point of $\mathbb { R }$ but is not UC on all of $\mathbb { R }$ (though it is UC on every finite subinterval.)

14. Give a detailed proof that the function $x ^ { 1 / 3 }$ is uniformly continuous on all of $\mathbb { R }$ when we define

$$
( - x ) ^ { 1 / 3 } = - ( x ^ { 1 / 3 } )
$$

for $x \le 0$ . This function cannot satisfy a Lipschitz condition $| f \left( y \right) - f \left( x \right) | \leq$ $K \cdot | y - x |$ on any interval containing O. Why?

15.The two-sided Inverse Function Theorem，Two-sided Case (Theorem 2.2.8) tells us that the function $x ^ { \pi }$ has an inverse on all of $\mathbb { R }$ when $_ { n }$ is odd. In fact, for $_ n$ odd and $x \le 0$ ， $x ^ { 1 / n } = - ( - x ) ^ { 1 / n }$ . Use Corollary 4.1.23 to show that $x ^ { 1 / n }$ is UC in this case on all of $\mathbb { R }$ , with modulus of continuity $( \epsilon / 2 ) ^ { \pi }$ (Hint: Separate out into the cases $_ { x }$ and $_ y$ both non-negative,both non-positive,and one non-negative and the other non-positive. This is legal since these three cases can't all be excluded, and you are trying to prove that $\left| y ^ { 1 / n } - x ^ { 1 / n } \right|$ is not greater than $\epsilon$ ）

# 4.2 Limits and Extensions

The main idea in this section is that uniformly continuous functions preserve limits and hence can be extended to take on their limiting values. The following proposition expresses the phrase “preserves limits” more carefully.

PROPOSITION 4.2.1 Suppose $f$ is uniformly continuous on $S$ and $( a _ { k } ) \to a$ where each $a _ { k } \in S$ . Then

1. $\left( f ( a _ { k } ) \right)$ is a Cauchy sequence.

2. The limits $\operatorname* { l i m } _ { x \to a \atop x \in S } f ( x )$ and $L = \operatorname* { l i m } _ { k \to \infty } ( f ( a _ { k } ) )$ erist and are equal.

3.1f $a \in S$ then $L = f ( a )$

Proof. (1) Given $\epsilon > 0$ ,let $\delta = \delta _ { f } ( \epsilon )$ be a modulus of continuity for $\epsilon$ on $S$ . Since $\left( a _ { k } \right)$ is a Cauchy sequence, choose $N$ so that $| a _ { m } - a _ { n } | < \delta$ when $m , n > N$ ； then $| f ( a _ { m } ) - f ( a _ { n } ) | < \epsilon$

(2) $L = \operatorname* { l i m } ( f ( a _ { k } ) )$ exists by part (1) and the fact that Cauchy sequences converge (by completeness). We must show that given $\epsilon > 0$ ， we can make $| f ( x ) - L | \leq \epsilon$ by making $| x - a |$ small enough.Once again, let $\delta$ be a modulus of continuity for $\epsilon$ on $S$ ,and suppose that $| x - a | < \delta / 2$

Since $( a _ { k } ) \to a$ , choose an $_ { n }$ such with $| a - a _ { n } | < \delta / 2$ (we will refine $_ n$ soon). We now have $| x - a _ { n } | \leq | x - a | + | a - a _ { n } | < \delta / 2 + \delta / 2 = \delta$ ,so $| f ( x ) - f ( a _ { n } ) | < \epsilon$ and

$$
\begin{array} { r c l } { | f ( x ) - L | } & { \leq } & { | f ( x ) - f ( a _ { n } ) | + | f ( a _ { n } ) - L | } \\ & { < } & { \epsilon + | f ( a _ { n } ) - L | . } \end{array}
$$

By making $_ { n }$ large enough, $| f ( a _ { n } ) - L |$ can be made arbitrarily small (since $L = \operatorname* { l i m } ( f ( a _ { k } ) ) )$ ，s0 $| f ( x ) - L | \leq \epsilon$ (by the Wiggle Lemma).

(3)This is left as an exercise.■

COROLLARY 4.2.2 If $f$ is uniformly continuous on $S$ and $a \in S$ ，then $f ( a ) =$ lim f(x). $\operatorname* { l i m } _ { x \to a \atop x \in S } f ( x )$

EXAMPLE 4.2.3 Consider the sequence $( 1 / k ^ { 3 } ) \to 0$ If $f ( x ) = \sqrt [ 3 ] { x }$ ,then $f \left( 1 / k ^ { 3 } \right) =$   
$1 / k \to 0$ . Therefore $\operatorname* { l i m } _ { x \to 0 } \vartheta ^ { \ast } = 0$

$$
\begin{array} { l l } { { \mathrm { E x A M P L E ~ 4 . 2 . 4 ~ C o n s i d e r ~ } f ( x ) = \displaystyle \frac { x ^ { 2 } - 4 } { x - 2 } ~ a n d ~ ( a _ { k } ) = ( 2 + 1 / k )  2 . } } \\ { { \mathrm { } } } \\ { { \mathrm { } ( 4 + 4 / k )  4 , ~ s o \displaystyle \operatorname* { l i m } _ { x  2 } ( \displaystyle \frac { x ^ { 2 } - 4 } { x - 2 } ) = 4 . } } \end{array}
$$

Note that in the second example, $f ( x )$ is not defined at $x = 2$ , but it is defined everywhere else (i.e.at those $_ x$ such that $| x - 2 | > 0$ ). The domain (allowable inputs for $f$ ） has a“hole”at $x = 2$ . We would be tempted to fill that hole by defning $f ( 2 )$ to be 4.However,this leads to the rather awkward definition

$$
f ( x ) = \left\{ \begin{array} { l l l } { \displaystyle \frac { x ^ { 2 } - 4 } { x - 2 } } & { \mathrm { i f } } & { x \neq 2 } \\ { \quad 4 } & { \mathrm { i f } } & { x = 2 } \end{array} \right. .
$$

But this is worse than being merely awkward. What happens if $_ { x }$ is a real number say given as a family of intervals, or as a limit of a Cauchy sequence, or as an infinite series—but we can't determine whether $_ { x }$ is actually equal to 2? We know that the strong trichotomy property doesn't hold for all real numbers, so how can we apply this definition?

Of course, the solution in this simple case is easy: just define $f ( x )$ to be $x + 2$ for any $_ { x }$

Here are some examples of extending functions,already taken care of by other means (namely IFT).

EXAMPLE 4.2.5 Let $f ( x )$ be the nth-root of $_ x$ .For $x \geq 0$ and rational, this is defined by the family $\{ | r , s | : 0 \leq r$ and $r ^ { n } \leq x \leq s ^ { n } \}$ .When $_ { x }$ is not necessarily rational, verifying the $\leq$ inequalities in bisection can create problems in determining fineness; thus the more careful approach taken in the IFT is necessary.

ExAMPLE 4.2.6 $f \left( x \right) = x ^ { A }$ ， defined for $A = r / s$ rational to be $\sqrt [ s ] { x ^ { r } }$

In all of these examples, the numbers we want to be in the domain of the function (e.g. all the reals) can be approximated to arbitrary closeness by numbers on which the function is already defined—namely the rationals.Basically, to add the number $_ x$ to the domain of $f$ ，we try to write $x = \operatorname* { l i m } \left( x _ { n } \right)$ where $f \left( x _ { n } \right)$ exists and then define $f \left( x \right) = \operatorname* { l i m } \left( f \left( x _ { n } \right) \right)$ . We now make precise this important idea.

DEFINITION 4.2.7 Let $S \subset T$ be sets of real numbers. $S$ is dense in $T$ means that every open interval of $\mathbb { R }$ which intersects $T$ also intersects $S$

PROPOSITION 4.2.8 For $S \subset T$ , the following are equivalent.

1. $S$ is dense in $T$   
2. For each $x \in T$ , there is a convergent sequence $( s _ { k } ) \to x$ with each $s _ { k } \in S$   
3. For each $x \in T$ and $\epsilon > 0$ , there is some $s \in S$ such that $| x - s | < \epsilon$

Proof. Suppose first that $S$ is dense in $T$ For $k = 1 , 2 , \ldots$ let $\begin{array} { r } { J = \left( x - \frac { 1 } { k } , x + \frac { 1 } { k } \right) } \end{array}$ By density, $J$ contains some $s _ { k }$ which is clearly within $1 / k$ of $_ { x }$ .Thus, $( s _ { k } ) \to x$

Now suppose that $x \in T$ ，and ( $s _ { k }$ ） converges to $_ { x }$ .For $\epsilon > 0$ find $s _ { k }$ closer to $_ { x }$ than $\epsilon$ and let $s = s _ { k }$

Finally, suppose that $\boldsymbol { J } ~ = ~ ( u , v )$ is an open interval containing $x \in T$ Let $\epsilon = \operatorname* { m i n } ( x - u , v - x )$ . By hypothesis,there is an $s \in S$ lying within $\epsilon$ of $_ { x }$ ; clearly $s$ must lie in $J$ ■

REMARK 4.2.9 In the above proposition, if $x \in T$ happens to lie in $S$ , we can choose the sequence so that $s _ { k } = x$ for all $k$

EXAMPLE 4.2.10 The rationals $\mathbb { Q }$ are dense in the reals $\mathbb { R }$ . The rational interval $\lfloor r , s \rfloor$ is dense in the real interval $\lfloor r , s \rfloor$ . The open and half-open intervals $( a , b )$ ， $( a , b ]$ ， and $[ a , b )$ are dense in the closed interval $[ a , b ]$

And here is the fundamental result.

THEOREM 4.2.11（EXTENSION THEOREM FOR UC FUNCTIONS） Supp0se that $f$ is uniformly continuous on $S$ and $S$ is dense in $T$ . Then there is one and only one function $F$ ， uniformly continuous on $T$ ，such that $F ( x ) = f ( x )$ for each $x \in S$ · Furthermore, any modulus of continuity for $f$ is a modulus of continuity for $F$

Proof. Suppose that $\delta ( \epsilon )$ is a modulus of continuity for $f$ on $S$ .Then, for $p$ in $T$ ， define the family

$$
{ \mathcal F } ( p ) = \left\{ [ f ( x ) - \epsilon , ~ f ( x ) + \epsilon ] : \epsilon > 0 , ~ x \in S , ~ | x - p | < \delta ( \epsilon ) \right\} .
$$

Since $S$ is dense in $T$ ,for each $\epsilon > 0$ there is an $x \in S$ with $| x - p | < \delta ( \epsilon )$ ；thus, $\mathcal { F } ( \boldsymbol { p } )$ is fine.

To prove consistency, suppose that $I _ { 1 } = | f ( x _ { 1 } ) - \epsilon _ { 1 } , f ( x _ { 1 } ) + \epsilon _ { 1 } |$ and $I _ { 2 } = | f ( x _ { 2 } ) - \rrangle$ $\epsilon _ { 2 } , f ( x _ { 2 } ) + \epsilon _ { 2 } ]$ are any two intervals in ${ \mathcal { F } } ( { \boldsymbol { p } } )$ . Choose $_ y$ so close to $p$ that $| x _ { i } - p | +$ $| p - y | < \delta ( \epsilon _ { i } )$ ，for $i = 1 , 2$ . (We can do this because $\delta ( \epsilon _ { i } ) - | x _ { i } - p | > 0$ and $S$ is dense.） This gives

$$
\begin{array} { l l l } { | x _ { i } - y | } & { = } & { | y - p + p - x _ { i } | } \\ & { \leq } & { | y - p | + | p - x _ { i } | } \\ & { < } & { \delta ( \epsilon _ { i } ) } \end{array}
$$

for $i = 1 , 2$ . Then $f ( x _ { i } )$ is within $\epsilon _ { i }$ of $f ( y )$ ，s0 $f ( y )$ is in both $I _ { 1 }$ and $I _ { 2 }$

We now can define $F ( p ) = \operatorname* { l i m } { \mathcal { F } } ( p )$ , for each $p \in T$

When $p \in S$ ， $f ( \boldsymbol p )$ belongs to each interval in ${ \mathcal { F } } ( { \boldsymbol { p } } )$ (by the continuity of $f$ )， so$F ( p ) = f ( p )$

Next we show that a modulus of continuity for $f$ on $S$ also works for $F$ on $T$ Given $\epsilon > 0$ ， suppose $\delta = \delta _ { f } ( \epsilon )$ , and suppose that $| q - p | < \delta$ . We will show that for any $\mu > 0$ ， $| F ( q ) - F ( p ) | \leq \epsilon + \mu$ for any $\mu > 0$ ; applying the Wiggle Lemma then will give $| F ( q ) - F ( p ) | \leq \epsilon$ Let $\sigma = \operatorname* { m i n } ( \delta - | q - p | , \mu / 2 )$ Since $F ( p ) = \operatorname* { l i m } { \mathcal { F } } ( p )$ and $F ( q ) = \operatorname* { l i m } { \mathcal { F } } ( q )$ ，

$$
\begin{array} { r l r } { F ( p ) } & { \in } & { [ f ( x ) - \sigma / 2 , f ( x ) + \sigma / 2 ] \mathrm { \quad ~ f o r ~ s o m e ~ } x \in S \mathrm { ~ w i t h ~ } | x - p | < \sigma / 2 } \\ { F ( q ) } & { \in } & { [ f ( y ) - \sigma / 2 , f ( y ) + \sigma / 2 ] \mathrm { \quad ~ f o r ~ s o m e ~ } y \in S \mathrm { ~ w i t h ~ } | y - p | < \sigma / 2 . } \end{array}
$$

Therefore

$$
\begin{array} { r } { \begin{array} { l r } { | F ( p ) - f ( x ) | } & { < \sigma \leq \mu / 2 , } \\ { | F ( q ) - f ( y ) | } & { < \sigma \leq \mu / 2 , } \end{array} } \end{array}
$$

and

$$
\begin{array} { l l l } { | x - y | } & { \leq } & { | x - p | + | p - q | + | q - y | } \\ & { \leq } & { \sigma / 2 + | p - q | + \sigma / 2 } \\ & { = } & { \sigma + | p - q | } \\ & { \leq } & { \delta . } \end{array}
$$

Now we put these pieces together to obtain

$$
\begin{array} { l l l } { | F ( q ) - F ( p ) | } & { \leq } & { | F ( p ) - f ( x ) | + | f ( x ) - f ( y ) | + | f ( y ) - F ( q ) | } \\ & { \leq } & { \mu / 2 + \epsilon + \mu / 2 = \epsilon + \mu . } \end{array}
$$

As we said, the Wiggle Lemma gives $| F ( q ) - F ( p ) | \leq \epsilon$

Finally, uniqueness: Suppose that $G$ is another uniformly continuous extension of $f$ to $T$ ，S0 $G ( s ) = F ( s ) = f ( s )$ for $s \in S$ . Given $\epsilon > 0$ and $p \in T$ ， choose $s \in S$ with $| p - s | < \operatorname * { m i n } ( \delta _ { F } ( \epsilon / 2 ) , \delta _ { G } ( \epsilon / 2 ) )$ . Then

$$
\begin{array} { r c l } { | G ( p ) - F ( p ) | } & { = } & { | G ( p ) - \overbrace { G ( s ) + F ( s ) } ^ { G ( s ) = F ( s ) } - F ( p ) | } \\ & { \leq } & { | G ( p ) - G ( s ) | + | F ( s ) - F ( p ) | } \\ & { \leq } & { \epsilon / 2 + \epsilon / 2 = \epsilon . } \end{array}
$$

Since $\epsilon$ was arbitrary, $G ( p ) = F ( p )$

Note that in this proof we used property 3 of Proposition 4.2.8 to construct $f$ via the Completeness Theorem. In view of the equivalence of this property with property 2 of the same proposition — the existence of a Cauchy sequence $( s _ { k } ) \to x$ —we could have defined $F \left( x \right) = \operatorname* { l i m } f ( s _ { k } )$ . This variation is left as an exercise.

COROLLARY 4.2.12 Any function UC on the rational interval $\lfloor r , s \rfloor$ can be extended in a unique way to a function UC on the real interval $\lfloor r , s \rfloor$

COROLLARY 4.2.13 Any function UC on the open or half-open intervals $( a , b )$ ， $( a , b ]$ ， $[ a , b )$ can be extended in a unique way to a function UC on the closed interval $\lfloor a , b \rfloor$

In this last corollary, we obtained the open and half open intervals by removing one or both endpoints from a closed interval $\lfloor a , b \rfloor$ .However,we needn't restrict outselves to endpoints,but can puncture an interval any finite number of times.

DEFINITION 4.2.14 If $x _ { 1 } , \ldots , x _ { n } \in \left\lfloor a , b \right\rfloor$ ， then $P = \left\lfloor a , b \right\rfloor - \left\{ x _ { 1 } , . . . , x _ { n } \right\}$ consists of those $x \in \lfloor a , b \rfloor$ such that $\left| x - x _ { i } \right| > 0$ for $i = 1 , \ldots , n$ ： $P$ is called a (finitely) punctured interval.

The following tells us that a finitely punctured interval $P$ is dense in $\lfloor a , b \rfloor$

PROPOSITION 4.2.15 Suppose $x , c _ { 1 } , \ldots , c _ { n } \in [ a , b ]$ and $\epsilon > 0$ . Then there is an ${ \bar { x } } \in \left\lfloor a , b \right\rfloor$ with $| x - \bar { x } | < \epsilon$ and $\left| \bar { x } - c _ { i } \right| > 0$ for each $i = 1 , \ldots , n$

The proof, by induction, is left as an exercise.

COROLLARY 4.2.16 Any function uniformly continuous on $\left\lfloor a , b \right\rfloor - \left\{ x _ { 1 } , \ldots , x _ { n } \right\}$ can be extended uniquely to a uniformly continuous function on all of $\lfloor a , b \rfloor$

Next we turn to another way of extending functions: amalgamation, or the piecing together of UC functions that agree on overlaps.

![](images/526e4098ea5536bf22fdbb7e43d5bce400b77626c6e9b94d47deb090dbd3d1b0.jpg)

We will apply the Extension Theorem to a union of intervals,so first we define what this means for us.

DEFINITION 4.2.17 $A \cup B$ ， the union of two sets (for us they will be intervals), consists of those x for which it can be determined that x lies in $A$ or $_ { x }$ lies in $B$

REMARK 4.2.18 As the erample of the Goldbach number $g$ shows (see page 67), $g$ lies in $\lfloor - 1 , 1 \rfloor$ but we don't know if $g \in \left[ - 1 , 0 \right]$ or $g \in \left[ 0 , 1 \right]$ ; thus, at this time, $g \not \in \lfloor - 1 , 0 \rfloor \cup \lfloor 0 , 1 \rfloor$

As in the diagram above,we have functions $f$ and $g$ defined on $\lfloor a , b \rfloor$ and $\lfloor c , d \rfloor$ respectively,and would like to define an extension $h$ by setting $h ( x ) \ = \ f ( x )$ if $x \in \lfloor a , b \rfloor$ ，and $h ( x ) = g \left( x \right)$ if $x \in \lfloor c , d \rfloor$ .But this only makes sense when we can tell which interval $_ x$ belongs to,i.e.only when $x \in \lfloor a , b \rfloor \cup \lfloor c , d \rfloor$ . Fortunately, this union is dense in the obvious interval determined by $\lfloor a , b \rfloor$ and $\lfloor c , d \rfloor$ , as the following lemma verifies.

LEMMA 4.2.19 Suppose the intervals $\lfloor a , b \rfloor$ and $\lfloor c , d \rfloor$ intersect. Then $U = \lfloor a , b \rfloor \cup \lfloor c , d \rfloor$ is dense in the interval $V = \left\lfloor \operatorname* { m i n } ( a , c ) , \operatorname* { m a x } ( b , d ) \right\rfloor$

Proof. We must show that any open interval $( s , t )$ that meets $V$ also meets $U$ .Here is what we know:

1. $a \leq d$ and $c \leq b$ (since the intervals meet).   
2. There is a $p$ with $\operatorname* { m i n } ( a , c ) \leq p \leq \operatorname* { m a x } ( b , d )$ and $s < p < t$ ， since $( s , t )$ meets $V$   
3. We must show that $( s , t )$ meets $\lfloor a , b \rfloor$ or $\lfloor c , d \rfloor$

Because it is diffcult to write conditions describing the intersection of an open and a closed interval, we choose a subinterval $[ s ^ { \prime } , t ^ { \prime } ]$ containing $p$ ,with $s < s ^ { \prime } < p < t ^ { \prime } < t$ ， and show $[ s ^ { \prime } , t ^ { \prime } ]$ meets $\lfloor a , b \rfloor$ or $\lfloor c , d \rfloor$ . It clearly suffices to show that if $[ s ^ { \prime } , t ^ { \prime } ]$ does not meet $\lfloor a , b \rfloor$ then it meets $\lfloor c , d \rfloor$

The assumption that $[ s ^ { \prime } , t ^ { \prime } ]$ and $[ a , b ]$ don't meet is equivalent to assuming that $a > t ^ { \prime }$ and $b < s ^ { \prime }$ can't both be false,so we need to show that each of these strict inequalities implies that $[ s ^ { \prime } , t ^ { \prime } ]$ meets $\lfloor c , d \rfloor$ . Let's do the case $b < s ^ { \prime }$ ; the other one is similar.

If $d < s ^ { \prime }$ then $p > s ^ { \prime } \geq \operatorname* { m a x } ( b , d )$ , contradicting (2） above. so $s ^ { \prime } \leq d$ If $t ^ { \prime } < c$ then $b < s ^ { \prime } < t ^ { \prime } < c$ , contradicting (1) above, so $c \leq t ^ { \prime }$ .Thus, $[ s ^ { \prime } , t ^ { \prime } ]$ meets $\lfloor c , d \rfloor$ $\mid$

REMARK 4.2.20 Lemma 4.2.19 above holds even when $\lfloor a , b \rfloor$ is replaced by $( - \infty , b ]$ ， or $\lfloor c , d \rfloor$ is replaced by $\lfloor c , \infty )$

PROPOSITION 4.2.21（AMALGAMATION OF FUNCTIONS） SuppOSe $a \leq b \leq c$ ， $f$ is uniformly continuous on $[ a , b ]$ ， $g$ is uniformly continuous on $\lfloor b , c \rfloor$ ，and $f \left( b \right) = g ( b )$ Then there is a unique function h such that

1. h is uniformly continuous on $[ a , c ]$ ，

2. $h ( x ) = f \left( x \right)$ for $x \in [ a , b ]$ ，and

3. $h ( x ) = g ( x )$ for $x \in \lfloor b , c \rfloor$

(Note that this proposition is easily extended to the case of finitely many subintervals and functions.)

Proof. We first construct $h$ on the union $U = \left\lfloor a , b \right\rfloor \cup \left\lfloor b , c \right\rfloor$ and prove $h$ is uniformly continuous, then apply Lemma 4.2.19 above and the Extension Theorem to extend $h$ to $\lfloor a , c \rfloor$

By definition of union, $x \in U$ means that $x \in \lfloor a , b \rfloor$ or $x \in \lfloor b , c \rfloor$ ， so we define $h \left( x \right) = f ( x )$ or $h ( x ) = g ( x )$ in these cases respectively. Now we must make $| h ( x ) - h ( y ) | < \epsilon$ . We cannot exclude all three cases $x , y \leq b$ ； $b \leq x , y$ ; and $b$ lies between $_ x$ and $_ y$ (we have proved this earlier; see Proposition 1.5.46). In the first case $h = f$ , and we can use the modulus of continuity $\delta _ { f } ( \epsilon )$ on $[ a , b ]$ ; in the second case, we use the modulus of continuity $\delta _ { g } ( \epsilon )$ on $\lfloor b , c \rfloor$ . Now let $\delta ( \epsilon ) = \operatorname* { m i n } ( \delta _ { f } ( \epsilon / 2 ) , \delta _ { g } ( \epsilon / 2 )$ and suppose $| x - y | < \delta ( \epsilon )$ . We write $| h ( x ) - h ( y ) | \leq | h ( x ) - h ( b ) | + | h ( b ) - h ( y ) |$ Since $b$ lies between $_ { x }$ and $_ y$ ， $| x - b | + | b - y | = | x - y | < \delta ( \epsilon )$ ，s0 $| x - b |$ and $| b - y |$ are each less than $\delta ( \epsilon )$ .Hence $| h ( x ) - h ( b ) | + | h ( b ) - h ( y ) | < \epsilon$ . This proves continuity.

REMARK 4.2.22 This proposition remains true when $f$ is $U C$ om $( - \infty , b ]$ and $g$ is $U C$ on $\lfloor b , \infty )$

In the case where the two intervals $\lfloor a , b \rfloor$ and $\lfloor c , d \rfloor$ don't intersect at just a single endpoint $b = c$ ，but rather $b \in \lfloor c , d \rfloor$ and $c \in \lfloor a , b \rfloor$ ，we note that $\lfloor a , \operatorname* { m i n } ( b , c ) \rfloor \cup$ $\left\lfloor \operatorname* { m i n } ( b , c ) , \operatorname* { m a x } ( b , c ) \right\rfloor \cup \left\lfloor \operatorname* { m a x } ( b , c ) , d \right\rfloor$ is dense in $[ a , d ]$ and we can apply Proposition 4.2.21 in this case as well (we assume $f$ and $g$ agree on $\left| \operatorname* { m i n } ( b , c ) , \operatorname* { m a x } ( b , c ) \right| )$

One of the most important applications of the amalgamation or piecing together of functions, described in this last corollary, is the case of piecewise linear functions. Recall that a linear function $\mathbb { R } \to \mathbb { R }$ is one of the form $L \left( x \right) = a x + b$ . Given points $( x _ { 1 } , y _ { 1 } )$ and $( x _ { 2 } , y _ { 2 } )$ with $| x _ { 1 } - x _ { 2 } | > 0$ , it is aways possible to find a linear function for which $L ( x _ { i } ) = y _ { i }$ ， $i = 1 , 2$ . Applying this idea several times yields the following.

COROLLARY 4.2.23 Giuen $a = x _ { 0 } < x _ { 1 } < \cdot \cdot \cdot < x _ { n } = b$ , and numbers $y _ { 0 } , y _ { 1 } , \dotsc , y _ { n }$ thereisa function $L$ such that

1. $L$ is linear on each interval $\left[ x _ { i } , x _ { i - 1 } \right]$ separately， and

2. $L ( x _ { i } ) = y _ { i }$

Finally,we can weaken the condition that a function be uniformly continuous on all of a punctured interval in order to be extended: it just has to be uniformly continuous on closed subintervals. This is made precise below.

LEMMA 4.2.24 Suppose that $f$ is uniformly continuous on every subinterval $\left\lfloor u , v \right\rfloor$ of $[ a , b )$ . Furthermore, suppose $\operatorname* { l i m } _ { x \to b \atop x < b } f ( x )$ exists. Then $f$ is uniformly continuous on $[ a , b )$ ， and hence it has a unique uniformly continuous extension to all of $[ a , b ]$

Proof. Given $\epsilon > 0$ ， choose $\delta > 0$ such that $| f ( x ) - L | < \epsilon / 2$ when $b - x < \delta$ ，where $\operatorname* { l i m } _ { x \to b \atop x < b } f ( x ) = L$ . Since $f$ is UC on the interval $I = \lfloor a , b - \delta / 4 \rfloor$ , we can find a modulus of continuity $\delta _ { I } = \delta ( \epsilon , I )$ for $\epsilon$ on it. Now let $\delta ^ { \prime } = \operatorname* { m i n } ( \delta _ { I } , \delta / 4 )$ . Here is a picture of what we have.

![](images/ccad1844609a5a0ffb018793e8ce88ee4a7c46d181b449f453c64a067dcebf0b.jpg)

Suppose that $| y - x | < \delta ^ { \prime }$ . We deal with the two cases $x \ge b - \delta / 2$ and $x \le b - \delta / 2$ In the former, $b - x \leq \delta / 2 < \delta$ and so

$$
y \ge x - \delta / 4 \ge b - 3 \delta / 4 \ge b - \delta ,
$$

and $b - y \leq \delta$ also.Thus,by definition of $\delta$ ：

$$
\begin{array} { r c l } { | f ( y ) - f ( x ) | } & { \leq } & { | f ( y ) - L | + | L - f ( x ) | } \\ & { \leq } & { \epsilon / 2 + \epsilon / 2 = \epsilon . } \end{array}
$$

Now we deal with $x \le b - \delta / 2$ ,which tells us that $x \in I$ . Also, $y \le x + \delta / 4 \le b - \delta / 4$ S0 $y \in I$ as well. Since $\vert y - x \vert < \delta _ { I }$ ， $| f ( y ) - f ( x ) | \leq \epsilon$ in this case as well.

Note that this result is also true for intervals of the form $( a , b ]$ when the function has a limit as $x \ \longrightarrow \ a$ ，and $x \ > \ a$ .It is also true when $b = \infty$ ，using a similar argument:see the exercises.

This lemma is very useful in its own right, since it is often hard to prove that functions are UC on open or half-open intervals when they are not defined at one or more endpoints. Two well-known examples are $( \sin x ) / x$ and $x \sin ( 1 / x )$ on the interval $( 0 , b ]$ (see exercises.） Here is another.

EXAMPLE 4.2.25 The function $f ( x ) = \left( e ^ { x } - 1 \right) / x$ is $U C$ on $( 0 , 1 ]$ ， hence has an extension to [0,1]. To see this,we note that on any interval $[ a , 1 ]$ where $a > 0$ ， $e ^ { x } - 1$ is UC and $_ x$ is bounded away from $0$ ; thus, $f ( x )$ is $U C$ on $[ a , 1 ]$ . Furthermore, we know from Section 2.4 that $\operatorname* { l i m } _ { x \to 0 } f ( x ) = 1$ ， so we can apply a variation of Lemma 4.2.24 for intervals open on the left.

Perhaps the most important application of Lemma 4.2.24, however, is to the power function $x ^ { q }$

PROPOSITION 4.2.26 If $q > 0$ the function $x ^ { q }$ is $U C$ on the interval $( 0 , b ]$ and can be extended to the interval $[ 0 , b ]$ with value O at $x = 0$ .

Proof. By virtue of Lemma 4.2.24, we only have to show that lim eqlnx = 0. Given $\operatorname* { l i m } _ { x \to 0 \atop x > 0 } e ^ { q \ln x } = 0$ $\epsilon > 0$ , choose $N > - { \frac { \ln \epsilon } { q } }$ If $x < e ^ { - N }$ , then it is easy to see that $x ^ { q } < \epsilon$

# Exercises

1. Give an alternative proof of the Extension Theorem (4.2.11),using a Cauchy sequence $( s _ { k } ) \to x$ instead of a family of intervals, to define $F ( x ) = \operatorname* { l i m } f ( s _ { k } )$ After defining $F$ , prove the following.

(a) $F ( x )$ is independent of the sequence $( s _ { k } ) \to x$ and so $F ( x ) = f ( x )$ for $x \in S$   
(b） $F$ is uniformly continuous on $T$ .(In fact,it has the same modulus of continuity as $f$ ）   
(c） If $G$ is also uniformly continuous on $T$ and $G \left( x \right) = f ( x )$ for all $x \in S$ ， then $G \left( x \right) = F \left( x \right)$ for all $x \in T$

2.Prove that the punctured interval

$$
[ a , b ] - \{ x _ { 1 } , . . . x _ { n } \} = \{ x \in [ a , b ] : | \ x - x _ { i } \mid > 0 , \ i = 1 , . . . n \}
$$

is dense in $[ a , b ]$ .(Hint: Use induction on $_ { n }$ . Prove that every open interval which intersects $[ a , b ]$ also intersects the punctured interval. Lemma 1.6.10 will be useful in the inductive step.)

3. Reprove Proposition 4.2.21, which says that UC functions defined on $[ a , b ]$ and $\lfloor b , c \rfloor$ and agreeing at $b$ can be amalgamated into a single UC function defined on all of $\lfloor a , c \rfloor$ . This time,use Cauchy sequences instead of intervals.

4. We have proved:

LEMMA 4.2.24 Suppose that $f$ is uniformly continuous on every subinterval $\left\lfloor u , v \right\rfloor$ of $\lfloor a , b \rfloor$ such that $v < b$ . Furthermore, suppose $\operatorname* { l i m } _ { x \to b \atop x < b } f ( x )$ exists. Then $f$ is uniformly continuous on $[ a , b )$ ， hence has $a$ unique extension to all of $\lfloor a , b \rfloor$ Modify the proof given in the text to deal with the case $b = \infty$

5.Suppose that $C _ { 1 }$ and $C _ { 2 }$ are two conditions.Mathematicians often say that $C _ { 1 }$ is stronger than $C _ { 2 }$ if $C _ { 1 } \Longrightarrow C _ { 2 }$ . For example, the condition“ $N$ is divisible by $4 ^ { \dag \dag }$ is stronger than the condition“ $N$ is divisible by 2.” So consider the conditions:

$$
\begin{array} { r l } { C _ { 1 } } & { = \mathrm {  ~ \Psi ~ } ^ { \mathrm { { \sc * } } } f \mathrm { ~ i s ~ } { \bf U } { \bf C } \mathrm { ~ o n ~ e v e r y ~ s u b i n t e r v a l ~ } [ u , v ] \mathrm { ~ o f ~ } [ a , b ] . ^ { , } } \\ { C _ { 2 } } & { = \mathrm {  ~ \Psi ~ } ^ { \mathrm { { \sc * } } } f \mathrm { ~ i s ~ } { \bf U } { \bf C } \mathrm { ~ o n ~ e v e r y ~ s u b i n t e r v a l ~ } [ u , v ] \mathrm { ~ o f ~ } [ a , b ] \mathrm { ~ w i t h ~ } v < b . ^ { , } } \\ { C _ { 3 } } & { = \mathrm {  ~ \Psi ~ } ^ { \mathrm { { \sc * } } } f \mathrm { ~ i s ~ } { \bf U } { \bf C } \mathrm { ~ o n ~ e v e r y ~ s u b i n t e r v a l ~ } [ u , v ] \mathrm { ~ o f ~ } [ a , b ] . ^ { , } } \\ { C _ { 4 } } & { = \mathrm {  ~ \Psi ~ } ^ { \mathrm { { \sc * } } } f \mathrm { ~ i s ~ } { \bf U } { \bf C } \mathrm { ~ o n ~ e v e r y ~ s u b i n t e r v a l ~ } [ u , v ] \mathrm { ~ o f ~ } [ a , b ] . ^ { , } } \\ { C _ { 5 } } & { = \mathrm {  ~ \Psi ~ } ^ { \mathrm { { \sc * } } } f \mathrm { ~ i s ~ } { \bf U } { \bf C } \mathrm { ~ o n ~ } [ a , b ] . ^ { , } } \end{array}
$$

(a）Which of these conditions are stronger than which others? (b） Do any of these conditions imply that $f$ must be UC on all of $\lfloor a , b \rfloor$ ？ (c） For each condition, what additional hypothesis on $f$ can be used to ensure that $f$ is UC on $\lfloor a , b \rfloor$ ？

6. (a) Prove that $e ^ { - x }$ is UC on $\lfloor a , \infty )$ . (b) Prove that $e ^ { - 1 / x }$ is UC on $( 0 , \infty )$

7. Let $f ( x ) = { \frac { \sin x } { x } }$ . Assume the following two facts about this function (we wil prove them later when we examine the sine function more carefully):

(a) $\sin x$ is uniformly continuous on all of $\mathbb { R }$ (b) $\operatorname* { l i m } _ { x \to 0 } { \frac { \sin x } { x } } = 1 .$

Prove that $f ( x )$ is UC on any punctured interval $I - \{ 0 \}$ （ $I$ need not be finite), so that it has an extension to all of $\mathbb { R }$ . (Hint: It suffices to prove this result for a bounded interval $\lfloor - B , B \rfloor$ ， $B > 0$ , since this function is very well-behaved for $_ { x }$ not near 0.)

8. Prove that, for $\alpha > 0$ , the function $x ^ { \alpha } \sin { \frac { 1 } { x } }$ is UC on any punctured interval $I - \{ 0 \}$ （ $I$ need not be finite),so that it has an extension $F$ to all of $\mathbb { R }$ .(You may assume $| \sin x | \le 1$ and $\sin x$ is UC on all of $\mathbb { R }$ .）What will $F ( 0 )$ be？It suffices to prove this result for a bounded interval $\lfloor - B , B \rfloor$ ， $B > 0$ ，since this function is very well-behaved for $_ { x }$ not near 0.

9.Prove the following version of amalgamation (only minor adjustments should be necessary):

PROPOSITION Suppose $- \infty < b < \infty$ ， $f$ is uniformly continuous on $( - \infty , b ]$ ， $g$ is uniformly continuous on $[ b , \infty )$ ，and $f \left( b \right) = g ( b )$ . Then there is a unique function h such that

(a) $h$ is uniformly continuous on $( - \infty , \infty )$ (b) $h ( x ) = f \left( x \right)$ for $x \in ( - \infty , b ]$ (c） $h ( x ) = g ( x )$ for $x \in [ b , \infty )$ ·

# Appendix I: Are There Non-Continuous Functions?

Before proceding further, let's deal with an obvious non-continuous function.

REMARK 4.2.27 The function $1 / x$ is not uniformly continuous on any interval containing O, or any interval of the form $( 0 , B ]$ or $\lfloor A , 0 \rfloor$ . The problem, in the case of an interval containing O,is that $1 / x$ is not defined at $x = 0$ .The problem with the other two types of intervals is that $1 / x$ grows too fast near O to be UC.

So let us rephrase the question more carefully so as to avoid this trivial case.

Are there non-continuous functions on closed intervals?

By closed interval we'll mean an interval of the type $\lfloor a , b \rfloor$ ； by half-infinite we'll mean those of type $\lfloor a , \infty )$ or $( \infty , b ]$

· Constant functions: UC on all of $\mathbb { R }$   
· Sine and cosine functions (as we'll see later): UC on all of $\mathbb { R }$   
· $_ { n }$ th root functions ( $n \geq 1$ ):UC on all of $\mathbb { R }$ when $_ { n }$ is odd integer; UC on the half-infinite interval $\lbrack 0 , \infty )$ when $_ { n }$ is an even integer.   
· $\ln x$ (on $\lfloor a , \infty )$ for $a > 0$ ）， $e ^ { x }$ (on $( - \infty , a ]$ for $a > 0$ ）， $1 / x$ (on $\lfloor a , \infty )$ or $( - \infty , - a ]$ for $a > 0$ ):UC on half-infinite intervals.   
· Quotients $\frac { f ( x ) } { g ( x ) }$ where $f$ is bounded and $g$ is bounded away from O; examples: 0 $\frac { 1 } { 1 + x ^ { 2 } }$ and $\frac { x } { 1 + x ^ { 2 } }$ x UC on all of $\mathbb { R }$ . 0 $\frac { x ^ { 2 } - 2 } { x ( x - 1 ) }$ and $\frac { x ^ { 2 } - 2 } { x ^ { 2 } ( x - 1 ) }$ : UC on closed or half-infinite intervals not containing $0$ or $1$ $\frac { x ^ { 3 } - 2 } { x ( x - 1 ) }$ UC on closed intervals not containing O or 1. - $\tan x$ ， $\mathrm { s e c } x$ ， $\operatorname { c o t } x$ ， $\mathrm { c s c } x$ : UC on closed intervals not containing numbers where the functions are undefined.

· Polynomials: UC on closed intervals.

On the basis of these examples, it would seem that a function can fail to be UC for two reasons:

1. The interval is infinite and the function, while defined, grows too quickly when $_ { x }$ gets large (e.g. polynomials).

2.The interval is closed and finite, but the function becomes undefined at some point in the interval (e.g. $1 / x$ or $\ln x$ on $\lfloor 0 , 1 \rfloor$ )

If we accept the fact that functions which grow even moderately (e.g. $x ^ { 2 }$ ） can't be expected to be UC on non-finite intervals, then we might reasonably be content with functions being UC on closed intervals where they are defined. Are there any other possibilities?

Classically there is a group of functions called step functions that are usually put forward as examples of non-continuous functions on (finite) closed intervals. The most basic is called the Heaviside functionl :

EXAMPLE 4.2.28 (THE HEAVISIDE FUNCTION)

![](images/5cc0331fa7e708b6668eda1a8534e4770caf76980c20261d8305dfe9567bdc27.jpg)  
The Heaviside function

For any $\delta > 0$ ， $| x - 0 | < \delta$ can not guarantee that $\begin{array} { r } { | H ( x ) - H ( 0 ) | < \frac { 1 } { 2 } } \end{array}$ ，s0 $H$ cannot be continuous on any interval $\lfloor a , b \rfloor$ ， $b > a$ , containing $0$

Is the Heaviside function an example of a function defined on a closed interval but not continuous on that interval?

The answer,as disappointing as it may be to lovers of pathology, is no. The Heaviside function on the interval $\lfloor - 1 , 1 \rfloor$ , for example, is not defined on all of that interval but only on those numbers $_ x$ for which we can make the decision of whether $x \ < \ 0$ ， $x \ = \ 0$ ，or $x \ > \ 0$ .For example,what is the value of $H ( G )$ where $G$ is the Goldbach number defined on page 67? Since we can't,at this time (or maybe ever?),determine whether $G$ is $0$ or not, $H ( G )$ is undefined,although we do know that $G \in \lfloor - 1 , 1 \rfloor$ ). Here is another example of a piecewise defined function that shares the same problems as the Heaviside function.

EXAMPLE 4.2.29

$$
\operatorname { J u m p } ( x ) = { \left\{ \begin{array} { l l } { 0 } & { { \mathrm { i f ~ } } - 5 \leq x < - 4 } \\ { \cos ( \pi x ) } & { { \mathrm { i f ~ } } - 4 \leq x < - 1 } \\ { x / 3 } & { { \mathrm { i f ~ } } - 1 \leq x < 1 } \\ { 0 } & { { \mathrm { i f ~ } } 1 \leq x < 2 } \\ { { \frac { 1 } { 2 } } ( x - 3 ) ^ { 2 } + { \frac { 1 } { 2 } } } & { { \mathrm { i f ~ } } 2 \leq x < 4 } \\ { 1 . 3 } & { { \mathrm { i f ~ } } 4 \leq x \leq 5 } \end{array} \right. }
$$

![](images/5950c778b4e0f70d7a1bdf526a9dd6920473fd0f5f7e76ef30a6b4faec8ffe58.jpg)  
The function ${ \mathrm { J u m p } } ( x )$

Another famous function² has the following definition on any interval $\lfloor a , b \rfloor$ ， $a > 0$ ：

$$
R ( x ) = { \left\{ \begin{array} { l l } { 0 } & { { \mathrm { i f ~ } } x { \mathrm { ~ i s ~ n o t ~ r a t i o n a l } } } \\ { { \frac { 1 } { q } } } & { { \mathrm { i f ~ } } x { \mathrm { ~ i s ~ r a t i o n a l ~ w i t h ~ } } x = { \frac { p } { q } } { \mathrm { ~ i n ~ l o w e s t ~ t e r m s } } } \end{array} \right. }
$$

This is often given as an example of a function which is continuous at every nonrational number and discontinuous at every rational (see Exercise 13 on page 147 for the definition of continuous at a point).Unfortunately, it is only defined for those numbers where we can make the determination of rational vs. non-rational. For example,what is the value of $R ( \pi + e )$ ？

Now, there are many mathematicians-most in fact—who believe that statements whose truth value we currently do not know (e.g. $G = 0$ ）nevertheless do have a truth value. In other words, they are either true of false—we just don't happen to know which． That is fine.Different mathematicians can play by different rules as long as we're up front about what we are assuming. This book takes a rather minimalist or constructive view: statements are only true (or false) when we can prove (or disprove) them. At least you won't have to unlearn anything you see here.

The upshot of all this is that,from a constructive point of view,there don't seem to be any functions,well-defined on a finite closed interval $[ a , b ]$ ，which fail to be uniformly continuous. All of the functions you'll see in classical mathematics are either

· defined on the rationals, proved UC,and extended to the reals (e.g.addition, multiplication of reals,and our construction of $A ^ { x }$ )，or   
· derived from existing UC functions via algebraic operations (e.g. adding, dividing, composing functions,and applying the Inverse Function Theorem), or   
· derived using integration or differentiation (e.g. $\textstyle F ( x ) = \int _ { 0 } ^ { x } e ^ { - t ^ { 2 } } d t )$ ,or   
· constructed as limits of sequences of functions (e.g. our construction, in a later chapter, of the trig functions).

As we have seen,or will see later, these operations always produce functions which, on a finite closed interval, either are UC or fail to be UC because they are not well-defined on all points of that interval. On the other hand, no one has been able to prove that every well-defined function on a closed finite interval is continuous. We will leave this issue,then,as unsettled but certainly debatable.

# Exercises

1. Prove carefully that the Heaviside function can't be continuous on $\lfloor - 1 , 1 \rfloor$

2.What is the domain of the function $\operatorname { J u m p } ( x )$ defined above?

3. Define $_ x$ to be strongly irrational if $| x - r | > 0$ for every rational number $r$

(a） Suppose we know that $r ^ { n } = s$ is impossible,where $r$ and $s$ are positive rational numbers. Prove that $\sqrt [ n ] { s }$ is strongly irrational. (Hint: Using strong trichotomy for rationals, suppose $r ^ { \pi } > s$ ； show $r > \sqrt [ n ] { s }$ ）Thus, $\sqrt { 2 }$ and $\sqrt { 3 }$ , for example,are strongly irrational.   
(b）Let $S ^ { \prime }$ consist of those numbers $a \in \mathsf { \Gamma } ( 0 , \infty )$ for which we know that $a$ must be either rational or strongly irrational. Prove that $\operatorname* { l i m } _ { x  a } R ( x ) = 0$ for all $a \in S ^ { \prime }$ where $R$ is Riemann's function, defined above.(Hint: For any $N > 0$ , there are only a finite number of rationals $m _ { i } / n _ { i }$ (in lowest terms）such that $0 < | m _ { i } / n _ { i } - a | < 1$ and $0 < n _ { i } \leq N$ . Choose $N > 1 / \epsilon$ and then a $\delta > 0$ ， which forces $n > N$ when $0 < | m / n - a | < \delta$ ）   
(c） Deduce that $R$ ，defined on the set $S ^ { \prime }$ , is continuous at the (strongly) irrational numbers,and discontinuous at the rational ones.

# Appendix Il: Continuity of Double-Sided Inverses

Although we don't have a general proof that the inverse of a UC function is UC, we can prove that inverses of functions obtained via our Inverse Function Theorem (IFT)—or its variations—are UC.

In the case of IFT itself (Theorem 2.2.1)，we know that the inverse satisfies Lipschitz conditions, so is UC.We leave the one-sided case (Theorem 2.2.7） as an exercise and deal with the more difficult two-sided case.

THEOREM 4.2.30 (IFT: TWO-SIDED CASE） Suppose that $A ~ < ~ 0 ~ < ~ B$ and $f$ is defined on the interval $\lfloor A , B \rfloor$ with $F ( A ) = C$ ， $f ( B ) = D$ and $f ( 0 ) = 0$ . Suppose also that for each $0 < E \le B$ we have a number $L _ { E } > 0$ (depending on $E$ ）with

$$
L _ { E } \cdot ( y - x ) \leq f ( y ) - f ( x ) \ f o r \ a l l \ E \leq x \leq y \leq B
$$

and, for each $A \leq F < 0$ ， another number $L _ { F } ^ { \prime }$ (depending on $F$ ）with

$$
L _ { F } ^ { \prime } \cdot ( y - x ) \leq f ( y ) - f ( x ) \ f o r \ a l l \ A \leq x \leq y \leq F .
$$

Finally， suppose that there is a $K > 0$ with

$$
f ( y ) - f ( x ) \leq K \cdot ( y - x ) \ f o r \ a l l \ A \leq x \leq y \leq B
$$

Then we can define a function $g : [ C , D ] \to [ A , B ]$ such that for each $z \in | C , D |$ ， $f ( g ( z ) ) = z$ . Furthermore, $g$ is uniformly continuous on $| C , D |$

The proof of the existence of $g$ has already been sketched in exercise 10 on page 82, so we'll just deal with the continuity.

Proof (Continuity of Inverse). The idea is to separate the continuity issues of $g$ into two parts: the places where $g$ is UC because it's Lipschitz,and the place where $| f ( y ) - f ( x ) |$ is small because both $f ( x )$ and $f ( y )$ are small ( $_ x$ ， $_ y$ near 0).

Given $\epsilon > 0$ , subdivide the interval $\lfloor - \epsilon / 2 , \epsilon / 2 \rfloor \subset \lfloor A , B \rfloor$ using the interior division points

$$
- \epsilon / 3 < - \epsilon / 6 < 0 < \epsilon / 6 < \epsilon / 3 .
$$

By assumption, we have the following Lipschitz conditions:

$$
\begin{array} { l l l } { { f ( y ) - f ( x ) } } & { { \geq } } & { { L _ { - \epsilon / 6 } ^ { \prime } \cdot ( y - x ) \mathrm { ~ o n ~ } [ A , - \epsilon / 6 ] } } \\ { { f ( y ) - f ( x ) } } & { { \geq } } & { { L _ { \epsilon / 6 } \cdot ( y - x ) \mathrm { ~ o n ~ } [ \epsilon / 6 , B ] . } } \end{array}
$$

In particular

$$
f ( - \epsilon / 6 ) - f ( - \epsilon / 3 ) , f ( - \epsilon / 3 ) - f ( - \epsilon / 2 ) \ge \underbrace { L _ { - \epsilon / 6 } ^ { \prime } \cdot \frac { \epsilon } { 6 } } _ { h _ { 1 } } ,
$$

and

$$
f ( \epsilon / 2 ) - f ( \epsilon / 3 ) , f ( \epsilon / 3 ) - f ( \epsilon / 6 ) \ge \underbrace { L _ { \epsilon / 6 } \cdot \frac { \epsilon } { 6 } } _ { h _ { 2 } } .
$$

Let $h = \operatorname* { m i n } ( h _ { 1 } , h _ { 2 } )$ . Also note that the inverse function $g$ is uniformly continuous on the intervals $\left| f ( A ) , f ( - \epsilon / 6 ) \right|$ and $\left| f ( \epsilon / 6 ) , f ( B ) \right|$ , since $g$ is Lipschitz there by the standard Inverse Function Theorem. Let $\delta ^ { \prime } = \delta ^ { \prime } ( \epsilon )$ be a modulus of continuity on these intervals (the min of the moduli for $g$ on each of these intervals)． This information is shown in the following diagram:

![](images/bc6ec577087d344b46ec492c8de54c527f4df606f6b598de8970c887d75d9fcd.jpg)

Let $\delta = \operatorname* { m i n } ( \delta ^ { \prime } , h / 2 )$ and suppose $| z - w | < \delta$ .We will now apply $\epsilon$ -Trichotomy several times,with $\epsilon$ equal to $h / 2$ . First,compare $z$ with $f ( \epsilon / 3 )$ .If $z > f ( \epsilon / 3 )$ ,then $w > f ( \epsilon / 6 )$ since $z$ and $w$ differ by less than $h / 2 < h$ . Thus,they are in the range where $g$ is uniformly continuous with modulus $\delta ^ { \prime } \leq \delta$ ，and so $| g ( z ) - g ( w ) | < \epsilon$ If $z$ and $f ( \epsilon / 3 )$ differ by less than $h / 2$ ，then $z$ and $w$ both lie in $| f ( - \epsilon / 2 ) , f ( \epsilon / 2 ) |$ ， so their images under $g$ lie in $\lfloor - \epsilon / 2 , \epsilon / 2 \rfloor$ ，and we are ok here too. If it turns out that $z < f ( \epsilon / 3 )$ , then compare $z$ with $f ( - \epsilon / 3 )$ If $z < f ( - \epsilon / 3 )$ then $w < f ( - \epsilon / 6 )$ since $z$ and $w$ differ by less than $h / 2$ ； thus we are again in the range of uniform continuity of $g$ .If $z$ is within $h / 2$ of $f ( - \epsilon / 3 )$ or $z > f ( - \epsilon / 3 )$ ,then $z$ and $w$ both lie in $[ f ( - \epsilon / 2 ) , f ( \epsilon / 2 ) ]$ , so we are ok (as above). Thus, in all cases, $| g ( z ) - g ( w ) | \leq \epsilon$ (If we needed strict inequality here,we could have replaced the given $\epsilon$ by a slightly smaller number or made the interval $\lfloor - \epsilon / 2 , \epsilon / 2 \rfloor$ slightly smaller from both ends). $\vert$

Exercise: Prove the continuity of the inverse in both the one- and two-sided cases using Lemma 4.2.24, Corollary 4.2.13,and Proposition 4.2.21.

# Appendix Il: The Goldbach Function

In the appendix to chapter 1 (see page 67) we defined the Goldbach number $G$ as follows:

$$
\begin{array} { r c l } { P ( n ) } & { = } & { \displaystyle ( n \mathrm { i s ~ c o n g r u e n t ~ t o ~ 3 ~ m o d ~ 4 ) } } \\ { g ( n ) } & { = } & { \displaystyle \left\{ \begin{array} { l l } { { 0 } } & { { \mathrm { i f } n = 1 \mathrm { ~ o r ~ 2 { \it ~ n } ~ i s ~ a ~ s u m ~ o f ~ 2 ~ p r i m e s } } } \\ { { 1 } } & { { \mathrm { i f } 2 n \mathrm { i s ~ n o t ~ a ~ s u m ~ o f ~ 2 ~ p r i m e s ~ a n d ~ } P } } \\ { { - 1 } } & { { \mathrm { i f } 2 n \mathrm { i s ~ n o t ~ a ~ s u m ~ o f ~ 2 ~ p r i m e s ~ a n d ~ } P } } \end{array} \right. } \\ { G _ { N } } & { = } & { \displaystyle \sum _ { k = 1 } ^ { N } \frac { g ( k ) } { 2 ^ { k } } } \\ { G } & { = } & { \displaystyle \left\{ \left[ G _ { N } - \frac { 1 } { 2 ^ { N - 1 } } , G _ { N } + \frac { 1 } { 2 ^ { N - 1 } } \right] , N = 1 , 2 , . . . \right\} } \end{array}
$$

We also saw (exercise) that the Goldbach Conjecture (every even number is a sum of 2 primes)is true if and only if $G = 0$

We can use $G$ and an idea of Von Neumann to construct a function $\mathcal { G }$ that calls into question the general applicability of the bisection method in finding roots of functions. $\mathcal { G }$ is defined on the interval $[ 0 , 1 ]$ ； its graph on [0,1/3] is the line joining $( 0 , - 1 )$ with $( 1 / 3 , G )$ ； on [1/3,2/3] it's the horizontal line joining $( 1 / 3 , G )$ with $( 2 / 3 , G )$ .Finally, on $\lfloor 2 / 3 , 1 \rfloor$ its graph is the line joining $( 2 / 3 , G )$ with $( 1 , 1 )$ Formally,

$$
\mathcal { G } ( x ) = \left\{ \begin{array} { c c l } { 3 x ( G + 1 ) - 1 } & { \mathrm { i f } } & { x \in [ 0 , 1 / 3 ] } \\ { G } & { \mathrm { i f } } & { x \in [ 1 / 3 , 2 / 3 ] } \\ { 3 G - 2 - 3 x ( G - 1 ) } & { \mathrm { i f } } & { x \in [ 2 / 3 , 1 ] } \end{array} \right.
$$

The existence of $\mathcal { G }$ is guaranteed by the existence of amalgamated piecewise functions (see Example 4.2.23).Here are three possibilities for the graph of $\mathcal { G }$ ：

![](images/01ad47773629e3b142fa9f2d8930bc342512b822f569896328e32d621a4dd69a.jpg)

It is clear that $\mathcal { G }$ is a function computable to any desired degree of accuracy, much like the square root or trigonometric or exponential functions. A computer program to do this is easily designed. The fact that the Goldbach Conjecture is (as yet） unsolved has no bearing on this computability. Furthermore,it is clear (by amalgamation） that $\mathcal { G }$ is uniformly continuous on the interval [0,1]；note that $\mathcal { G } ( 0 ) = - 1 < 0$ and $\mathcal { G } ( 1 ) = 1 > 0$

Can we specify a zero of $\mathcal { G }$ ? The answer is clearly no. If the Goldbach Conjecture is true, the entire middle third of this interval is a zero.If the Goldbach Conjecture is false, then the zero lies either in the first or last thirds;however,we don't know which unless and until a counter-example is produced. It is instructive to see how badly bisection fails: $\mathcal { G } ( 1 / 2 ) = G$ ，and we don't know whether this is positive or negative or zero,so we have no way to choose the left or right half in order to proceed.

# Exercises

1. Prove that $G = \sum _ { k = 1 } ^ { \infty } { \frac { g ( k ) } { 2 ^ { k } } }$

2. Prove explicitly, using Corollary 4.2.23, that the Goldbach function $\mathcal { G }$ is actually well-defined.

