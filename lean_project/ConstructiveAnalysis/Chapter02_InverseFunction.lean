/-!
# Chapter 2: An Inverse Function Theorem and Its Application

Definitions extracted from Bridger's 'Real Analysis: A Constructive Approach'
-/

-- We only need natural numbers as a foundation

/- NOTATION 2.0.1
   2.0.1 Types of real intervals:
-/

/- DEFINITION 2.1.1
   2.1.1 A real-valued function $f$ is a rule or procedure that defines, for each allowable real number $_ { x }$ ， another real number denoted $f ( x )$ . The collection of allowable numbers $_ { x }$ is called the domain of $f$ .We say that $f$ is defined on the interval $\lfloor A , B \rfloor$ if every number in $\lfloor A , B \rfloor$ is in the domain of $f$
   
   In the general case,a real number $_ x$ will be given as a consistent fine family of rational intervals,and the rule for $f$ must construct from this family a new family defining the real number $f ( x )$ . The most basic functions use algebraic operations, already known to yield real numbers, to construct their values,so we can usually avoid having to work with intervals again. Here are some simple examples.
-/

/- DEFINITION 2.1.3
   2.1.3 （INVERSE FUNCTIONS ON INTERVALS） SupPOSe
   
   We say that $g : [ f ( A ) , f ( B ) ] \longrightarrow [ A , B ]$ is an inverse for $f$ if
   
   We say that $f$ and $g$ are inverses of each other if, in addition,
-/

/- DEFINITION 2.1.4
   2.1.4 We write $f : [ A , B ] \longrightarrow I$ if, for each $x \in [ A , B ]$ ， $f \left( x \right) \in I$
   
   1. $f : \lfloor A , B \rfloor \longrightarrow I$ is called surjective (or onto) if, for each $z \in I$ ， there is some $x \in \left[ A , B \right]$ (depending on $z$ ）such that $z = f ( x )$ ·
   
   2. $f : \lfloor A , B \rfloor \longrightarrow I$ is called injective (or 1-to-1） if $f ( x _ { 1 } ) = f ( x _ { 2 } )$ implies that $x _ { 1 } = x _ { 2 }$ ·
   
   The proof of the following facts is a direct consequence of the definitions,and will be left as an exercise.
-/

/- DEFINITION 2.1.7
   2.1.7（LIPSCHITZ CONDITIONS） SuPpOse that $f$ is defined on the in-terval $\lfloor A , B \rfloor$
-/

/- DEFINITION unlabeled
   $2 . 2 . 9 _ { \_ } \sqrt { }$ ，or $( ~ ) ^ { \frac { 1 } { n } }$ , is the inverse of the function $( ~ ) ^ { n }$ . When n is odd, this function is defined on any interval; when $_ n$ is even it is defined only on intervals $\lfloor A , B \rfloor$ with $A \geq 0$
-/

/- DEFINITION 2.3.1
   2.3.1 Let $A$ be a positive real number and n an integer. Then
   
   1. $A ^ { 0 } = 1$   
   2.For $n > 0 , \ A ^ { n + 1 } = A \cdot A ^ { n }$   
   3.For $n < 0$ ， $A ^ { n } = 1 / \left( A ^ { - n } \right) = 1 / \left( A ^ { | n | } \right)$
-/

/- DEFINITION 2.3.5
   2.3.5 For a rational number $r = m / n > 0$ with $m , n \in \mathbb { N }$ and $A > 0$ ， $A ^ { r } = ( A ^ { m } ) ^ { 1 / n }$
-/

/- DEFINITION 2.3.6
   2.3.6 For a rational number $r < 0$ and $A > 0$ ， $A ^ { r } = 1 / ( A ^ { - r } )$
-/

/- DEFINITION 2.3.12
   2.3.12 (LIMITING FAMILY FOR $A ^ { x }$ ）For $A > 0$ ，
   
   $$
   S ( A , x ) = \{ [ \operatorname* { m i n } ( A ^ { r } , A ^ { s } ) , \operatorname* { m a x } ( A ^ { r } , A ^ { s } ) ] : [ r , s ] \in x ^ { * } \} .
   $$
   
   If we know how big $A$ is,then the definition of this family can be simplified.For $A > 0$ and $r , s \in \mathbb { Q }$ ，
-/

/- DEFINITION 2.3.14
   2.3.14（THE EXPONENTIAL FUNCTION） For $A > 0$ ， $A ^ { x } = \operatorname* { l i m } ( S ( A , x ) )$
-/

/- DEFINITION 2.3.23
   2.3.23 When $0 < A < 1$ or $A > 1$ ， $\log _ { A } ( x )$ is the inverse of the function $A ^ { x }$ ·
   
   We then have, for $A ^ { c } \leq z \leq w \leq A ^ { d }$ ，
   
   $$
   \frac { 1 } { A ^ { d } ( A - 1 ) } \cdot ( w - z ) \leq \log _ { A } ( w ) - \log _ { A } ( z ) \leq \frac { 1 } { A ^ { c } ( 1 - 1 / A ) } \cdot ( w - z ) .
   $$
   
   The only problem with this formula is that the Lipschitz conditions on the logarithm are written in terms of the interval $\lfloor c , d \rfloor$ ,which is part of a domain for the exponential function. Supposing that $0 < C \le z \le w \le D$ , can we express this inequality in terms of $C$ and $D$ ? We can if we can write $C = A ^ { c }$ and $D = A ^ { d }$ for some reals $c$ and $d$ . So the question boils down to the following: If $0 < C \le D$ are reals, can we find powers of $A$ such that $A ^ { P } \leq C \leq D \leq A ^ { Q \cdot }$
-/

/- DEFINITION 2.4.1
   2.4.1 For $a > 1$ let
   
   $$
   \Lambda ( a ) = \left\{ \left[ { \frac { a ^ { - x } - 1 } { - x } } , { \frac { a ^ { x } - 1 } { x } } \right] : x > 0 \right\} .
   $$
-/

/- DEFINITION 2.4.3
   2.4.3 Let $L ( a ) = \operatorname* { l i m } ( \Lambda ( a ) )$
   
   (Think of $L ( a )$ as $\ln ( a )$ .）
-/

/- DEFINITION 2.4.7
   2.4.7 The Euler number is given by $e = 2 ^ { 1 / L ( 2 ) }$
-/

/- NOTATION 2.4.13
   2.4.13 From now on we will use $\ln a$ in place of $\log _ { e } a$
   
   Although the definition of the power function $x ^ { n }$ for $_ n$ an integer preceded our study of exponential functions,we need the latter to give a more general definition of the former when $_ { n }$ is not an integer. We have defined the function $A ^ { u }$ for fixed $A > 0$ and any real $^ u$ . So, for any $x > 0$ and any real $_ u$ we can define the number $x ^ { u }$ to be the value of $A ^ { u }$ when $A = x$ . This allows us to piece together the function $x ^ { u }$ However, it is nicer to give a definition in terms of functions we have alread defined. The key is to note that $e ^ { \ln x } = x$ ，since $e ^ { x }$ and $\ln x$ are inverse functions. Raising both sides to the power $^ u$ ，and using $( A ^ { x } ) ^ { y } = A ^ { x y }$ ，we are lead to the following definition.
-/

/- DEFINITION 2.4.14
   2.4.14（THE POWER FUNCTION） For $x > 0$ and real $_ u$ ，
   
   $$
   x ^ { u } = e ^ { u \cdot \ln x } .
   $$
-/
