# 6.1 Definitions and Basic Properties

Although the classical definition, found in most calculus books,of the derivative of $f$ at the point $^ { a }$ ，

$$
f ^ { \prime } ( a ) = \operatorname* { l i m } _ { h \to 0 } { \frac { f ( a + h ) - f ( a ) } { h } } ,
$$

has some interest,the derivative function, $f ^ { \prime } ( x )$ , is of far more significance in the broad field of analysis—for example, in the Fundamental Theorem of Calculus or Taylor series etc. Consequently,we will sidestep the definition of the derivative at a single point,and make our central concept the derivative function.

What would it mean for a function $g ( x )$ to be the derivative of the function $f ( x )$ ？ We would have to have the quotient $\frac { f ( x + h ) - f ( x ) } { h }$ very close to $g \left( x \right)$ when $h$ is small.More precisely,given $\epsilon > 0$ we can find a $\delta > 0$ such that, for any $_ { x }$ ，this quotient will be within $\epsilon$ of $g ( x )$ whenever $0 < | h | < \delta$ . We could take this as our definition of derivative, but since the idea of derivative is so important and we will have to verify that one function is the derivative of another for so many diferent kinds of functions, we will try to express this notion in two other equivalent ways.

The first thing we can do is change notation slightly. Let's write $y = x + h$ s0 that $h = y - x$ . With this substitution

$$
\frac { f ( x + h ) - f ( x ) } { h }
$$

becomes

$$
{ \frac { f ( y ) - f ( x ) } { y - x } } .
$$

DEFINITION 6.1.1 The change in the values of a function $f$ divided by the change in its imputs, $\frac { f ( y ) - f ( x ) } { y - x }$ is called the difference quotient of $f$ .

We can now say that $g \left( x \right)$ is the derivative of $f ( x )$ if the difference quotient can be made as close to $g ( x )$ as we want by making $| y - x |$ sufficiently small-all expressed, of course, in $\delta , \epsilon$ language.

Finally, since the difference quotient must be close to $g ( x )$ , let's look at their difference and call it $r ( x , y )$ (since it depends on both $_ { x }$ and $_ y$ ）：

$$
{ \frac { f ( y ) - f ( x ) } { y - x } } - g ( x ) = r ( x , y ) .
$$

Now multiply through by $y - x$ to get rid of the quotient and rearrange things to obtain

$$
f ( y ) - f ( x ) = g ( x ) \cdot ( y - x ) + r ( x , y ) \cdot ( y - x ) .
$$

With this formulation, $g ( x )$ will be the derivative of $f \left( x \right)$ when $r \left( x , y \right)$ can be made small by making $y - x$ small (but not $0$ ). The following definition helps to express this precisely. Note that we are also introducing the idea of things happening when we have several variables ( $_ x$ and $_ y$ ）belonging to a set $E$

DEFINITION 6.1.2 $r ( x , y ) \to 0$ as $y \longrightarrow x$ on $E \subset \mathbb { R }$ means that for each $\epsilon > 0$ there isa $\delta > 0$ (depending on $\epsilon$ ）such that $| r ( x , y ) | \leq \epsilon$ whenever $_ { x }$ and $_ y$ are in $E$ and $0 < | y - x | < \delta$

Please note that $r \left( x , y \right)$ does not even have to exist when $x = y$

We now show that the three formulations of $g$ being the derivative of $f$ are logically equivalent. We also take into account that a function may not have a derivative everywhere,but only on some set of reals $E$

PROPOSITION 6.1.3 For a function $f$ on the set $E \subset \mathbb { R }$ ， the following statements are equivalent.

1. There is a function $g ( x )$ ， defined for $x \in E$ ， with the property that for each $\epsilon > 0$ we can find a $\delta > 0$ (depending on $\epsilon$ ）such that

$$
\left| { \frac { f ( x + h ) - f ( x ) } { h } } - g ( x ) \right| \leq \epsilon
$$

whenever $x , x + h \in E$ and $0 < | h | < \delta$

2. There is a function $g ( x )$ ， defined for $x \in E$ ， with the property that for each $\epsilon > 0$ we can find a $\delta > 0$ (depending on $\epsilon$ ）such that

$$
\left| { \frac { f ( y ) - f ( x ) } { y - x } } - g ( x ) \right| \leq \epsilon
$$

whenever $x , y \in E$ and $0 < | y - x | < \delta$

3. There are functions $g ( x )$ and $r ( x , y )$ ， defined for $x , y \in E$ and $| y - x | > 0$ ，such that

$$
f ( y ) - f ( x ) = g ( x ) \cdot ( y - x ) + r ( x , y ) \cdot ( y - x )
$$

where $r ( x , y ) \to 0$ as $y  x$

Proof. ( $1 \Longrightarrow 2$ ):Let $h = y - x$ $2 { \Longrightarrow } 3$ ): Let $r ( x , y ) = \frac { f ( y ) - f ( x ) } { y - x } - g ( x )$ $3 \Longrightarrow 1$ ):Let $y = x + h$ , then f（x+h）-f（2）-g（）|=lr(xy).

DEFINITION 6.1.4（UNIFORMLY DIFFERENTIABLE） If the aboUe equivalent conditions hold, we say that $f$ is uniformly differentiable on $E$ ， with derivative $g ( x )$ (Uniformly differentiable will often be abbreviated as UD.)The derivative will usually be denoted $f ^ { \prime } ( x )$

EXAMPLE 6.1.5 Because ${ \frac { ( x + h ) ^ { 2 } - x ^ { 2 } } { h } } - 2 x = { \frac { 2 x h + h ^ { 2 } } { h } } - 2 x = 2 x + h - 2 x = h ,$ we see that $x ^ { 2 }$ is uniformly differentiable on all of $\mathbb { R }$ with derivative $2 x$

EXAMPLE 6.1.6 We can do a similar trick for $n > 2$ ， starting with the factorization

$$
\begin{array} { r c l } { y ^ { n } - x ^ { n } } & { = } & { \displaystyle \left( \sum _ { i = 1 } ^ { n } y ^ { n - i } x ^ { i - 1 } \right) ( y - x ) } \\ & { = } & { \displaystyle \underbrace { \left( \sum _ { i = 1 } ^ { n } \left( y ^ { n - i } x ^ { i - 1 } - x ^ { n - 1 } \right) \right) } _ { = \ : r ( x , y ) } ( y - x ) + n x ^ { n - 1 } ( y - x ) . } \end{array}
$$

On any finite interval, $( y ^ { n - i } x ^ { i - 1 } - x ^ { n - 1 }  0 )$ as $y \longrightarrow x$ (hence $r ( x , y ) \to 0 .$ ），s0 $x ^ { n }$ is uniformly differentiable with derivative $n x ^ { n - 1 }$ on each finite subinterual of $\mathbb { R }$ (byCondition 3).

ExAMPLE 6.1.7 ${ \frac { { \sqrt { y } } - { \sqrt { x } } } { y - x } } - { \frac { 1 } { 2 { \sqrt { x } } } } = { \frac { 1 } { { \sqrt { y } } + { \sqrt { x } } } } - { \frac { 1 } { 2 { \sqrt { x } } } } = { \frac { { \sqrt { x } } - { \sqrt { y } } } { \left( { \sqrt { y } } + { \sqrt { x } } \right) 2 { \sqrt { x } } } }$ Since we have already proved that the square-root function is continuous, the numerator of the last fraction can be made small by making $\lvert y - x \rvert$ small. If we are in some interval $\lfloor c , \infty )$ ，with $c > 0$ ， then the denominator of this fraction is bounded away from zero, so the whole fraction can be made small. Thus, $\sqrt { x }$ is UD on $\lfloor c , \infty )$ ，with derivative $\frac { 1 } { 2 { \sqrt { x } } }$ (by Condition 2).

REMARK 6.1.8 There is another condition, equivalent to the three that constitute the definition of UD: There is a function $F ( x , y )$ such that

$$
f ( y ) - f ( x ) = F ( x , y ) ( y - x )
$$

and $F ( x , y ) \to F ( x , x )$ as $y \longrightarrow x$ （ $\boldsymbol { F } ( \boldsymbol { x } , \boldsymbol { x } )$ will be $f ^ { \prime } ( x )$ ). Details of this approach are presented in [Bridger and Stolzenberg， 1999]. One of its advantages is that it has generalizations to higher dimensional spaces.

DEFINITION 6.1.9 For $\epsilon > 0$ in the definition of $U D$ ，the $\delta > 0$ ， mentioned in the first two equivalent conditions and implied by $r ( x , y ) \to 0$ in the third,is called a modulus of differentiability. It depends on the function $f$ ， the set $E$ ，and $\epsilon$ ， so may be denoted $\delta _ { f } ( \epsilon , E )$

Like a modulus of continuity, a modulus of differentiability $\delta _ { f } ( \epsilon , E )$ is not unique;   
if you have one,any positive smaller number is also a modulus of differentiability.

Furthermore, there may not be any way of telling whether the one you have is best possible (i.e. largest).

Before going further, it is reasonable to ask if a function can have two different derivatives on a set $E$ . Suppose that $g _ { 1 }$ and $g _ { 2 }$ both satisfy the definition of being the derivative of $f$ . Then we have

$$
\begin{array} { l } { \displaystyle | g _ { 1 } ( x ) - g _ { 2 } ( x ) | = \left| g _ { 1 } ( x ) - \frac { f ( y ) - f ( x ) } { y - x } + \frac { f ( y ) - f ( x ) } { y - x } - g _ { 2 } ( x ) \right| } \\ { \displaystyle \leq \left| \frac { f ( y ) - f ( x ) } { y - x } - g _ { 1 } ( x ) \right| + \left| \frac { f ( y ) - f ( x ) } { y - x } - g _ { 2 } ( x ) \right| . } \end{array}
$$

Both of these last quantities can be made arbitrarily smallif $0 < | y - x |$ is sufficiently small.The only problem is whether the set $E$ contains numbers $_ y$ arbitrarily close to $_ x$

PROPOSITION 6.1.10 （UNIQUENESS OF THE DERIVATIVE） SuppOSe $E$ is a subset of $\mathbb { R }$ with the property that for each each $x \in E$ and $\delta > 0$ ， there exists at least one $y \in E$ such that $0 < | y - x | < \delta$ . Then if $f$ is differentiable on $E$ , it has exactly one derivative.

PROPOSITION 6.1.11 If $f$ is uniformly differentiable, then $f ^ { \prime }$ is uniformly continuous.

Proof. Because the difference quotient $D ( x , y ) = { \frac { f ( y ) - f ( x ) } { y - x } }$ is symmetric in $_ { x }$ and $_ y$ ,if $_ { x }$ and $_ y$ are within $\delta ( \epsilon / 2 )$ of each other,both $f ^ { \prime } ( x )$ and $f ^ { \prime } ( y )$ are within $\epsilon / 2$ of $D ( x , y ) = D ( y , x )$ ,and hence within $\epsilon$ of each other. $\mid$

Since uniformly continuous functions on finite closed intervals are bounded, Proposition 6.1.11 gives us the following.

COROLLARY 6.1.12 On finite closed intervals, $f ^ { \prime }$ is bounded.

PROPOSITION 6.1.13 If $f ^ { \prime }$ is bounded, then $f$ is uniformly continuous.

Proof. By making $| y - x | < \delta ( 1 )$ ，we can make the difference quotient within 1 of $f ^ { \prime } ( x )$ (by definition of UD)； so if $\left| f ^ { \prime } ( x ) \right|$ is bounded by $B$ ，then $\left| { \frac { f ( y ) - f ( x ) } { y - x } } \right| <$ $B + 1$ .Thus $| f ( y ) - f ( x ) | \leq ( B + 1 ) | y - x |$ ，which can be made less than $\epsilon$ by making $\vert y - x \vert < \mathrm { m i n } ( \delta , \epsilon / ( B + 1 ) )$ . Note that we could also have observed that $| f ( y ) - f ( x ) | \leq \left( B + 1 \right) | y - x |$ is the kind of Lipschitz condition that we have seen implies continuity (see Example 4.1.7).■

We already know enough to calculate the derivative of the basic exponential and logarithm functions, $e ^ { x }$ and $\log _ { e } ( x )$ . Later we will deal with the more general $a ^ { x }$ and $\log _ { a } ( x )$

PROPOSITION 6.1.14 For all $c \in \mathbb R$ ， $e ^ { x }$ is uniformly differentiable on $( - \infty , c ]$ with derivative $e ^ { x }$ .

Proof. For $h > 0$ , from Corollary 2.4.12 we have

$$
\frac { 1 } { e ^ { h } } \frac { e ^ { h } - 1 } { h } \leq 1 \leq \frac { e ^ { h } - 1 } { h } .
$$

Setting $h = y - x$ for $x < y$ ， we get

$$
e ^ { x } ( y - x ) \leq e ^ { y } - e ^ { x } \leq e ^ { y } ( y - x ) .
$$

In fact,it is easy to check that these last inequalities hold for $y < x$ as well. Let us now define $r ( x , y )$ by the equation

$$
r ( x , y ) ( y - x ) = e ^ { y } - e ^ { x } - e ^ { x } ( y - x ) .
$$

The function $r$ is certainly defined for all $x \ < y$ and $x > y$ .By inequality $( * )$ we have

$$
0 \leq r ( x , y ) ( y - x ) \leq ( e ^ { y } - e ^ { x } ) ( y - x ) .
$$

and

$$
| r ( x , y ) | \leq | e ^ { y } - e ^ { x } | \leq \operatorname* { m a x } ( e ^ { x } , e ^ { y } ) | y - x | \leq e ^ { c } | y - x | \to 0
$$

as $\left| y - x \right| \to 0$ on each interval $( - \infty , c ]$ $|$

PROPOSITION 6.1.15 For all $R ~ > ~ 0$ ， $f ( x ) \ = \ \ln { x }$ is uniformly differentiable on $| R , \infty )$ with derivative $1 / x$

Proof. Use inequality ( $^ *$ ）above with the substitutions $y  \ln y$ (so $e ^ { y }  y$ ）and $x \to \ln x$ (so $e ^ { x } \to x$ ）：

$$
{ \frac { 1 } { y } } ( y - x ) \leq \ln y - \ln x \leq { \frac { 1 } { x } } ( y - x ) .
$$

This gives

$$
{ \frac { 1 } { y } } \leq { \frac { \ln y - \ln x } { y - x } } \leq { \frac { 1 } { x } } .
$$

By reasoning similar to that in the proof of Proposition 6.1.14, we can show that if we define $s ( x , y )$ by the equation

$$
( y - x ) \cdot s ( x , y ) = \ln y - \ln x - { \frac { 1 } { x } } ( y - x ) ,
$$

then (by the previous inequality):

$$
\begin{array} { r c l } { | s ( x , y ) | } & { \leq } & { \displaystyle \frac { | y - x | } { | x y | } } \\ & { \leq } & { \displaystyle \left( \operatorname* { m a x } \frac { 1 } { x } , \frac { 1 } { y } \right) | y - x | } \\ & { \leq } & { \displaystyle \frac { 1 } { R } | y - x | \to 0 \mathrm { ~ a s ~ } | y - x | \to 0 \mathrm { ~ o n ~ } [ R , \infty ) . } \end{array}
$$

# Exercises

1. Prove the following directly and in detail from the definition,and give intervals on which they hold.

(a) $k$ is UD with derivative 0 ( $k$ a number). (b) $k x$ is UD,with derivative $k$ （ $k$ a number). (c） $x ^ { 3 }$ is UD with derivative $3 x ^ { 2 }$ (d) $1 / x$ is UD with derivative $- 1 / x ^ { 2 }$ (e) $\sqrt { x }$ is UD with derivative $\frac { 1 } { 2 { \sqrt { x } } }$ (see Example 6.1.7).

2.Prove that $\sqrt { x }$ is not UD on the half open interval $( 0 , a ]$ for any $a > 0$ . (Hint: For any $\epsilon , \delta > 0$ show that if $y = x - \delta / 2$ you can choose $x \ > \ 0$ so that $\left| \frac { \sqrt { y } - \sqrt { x } } { y - x } - \frac { 1 } { 2 \sqrt { x } } \right| > \epsilon$ while clearly $| y - x | = \delta / 2 < \delta$ .）

3. Write out in detail the proof of Proposition 6.1.3 showing the equivalence of the three conditions for differentiability.

4. Suppose $f$ is UD on $( a , b )$ and $x \in ( a , b )$ Prove that lim f(x +h)- f(x) $f ^ { \prime } ( x )$

5. Suppose $f$ is UD on $( a , b )$ and $f ^ { \prime } ( c ) = 0$ for some $c \in ( a , b )$ .Prove that $f$ cannot satisfy a left Lipschitz condition $L ( y - x ) \leq f ( y ) - f ( x )$ on $( a , b )$ with $L > 0$

6. Suppose we have two functions $s \left( x \right)$ and $c \left( x \right)$ defined and UC on all of $\mathbb { R }$ ，with the following properties.

(a) $s ^ { 2 } + c ^ { 2 } = 1$   
(b） $s ( x + y ) = s ( x ) c ( y ) + c ( x ) s ( y )$   
(c） $c ( 0 ) = 1$ (so $s ( 0 ) = 0$ by property (a))   
(d) $s ( h ) / h \to 1$ as $h  0$

Prove that $s \left( x \right)$ is UD on all of $\mathbb { R }$ with derivative $c ( x )$ . Note that both functions are bounded. You'llneed to use parts (a) and (d) to show that ${ \frac { c ( h ) - 1 } { h } } \to 1$ as $h  0$ . Later,we will define the sine and cosine functions rigorously using power series,and show that they have these properties. We will also be able to prove other familiar properties of the sine and cosine using facts (a) through (d).

7. Prove that $| x |$ is not uniformly differentiable on any interval $[ a , b ]$ such that $a < 0 < b$

8. Suppose $f$ is UD on $\lfloor a , b \rfloor$ . Make a conjecture about when $| f |$ will be UD as well (see the previous exercise). Try to prove your conjecture.

9.Suppose that $D$ is dense in $S$ and $f$ is uniformly continuous and differentiable on $D$ with derivative $g$ .Prove that both $f$ and $g$ can be extended to $S$ ，on which $f ^ { \prime } = g$ as well. (Hint: You can approximate the difference quotients and derivatives with variables in $S$ arbitrarily closely by quotients and derivatives with variables in $D$ .Prove that $\left| { \frac { f ( x + h ) - f ( x ) } { h } } - g ( x ) \right| ~ < ~ \epsilon + \epsilon _ { 1 }$ where $\epsilon _ { 1 } > 0$ is arbitrary.） In special cases,a similar result can be obtained using the Fundamental Theorem of Calculus,as we will see later.

10.Suppose that $f$ is UD on an interval $I$ .We know that $f ^ { \prime }$ is then UC on $I$ For and $\epsilon > 0$ ， prove that any modulus of continuity $\delta ( \epsilon )$ for $f ^ { \prime }$ on $I$ is also a modulus of differentiability for $f$ on $I$ . What about the other way around: can you get a modulus of continuity for $f ^ { \prime }$ from a modulus of differentiability for $f$ ？

# 6.2 The Arithmetic of Differentiability

In proving that sums, products and reciprocals of differentiable functions are differentiable, the following two lemmas will be useful. By stating them here,we can give the proofs of the rules for differentiation in a more natural and streamlined way, without getting bogged down in details that are clearly true but obscure the ideas and logic of the argument.

LEMMA 6.2.1 Suppose $r ( x , y ) \to 0$ and $s \left( x , y \right) \to 0$ as $y - x  0$ on $E$ . Then

1. $r ( x , y ) + s ( x , y )  0$ as $y - x \to 0$ om $E$

2.1f $Q \left( x , y \right)$ is bounded on $E$ ， $Q ( x , y ) r ( x , y )  0$ as $y - x  0$ on $E$

The proof of this lemma is straightforward and is left as an exercise. Note that the condition that $Q ( x , y )$ be bounded is important. To see why, let $r ( x , y ) = y - x$ and $Q ( x , y ) = { \frac { 1 } { y - x } }$ Even though $r ( x , y ) \to 0$ on the interval [1,2], $Q ( x , y ) r ( x , y ) = 1$ on this interval, so it cannot go to $0$

LEMMA 6.2.2 Suppose we have functions $F$ and $G$ such that

Then $G$ is the derivative of $F$ on $E$

Proof. Let $H ( x , y ) = W ( x , y ) - G ( x )$ ，s0 $h ( x , y )  0$ as $y - x  0$ .Then

$$
\begin{array} { r l r } { F ( y ) - F ( x ) } & { = } & { [ H ( x , y ) + G ( x ) ] ( y - x ) + R ( x , y ) ( y - x ) } \\ & { = } & { G ( x ) ( y - x ) + [ H ( x , y ) + R ( x , y ) ] ( y - x ) . } \end{array}
$$

Since $[ H ( x , y ) + R ( x , y ) ]  0$ as $y - x  0$ ， $G ( x )$ is the derivative of $F ( x )$

THEOREM 6.2.3(ARITHMETIC OF DIFFERENTIATION)

Sums: If $f$ and $g$ are uniformly differentiable on $E$ ，then $f + g$ is uniformly differentiable on $E$ with $( f + g ) ^ { \prime } = f ^ { \prime } + g ^ { \prime }$

Products: If $f$ ， $g$ and their derivatives are bounded on $E$ (e.g. $E$ is a finite interval $\lfloor a , b \rfloor _ { \cdot }$ ),then $f g$ is uniformly differentiable on $E$ with $( f g ) ^ { \prime } = f ^ { \prime } g + f g ^ { \prime }$

Reciprocals: If $1 / f$ is defined and bounded on $E$ and $f ^ { \prime }$ is bounded, then $1 / f$ is uniformly differentiable on $E$ with $( { 1 } / { f } ) ^ { \prime } = - f ^ { \prime } / f ^ { 2 }$

Proof. We will use the version of differentiation involving the “error” function $r ( x , y )$ (see Proposition 6.1.3).

Sums $\begin{array} { r l } & { [ f ( y ) + g ( y ) ] - [ f ( x ) + g ( x ) = [ f ( y ) - f ( x ) ] + [ g ( y ) - g ( x ) ] = } \\ & { ( x ) + r f ] ( y - x ) + [ g ^ { \prime } ( x ) + r g ] ( y - x ) = [ f ^ { \prime } ( x ) + g ^ { \prime } ( x ) ] ( y - x ) + [ r _ { x } ( x , y ) + \ell g ^ { \prime } ( x ) ] ( y - y ) , } \end{array}$ $r _ { y } ( x , y ) ] ( y - x )$

By Lemma 6.2.1, $r _ { x } ( x , y ) + r _ { y } ( x , y )  0$ as $y - x  0$

Products: We compute (using the usual trick of adding and subtracting):

$$
\begin{array} { l l l } { { f ( y ) g ( y ) - f ( x ) g ( x ) } } & { { = } } & { { f ( y ) g ( y ) - f ( y ) g ( x ) + f ( y ) g ( x ) - f ( x ) g ( x ) } } \\ { { } } & { { = } } & { { f ( y ) [ g ( y ) - g ( x ) ] + g ( x ) [ f ( y ) - f ( x ) ] } } \\ { { } } & { { = } } & { { f ( y ) [ g ^ { \prime } ( x ) + r _ { g } ( x , y ) ] ( y - x ) } } \\ { { } } & { { } } & { { + g ( x ) [ f ^ { \prime } ( x ) + r _ { f } ( x , y ) ] ( y - x ) } } \\ { { } } & { { = } } & { { \underbrace { [ f ( y ) g ^ { \prime } ( x ) + g ( x ) f ^ { \prime } ( x ) ] } _ { W ( x , y ) } ( y - x ) } } \\ { { } } & { { } } & { { + \underbrace { [ f ( y ) r _ { g } ( x , y ) + g ( x ) r _ { f } ( x , y ) ] } _ { R ( x , y ) } ( y - x ) . } } \end{array}
$$

Now $f ^ { \prime }$ is bounded so $f$ is UC, s0 $f ( y ) - f ( x )  0$ as $y - x  0$ Also, $g ^ { \prime }$ is bounded, so again by Lemma 6.2.1 we see that

$$
\begin{array} { l l l } { \underbrace { \left[ f ( y ) g ^ { \prime } ( x ) + g ( x ) f ^ { \prime } ( x ) \right] } _ { W ( x , y ) } - \underbrace { \left[ f ( x ) g ^ { \prime } ( x ) + g ( x ) f ^ { \prime } ( x ) \right] } _ { G ( x ) } } & { = } & { \left[ f ( y ) - f ( x ) \right] g ^ { \prime } ( x ) } \\ & { \qquad \quad \hfill } \\ { \longrightarrow } & { 0 } \end{array}
$$

as $y - x  0$ . We can now apply Lemma 6.2.2 to conclude that $G ( x ) = F ^ { \prime } ( x )$ ,where $F ( x ) = f ( x ) g ( x )$

Reciprocals:

$$
\begin{array} { r } { \begin{array} { r c l } { \displaystyle \frac { 1 } { f ( y ) } - \frac { 1 } { f ( x ) } } & { = } & { \displaystyle \frac { f ( x ) - f ( y ) } { f ( y ) f ( x ) } } \\ & { = } & { \displaystyle \frac { - f ^ { \prime } ( x ) \left( y - x \right) - r ( x , y ) \left( y - x \right) } { f ( y ) - f ( x ) } } \\ & { = } & { \displaystyle \underbrace { \left[ \frac { - f ^ { \prime } ( x ) } { f ( y ) f ( x ) } \right] } _ { W ( x , y ) } ( y - x ) + \underbrace { \left[ \frac { - r ( x , y ) } { f ( y ) f ( x ) } \right] } _ { R ( x , y ) } ( y - x ) . } \end{array} } \end{array}
$$

Since $1 / f$ and $f ^ { \prime }$ are both bounded and $1 / f$ is continuous, we see that

$$
\left[ \underbrace { \frac { - f ^ { \prime } ( x ) } { f ( y ) f ( x ) } } _ { W ( x , y ) } - \underbrace { \frac { - f ^ { \prime } ( x ) } { f ( x ) f ( x ) } } _ { G ( x ) } \right] = \frac { - f ^ { \prime } ( x ) } { f ( x ) } \left[ \frac { 1 } { f ( y ) } - \frac { 1 } { f ( x ) } \right] \to 0
$$

as $y - x  0$ . We can now apply Lemma 6.2.2 as we did for products.

COROLLARY 6.2.4(QUOTIENT RULE） Suppose that $f$ is differentiable and bounded, and has bounded derivative on $E$ . Suppose g is differentiable, bounded away from 0, and has bounded derivative on $E$ . Then $f / g$ is uniformly differentiable on $E$ with derivative $\frac { g f ^ { \prime } - f g ^ { \prime } } { g ^ { 2 } }$ -

We now turn to the derivatives of compositions and inverse functions.

PROPOSITION 6.2.5（CHAIN RULE） If $f$ and $g$ are uniformly differentiable， with $f ^ { \prime }$ and $g ^ { \prime }$ bounded, then the composition $f ( g ( x ) )$ is uniformly differentiable with derivative $f ^ { \prime } ( g ( x ) ) g ^ { \prime } ( x )$

Proof. Since $f$ is differentiable,

$$
f ( g ( y ) ) - f ( g ( x ) ) = f ^ { \prime } ( g ( x ) ) ( g ( y ) - g ( x ) ) + r _ { f } ( g ( x ) , g ( y ) ) ( g ( y ) - g ( x ) ) .
$$

Since $g$ is differentiable, $g ( y ) - g ( x ) = g ^ { \prime } ( x ) ( y - x ) + r ( x , y ) ( y - x )$ . Substituting this in the previous equation and simplifying gives the following for $f ( g ( y ) ) - f ( g ( x ) )$ ：

$$
\begin{array} { r l } & { f ^ { \prime } ( g ( x ) ) g ^ { \prime } ( x ) ( y - x ) } \\ & { + [ f ^ { \prime } ( g ( x ) ) r _ { g } ( x , y ) + g ^ { \prime } ( x ) r _ { f } ( g ( x ) , g ( y ) ) + r _ { f } ( g ( x ) , g ( y ) ) r _ { g } ( x , y ) ] ( y - x ) } \end{array}
$$

Since $g$ is continuous, $g ( y ) - g ( x ) \to 0$ ，S0 $r _ { f } ( g ( x ) , g ( y ) ) \to 0$ and $r _ { g } ( g ( x ) , g ( y ) )$ $ 0$ . Since $f ^ { \prime }$ and $g ^ { \prime }$ are bounded,each of the three terms in the brackets goes to $0$ as $y - x  0$ ■

COROLLARY 6.2.6 For $a > 0$ , the function $a ^ { x }$ is uniformly differentiable on $( - \infty , c ]$ with derivative $a ^ { x } \ln a$

Proof. $a ^ { x } = \left( e ^ { \ln a } \right) ^ { x }$ and we know how todifferentiate $e ^ { x }$ by Proposition 6.1.14.■

Next we consider, for any $p \in \mathbb R$ ,the power function $f ( x ) = x ^ { p }$ on $( 0 , \infty )$ We recall (Definition 2.4.14) that

$$
x ^ { p } = \left( e ^ { \ln x } \right) ^ { p } = e ^ { p \ln ( x ) } .
$$

COROLLARY 6.2.7(GENERAL POWER RULE） On any (finite) interual $\vert R , S \vert$ with $R > 0$ ， $x ^ { p }$ isuniformly differentiable with derivative $p x ^ { p - 1 }$ .

Proof. Both functions $\exp u = e ^ { u }$ and $\ln v$ are uniformly differentiable on $\lfloor R , S \rfloor$ By the Chain Rule, then, so is $x ^ { p } = \exp ( p \log x )$ ，and

$$
( x ^ { p } ) ^ { \prime } = [ e ^ { p \ln ( x ) } ] ^ { \prime } = ( e ^ { p \ln x } ) \frac { p } { x } = p x ^ { p - 1 } .
$$

REMARK 6.2.8 Later (Corollary 6.3.22), we willsee that some power functions (e.g.   
$\sqrt { x }$ ）are actually differentiable on half-infinite intervals.

PROPOSITION 6.2.9 (INVERSE FUNCTIONs) If h is a uniformly continuous inverse for $f$ and $f$ is differentiable on $E$ with $f ^ { \prime }$ bounded away from O on $E$ ，then h is uniformly differentiable with $h ^ { \prime } ( x ) = 1 / f ^ { \prime } ( h ( x ) )$

Proof.First, we write

$$
\begin{array} { r c l } { h ( y ) - h ( x ) } & { = } & { \displaystyle \frac { h ( y ) - h ( x ) } { y - x } ( y - x ) - \frac { y - x } { f ^ { \prime } ( h ( x ) ) } + \frac { y - x } { f ^ { \prime } ( h ( x ) ) } } \\ & { = } & { \displaystyle \frac { 1 } { f ^ { \prime } ( h ( x ) ) } ( y - x ) + \underbrace { \bigg [ \frac { h ( y ) - h ( x ) } { y - x } - \frac { 1 } { f ^ { \prime } ( h ( x ) ) } \bigg ] } _ { s ( x , y ) } ( y - x ) . } \end{array}
$$

We now calculate $s ( x , y )$ .Writing $y - x = f ( h ( y ) ) - f ( h ( x ) )$ and applying the differentiability of $f$ yields

$$
y - x = [ f ^ { \prime } \left( h \left( x \right) \right) + r ( h ( x ) , h ( y ) ) ] ( h ( y ) - h ( x ) ) .
$$

Substituting this into $s ( x , y )$ gives

$$
\begin{array} { r c l } { s ( x , y ) } & { = } & { \displaystyle \frac { 1 } { f ^ { \prime } ( h ( x ) ) + r ( h ( x ) , h ( y ) ) } - \frac { 1 } { f ^ { \prime } ( h ( x ) ) } } \\ & { = } & { \displaystyle \frac { - r ( h ( x ) , h ( y ) ) } { [ f ^ { \prime } ( h ( x ) ) + r ( h ( x ) , h ( y ) ) ] [ f ^ { \prime } ( h ( x ) ) ] } . } \end{array}
$$

The numerator approaches $0$ as $y - x  0$ (since $h$ is uniformly continuous), but what about the denominator? We know that $f ^ { \prime }$ is bounded away from $0$ ， so we can write $| f ^ { \prime } h \left( x \right) | > c > 0$ But $| r ( h ( x ) , h ( y ) ) |$ can be made arbitrarily small-say less than $c / 2$ —when $| y - x |$ is small. Thus,adding $r ( h ( x ) , h ( y ) )$ to $f ^ { \prime } h \left( x \right)$ can't make it less than $c - c / 2 = c / 2$ ，and so $| f ^ { \prime } ( h ( x ) + r ( h ( x ) , h ( y ) ) |$ is also bounded away from $0$ . Therefore $s ( x , y ) \to 0$ as $y - x  0$ , and we are done.

COROLLARY 6.2.10 For $c > 0$ ， $\log _ { a } ( x )$ is uniformly differentiable on $\lfloor c , \infty )$ with derivative $\frac { 1 } { x \ln ( a ) }$

Finally,we turn to the trigonometric functions. We will define them later as power series and derive their properties independently by using the differential equations they satisfy. So, for now, we will assume their usual properties and simply state how they are differentiated.

SUMMARY 6.2.11 (TRIG FUNCTIONs) (For details, see Section 7.5.)

1. $\sin ( x )$ is uniformly differentiable on all of $\mathbb { R }$ with derivative $\cos ( x )$ 2. $\cos ( x )$ is uniformly differentiable on all of $\mathbb { R }$ with derivative $- \sin ( x )$ . 3. $\tan ( x ) = { \frac { \sin ( x ) } { \cos ( x ) } }$ is uniformly differentiable on any subset of $\mathbb { R }$ bounded away from the zeros of $\cos ( x )$ ; it has derivative $\left( 1 / \cos ( x ) \right) ^ { 2 } = \sec ^ { 2 } ( x )$

REMARK 6.2.12 The number $\pi$ will also be defined when we deal, formally,with the trig functions. We will see that the zeros of $\sin ( x )$ are precisely the numbers $k \pi$ where $k$ is any integer,and the zeros of $\cos ( x )$ are precisely the numbers $\pi / 2 + k \pi$ $( s o \ t a n ( x )$ is UD on any set bounded away from these numbers).

# Exercises

1. Prove Lemma 6.2.1 on page 191.

2. The derivative of $_ x$ is 1.Knowing this fact and just the product rule $( f g ) ^ { \prime } =$ $f g ^ { \prime } + f ^ { \prime } g$ ，which functions can you differentiate? If you also know the rules $( f + g ) ^ { \prime } = f ^ { \prime } + g ^ { \prime }$ and $( k f ) ^ { \prime } = k f ^ { \prime }$ （ $k$ a constant)，which functions can now be differentiated? Finally, which functions can be differentiated if you add the rule $( 1 / f ) ^ { \prime } = - f ^ { \prime } / f ^ { 2 }$ ？

3. Under reasonable hypotheses,what will be the derivative of the product fgh of three functions?

4. For each of the following functions,find its derivative and a region where it is uniformly differentiable.

(a）x1/3(b） $x e ^ { x }$ （c） $x e ^ { - x }$ (d） $x ^ { 2 }$ ， $x ^ { 3 }$

5.In Proposition 6.2.9 we proved that,under suitable hypotheses, the inverse of a differentiable function is itself differentiable,and we gave a formula for its derivative.

(a) Assuming that $f$ has a differentiable inverse $g$ , derive the formula for $g ^ { \prime }$ by using $f ( g ( x ) ) = x$   
(b)Assuming that the sine,cosine and tangent functions have inverses on appropriate intervals, calculate the derivatives of these inverses.

6. On an interval $I = \left\lfloor - a , a \right\rfloor$ $a > 0$ ）， $f$ is called an odd function if $f ( - x ) = - f ( x )$ for all $x \in I$ , and is called even if $f ( - x ) = f ( x )$ for all $x \in I$ . Assume that $f$ is UD on $I$

(a)If $f$ is even, prove that $f ^ { \prime } ( 0 ) = 0$   
(b） More generally, prove that $f \mathrm { \ e v e n } \implies f ^ { \prime }$ odd,and $f { \mathrm { ~ o d d } } \Longrightarrow f ^ { \prime }$ even. (Why is this “more generally"?)

7. Suppose that $f$ is UD on $( a , b )$ ,and $f ( c ) > 0$ for some $c \in ( a , b )$ , and calculate

$$
\operatorname* { l i m } _ { n \to \infty } \left( { \frac { f ( c + 1 / n ) } { f ( c ) } } \right) ^ { 1 / n } .
$$

(Hint: Look at $\ln ( f ( x ) )$ .）

8.Prove that $x ^ { n } e ^ { - x }$ is UD on intervals of the type $\lfloor c , \infty )$ . (The values $c$ may take depend on $_ { n }$ ； discuss this). This requires some real work: look at the proof of the product rule—in particular,what happens to the terms that look like $x ^ { n } r ( x , y )$ . Also,remember that $\operatorname* { l i m } _ { x \to \infty } { \frac { x ^ { n } } { e ^ { x } } } = 0$

9r $\frac { P ( x ) } { Q ( x ) }$ where $P$ and $P$ are polynomials-whose derivative is $\frac { 1 } { x }$ . (Hint:This is tricky. One possibility is to imitate the proof that $\sqrt { 2 }$ can't be rational. Note that any polynomial $P ( x )$ can be written $P ( x ) = x ^ { K } P _ { 1 } ( x )$ where $_ { x }$ doesn't divide $P _ { 1 } ( x )$ ）

# 6.3 Two lmportant Theorems

The two theorems referred to are The Fundamental Theorem of Calculus, (FTC) relating derivatives and integrals, and the Mean Value Inequality (which we call The Law of Bounded Change or LBC),relating bounds for the derivative with bounds for the change of a function. These theorems are the backbone for most of the other theoretical results of elementary calculus. We state and prove them without further digression.

THEOREM 6.3.1（FUNDAMENTAL THEOREM OF CALCULUS,PART I） SuppOse $f$ is uniformly continuous on an interval $I$ and $p \in I$ . Define $\begin{array} { r } { F ( x ) = \int _ { p } ^ { x } f ( t ) } \end{array}$ dt for $x \in I$ . Then $F$ is uniformly differentiable on $I$ with $F ^ { \prime } = f$

Proof. First, a word about notation: the expression $\textstyle \int _ { p } ^ { x } f ( t ) d t$ is simply the integral $\int _ { p _ { . } } ^ { x } f$ . We have put in the dummy variable $t$ to emphasize that we are to treat the value of the integral as a function of $_ { x }$ , the upper limit of integration. We have done this before-see page 150, where we showed that the function defined in this way is UC when $f$ is. On the other hand,the expression $\textstyle \int _ { u } ^ { v } f ( x ) d t$ stands for the integral of the constant $f ( x )$ (at least as far as $t$ is concerned） over the interval $\left\lfloor u , v \right\rfloor$ So $\textstyle \int _ { u } ^ { v } f ( x ) \ d t$ is equal to $f ( x ) ( v - u )$ . Since this can be confusing,we will put in the dummy variable $t$ throughout this argument.

We note that $F \left( y \right) - F ( x ) = \textstyle \int _ { x } ^ { y } f ( t )$ dt (see Corollary 5.2.3). We must show that

$$
{ \vec { \cdot } } ( y ) - F ( x ) - f ( x ) ( y - x ) = r ( x , y ) ( y - x
$$

where $r ( x , y ) \to 0$ as $y - x \to 0 \mathrm { o n } \ I$ . As we have just noted, $\textstyle f ( x ) ( y - x ) = \int _ { x } ^ { y } f ( x ) d t$ ， since $f ( x )$ is a constant in this integral. Thus,we can write

$$
{ \begin{array} { r l l } { F ( y ) - F ( x ) - f ( x ) ( y - x ) } & { = } & { \int _ { x } ^ { y } f ( t ) - f ( x ) d t } \\ & { = } & { \underbrace { \left[ { \frac { \int _ { x } ^ { y } f ( t ) - f ( x ) d t } { y - x } } \right] } _ { r ( x , y ) } ( y - x ) } \end{array} }
$$

We now use the estimate: $\begin{array} { r } { | r ( x , y ) | = \frac { \left| \int _ { x } ^ { y } f ( t ) - f ( x ) \right| } { | y - x | } \le \frac { M \cdot | y - x | } { | y - x | } = M } \end{array}$ ，where $M$ is any bound for $| f ( t ) - f ( x ) |$ ， $t \in \left\lfloor x , y \right\rfloor$ . Since $f$ is uniformly continuous, given $\epsilon > 0$ ， there is a $\delta$ such that $| y - x | < \delta$ makes $| f ( t ) - f ( x ) | < \epsilon$ . Thus we can take $M = \epsilon$ ， an arbitrarily small number. So $r ( x , y ) \to 0$ as $y - x  0$

THEOREM 6.3.2（LAW OF BOUNDED CHANGE） Let $f$ be a uniformly differentiablefunction on $\lfloor a , b \rfloor$ ·

1.If $f ^ { \prime } ( x ) \leq B$ om $[ a , b ]$ , then $f ( y ) - f ( x ) \leq B \cdot ( y - x )$ for all $a \leq x \leq y \leq b$   
2.If $A \leq f ^ { \prime } \left( x \right)$ on $[ a , b ]$ ，then $A \cdot ( y - x ) \leq f ( y ) - f ( x )$ for all $a \leq x \leq y \leq b$

The Law of Bounded Change, sometimes called the Mean Value Inequality, is probably the most useful theoretical tool in elementary calculus； furthermore,its practical or physical meaning is crystal clear: The distance (or better: displacement) of a trip can't exceed the elapsed time of the trip times a maximum bound for the velocity. In fact，the very simple proof we now give is based on the idea of estimating this distance or displacement by a sum of small displacements over short time intervals. Each one of these is roughly the rate of change —a bounded numbertimes the interval. Taking the sum corresponds to integrating the derivative.

Proof. We will prove (1); the other part is proved similarly.

In the definition of $f$ being differentiable, we have the function $r ( x , y ) \to 0$ . Thus, given $\epsilon > 0$ , we can find a $\delta > 0$ such that $r ( x , y ) \leq | r ( x , y ) | < \epsilon$ when $| y - x | \ < \delta$ So we choose $N$ so large that $( b - a ) / N < \delta$ and construct the partition of $\left\lfloor x , y \right\rfloor$ with $\begin{array} { r } { x _ { i } = x + i \left( \frac { y - x } { N } \right) } \end{array}$ . On each interval $\lfloor x _ { i - 1 } , x _ { i } \rfloor$ we have

$$
\begin{array} { r l } & { f ( x _ { i } ) - f ( x _ { i - 1 } ) = f ^ { \prime } ( x _ { i - 1 } ) ( x _ { i } - x _ { i - 1 } ) + r ( x _ { i - 1 } , x _ { i } ) ( x _ { i } - x _ { i - 1 } ) } \\ & { \qquad \leq B \cdot ( x _ { i } - x _ { i - 1 } ) + \epsilon ( y - x ) / N . } \end{array}
$$

To estimate the total change in $f$ , we simply add up all $N$ of these inequalities, noting that， because of additive cancellation (telescoping), $\sum ( x _ { i } - x _ { i - 1 } ) = y - x$ and $\sum f ( x _ { i } ) - f ( x _ { i - 1 } ) = f ( y ) - f ( x )$ So

$$
f ( y ) - f ( x ) \leq B \cdot ( y - x ) + \epsilon ( y - x ) .
$$

Since this last inequality holds for all $\epsilon > 0$ , we conclude from the Wiggle Lemma (Lemma 1.6.8) that $f ( y ) - f ( x ) \leq B ( y - x )$ ：

Note that for $_ y$ different from $_ x$ , LBC says that

$$
A \leq { \frac { f ( y ) - f ( x ) } { y - x } } \leq B ,
$$

which can be phrased bounds for the derivative are bounds for the difference quotient.

We will look at some of the consequences of LBC before returning to the Fundamental Theorem of Calculus. The first of these is that a function with derivative identically O is constant. This deceptively simple statement has many applications in calculus—for example,in differential equations—yet there seems to be no easier proof than via LBC.

COROLLARY 6.3.3 $f$ is constant on any interval on which $f ^ { \prime } = 0$

Proof. This is just LBC with $A$ and $B$ equal to $0$ ■

DEFINITION 6.3.4 $F$ is an antiderivative of $f$ on $E$ means $F$ is uniformly differentiable on $E$ and $F ^ { \prime } = f$ on $E$

COROLLARY 6.3.5 On an interval， any two antiderivatives of the same function differ by a constant.

COROLLARY 6.3.6（FUNDAMENTAL THEOREM OF CALCULUS,PART II） If $F$ is an anti-derivative of $f$ on $[ a , b ]$ , then for $x \in \left[ a , b \right]$ ， $\begin{array} { r } { \int _ { a } ^ { x } f ( t ) d t = F ( x ) - F ( a ) } \end{array}$

Proof. By the Fundamental Theorem of Calculus,Part I, both sides have the same derivative and thus they differ by a constant. Since they agree at $x = a$ , they are equal.■

DEFINITION 6.3.7 Let $f$ be defined on a set $E$

1. $f$ is strictly increasing on $E$ means for all $x < y$ in $E$ ， $f \left( x \right) < f \left( y \right)$

2. $f$ is strictly decreasing on $E$ means for all $x < y$ in $E$ ， $f \left( x \right) > f \left( y \right)$

3. $f$ is weakly increasing (non-decreasing) on $E$ means for all $x \leq y$ in $E$ ， $f \left( x \right) \leq$ $f ( y )$

4 $f$ is weakly decreasing (non-increasing) on $E$ means for all $x \leq y$ in $E$ ， $f \left( x \right) \geq$ $f ( y )$

COROLLARY 6.3.8 Suppose $A$ is a constant and $A \leq f ^ { \prime }$ on an interval $I$

A≥

COROLLARY 6.3.9 Suppose $B$ is a constant and $f ^ { \prime } \leq B$ on an interval $I$

Note that in the strict cases of these corollaries,we are assuming that $f ^ { \prime } ( x )$ is bounded away from O (e.g. $f ^ { \prime } \geq A > 0$ ).We don't really need this to conclude that $f$ is strictly increasing or decreasing, just that $f ^ { \prime }$ is positive (or negative)； however, this result, stated below, requires a bit more work. We leave its proof as an exercise.

COROLLARY 6.3.10 If $f ^ { \prime } > 0$ on an interval $I$ then $f$ is strictly increasing on $I$ ；f $f ^ { \prime } < 0$ on $I$ then $f$ is strictly decreasing on $I$

Proof. See exercises.■

COROLLARY 6.3.11（GENERALIZED LAW OF BOUNDED CHANGE） SuppOSe $f$ and $g$ are uniformly differentiable on an interval $\lfloor a , b \rfloor$ and $A \cdot g ^ { \prime } \leq f ^ { \prime } \leq B \cdot g ^ { \prime }$ for reals $A$ and $B$ . Then for all $a \leq x \leq y \leq b$

$$
A [ g ( y ) - g ( x ) ] \leq f ( y ) - f ( x ) \leq B [ g ( y ) - g ( x ) ] .
$$

Proof.Again,we just show the right-hand inequality; the other is proved similarly. Since $f ^ { \prime } \leq B \cdot g ^ { \prime }$ we have $B g ^ { \prime } - f ^ { \prime } = ( B g - f ) ^ { \prime } \geq 0$ . By the Law of Bounded Change, $B g ( x ) - f ( x ) \leq B g ( y ) - f ( y )$ . Rearranging gives the desired inequality. (We will use this in the next section to prove “T'Hopital's rule.")

COROLLARY 6.3.12 If $f ^ { \prime }$ is bounded on an interval $I$ then $f$ is uniformly continuous on $I$

Proof. Suppose $| f ^ { \prime } | \le K$ on $I$ ，and $x , y \in I$ .By the Law of Bounded Change: $| f ( y ) - f ( x ) | \leq K | y - x |$ so $| y - x | < \epsilon / K$ will make $| f ( y ) - f ( x ) | < \epsilon$ ■

REMARK 6.3.13 Although we've already proved that a bounded derivative implies uniform continuity, this corollary shows the stronger result that we actually have $U C$ via a Lipschitz condition.

COROLLARY 6.3.14 If $f$ is uniformly differentiable on $\lfloor a , b \rfloor$ ， then it is uniformly continuous on $[ a , b ]$ ; furthermore, a modulus of continuity of $f$ is $\delta ( \epsilon ) = \epsilon / K$ ,where $K$ is a bound for $\vert f ^ { \prime } \vert$ on $\lfloor a , b \rfloor$

Proof. Since $f ^ { \prime }$ is uniformly continuous on a finite interval we know that it is bounded.

Since the Law of Bounded Change gives us Lipschitz conditions on a function, it provides a good source of inverse functions.

COROLLARY 6.3.15 Suppose $f$ is uniformly differentiable on the interval $\lfloor a , b \rfloor$ with derivative $f ^ { \prime }$ .Suppose also that $0 < L \le f ^ { \prime }$ on $\lfloor a , b \rfloor$ . Then $f$ has an inverse $h$ defined on $\lfloor f ( a ) , f ( b ) \rfloor ,$ furthermore, $h$ is uniformly continuous and differentiable on this interval.

Proof. Since $f ^ { \prime }$ is uniformly continuous on $[ a , b ]$ , it is bounded above by some $B$ on $\lfloor a , b \rfloor$ . From the Law of Bounded Change, it follows that $f$ has both upper and lower positive Lipschitz bounds. The Inverse Function Theorem now tells us that $h$ has upper and lower positive Lipschitz bounds as well, so $h$ is uniformly continuous. By Proposition 6.2.9,we know that $h$ is differentiable.■

COROLLARY 6.3.16 Assume $m \leq f ^ { \prime } \leq M$ on an interval $I$ . Then for $x , y , u \in I$ ，

$$
\left| { \frac { f ( y ) - f ( x ) } { ( y - x ) } } - f ^ { \prime } ( u ) \right| \leq M - m .
$$

Proof. By the Law of Bounded Change, the difference quotient and the derivative both lie in the interval $\lfloor m , M \rfloor$ , so they can’t differ by more than $M - m$

COROLLARY 6.3.17 Suppose we have an interval $D$ (not necessarily finite) and two functions $f , g : D \to \mathbb { R }$ . Assume $f$ is uniformly differentiable on all sufficiently small subintervals of $D$ with derivative $g$ and that $g$ is uniformly continuous on $D$ . Then $f$ is uniformly differentiable on all of $D$

Proof.“Differentiable for all sufficiently small subintervals” means that there is some $r > 0$ such that $f$ is uniformly differentiable on each subinterval of $D$ of length at most $r$ . Also, for each $\epsilon > 0$ , there is a $0 < \delta < r$ such that,on each $\vert x , y \vert \subset D$ of length at most $\delta$ , the values of $g$ lie between $g ( x ) - \epsilon / 2$ ，and $g ( x ) + \epsilon / 2$ . Therefore, if we write $r ( x , y ) = \frac { f ( y ) - f ( x ) } { y - x } - g ( x )$ , we can apply Corollary 6.3.16 to see that $| r ( x , y ) | < \epsilon ;$ .This makes $g$ the uniform derivative of $f$ ■

Now we turn to some uses of the Fundamental Theorem of Calculus.

COROLLARY 6.3.18 If $f$ is UD on $E$ and $a \in E$ ， then $\begin{array} { r } { f ( x ) = \int _ { a } ^ { x } f ^ { \prime } d x + f ( a ) } \end{array}$

Proof. This is simply a restatement of FTC Part II (Corollary 6.3.6).

The Fundamental Theorem turns out to be a useful tool for extending or piecing together functions. This is because derivatives are always UC,and we know how to extend or amalgamate uniformly continuous functions. We then recover the original function by integrating the derivative. The idea is captured in the proofs of the following two propositions.

PROPOSITION 6.3.19 Suppose $f ^ { \prime } = g$ on $[ a , b )$ . Then $f$ and $g$ have unique extensions to $[ a , b ]$ where they have the same relation.

Proof. Since the derivative $g$ is UC,it has an extension $g$ to $[ a , b ]$ Let $F ( x ) =$ $\int _ { a } ^ { x } { \bar { g } } + f ( a )$ .By FTC, Part I, $F ^ { \prime } = { \bar { g } }$ on $\lfloor a , b \rfloor$ ，S0 $F ^ { \prime } = f ^ { \prime } = g$ on $[ a , b )$ Also by FTC, part $\mathrm { I I }$ ， $F = f$ on any $[ a , p ]$ for $p < b$ .Thus $F = f$ on $[ a , b )$ ■

(Note that a somewhat more general theorem is suggested in exercise 9 on page 191.)

PROPOSITION 6.3.20 Suppose $f$ is UD on $\lfloor a , b \rfloor$ ， $g$ is UD on $\lfloor b , c \rfloor$ ，and $f ( b ) = g ( b )$ ， $f ^ { \prime } ( b ) = g ^ { \prime } ( b )$ . Then there is a UD function $H$ on $\lfloor a , c \rfloor$ such that $H = f$ and $H ^ { \prime } = f ^ { \prime }$ on $\lfloor a , b \rfloor$ and $H = g$ and $H ^ { \prime } = g ^ { \prime }$ on $\lfloor b , c \rfloor$

Proof. The derivatives $f ^ { \prime }$ and $g ^ { \prime }$ are UC, so can be amalgamated (see Proposition 4.2.21) to produce a UC function $J$ on $\lfloor a , c \rfloor$ . Now let $\begin{array} { r } { H ( x ) = \int _ { b } ^ { x } J + f ( b ) } \end{array}$ . (Further details left to the exercises.）■

We conclude this section with another application of LBC.We have already seen that $x ^ { p }$ is differentiable on finite positive intervals $\vert R , S \vert$ ， $R > 0$ .When $0 \leq p \leq 1$ (so, for example, for cube roots) we can do better.

PROPOSITION 6.3.21 For $0 \leq p \leq 1$ ， $f ( x ) = x ^ { p }$ is uniformly continuous on $( 0 , \infty )$

Proof. Note that we have already proved this in the case $p = 1 / n$ where $_ n$ is an integer $\geq 1$ :see Corollary 4.1.23. The proof used the inequality (established by induction on $_ { n }$ ）

$$
( 1 - u ) ^ { n } \leq 1 - u ^ { n }
$$

where $0 \leq u \leq 1$ . By generalizing this inequality to real numbers $n \leq 1$ ， we can get the continuity of $x ^ { p }$ using the same ideas as in the proof of Corollary 4.1.23.The details are left for the exercises.■

COROLLARY 6.3.22 For $1 < p \leq 2$ ， $f ( x ) = x ^ { p }$ is uniformly differentiable on $( 0 , \infty )$

Proof. Exercise; this folows from the previous proposition and a nice application of Corollary 6.3.17,a consequence of LBC.■

REMARK 6.3.23(DIFFERENTIATION VS. INTEGRATION）The Fundamental Theorem shows that differentiation and integration can be described as inverse processes: they essentially undo each other. However， their effects on a function are quite different.

In general, an indefinite integral $\begin{array} { r } { F ( x ) \ = \ \int _ { a } ^ { x } f ( t ) } \end{array}$ dt of a function $f$ tends to “smooth out” the original function $f$ . The reason for this is that integrating is like averaging. In fact, for $f$ UC on $[ a , b ]$ ， if you divide $[ a , b ]$ into $_ n$ equal parts, average the values of $f$ at the $_ n$ division points, and take the limit as $u \longrightarrow \infty$ of these averages, you get ${ \textstyle { \frac { 1 } { b - a } } } \int _ { a } ^ { b } f ( x )$ dx (seeercise5onpage76).(Thisisonsequentlycaledthe average value of $f$ .）In this sense, integrating a function produces a function whose values are averages of the values of $f$ . Possibly erratic behavior of $f$ gets averaged out.

The derivative, on the other hand, is very local. Its value at x depends on the behavior of $f$ arbitrarily close to $_ x$ : the limit of the average rate of change of $f$ near that $_ { x }$ . So instead of being an average, which would smooth things, taking this limit “unaverages the function,” magnifying variations in its change near $_ { x }$ because of the division by $y - x$

Consider the function $f ( x ) = | x |$ ， which is uniformly continuous on all of $\mathbb { R }$ Its problem is that its rate of change to the left of $0$ is $^ { - 1 }$ and to the right of Ois $+ 1$ . On any positive closed interval, $f ^ { \prime } ( x ) = 1$ and on any negative closed interval, $f ^ { \prime } ( x ) = - 1$ ，but these derivatives cannot be amagamated: its derivative cannot be defined on any interval containing O. On the other hand, $f$ has a very nice antiderivative given by the amalgamated function

$$
F ( x ) = \left\{ \begin{array} { l l } { { x ^ { 2 } } } & { { i f x \geq 0 } } \\ { { - x ^ { 2 } } } & { { i f x \leq 0 } } \end{array} \right. .
$$

So the integral $F$ of $f$ , is smooth; $F ^ { \prime } = f$ is uniformly continuous but has a “corner" (not smooth); and $F ^ { \prime \prime } = f ^ { \prime }$ cannot be defined at the origin.

Another erample of this phenomenon is obtained by taking $f ( x ) = x ^ { 1 / 3 }$ ， another UC function. Its integral, $( 3 / 4 ) x ^ { 4 / 3 }$ , is at least as nice, but its derivative $( 1 / 3 ) x ^ { - 2 / 3 }$ goes bad near $0$ .

It is even possible to construct a function $f$ which is UC on an interval $I$ (so has an anti-derivative or integral on $I$ ),but has no derivative on any subinterval of $I$ In fact, $\operatorname* { l i m } _ { h \to 0 } { \frac { f ( x + h ) } { h } }$ doesn't erist for any $x \in I$

Finally， a continuous function may not be differentiable， but the Fundamental Theorem tells us that its integral always is.

# Exercises

1. Prove that if $f$ is uniformly differentiable on the finite interval $\lfloor a , b \rfloor$ ，then $f$ satisfies a Lipschitz condition on $\lfloor a , b \rfloor$ of the form: $| f \left( y \right) - f \left( x \right) | \leq K \cdot | y - x |$

2. Prove the following part of Corollary 6.3.8: If $f ^ { \prime } \geq A > 0$ on $E = \lfloor a , b \rfloor$ ，then $f ( y ) \geq f ( x ) + A ( y - x )$ ，S0 $f$ is strictly increasing on $E$

3.Prove the following stronger result from the text.

PROPOSITION 6.3.10 If $f ^ { \prime } > 0$ on an interval $I$ then $f$ is strictly increasing on $I$ ；if $f ^ { \prime } < 0$ on $I$ ，then $f$ is strictly decreasing on $I$

(Hint: This can be proved either from LBC or from the Fundamental Theorem. In either case the idea is first to observe that $f$ is weakly increasing. Now recall that if $f ^ { \prime } ( c ) > 0$ ,then $f ^ { \prime } ( x )$ is bounded away from O in some neighborhood of $c$ : see Proposition 4.1.21.)

4.Fill in the details of the proof of the following from the text.

PROPOSITION 6.3.20 Suppose $f$ is UD on $\lfloor a , b \rfloor$ ， $g$ is UD on $\lfloor b , c \rfloor$ ，and $f ( b ) =$ $g ( b )$ ， $f ^ { \prime } ( b ) = g ^ { \prime } ( b )$ . Then there is a UD function $H$ on $\lfloor a , c \rfloor$ such that $H = f$ and $H ^ { \prime } = f ^ { \prime }$ on $\lfloor a , b \rfloor$ and $H = g$ and $H ^ { \prime } = g ^ { \prime }$ on $\lfloor b , c \rfloor$

5.Prove the following from the text.

COROLLARY 6.3.22. For $1 < p \le 2$ ， $f ( x ) = x ^ { p }$ is uniformly differentiable on $( 0 , \infty )$ . (This also holds for $p = 1$ ）

6. Prove that if $\alpha > 2$ , then the function $x ^ { \alpha } \sin ( 1 / x )$ has a uniformly differentiable extension to any interval $\lfloor - A , A \rfloor$

7. Describe the function whose derivative is $| x |$

8. Prove the Riemann-Lebesgue Lemma, which says that when $f$ is UC on $[ a , b ]$ ， $\begin{array} { r } { \operatorname* { l i m } _ { \lambda \to \infty } \int _ { a } ^ { b } f ( t ) \sin ( \lambda t ) \ d t = 0 } \end{array}$ . (Hint: FirstuseFTC todeal withthespecial case $f$ a constant； you may assume $( \cos t ) ^ { \prime } = - \sin t$ .Next，partition $\lfloor a , b \rfloor$ into subintervals in which $f ( x _ { k } ) - \epsilon \le f ( x ) \le f ( x _ { k } ) + \epsilon$ and look at a Riemann sum.）There are many generalizations of this result,because it is of importance in the theory of Fourier series—see the last chapter of this book.

9. Here is an outline of the proof of Proposition 6.3.21, the continuity of $x ^ { p }$ on $( 0 , \infty )$ when $0 < p \le 1$

(a) LEMMA For any $q \geq 1$ and $0 \leq u \leq 1$ ， $( 1 - u ) ^ { q } \leq 1 - u ^ { q } .$

To prove this,consider the function $\phi ( u ) = ( 1 - u ) ^ { q } + u ^ { q }$ . The idea is to show that $\phi ( u ) \leq 1$ when $0 \leq u \leq 1$ . Compute $\phi ^ { \prime } ( u )$ and show that for $x \le 1 / 2$ ， $\phi$ is decreasing; thus, if $0 < s \leq u \leq 1 / 2$ then $\phi ( u ) \leq \phi ( s ) \leq$ $\operatorname* { l i m } _ { s \to 0 } \phi ( s )$ (weak inequalities are preserved in the limit).Prove that this last limit is 1 (check the proof of Proposition 4.2.26). This shows that $\phi ( u ) \leq 1$ when $0 \leq u \leq 1 / 2$ . The case $u \geq 1 / 2$ is similar.

(b） Look at the proof of Corollary 4.1.23 to see how this lemma can be used to show

$$
| b ^ { p } - a ^ { p } | \leq | b - a | ^ { p }
$$

when $0 < p \le 1$

(c） Deduce the continuity of $x ^ { p }$ on $( 0 , \infty )$ and use this to prove Corollary 6.3.22: $x ^ { p }$ is UD on $( 0 , \infty )$ when $1 < p \leq 2$

# 6.4 Derivative Tools

Part 1:Derivative Tests

REMARK 6.4.1 In the hypotheses of the Law of Bounded Change, in place of $\lfloor a , b \rfloor$ ， we can have any $E \subset \mathbb { R }$ with the following property: for any $p \leq q$ in $E$ and $\gamma > 0$ ， there are $p \ = \ p _ { 0 } \ \leq \ p _ { 1 } \ \leq \ \cdot \cdot \ \leq \ p _ { n } \ = \ q$ in $E$ such that for each $i = 1 , \ldots , n$ ， $p _ { i } - p _ { i - 1 } < \gamma$ ·

Note that if $E$ satisfies this property, then for all $p \leq q$ in $E$ ， every $x \in \left\lfloor p , q \right\rfloor$ can be approximated arbitrarily closely by points in $E$

PROPOSITION 6.4.2 Suppose $f$ is uniformly differentiable on $E \subset \mathbb { R }$ satisfying the conditions in Remark 6.4.1， and suppose we are given $p \in E$ with $f ^ { \prime } ( p ) > 0$ . Then for some $\delta > 0$ ， $f$ is strictly increasing on $E \cap ( p - \delta , p + \delta )$

Proof. Take $r$ with $0 < r < f ^ { \prime } ( p )$ .Since $f ^ { \prime }$ is uniformly continuous, we know by proposition 4.1.21 that there is a $\delta > 0$ such that on $E \cap ( p - \delta , p + \delta )$ ， $0 < r < f ^ { \prime }$

Therefore by the Law of Bounded Change, $f$ is strictly increasing on $E \cap ( p -$ $\delta , p + \delta )$ ■

# DEFINITION 6.4.3 (MAX AND MIN)

1.p is a local max (maximum) for $f$ means we can find a $\delta > 0$ such that for all $_ { x }$ in $( p - \delta , p + \delta )$ ， $f ( x ) \leq f ( p )$   
2.p is a local min (minimum) for $f$ means we can find a $\delta > 0$ such that for all $_ { x }$ in $( p - \delta , p + \delta )$ ， $f ( x ) \geq f ( p )$   
3. p is a strict local max or min when the weak inequalities $\leq o r \geq$ ） can be replaced by strong ones $( < o r > )$ .

PROPOSITION 6.4.4 Suppose $E = ( a , b )$ ， $a < b$ ， $p \in E$ ，and $f$ is uniformly differentiable on $E$ If $p$ is a local max or a local min for $f$ ，then $f ^ { \prime } ( p ) = 0$

Proof. Since the proof in the cases of local max and local min is similar,we only prove the local max case.

We have to show that $f ^ { \prime } ( p ) \leq 0$ and $f ^ { \prime } ( p ) \geq 0$ .But if $f ^ { \prime } ( p ) > 0$ , then $f$ is strictly increasing on $( p - \delta ^ { \prime } , p + \delta ^ { \prime } )$ for some $\delta ^ { \prime } > 0$ Let $\delta ^ { \prime \prime } = \operatorname* { m i n } ( \delta , \delta ^ { \prime } )$ .Then for any $p < x < p + \delta ^ { \prime \prime }$ ， $f \left( p \right) < f \left( x \right)$ .But by assumption $f ( x ) \leq f ( p )$ . Therefore $f ^ { \prime } ( p ) \ne 0$

By a similar reasoning, we have $f ^ { \prime } ( p ) \not \prec 0$ .Therefore $f ^ { \prime } ( p ) = 0$ ■

DEFINITION 6.4.5 For an integer $n > 0$ ， the function $f$ is $_ { n }$ -times differentiable, with nth derivative $f ^ { ( n ) }$ if $f$ is uniformly differentiable and $f ^ { \prime }$ is $( n - 1 )$ -times differentiable with $( f ^ { \prime } ) ^ { ( n - 1 ) } = f ^ { ( n ) }$

This is an example of a recursive definition: we know what $_ n$ -times differentiable (resp. nth derivative) means when we know what $( n - 1 )$ -times differentiable (resp. $( n - 1 ) \mathrm { s t }$ derivative） means. Since we know what these terms mean for $n = 1$ ，we can interpret them for $n > 1$ . You might also call this an inductive definition.

As a matter of notation,the first few derivatives of $f$ are usually written $f ^ { \prime }$ ， $f ^ { \prime \prime }$ ， and $f ^ { \prime \prime \prime }$ ; after the third derivative we start using $f ^ { ( 4 ) }$ ， $f ^ { ( 5 ) }$ ,etc.

As we saw in Corollary 6.3.16, the error in replacing a function by its best affine approximation $f ^ { \prime } ( x ) ( y - x ) + f ( x )$ depends on the variation of its derivative. This in turn can be estimated using the second derivative,as the following result makes precise.

PROPOSITION 6.4.6 Suppose $f$ is twice differentiable on an interval $E$ . Then for all $_ { x }$ and $p$ in $E$ ，

1.If $f ^ { \prime \prime } \leq c$ on $E$ ， then $\begin{array} { r } { f ( x ) - f ( p ) - f ^ { \prime } ( p ) ( x - p ) \leq \frac { c } { 2 } ( x - p ) ^ { 2 } . } \end{array}$   
2.If $d \leq f ^ { \prime \prime }$ om $E$ ，then $\begin{array} { r } { \frac { d } { 2 } ( x - p ) ^ { 2 } \leq f ( x ) - f ( p ) - f ^ { \prime } ( p ) ( x - p ) . } \end{array}$

Proof. Suppose first that $p \leq x$ . Starting with $f ^ { \prime \prime } ( x ) \leq c$ ,integrate both sides from $x = p$ to $x = t$ ,obtaining $f ^ { \prime } ( t ) - f ^ { \prime } ( p ) \leq c ( t - p )$ . Now integrate both sides (with respect to $t$ ）from $t = p$ to $t = x$ , obtaining $\begin{array} { r } { f ( x ) - f ( p ) - f ^ { \prime } ( p ) ( x - p ) \leq \frac { c } { 2 } ( x - p ) ^ { 2 } } \end{array}$

f $x \leq p$ ,do the exact same thing,but reverse the limits of integration, so that $p$ is always at the top. You obtain $f ^ { \prime } ( p ) ( p - x ) - ( f ( p ) - f ( x ) ) \leq { \textstyle { \frac { c } { 2 } } } ( p - x ) ^ { 2 }$ which is, of course, the exact same inequality.

The second inequality is proved in a similar fashion.

COROLLARY 6.4.7 If $f ^ { \prime \prime } < c < 0$ on an interval $E$ , then for $x > p$ or $x < p$ in $E$ ，

$$
f ( x ) < f ( p ) + f ^ { \prime } ( p ) ( x - p ) .
$$

(This means that the “graph of the function is always under its tangent line.) Similarly for $0 < d < f ^ { \prime \prime }$ ，

$$
f ( x ) > f ( p ) + f ^ { \prime } ( p ) ( x - p ) .
$$

The exercises suggest a direct proof using LBC.

COROLLARY 6.4.8 （SECOND DERIVATIVE TEST） Let $f$ be twice uniformly diffrentiable on an open interval $I$ ， and suppose $f ^ { \prime } ( p ) = 0$ for some $p \in { I }$ . Then

1. $f ^ { \prime \prime } ( p ) > 0 \implies f$ has a strict local max at $p$   
2. $f ^ { \prime \prime } ( p ) < 0 \implies f$ has a strict local min at $p$

COROLLARY 6.4.9 For $0 < \alpha < 1$ and $t \geq 0$ ，

$$
t ^ { \alpha } \leq \alpha t + ( 1 - \alpha ) .
$$

Proof. See the exercises.

We conclude this section with I'Hopital's rulel，a popular method for calculating certain kinds of limits. Since we know that $f \left( x \right)$ is close to $f ^ { \prime } ( p ) ( x - p ) + f ( p )$ when $_ x$ is close to $p$ ,we expect that this can be used in calculating limits.This is indeed the case if we can strip off the $f ( \boldsymbol p )$ and $( x - p )$ . This will happen if $f ( p ) = 0$ and we take a quotient of two functions, so that the $x - p$ factors will cancel to obtain

$$
{ \frac { f ( x ) } { g ( x ) } } \approx { \frac { f ^ { \prime } ( p ) ( x - p ) + f ( p ) } { g ^ { \prime } ( p ) ( x - p ) + g ( p ) } } = { \frac { f ^ { \prime } ( p ) } { g ^ { \prime } ( p ) } }
$$

when $f ( p ) = g ( p ) = 0$ and $x \neq p$ . This is the idea behind lHopital's rule. We begin with the simpler“ $0 / 0 ^ { \dag }$ case.

PROPOSITION 6.4.10 (L'HOPITAL: $0 / 0$ CASE）Suppose $f$ and $g$ are differentiable on $( 0 , A ]$ with $f ( x )  0$ and $g ( x )  0$ as $x \to 0$ on $( 0 , A ]$ . Suppose also that $g ^ { \prime }$ is bounded away from $0$ on each $\lfloor r , A \rfloor$ $r > 0$ ).If $f ^ { \prime } ( x ) / g ^ { \prime } ( x ) \to L$ as $x \to 0$ in $( 0 , A ]$ ， then $f ( x ) / g ( x ) \to L$ as well.

Proof. Since $f ^ { \prime } / g ^ { \prime } \to L$ ， given $\epsilon > 0$ we can find $\delta > 0$ small enough so that $L - \epsilon$ and $L + \epsilon$ are bounds for $\frac { f ^ { \prime } } { g ^ { \prime } }$ on $( 0 , \delta )$ .For any $_ y$ with $0 < y < x < \delta$ we have, by the Generalized Law of Bounded Change (Proposition 6.3.11) on $\left\lfloor y , x \right\rfloor$ ，

$$
L - \epsilon \leq { \frac { f ( x ) - f ( y ) } { g ( x ) - g ( y ) } } \leq L + \epsilon .
$$

But $f ( \boldsymbol { y } ) \to 0$ and $g ( y ) \to 0$ as $y  0$ ， and weak inequalities are preserved in the limit (Proposition 3.2.9). So, for $0 < x \le \delta$ ，

$$
L - \epsilon \leq \frac { f ( x ) } { g ( x ) } \leq L + \epsilon .
$$

COROLLARY 6.4.11 We can replace $( 0 , A ]$ in Proposition 6.4.10 by $( p , B ]$ ， $\textstyle | C , q )$ ， $\lfloor D , \infty )$ ，or $( - \infty , E ]$ ，where $D ~ > ~ 0$ and $E ~ < ~ 0$ ， and get the same result having $f ( x )  0$ and $g ( x )  0$ ，as $x  p$ ， $x  q$ ， $x \longrightarrow \infty$ or $x \to - \infty$ in the respective intervals.

We will give the proof for the cases $\textstyle | C , q )$ and $\lfloor D , \infty )$ .The other cases will be similar. The idea is to reduce to Proposition 6.4.10 by changing the functions slightly.

Proof. On $\textstyle { \left\lfloor { \boldsymbol { C } } , { \boldsymbol { q } } \right\rfloor }$ ,define $f _ { 1 } ( u ) = f ( - u + q )$ and $g _ { 1 } ( u ) = g ( - u + q )$ for $u \in ( 0 , q - C ]$ Then

$$
\frac { f _ { 1 } ^ { \prime } ( u ) } { g _ { 1 } ^ { \prime } ( u ) } = \frac { - f ^ { \prime } ( - u + q ) } { - g ^ { \prime } ( - u + q ) } = \frac { f ^ { \prime } ( - u + q ) } { g ^ { \prime } ( - u + q ) } .
$$

Letting $u = - x + q$ ，we get $u \to 0$ in $( 0 , q - C ]$ as $x \longrightarrow q$ in $\textstyle | C , q )$ ， so Proposition6.4.10 yields the result.

On $\lfloor D , \infty )$ , define $f _ { 1 } ( u ) = f ( 1 / u )$ and $g _ { 1 } ( u ) = g ( 1 / u )$ for $u \in ( 0 , 1 / D ]$ . Then

$$
\frac { f _ { 1 } ^ { \prime } ( u ) } { g _ { 1 } ^ { \prime } ( u ) } = \frac { f ^ { \prime } ( 1 / u ) \left( \frac { - 1 } { u ^ { 2 } } \right) } { g ^ { \prime } ( 1 / u ) \left( \frac { - 1 } { u ^ { 2 } } \right) } = \frac { f ^ { \prime } ( 1 / u ) } { g ^ { \prime } ( 1 / u ) } .
$$

Letting $u = 1 / x$ ，we get $u \to 0$ in $( 0 , 1 / D |$ as $x \to \infty$ in $\lfloor D , \infty )$ and we can apply Proposition 6.4.10.

Now we turn to the more difficult $\infty / \infty$ case.The problem here is that in the fraction $\frac { f ( x ) - f ( y ) } { g ( x ) - g ( y ) }$ we don't have $f ( y ) , g ( y ) \to 0$ , so we have to use a few algebraic tricks.

PROPOSITION 6.4.12 (L'HOPITAL: $\infty / \infty$ CASE） Suppose $f$ and $g$ are differentiable on $\lfloor A , \infty )$ with $f ( x )  \infty$ and $g ( x )  \infty$ as $x \to \infty$ ， $g > 0$ ，and $g ^ { \prime } ( x )$ bounded away from O for x sufficiently large. If $f ^ { \prime } ( x ) / g ^ { \prime } ( x )  L$ as $x \to \infty$ ，then $f ( x ) / g ( x ) \to L$ as $x \longrightarrow \infty$ as well.

Proof. Let $\epsilon > 0$ be given, and choose any $_ { \alpha }$ with $0 < \alpha < \epsilon$ . Since $f ^ { \prime } ( x ) / g ^ { \prime } ( x ) \to L$ ， there is an $N ( \epsilon )$ such that

$$
L - \alpha \leq { \frac { f ^ { \prime } ( x ) } { g ^ { \prime } ( x ) } } \leq L + \alpha
$$

for $x \geq N$ . By the Generalized Law of Bounded Change (Proposition 6.3.11） we have, for $x > y > N$ ，

$$
f ( y ) + \left( L - \alpha \right) \left[ g ( x ) - g ( y ) \right] \leq f ( x ) \leq f ( y ) + \left( L + \alpha \right) \left[ g ( x ) - g ( y ) \right] .
$$

As usual, we deal with the right-hand inequality first; the other one is similar. Since $g ( y )  \infty$ we can, if necessary, make $_ y$ (hence $_ { x }$ ）larger，so that both $g \left( x \right)$ and $g ( y )$ are positive. This being the case,divide through the above inequality by $g \left( x \right)$ to obtain

$$
{ \frac { f ( y ) } { g ( x ) } } + ( L - \alpha ) \left[ 1 - { \frac { g ( y ) } { g ( x ) } } \right] \leq { \frac { f ( x ) } { g ( x ) } } \leq { \frac { f ( y ) } { g ( x ) } } + ( L + \alpha ) \left[ 1 - { \frac { g ( y ) } { g ( x ) } } \right] .
$$

Now we note the we can make $_ { x }$ as big as we like while holding $_ y$ fixed,so $f ( y )$ and $g ( y )$ can be held fixed while $g ( x )$ is made as big as we want. Thus, for $_ { x }$ sufficiently large we can make $| f ( \boldsymbol { y } ) / g ( \boldsymbol { x } ) |$ arbitrarily small and $\left\lfloor 1 - g ( y ) / g ( x ) \right\rfloor$ between $0$ and $^ { 1 }$ but arbitrarily close to $^ { 1 }$ . Since $( L + \alpha ) < ( L + \epsilon )$ ，we can ensure that $( L + \alpha ) \left. 1 - g ( y ) / g ( x ) \right. < ( L + \epsilon )$ as well. Making $g ( x )$ even bigger if necessary, we can have $f ( y ) / g ( x ) + \left( L + \alpha \right) \left[ 1 - g ( y ) / g ( x ) \right] \leq ( L + \epsilon )$ .Working in a similar way with the left-hand side and using $( L - \epsilon ) < ( L - \alpha )$ , we can make $\left( L - \epsilon \right) \leq$ $f ( y ) / g ( x ) + ( L - \alpha ) \lfloor 1 - g ( y ) / g ( x ) \rfloor$ . Putting the two sides together gives us

$$
L - \epsilon \leq \frac { f ( x ) } { g ( x ) } \leq L + \epsilon .
$$

Since $\epsilon$ was arbitrary, we are done.

Note that nearly the same proof works when $x \longrightarrow p$ instead of $x \longrightarrow \infty$

# Exercises

1. Suppose that $f$ is twice differentiable on $( a , b )$ and $f ^ { \prime \prime }$ is bounded ( $| f ^ { \prime \prime } | < M$ for some constant $M$ ).Prove that $f$ is uniformly continuous on $( a , b )$ . Generalize this.

2. Suppose that $f$ is twice differentiable on $( a , \infty )$ ，and $| f ^ { \prime \prime } ( x ) | < M$ on $( a , \infty )$ If $\operatorname* { l i m } _ { x \to \infty } f ( x ) = 0$ ， prove that $\operatorname* { l i m } _ { x \to \infty } f ^ { \prime } ( x ) = 0$ as well.

3. Suppose that $f$ is differentiable on $( a , b )$ ，and for some $c \in ( a , b )$ there is a $\delta > 0$ such that

· $f ^ { \prime } ( x ) > 0$ in $( c - \delta , c )$ and · $f ^ { \prime } ( x ) < 0$ in $( c , c + \delta )$

Prove that $f$ has a relative maximum at $c$ . This result is sometimes called the “first derivative test.”

4.The converse of the previous exercise need not be true. Find a function $f ( x )$ which is uniformly differentiable on,say, $\lfloor - 1 , 1 \rfloor$ , has a maximum at $0$ ，but there is no $\delta > 0$ such that

· $f ^ { \prime } ( x ) > 0$ in $( c - \delta , c )$ and · $f ^ { \prime } ( x ) < 0$ in $( c , c + \delta )$

5.Suppose that $f$ in twice differentiable on $[ a , b ]$ and $f ^ { \prime \prime } ( t ) \leq 0$ (the graph is “concave down"） for $t \in \left\lfloor a , b \right\rfloor$

(a) Prove that the graph of $f$ lies below its tangent lines. This means that for any $x , p \in \left\lfloor a , b \right\rfloor$

$$
f ( x ) \leq \underbrace { f ( p ) + f ^ { \prime } ( p ) \cdot ( x - p ) } _ { \mathrm { t a n g e n t ~ l i n e ~ a t ~ } ( p , f ( p ) ) } .
$$

(Draw a picture to see what this is saying). (Hint: $f ^ { \prime \prime } \leq 0$ says that $f ^ { \prime } ( t )$ is a decreasing function of $t$ ; separate into the two cases $x \leq u$ and $u \leq x$ and use LBC in each case. Note that if $f ^ { \prime \prime } \leq c < 0$ we can replace $\leq$ with $<$ ）

(b) Prove that the graph of $f$ lies above its secant line. This means that $g ( x ) \leq 0$ ，where

$$
g ( x ) = f ( x ) - \left[ \underbrace { f ( a ) + { \frac { f ( b ) - f ( a ) } { b - a } } \cdot ( x - a ) } _ { \mathrm { l i n e ~ j o i n i n g ~ } ( a , f ( a ) ) { \mathrm { ~ a n d ~ } } ( b , f ( b ) ) } \right] .
$$

(Hint:First prove that $g ^ { \prime } ( a ) \ge 0 \ge g ^ { \prime } ( b )$ by integrating the inequality $f ^ { \prime } ( a ) \geq f ^ { \prime } ( t ) \geq f ^ { \prime } ( b )$ .Next,deal with the two cases $g ^ { \prime } ( x ) \geq 0$ and $g ^ { \prime } ( x ) \leq 0$ separately, in each case using FTC to integrate inequalities involving $g ^ { \prime } ( t )$ and $g ^ { \prime } ( x )$ either from $^ { a }$ to $_ { x }$ or from $_ { x }$ to $b$ . Once again, if $f ^ { \prime \prime } \leq c < 0$ , then the weak inequality becomes a strong one: $g ( x ) > 0$ ）

Analogous results hold when we assume $f ^ { \prime \prime } \geq 0$ (the graph is “concave up").

6.(PROPOSITION 6.3.11) Use Proposition 6.4.6 to show that if $0 \textless \alpha \textless 1$ and $t \geq 0$ then: $t ^ { \alpha } \leq \alpha t + ( 1 - \alpha )$

7. The following result, is of great importance in studying Lebesgue integration and the $\mathcal { L } ^ { p }$ spaces.

HoLDER's INEQUALITY Suppose that $f$ and $g$ are uniformly continuous on $[ a , b ]$ and that $p > 1$ $q > 1$ satisfy $\frac { 1 } { p } + \frac { 1 } { q } = 1$ Then $\begin{array} { r } { \left| \int _ { a } ^ { b } f ( x ) g ( x ) d x \right| \le } \end{array}$ $\begin{array} { r } { \Big [ \int _ { a } ^ { b } | f ( x ) | ^ { p } d x \Big ] ^ { 1 / p } \Big [ \int _ { a } ^ { b } | g ( x ) | ^ { q } d x \Big ] ^ { 1 / q } . } \end{array}$

We outline the proof.

(a) We can assume $f$ and $g$ are non-negative (why?).

(b) If $\begin{array} { r } { I _ { f } = \int _ { a } ^ { b } f ^ { \alpha } ( x ) d x = 0 } \end{array}$ then $f ^ { \alpha } = 0$ on $\lfloor a , b \rfloor$ ,s0 $f = 0$ on $\lfloor a , b \rfloor$ ； similarly for $\begin{array} { r } { I _ { g } = \int _ { a } ^ { b } g ^ { \beta } ( x ) d x } \end{array}$ . Thus we can assume that both integrals $I _ { f }$ and $I _ { g }$ are positive.

(c) Let $F ( x ) = f ^ { \alpha } ( x ) / I _ { f }$ and $G ( x ) = g ^ { \beta } ( x ) / I _ { g }$ . Then the integrals of $F$ and $G$ over $\lfloor a , b \rfloor$ are both 1.

(d) Let $\alpha = 1 / p$ and $\beta = 1 / q = 1 - \alpha$ .By exercise $_ 6$ ， $t ^ { a } \leq \alpha t + \beta$ . If we let $t = T / U$ , then we have $T ^ { \alpha } U ^ { \beta } \leq \alpha T + \beta U$

(e） Now let $T = F ( x )$ and $U = G ( { \boldsymbol { x } } )$ and integrate the last inequality to get

$$
\int _ { a } ^ { b } F ^ { \alpha } ( x ) G ^ { \beta } ( x ) d x \leq \alpha + \beta = 1 .
$$

(When $p = q = 1 / 2$ , Holder's inequality is sometimes called the CauchySchwartz inequality-see Theorem 8.2.19 on page 282 for another version.)

8.The following continuous version of the triangle inequality follows from the previous exercise.

MINKOWSKI's INEQUALITY. Suppose that $f$ and $g$ are uniformly continuous on $\lfloor a , b \rfloor$ and $p \geq 1$ . Then

$$
\left[ \int _ { a } ^ { b } | f + g | ^ { p } ~ d x \right] ^ { 1 / p } \leq \left[ \int _ { a } ^ { b } | f | ^ { p } ~ d x \right] ^ { 1 / p } + \left[ \int _ { a } ^ { b } | g | ^ { p } ~ d x \right] ^ { 1 / p } .
$$

We outline the proof.

(a) $| f + g | \leq | f | + | g |$ ，so that the inequality clearly holds for $p = 1$ ；we will therefore assume that $p > 1$ . We may also assume that $f$ and $g$ are non-negative (why?).   
(b）Write $( f + g ) ^ { p } = f ( f + g ) ^ { p - 1 } + g ( f + g ) ^ { p - 1 }$ . Now apply Holder's Inequality (see exercise 7) to $_ { p }$ and $\begin{array} { r } { q = { \frac { 1 } { 1 - { \frac { 1 } { p } } } } = { \frac { p } { p - 1 } } } \end{array}$   
(c）We now get the result by dividing through by $\textstyle \left[ \int _ { a } ^ { b } ( f + g ) ^ { p } d x \right] ^ { \frac { p - 1 } { p } }$

9. Suppose that $f$ and $g$ are three-times differentiable on $( a , b )$ with $f \left( c \right) =$ $g ( c ) = 0$ ，but $g ^ { \prime } ( c ) > 0$ （ $c \in ( a , b )$ ). Calculate $\left( { \frac { f } { g } } \right) ^ { \prime } ( c )$ . Now, suppose that $f ^ { \prime } ( c ) = g ^ { \prime } ( c ) = 0$ as wl but $g ^ { \prime \prime } ( c ) > 0$ ouce gi cacatele $\left( { \frac { f } { g } } \right) ^ { \prime } ( c )$

10.In each of the two cases $0 < a < 1$ and $1 < a$ , evaluate

$$
\operatorname* { l i m } _ { x \to \infty } \left( \frac { a ^ { x } - 1 } { x ( a - 1 ) } \right) ^ { 1 / x } .
$$

11. Suppose $f$ is differentiable on $( 0 , \infty )$ and let $a > 0$ .Use the $\infty / \infty$ case of PHopital's rule (Proposition 6.4.12) to prove

$$
\begin{array} { l } { { \mathrm { I f } \displaystyle \operatorname* { l i m } _ { x \to \infty } \left( a f ( x ) + f ^ { \prime } ( x ) \right) = L \mathrm { , t h e n } \displaystyle \operatorname* { l i m } _ { x \to \infty } \left( f ( x ) \right) = L / a . } } \\ { { \displaystyle \operatorname* { l i m } _ { x \to \infty } \left( a f ( x ) + 2 \sqrt { x } f ^ { \prime } ( x ) \right) = L \mathrm { , t h e n } \displaystyle \operatorname* { l i m } _ { x \to \infty } \left( f ( x ) \right) = L / a . } } \end{array}
$$

(Hint: For thefist part, write $f ( x ) = { \frac { e ^ { a x } f ( x ) } { e ^ { a x } } }$ . A similar trick isused for the second part.)

$$
1 2 . { \mathrm { ~ S h o w ~ t h a t ~ } } \operatorname* { l i m } _ { x \to \infty } x \left( 1 - { \frac { ( x - 1 ) ^ { q } } { x ^ { q } } } \right) = q .
$$

# 6.5 Integral Tools

We begin by proving two fundamental techniques of integration from calculus. The first is the change of variables formula for integrals,popularly known as integration by substitution or more simply as“ $\boldsymbol { u }$ -substitution."

PROPOSITION 6.5.1（CHANGE OF VARIABLES IN INTEGRATION） SupPOSe we havefunctions

$$
[ a , b ] \stackrel { u } { \longrightarrow } I \stackrel { f } { \longrightarrow } \mathbb { R }
$$

with $f$ UC on the finite interval $I$ and u UC and UD on $\lfloor a , b \rfloor$ . Then

$$
\int _ { a } ^ { b } f ( u ( t ) ) u ^ { \prime } ( t ) d t = \int _ { u ( a ) } ^ { u ( b ) } f ( u ) d u .
$$

Proof. Let $\begin{array} { r } { \phi ( x ) = \int _ { u ( a ) } ^ { x } f } \end{array}$ ， s0 $\phi ^ { \prime } = f$ on $I$ . By the chain rule, $( \phi \circ u ) ^ { \prime } = \phi ^ { \prime } ( u ) \cdot u ^ { \prime } =$ $f ( u ) \cdot u ^ { \prime }$ on $[ a , b ]$ , so we can write:

$$
\begin{array} { l l l } { \displaystyle \int _ { a } ^ { b } f ( u ( t ) ) u ^ { \prime } ( t ) d t = \int _ { a } ^ { b } ( \phi \circ u ) ^ { \prime } = \phi ( u ( b ) ) - \phi ( u ( a ) ) } \\ { \displaystyle \qquad = \int _ { u ( a ) } ^ { u ( b ) } \phi ^ { \prime } } \\ { \displaystyle \qquad = \int _ { u ( a ) } ^ { u ( b ) } f ( u ) d u . } \end{array}
$$

EXAMPLE 6.5.2 Here's a standard example from calculus ( $u = \ln x$ )：

$$
\int _ { 2 } ^ { 3 } { \frac { ( \ln x ) ^ { 3 } } { x } } d x = \int _ { \ln 2 } ^ { \ln 3 } u ^ { 3 } d u = { \frac { ( \ln 3 ) ^ { 3 } - ( \ln 2 ) ^ { 3 } } { 3 } } .
$$

Just as we obtained the integration by substitution formula by integrating the chain rule,we get the integration by parts formula by integrating the product rule.

PROPOSITION 6.5.3 （INTEGRATION BY PARTS） For $f$ and $g$ differentiable on $\lfloor a , b \rfloor$ ，we have

$$
\int _ { a } ^ { b } f g ^ { \prime } = f ( b ) g ( b ) - f ( a ) g ( a ) - \int _ { a } ^ { b } f ^ { \prime } g .
$$

Proof. By the Product Rule, $f g ^ { \prime } = ( f g ) ^ { \prime } - f ^ { \prime } g$ ,s0

$$
\begin{array} { r c l } { { \displaystyle \int _ { a } ^ { b } f g ^ { \prime } } } & { { = } } & { { \displaystyle \int _ { a } ^ { b } ( f g ) ^ { \prime } - \int _ { a } ^ { b } f ^ { \prime } g } } \\ { { } } & { { = } } & { { f ( b ) g ( b ) - f ( a ) g ( a ) - \displaystyle \int _ { a } ^ { b } f ^ { \prime } g . } } \end{array}
$$

COROLLARY 6.5.4 For any $f$ and $g$ differentiable on $[ a , b ]$ with $f ( a ) = f ( b ) = 0$ ， $\textstyle \int _ { a } ^ { b } f g ^ { \prime } = - \int _ { a } ^ { b } f ^ { \prime } g$

# Functions Defined As Integrals

EXAMPLE 6.5.5 $\textstyle \ln ( x ) = \int _ { 1 } ^ { x } { \frac { d t } { t } }$ Although we took the approach of defining the exponential function first, and then the logarithm as its inverse, it is possible to start with the definition of the natural log as an integral, and then define the exponential function from it. The advantage of this approach is that you easily get Lipschitz conditions and differentiability from the the Law of Bounded Change and the Fundamental Theorem. One also gets the properties of log and exponential functions by a clever interplay of the properties of this particular integral and the fact that any two antiderivatives of the same function differ by a constant. These ideas can be found in many calculus and analysis books; we outline them as a project in exercise 10 at the end of this section.

EXAMPLE 6.5.6 $A ( x ) = \underbrace { \frac { x \sqrt { 1 - x ^ { 2 } } } { 2 } } _ { A _ { 1 } } + \underbrace { \int _ { x } ^ { 1 } \sqrt { 1 - t ^ { 2 } } d t } _ { A _ { 2 } }$ for $- 1 \leq x \leq 1$ . Intuitively, this function represents the area within a sector measured counterclockwise from the positive x-axis, inside the unit circle.

![](images/14caf8be7d7a9339a1fe7ab0b809de55eaee74720d7a94a157b9a868197c2466.jpg)

One then defines $\boldsymbol { \pi }$ by $\pi = 2 A ( - 1 )$ . The function $A$ is strictly increasing,so it has an inverse. Since the area of a sector is half its angle $\theta$ and the $_ x$ -coordinate on the unit circle is the cosine of the angle, we define $\underline { { \cos ( \theta ) } } = A ^ { - 1 } ( \theta / 2 )$ for any real $0 \leq$ $\theta \leq \pi$ (s0 $\cos ( \pi ) = - 1$ )，and $\sin ( \theta ) = { \sqrt { 1 - ( \cos \theta ) ^ { 2 } } }$ . All the remaining properties of the trigonometric functions can be derived from this. $A$ complete account can be found in [Spivak 1994].

ExAMPLE 6.5.7 $\textstyle \operatorname {\ u r c t a n } ( x ) ~ = ~ \int _ { 0 } ^ { x } { \frac { d t } { 1 + t ^ { 2 } } }$ for $- \infty < x < \infty$ $\begin{array} { r } { \arcsin ( x ) \ = \ \int _ { 0 } ^ { x } { \frac { d t } { \sqrt { 1 - t ^ { 2 } } } } } \end{array}$ for $- 1 < x < 1$ ．Either of these functions can also be used to define all of the trigonometric functions in a way similar to the previous example. See the exercises for further exploration.

EXAMPLE 6.5.8 $\begin{array} { r } { P ( x ) = \frac { 1 } { \sqrt { 2 \pi } } \int _ { - \infty } ^ { x } e ^ { - t ^ { 2 } / 2 } d t } \end{array}$ for $- \infty < x < \infty$ . This function represents a cumulative probability for a normal (Gaussian) distribution. $P ( x )$ and its inverse have been studied extensively because of their importance in statistics.

For functions defined in this way,where the variable is in the actual limit of the integral, the Fundamental Theorem applies,and we see that they are continuous and differentiable. So we turn our attention to a different kind of integral,where the limits are constant,but the functions being integrated also depend on a second variable or parameter.We have seen two examples of these already:the Gamma function $\textstyle \Gamma ( x ) = \int _ { 0 } ^ { \infty } t ^ { x - 1 } e ^ { - t } d t$ (Definition 5.3.25)and the Laplace transform $H ( x ) =$ $\int _ { 0 } ^ { \infty } e ^ { - x t } h ( t )$ dt (Definition 5.3.26)—see the exercises on page 183. Note that in each case the variable $t$ , being the variable of integration，gets “integrated out,” leaving just a function of the remaining variable $_ { x }$ ．The general case for these kinds of functions looks like the following

$$
F ( x ) = \int _ { a } ^ { b } f ( x , t ) d t .
$$

In the examples of Gamma function and Laplace transform, the integral is improper $b = \infty$ ),but we will begin by looking at the simpler, finite case.We need to be able to integrate the function $f$ , so we will need a reasonable condition that allows this.

DEFINITION 6.5.9 The function $f ( x , t )$ is said to be uniformly continuous on the set $Q = E \times T = \{ ( x , t ) \mid x \in E$ and $t \in S \}$ if for each $\epsilon > 0$ there is a $\delta > 0$ (depending on $\epsilon$ and $f$ and the set $Q$ ）such that

It is important to note that this definition of uniform continuity is not the same as saying the $f \left( x , t \right)$ is uniformly continuous in each variable separately (holding the other fixed). We are saying that the same $\delta$ works for both variables,and doesn't depend on the particular value of either.

PROPOSITION 6.5.10 Suppose that $f$ is uniformly continuous on $Q \ : = \ : E \times \lfloor a , b \rfloor$ Then the function $\textstyle F ( x ) = \int _ { a } ^ { b } f ( x , t ) d t$ is uniformly continuous on $E$

Proof. Suppose that $| f ( y , s ) - f ( x , t ) | < \epsilon / ( b - a )$ when $| y - x | < \delta$ . Then

$$
{ \begin{array} { l l l } { F ( y ) - F ( x ) } & { \leq } & { \displaystyle \int _ { a } ^ { b } | f ( y , t ) - f ( x , t ) | \ d t } \\ & { \leq } & { ( b - a ) \left( \epsilon / ( b - a ) \right) = \epsilon . } \end{array} }
$$

Since that was easy,we'll move directly to differentiation. It turns out that the nicest possible formulation is the one that's correct, namely that the derivative of an integral is the integral of the derivative. We want to differentiate $\textstyle F ( x ) = \int _ { a } ^ { b } f ( x , t ) d t$ with respect to $_ { x }$ , so we first have to define the derivative of $f$ with respect to $_ x$

DEFINITION 6.5.11 If the function $f ( \cdot , t )$ (for $t$ fixed) is uniformly differentiable on $E$ ， then we denote its derivative by $f _ { x } \left( x , t \right)$ :This is usually called the partial derivative with respect to $_ { x }$ and is also denoted $\frac { \partial f } { \partial x }$

THEOREM 6.5.12（DIFFERENTIATION UNDER THE INTEGRAL SIGN） Let $f \left( x , t \right)$ be uniformly continuous on $Q = \lfloor c , d \rfloor \times \lfloor a , b \rfloor$ and uniformly differentiable as a function of $_ { x }$ for each $t \in \left[ a , b \right]$ . Suppose also that its derivative $f _ { x } ( x , t )$ is uniformly continuous on $Q$ . Then $\textstyle F ( x ) = \int _ { a } ^ { b } f ( x , t ) d t$ is uniformly differentiable on $\lfloor c , d \rfloor$ and

$$
F ^ { \prime } ( x ) = \int _ { a } ^ { b } f _ { x } ( x , t ) \ d t .
$$

Proof. Since $f \left( \cdot \mathrm { ~ } , t \right)$ is differentiable for each $t$ ， $f \left( y , t \right) - f ( x , t ) = f _ { x } ( x , t ) ( y - x ) +$ $r ( x , y , t ) ( y - x )$ ，where $r ( x , y , t ) \to 0$ as $y - x  0$ (for each $t$ ). Integrating this equation from $^ { a }$ to $b$ gives

$$
{ \begin{array} { r l l } { F ( y ) - F ( x ) } & { = } & { \displaystyle \int _ { a } ^ { b } f _ { x } ( x , t ) ( y - x ) \ d t + \int _ { a } ^ { b } r ( x , y , t ) ( y - x ) \ d t } \\ & { = } & { \displaystyle \left( \int _ { a } ^ { b } f _ { x } ( x , t ) \ d t \right) ( y - x ) + \left( \int _ { a } ^ { b } r ( x , y , t ) \ d t \right) ( y - x ) . } \end{array} }
$$

We must show that the last integral goes to $0$ as $y - x  0$ . Since the interval $\lfloor a , b \rfloor$ is finite, it suffices to show that $r ( x , y , t ) \to 0$ as $y - x  0$ , independent of $t$ ; i.e.， given $\epsilon > 0$ ， there is a $\delta > 0$ (not depending on $t$ ）such that $| r \left( x , y , t \right) | < \epsilon$ when $| y - x | < \delta$ . However, we know that $| r ( x , y ) | = \left| \frac { f ( y , t ) - f ( x , t ) } { y - x } - f _ { x } ( x , t ) \right|$ is less than any bound for $| f _ { x } ( v , t ) - f _ { x } ( u , t ) |$ on $E$ ; this is a consequence of LBC—see Corollary 6.3.16.Furthermore, since we have assumed $f _ { x }$ is uniformly continuous in the sense of Definition 6.5.9, we can find a $\delta > 0$ that makes $| f _ { x } ( v , t ) - f _ { x } ( u , t ) | < \epsilon$ when $| y - x | < \delta$ ■

COROLLARY 6.5.13 (FUBINI'S THEOREM FOR RECTANGLES) Suppose $g ( x , y )$ is uniformly continuous on the rectangle $Q = \lfloor a , b \rfloor \times \lfloor c , d \rfloor$ . Then

$$
\int _ { c } ^ { d } \left( \int _ { a } ^ { b } f ( x , y ) d x \right) d y = \int _ { a } ^ { b } \left( \int _ { c } ^ { d } f ( x , y ) d y \right) d x .
$$

Proof. See exercises.

So we now know that, under reasonable hypotheses, $\textstyle F ( x ) = \int _ { a } ^ { b } f ( x , t ) d t$ is uniformly continuous and differentiable for the finite interval $\lfloor a , b \rfloor$ ； however, many important examples involve improper integrals, so we now have to see what happens

when (for example) $b = \infty$ . As usual the continuity case is easiest, so we deal with that first.

We assume that $f \left( x , t \right)$ is uniformly continuous on $\lfloor \alpha , \beta \rfloor \times \lfloor a , \infty \rfloor$ and that $\int _ { a } ^ { \infty } f ( x , t ) \ d t$ exists for all $x \in \left\lfloor \alpha , \beta \right\rfloor$ .Let

$$
F ( x ) = \int _ { a } ^ { \infty } f ( x , t ) d t .
$$

DEFINITION 6.5.14 The integral $\textstyle \int _ { a } ^ { \infty } f ( x , t )$ dt is said to converge uniformly if for any $\epsilon > 0$ ， we can find $R ( \epsilon )$ (independent of $_ x$ ）such that

$$
\left| F ( x ) - \int _ { a } ^ { M } f ( x , t ) \ d t \right| \leq \epsilon \ w h e n \ M > R ( \epsilon ) .
$$

THEOREM 6.5.15 If the integral $\textstyle \int _ { a } ^ { \infty } f ( x , t )$ dt converges uniformly， then $F ( x ) =$ $\textstyle \int _ { a } ^ { \infty } f ( x , t )$ dt is uniformly continuous.

Proof. Given $\epsilon > 0$ ， choose $M > R ( \epsilon / 3 )$ . Then

$$
\begin{array} { r c l } { | F ( y ) - F ( x ) | } & { \le } & { \displaystyle \left| F ( y ) - \int _ { a } ^ { M } f ( y , t ) ~ d t \right| + \left| F ( x ) - \int _ { a } ^ { M } f ( x , t ) ~ d t \right| } \\ & & { \displaystyle + \left| \int _ { a } ^ { M } f ( y , t ) - \int _ { a } ^ { M } f ( x , t ) ~ d t \right| } \\ & { \le } & { \displaystyle \epsilon / 3 + \epsilon / 3 + \left| \int _ { a } ^ { M } f ( y , t ) - \int _ { a } ^ { M } f ( x , t ) ~ d t \right| . } \end{array}
$$

However, $M$ is finite, so Proposition 6.5.10 tels us that there is a $\delta > 0$ such that $| y - x | < \delta$ makes $\begin{array} { r } { \left| \int _ { a } ^ { M } f ( y , t ) - \int _ { a } ^ { M } f ( x , t ) ~ d t \right| \le \epsilon / 3 } \end{array}$ as well. Note that while $\delta$ depends on $M$ , the number $M$ depends only on $\epsilon$ ，s0 $\delta$ depends only on $\epsilon$ ■

So when will $\textstyle \int _ { a } ^ { \infty } f ( x , t )$ dt converge uniformly? Even though we're assuming $f \left( x , t \right)$ is uniformly continuous, we're not working over a finite interval, so we don't automatically get boundedness of $f ( x , t )$ . So,we will have to make a boundedness condition on $f$ . When we do this,we get what is called a “dominated convergence” type theorem.Here is one version.

THEOREM 6.5.16 （DOMINATED CONVERGENCE I） Suppose that $f ( x , t )$ is uniformly continuous on $Q = [ \alpha , \beta ] \times [ a , \infty )$ and that there is a function $B ( x )$ such that

1. $| f ( x , t ) | \leq B ( t )$ for all $( x , t ) \in Q$ and   
2. $\textstyle \int _ { a } ^ { \infty } B ( t )$ dt converges.

Then $\textstyle \int _ { a } ^ { \infty } f ( x , t )$ dt converges uniformly (hence is a UC function of $_ { x }$ ）

Proof. Exercise■

(There isadiscrete versionofthis—forseriesoffunctions $\textstyle \sum _ { k = 0 } ^ { \infty } f _ { k }$ called the Weierstrass M Test; see Proposition 7.1.19 in the next chapter.)

We turn now to the differentiability case,and see that the situation for improper integrals is more delicate than for finite ones.As before, $r ( x , y , t ) \to 0$ independently of $t$ ,but we still have to prove that $\begin{array} { r } { \int _ { a } ^ { \infty } r ( x , y , t ) \ d t \to 0 } \end{array}$ as $y - x  0$ . Once again a dominated convergence theorem gives us what we need.

THEOREM 6.5.17 （DOMINATED CONVERGENCE II） SuppOse that for $x , y \in \lfloor c , d \rfloor$ ， $r \left( x , y , t \right)$ is a uniformly continuous function of $t \in [ a , \infty )$ that satisfies the following conditions.

1. $r ( x , y , t ) \to 0$ as $y - x  0$

2. $| r ( x , y , t ) | \leq B ( t )$ for some function $B$ having the property that $\textstyle \int _ { a } ^ { \infty } B ( t )$ exists.

Then $\textstyle \int _ { a } ^ { \infty } r ( x , y , t )$ dt erists $a n d \to 0$ as $y - x  0$

Proof.By the integral comparison test (Proposition 5.3.18) and the fact that abSolute integrability implies integrability (Corollary 5.3.23), $\textstyle \int _ { a } ^ { \infty } r ( x , y , t ) \ d t$ lt exists for each $_ { x }$ ， $_ y$ . Now we have:

$$
\begin{array} { r c l } { \displaystyle \left| \int _ { a } ^ { \infty } r ( x , y , t ) ~ d t \right| } & { \le } & { \displaystyle \int _ { a } ^ { \infty } | r ( x , y , t ) | ~ d t } \\ & { = } & { \displaystyle \int _ { a } ^ { M } | r ( x , y , t ) | ~ d t + \int _ { M } ^ { \infty } | r ( x , y , t ) | ~ d t } \\ & { \le } & { \displaystyle \int _ { a } ^ { M } | r ( x , y , t ) | ~ d t + \int _ { M } ^ { \infty } { B ( t ) ~ d t } . } \end{array}
$$

Since $\textstyle \int _ { a } ^ { \infty } B ( t )$ dt exists, we can find $M > a$ so large that $\textstyle \int _ { M } ^ { \infty } B ( t ) \ d t < \epsilon / 2$ when $\epsilon > 0$ is given. Note that this $M$ depends only on $B$ ,not on $_ x$ or $_ y$ or $r$ . Once $M$ is fixed in this way,dealing with $\int _ { a } ^ { M } | r ( x , y , t ) |$ dt is easy: since $r  0$ , there is a $\delta > 0$ such that $| r ( x , y , t ) | < ( \epsilon / 2 ) / ( M - a )$ when $| y - x | < \delta$ ■

PROPOSITION 6.5.18（DIFFERENTIATION INSIDE IMPROPER INTEGRALS） SuPPOSe $f \left( x , t \right)$ is uniformly continuous on $Q = \lfloor c , d \rfloor \times I$ for every finite subinterval $I$ of $\lfloor a , \infty )$ and uniformly differentiable for each $t \in [ a , \infty )$ . Suppose also that

1. $f _ { x } ( x , t )$ is uniformly continuous on $Q$ and

Then $\textstyle F ( x ) = \int _ { a } ^ { \infty } f ( x , t ) d t$ is uniformly differentiable on $[ c , d ]$ and

$$
F ^ { \prime } ( x ) = \int _ { a } ^ { \infty } f _ { x } ( x , t ) \ d t .
$$

Proof. As we have seen before (Corollary 6.3.16)，bounds for the derivative are bounds for $r$ , so we can apply the dominated convergence theorem.

See the exercises at the end of this section for applications of these ideas to the continuity and differentiability of the Gamma function and Laplace transform.

Finally, Dirichlet's test for convergence of series (Theorem 3.3.38) has an analogue that applies to improper integrals. The proof of the version stated here is not difficult, using just integration by parts, so we leave it as exercise 1l on page 220.

PROPOSITION 6.5.19 (DIRICHLET's TEST FOR INTEGRALS） SuppOse that the functions $f$ and $g$ satisfy the following conditions.

1. $f$ is non-negative and uniformly differentiable on every subinterval $\lfloor a , b \rfloor$ of $\lfloor a , \infty )$

2. $f$ is decreasing, and lim f(x)= 0.

3. $g$ is uniformly continuous on every subinterval $[ a , b ]$ of $\lfloor a , \infty )$

$\begin{array} { r } { \left| \int _ { a } ^ { b } g \right| < M } \end{array}$ for every $a \leq b < \infty$

Then the improper integral $\textstyle \int _ { a } ^ { \infty } f g$ converges.

This proposition can be proved without the differentiability assumption on $f$ Suggestions for doing this harder variation can be found in exercise 12.

Note that the Dirichlet Test immediately gives theconvergence of $\int _ { 1 } ^ { \infty } { \frac { \sin { x } } { x } } \ d x$ The integral S1 $\textstyle \int _ { 0 } ^ { 1 } { \frac { \sin x } { x } } d x$ $\textstyle { \frac { \sin x } { x } }$ $( 0 , 1 ]$ $[ 0 , 1 ]$ $\int _ { 0 } ^ { \infty } { \frac { \sin { x } } { x } }$ sinx dx converges (its value is $\scriptstyle { \frac { \scriptscriptstyle \mathit { n } } { \mathrm { 2 } } }$ but this is not easy to provesee [Spivak, 1994], exercise 19-42 for an outline).

# Exercises

1. Use integration by parts to show that the improper integral $\int _ { 1 } ^ { \infty } { \frac { \sin { x } } { x } } d x$ exists. SeeSpiva $\textstyle { \int _ { 0 } ^ { \infty } { \frac { \sin x } { x } } } d x = { \frac { \pi } { 2 } }$ ）   
2. Find functions $f$ ， $g$ such that $\int _ { a } ^ { \infty } f g ^ { \prime }$ exists but $\int _ { a } ^ { \infty } f ^ { \prime } g$ does not (Hint: See previous exercise.） Thus,the integration by parts formula for improper integrals does not apply in this case; what goes wrong?   
3.Let $\begin{array} { r } { R _ { n } = ( 1 / n ! ) \int _ { x _ { 0 } } ^ { x } ( x - t ) ^ { n } f ^ { ( n + 1 ) } ( t ) d t } \end{array}$ where $\vert x _ { 0 } , x \vert \subset \vert a , b \vert$ and the derivatives $f ^ { ( k ) } ( t )$ ， $k = 0 , \ldots , n { + } 1$ , exist and are UC in $\lfloor a , b \rfloor$ . Find a recursion formula for $R _ { n }$ in terms of $R _ { n - 1 }$ . This result can be used to derive the Taylor polynomial expansion with remainder for $f ( x )$ . (We will discuss this in more detail in the next chapter.)   
4.Prove Fubini's Theorem (Corollary 6.5.13).

5. Prove Theorem 6.5.16 (Dominated Convergence I).

6. The following relate to the Gamma function: $\textstyle \Gamma ( x ) = \int _ { 0 } ^ { \infty } t ^ { x - 1 } e ^ { - t } d t$

(a) $\Gamma ( x )$ is defined for $x > 0$   
(b) $\operatorname* { l i m } _ { x \to 0 \atop x > 0 } \Gamma ( x ) = \infty = \operatorname* { l i m } _ { x \to \infty } \Gamma ( x ) .$   
(c) Use integration by parts to show that $\Gamma ( x + 1 ) = x \Gamma ( x )$   
(d） Show $\Gamma ( 1 ) = 1$ so that, for $_ n$ a positive integer, $\Gamma ( n ) = ( n - 1 ) !$   
(e) Use the previous property to show that for $_ n$ a positive integer, $\Gamma ( n + x ) =$ $( n - 1 + x ) ( n - 2 + x ) \cdot \cdot \cdot ( 1 + x ) ( x ) \Gamma ( x )$   
(f) $\Gamma ( x )$ is not defined for $x < 0$ , but we can extend it to intervals $- ( n + 1 ) <$ $x < - n$ by using the formula

$$
\Gamma ( n + x ) = ( n - 1 + x ) ( n - 2 + x ) \cdot \cdot \cdot ( 1 + x ) ( x ) \Gamma ( x ) .
$$

(g) Use thewell-knowcthat $\textstyle \int _ { 0 } ^ { \infty } e ^ { - x ^ { 2 } } d x = { \frac { \sqrt { \pi } } { 2 } }$ to compute $\Gamma ( 1 / 2 )$

(h） For $_ { n }$ a non-negative integer, $\Gamma \left( n + \frac { 1 } { 2 } \right) = \frac { ( 2 n - 1 ) ! \sqrt { \pi } } { 2 ^ { 2 n } ( n - 1 ) ! } .$

(i) $\Gamma ( x )$ is uniformly continuous on any closed interval $[ a , b ]$ with $a > 0$ (use Dominated Convergence I).

(j） $\Gamma ( x )$ is uniformly differentiable on any closed interval $\lfloor a , b \rfloor$ with $a > 0$ (use Dominated Convergence II).

7.(Project） (Parts of this exercise repeat exercise 13 on page 183.） For certain functions $h ( t )$ , the Laplace transform $H$ of $h$ is defined by

$$
H ( x ) = \int _ { 0 } ^ { \infty } e ^ { - x t } h ( t ) \ d t .
$$

The function $h ( t )$ is exponentially bounded if, for some $k > 0$ ，there is a constant $K > 0$ ， such that $| h ( t ) | \leq e ^ { k t }$ for $t > K$

(a) Prove that exponentially bounded functions have Laplace transforms.   
(b) Give the values of $_ { x }$ for which $H ( x )$ is defined.   
(c) Discuss the continuity and differentiability of Laplace transforms of exponentially bounded functions,using the dominated convergence theorems.   
(d) Here is a table of some functions and their Laplace transforms. Verify that the functions are exponentially bounded and that their transforms are as given.

<table><tr><td>h(t)</td><td>H(x)</td><td></td><td>Domain of HTechnique of proof</td></tr><tr><td>1</td><td>1 X</td><td>x&gt;0</td><td>Straightforward</td></tr><tr><td>t</td><td>1 x</td><td>x&gt;0</td><td>See next formula or integrate by parts</td></tr><tr><td>ta</td><td>Γ(α+1) xa+1</td><td>x&gt;0</td><td>Let u= xt and see previous exercise on I(x)</td></tr><tr><td>eat</td><td>1 x-α</td><td>x&gt;α</td><td>Straightforward</td></tr><tr><td>sin(kt)</td><td>k x²+k²</td><td>x&gt;0</td><td>Integration by parts (twice)</td></tr><tr><td>cos(kt)</td><td>x x²+k²</td><td>x&gt;0</td><td>Integration by parts (twice)</td></tr><tr><td>sinh(kt)</td><td>k x²-k2</td><td>x&gt;</td><td>sinh(kt) 1 (ekt-e-kt) 三 2</td></tr><tr><td>cosh(kt)</td><td>x x²-k²</td><td>x&gt;|k</td><td>1 cosh(kt) (ekt+e-kt) 2</td></tr></table>

8. State and prove a version of the Dominated Convergence Theorem that applies to improper integrals of the type $\textstyle \int _ { a } ^ { M \to b } r ( x , y , t ) \ d t$ ，where $r \left( x , y , t \right)$ is uniformly continuous for $x , y \in \left\lfloor c , d \right\rfloor$ ， $t \in \left[ a , b \right)$

9.Use a revised version of the Dominated Convergence Theorem (see above） to prove a version of the theorem about differentiating under the integral sign that applies to improper integrals of the type $\textstyle \int _ { a } ^ { M \to b } f ( x , t ) \ d t$ ，where $f \left( x , t \right)$ is uniformly continuous on $[ c , d ] \times [ a , b ^ { \prime } ]$ ,for any $b ^ { \prime } < b$

10. (Project)

Forget about what we have done with $A ^ { x }$ and logs,and define, for any $x > 0$ ， a“new” function

$$
\ln ( x ) = \int _ { 1 } ^ { x } { \frac { 1 } { t } } d t .
$$

Prove each of the following. If you can't do some part,you may still use it to do other parts.

(a) $\ln ( 1 ) = 0$ and the derivative of $\ln ( x )$ is $1 / x$   
(b） Show that the derivative of $\ln ( a x ) - \ln ( a ) - \ln ( x )$ is zero.Thus,this function is constant. Find the constant by letting $x = 1$ . We now know $\ln ( a b ) = \ln ( a ) + \ln ( b )$ (explain).

(c） Use the previous part to show, for $_ { n }$ an integer, that $\ln ( x ^ { n } ) = n \ln ( x )$ (treat $n > 0$ and $n < 0$ separately).

(d) For $0 < A \leq x \leq y \leq B$ , prove that ln satisfies the Lipschitz condition

$$
( 1 / B ) ( y - x ) \leq \ln ( y ) - \ln ( x ) \leq ( 1 / A ) ( y - x ) .
$$

(Hint: Use $\textstyle \ln ( y ) - \ln ( x ) = \int _ { x } ^ { y } { \frac { 1 } { t } } d t$ or use the Law of Bounded Change.)

(e) Since $B > 0$ this means that ln is one-to-one, so

$$
\ln ( u ) = \ln ( v ) \Rightarrow u = v .
$$

(f） Prove that $\ln ( 4 ) > 1$ . (Hint:subdivide the interval [1,4] into three equal parts and show that $\begin{array} { r } { \int _ { 1 } ^ { 4 } \frac 1 t d t \geq 1 / 2 + 1 / 3 + 1 / 4 . } \end{array}$ ）

(g) Using the Inverse Function Theorem, deduce that there is a number, call it $^ e$ ,between 1 and 4 such that $\ln ( e ) = 1$ . (Actually, if you feel ambitious, you can improve on this by proving $\ln ( 2 ) < 1 < \ln ( 3 )$ ，so that $2 < e < 3$ (you'll need a finer partition in the previous part).

(h） Denote by $\exp ( x )$ the inverse of $\ln ( x )$ ， so that $\ln ( \exp ( x ) ) = x$ Apply the chain rule to deduce that $\exp ( x )$ is its own derivative.Note that $\exp ( 1 ) = e$

(i) Prove that $\exp ( a + b ) = \exp ( a ) \cdot \exp ( b )$ . The easiest way is to show that ln applied to each side gives the same number, then use that fact that ln is one-to-one.

(j） Use the previous part and $\exp ( 1 ) = e$ to show that $\exp ( m ) = e ^ { m }$ for all integers $m \geq 0$ (you can simply explain why it's true or use induction on $_ { m }$

(k） Similarly, for integers $n > 0$ $( \exp ( 1 / n ) ) ^ { n } = e$ s0 $\exp ( 1 / n ) = e ^ { 1 / n } .$ (1) Is $\exp ( r ) = e ^ { r }$ for $r > 0$ and rational? (Hint: ${ \frac { a } { b } } = \underbrace { { \frac { 1 } { b } } + \cdots + { \frac { 1 } { b } } } _ { b }$ ） What

$^ a$ copies of $1 / b$

if $r$ is real? Explain. (This is tricky to say rigorously: try to explain it using the approximation of reals by rationals. A good proof would probably invoke the continuity of exp and the triangle inequality. You can extend $e ^ { \prime }$ to reals using Corollary 4.2.12.)

11.Prove Proposition 6.5.19, Dirichlet's Integral Test,as stated in the text. The trick is to let $\begin{array} { r } { G ( x ) \ = \ \int _ { a } ^ { x } g ( t ) } \end{array}$ dt and use integration by parts: $\begin{array} { r } { \int _ { a } ^ { b } f g = } \end{array}$ $\begin{array} { r } { f ( b ) G ( b ) - f ( a ) G ( a ) - \int _ { a } ^ { b } f ^ { \prime } G } \end{array}$ .Let $b \to \infty$

12.It turns out that Dirichlet's Integral Test also holds even when $f$ is not differentiable; however, the proof is much harder in this case.First,prove Dirichlet's Test as in the previous exercise (assuming $f$ is differentiable).Now, the idea is to replace the last integra, $\textstyle \int _ { a } ^ { b } f ^ { \prime } G$ by

$$
\operatorname* { l i m } _ { K \to \infty \atop \delta \to 0 } \sum _ { k = 1 } ^ { K } G ( x _ { k } ) ( f ( x _ { k } ) - f ( x _ { k - 1 } ) )
$$

and the quantity $f ( b ) G ( b ) - f ( a ) G ( a )$ by a certain telescoping sum. Here less than $\lbrace x _ { k } \rbrace _ { k = 0 \ldots N }$ $\delta$ Sums of the type is a partition of the interval $\begin{array} { r } { \sum _ { k = 1 } ^ { K } h ( x _ { k } ) ( f ( x _ { k } ) - f ( x _ { k - 1 } ) ) } \end{array}$ $\lfloor a , b \rfloor$ where the widths look like Riemamn $x _ { k } - x _ { k - 1 }$ are all sums,except that $\Delta _ { k } = x _ { k } - x _ { k - 1 }$ is replaced by $\Delta f _ { k } = f ( x _ { k } ) - f ( x _ { k - 1 } )$ Limits of such sums are called Riemann-Stieltjes integrals and are denoted $\textstyle \int _ { a } ^ { b } h \ d f$ . You will get a formula that amounts to

$$
\int _ { a } ^ { b } f g = f ( b ) G ( b ) - f ( a ) G ( a ) - \int _ { a } ^ { b } G \ d f
$$

which looks a lot like the integration by parts from the simpler proof. Now applytheCauchycriteriontoget convergenceof $\int _ { a } ^ { b  \infty } f g$

13.Let $\mathrm { S P i L } ( x ) = { \frac { \sin \pi x } { \ln x } }$ ("SinePiLog").

(a) Discuss the continuity of $\operatorname { S P i L } ( x )$ on the interval $( 0 , 1 )$ and its possible extension to $[ 0 , 1 ]$ ； in particular,what are its limits at $0$ and 1?   
(b）Is $\textstyle \int _ { 0 } ^ { 1 } { \mathrm { S P i L } } ( x ) \ d x { \mathrm { ~ i m p r o p e r ? } }$   
(c） Discuss the convergence or divergence of $\begin{array} { l } { \bullet \ \int _ { 0 } ^ { \infty } \mathrm { S P i L } ( x ) \ d x } \\ { \bullet \ \int _ { 0 } ^ { \infty } \vert \mathrm { S P i L } ( x ) \vert \ d x . } \end{array}$

