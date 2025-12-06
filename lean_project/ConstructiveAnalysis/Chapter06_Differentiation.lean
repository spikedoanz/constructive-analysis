/-!
# Chapter 6: Differentiation

Definitions extracted from Bridger's 'Real Analysis: A Constructive Approach'
-/

-- We only need natural numbers as a foundation

/- DEFINITION 6.1.1
   6.1.1 The change in the values of a function $f$ divided by the change in its imputs, $\frac { f ( y ) - f ( x ) } { y - x }$ is called the difference quotient of $f$ .
   
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
-/

/- DEFINITION 6.1.2
   6.1.2 $r ( x , y ) \to 0$ as $y \longrightarrow x$ on $E \subset \mathbb { R }$ means that for each $\epsilon > 0$ there isa $\delta > 0$ (depending on $\epsilon$ ）such that $| r ( x , y ) | \leq \epsilon$ whenever $_ { x }$ and $_ y$ are in $E$ and $0 < | y - x | < \delta$
   
   Please note that $r \left( x , y \right)$ does not even have to exist when $x = y$
   
   We now show that the three formulations of $g$ being the derivative of $f$ are logically equivalent. We also take into account that a function may not have a derivative everywhere,but only on some set of reals $E$
-/

/- DEFINITION 6.1.4
   6.1.4（UNIFORMLY DIFFERENTIABLE） If the aboUe equivalent conditions hold, we say that $f$ is uniformly differentiable on $E$ ， with derivative $g ( x )$ (Uniformly differentiable will often be abbreviated as UD.)The derivative will usually be denoted $f ^ { \prime } ( x )$
-/

/- DEFINITION 6.1.9
   6.1.9 For $\epsilon > 0$ in the definition of $U D$ ，the $\delta > 0$ ， mentioned in the first two equivalent conditions and implied by $r ( x , y ) \to 0$ in the third,is called a modulus of differentiability. It depends on the function $f$ ， the set $E$ ，and $\epsilon$ ， so may be denoted $\delta _ { f } ( \epsilon , E )$
   
   Like a modulus of continuity, a modulus of differentiability $\delta _ { f } ( \epsilon , E )$ is not unique;   
   if you have one,any positive smaller number is also a modulus of differentiability.
   
   Furthermore, there may not be any way of telling whether the one you have is best possible (i.e. largest).
   
   Before going further, it is reasonable to ask if a function can have two different derivatives on a set $E$ . Suppose that $g _ { 1 }$ and $g _ { 2 }$ both satisfy the definition of being the derivative of $f$ . Then we have
   
   $$
   \begin{array} { l } { \displaystyle | g _ { 1 } ( x ) - g _ { 2 } ( x ) | = \left| g _ { 1 } ( x ) - \frac { f ( y ) - f ( x ) } { y - x } + \frac { f ( y ) - f ( x ) } { y - x } - g _ { 2 } ( x ) \right| } \\ { \displaystyle \leq \left| \frac { f ( y ) - f ( x ) } { y - x } - g _ { 1 } ( x ) \right| + \left| \frac { f ( y ) - f ( x ) } { y - x } - g _ { 2 } ( x ) \right| . } \end{array}
   $$
   
   Both of these last quantities can be made arbitrarily smallif $0 < | y - x |$ is sufficiently small.The only problem is whether the set $E$ contains numbers $_ y$ arbitrarily close to $_ x$
-/

/- DEFINITION 6.3.4
   6.3.4 $F$ is an antiderivative of $f$ on $E$ means $F$ is uniformly differentiable on $E$ and $F ^ { \prime } = f$ on $E$
-/

/- DEFINITION 6.3.7
   6.3.7 Let $f$ be defined on a set $E$
   
   1. $f$ is strictly increasing on $E$ means for all $x < y$ in $E$ ， $f \left( x \right) < f \left( y \right)$
   
   2. $f$ is strictly decreasing on $E$ means for all $x < y$ in $E$ ， $f \left( x \right) > f \left( y \right)$
   
   3. $f$ is weakly increasing (non-decreasing) on $E$ means for all $x \leq y$ in $E$ ， $f \left( x \right) \leq$ $f ( y )$
   
   4 $f$ is weakly decreasing (non-increasing) on $E$ means for all $x \leq y$ in $E$ ， $f \left( x \right) \geq$ $f ( y )$
-/

/- DEFINITION 6.4.5
   6.4.5 For an integer $n > 0$ ， the function $f$ is $_ { n }$ -times differentiable, with nth derivative $f ^ { ( n ) }$ if $f$ is uniformly differentiable and $f ^ { \prime }$ is $( n - 1 )$ -times differentiable with $( f ^ { \prime } ) ^ { ( n - 1 ) } = f ^ { ( n ) }$
   
   This is an example of a recursive definition: we know what $_ n$ -times differentiable (resp. nth derivative) means when we know what $( n - 1 )$ -times differentiable (resp. $( n - 1 ) \mathrm { s t }$ derivative） means. Since we know what these terms mean for $n = 1$ ，we can interpret them for $n > 1$ . You might also call this an inductive definition.
   
   As a matter of notation,the first few derivatives of $f$ are usually written $f ^ { \prime }$ ， $f ^ { \prime \prime }$ ， and $f ^ { \prime \prime \prime }$ ; after the third derivative we start using $f ^ { ( 4 ) }$ ， $f ^ { ( 5 ) }$ ,etc.
   
   As we saw in Corollary 6.3.16, the error in replacing a function by its best affine approximation $f ^ { \prime } ( x ) ( y - x ) + f ( x )$ depends on the variation of its derivative. This in turn can be estimated using the second derivative,as the following result makes precise.
-/

/- DEFINITION 6.5.9
   6.5.9 The function $f ( x , t )$ is said to be uniformly continuous on the set $Q = E \times T = \{ ( x , t ) \mid x \in E$ and $t \in S \}$ if for each $\epsilon > 0$ there is a $\delta > 0$ (depending on $\epsilon$ and $f$ and the set $Q$ ）such that
   
   It is important to note that this definition of uniform continuity is not the same as saying the $f \left( x , t \right)$ is uniformly continuous in each variable separately (holding the other fixed). We are saying that the same $\delta$ works for both variables,and doesn't depend on the particular value of either.
-/

/- DEFINITION 6.5.11
   6.5.11 If the function $f ( \cdot , t )$ (for $t$ fixed) is uniformly differentiable on $E$ ， then we denote its derivative by $f _ { x } \left( x , t \right)$ :This is usually called the partial derivative with respect to $_ { x }$ and is also denoted $\frac { \partial f } { \partial x }$
-/

/- DEFINITION 6.5.14
   6.5.14 The integral $\textstyle \int _ { a } ^ { \infty } f ( x , t )$ dt is said to converge uniformly if for any $\epsilon > 0$ ， we can find $R ( \epsilon )$ (independent of $_ x$ ）such that
   
   $$
   \left| F ( x ) - \int _ { a } ^ { M } f ( x , t ) \ d t \right| \leq \epsilon \ w h e n \ M > R ( \epsilon ) .
   $$
-/
