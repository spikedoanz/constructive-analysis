# 2．AN INVERSEFUNCTION THEOREM AND ITS APPLICATION

# 2.0 Introduction

Suppose $\lfloor A , B \rfloor$ is a real interval and $f$ is a function with $f ( A ) < f ( B )$ .For each number $z \in | f ( A ) , f ( B ) |$ , can we find some $x \in \left[ A , B \right]$ such that $f ( x ) = z$ ？ (We can also ask if there is more than one such $_ { x }$ .）Here's a picture where the answer seems affimative.

![](images/71e985c65bbf77b35404f538aa7b8e156888d68f297d9f9bdf7e964b109216bb.jpg)

We can put this differently: if $f : \left\lfloor A , B \right\rfloor \longrightarrow \left\lfloor f ( A ) , f ( B ) \right\rfloor$ , can we go backwards to find an inverse function from $| f ( A ) , f ( B ) |$ to $\lfloor A , B \rfloor$ ？

We will show that this is the case when $f$ satisfies left and right Lipschitz conditions, that is,when there exist reals $L$ and $K$ with $0 < L \leq K$ and

$$
L \left( y - x \right) \leq f ( y ) - f ( x ) \leq K \left( y - x \right)
$$

for all $x \le y$ in $\lfloor A , B \rfloor$ .This is our Inverse Function Theorem (IFT). Given $z \in$ $| f ( A ) , B ( A ) |$ ，we will construct a nested (hence consistent） family of subintervals of $\lfloor A , B \rfloor$ using the left-hand inequality. Each of these intervals $\lfloor a , b \rfloor$ will have the property $f ( a ) \leq z \leq f ( b )$ . The right-hand condition guarantees that this family is also fine; hence we can invoke the Completeness Theorem to find some $_ { x }$ which is in all of them. It will turn out that $f ( x ) = z$

After proving the IFT,we will apply it to various elementary functions, the simplest of which are the power functions $x ^ { N }$ . Since these functions all satisfy left and right Lipschitz conditions on finite intervals $0 ~ < ~ \lfloor A , B \rfloor$ (when $N > 0$ )，the IFT guarantees the existence of $N$ th roots on positive finite intervals. This can be extended to intervals $| 0 , B |$ as well.

Next, we can define $A ^ { r } = \left( A ^ { M } \right) ^ { 1 / N } = \left( A ^ { 1 / N } \right) ^ { M }$ for any rational $r = M / N \ge 0$ this can be extended to negative rationals as well. Finally, for a real exponent $_ { x }$ ，we can look at the family of real intervals of the form $\lfloor A ^ { r } , A ^ { s } \rfloor$ ，where $[ r , s ] \in x$ This family turns out to be fine and consistent, so we use completeness again to pick out a real number common to all the intervals in this family. We define this real number to be $A ^ { x }$

The exponential function $A ^ { x }$ constructed in this way satisfies the following Lipschitz condition on $\lfloor c , d \rfloor$ (when $A > 1$ )：

$$
A ^ { c } \left( 1 - { \frac { 1 } { A } } \right) ( y - x ) \leq A ^ { y } - A ^ { x } \leq A ^ { d } ( A - 1 ) ( y - x ) .
$$

This enables us to define the inverse function $\log _ { A } ( x )$

Finally, we will construct the Euler number $^ e$ , and thus obtain the functions $e ^ { x }$ and $\ln ( x )$

Throughout this chapter we will be talking about intervals of various kinds. Here is a catalog.

NOTATION 2.0.1 Types of real intervals:

1. (Closed finite): $x \in \left[ A , B \right] \iff A \leq x \leq B$   
2. (Open finite): $x \in ( A , B ) \iff A < x < B$   
3. (Left open finite): $x \in ( A , B ] \iff A < x \leq B$   
4. (Right open finite): $x \in \lfloor A , B \} \iff A \leq x < B$   
5. (Left infinite closed): $x \in ( \infty , B ] \iff x \leq B$   
6. (Left infinite open): $x \in ( \infty , B ) \iff x < B$   
7. (Right infinite closed): $x \in \left[ A , \infty \right) \iff x \geq A$ .   
8. (Right infinite open): $x \in ( A , \infty ) \iff x > A$

# 2.1 Functions and Inverses

DEFINITION 2.1.1 A real-valued function $f$ is a rule or procedure that defines, for each allowable real number $_ { x }$ ， another real number denoted $f ( x )$ . The collection of allowable numbers $_ { x }$ is called the domain of $f$ .We say that $f$ is defined on the interval $\lfloor A , B \rfloor$ if every number in $\lfloor A , B \rfloor$ is in the domain of $f$

In the general case,a real number $_ x$ will be given as a consistent fine family of rational intervals,and the rule for $f$ must construct from this family a new family defining the real number $f ( x )$ . The most basic functions use algebraic operations, already known to yield real numbers, to construct their values,so we can usually avoid having to work with intervals again. Here are some simple examples.

EXAMPLE 2.1.2(SOME ELEMENTARY FUNCTIONS WE ALREADY KNOW ABOUT)

· Given real numbers $\alpha$ and $\beta$ ， define the affine function $L ( x ) = \alpha x + \beta$ . When $\beta = 0$ and $\alpha = 1$ we have the identity function $f ( x ) = x$ ; when $\alpha = 0$ we have the constant function $L ( x ) = \beta$

. Given real numbers $\alpha , ~ \beta , ~ \gamma , \delta$ , define the fractional-linear function $F$ by

$$
F ( x ) = \frac { \alpha x + \beta } { \gamma x + \delta } .
$$

The (implied) domain here consists of those real numbers $_ x$ for which $\gamma x + \delta$ is a unit (i.e. $\gamma x + \delta > 0$ or $\gamma x + \delta < 0$ ）

· Define the squaring function to be $x ^ { 2 } = x \cdot x$ ; more generally, for $N$ a positive integer, define the Nth power function to be $\scriptstyle x ^ { N } = \underbrace { x \cdot x \cdot \cdot \cdot \cdot \cdot x } _ { N \ f a c t o r s }$

DEFINITION 2.1.3 （INVERSE FUNCTIONS ON INTERVALS） SupPOSe

We say that $g : [ f ( A ) , f ( B ) ] \longrightarrow [ A , B ]$ is an inverse for $f$ if

We say that $f$ and $g$ are inverses of each other if, in addition,

DEFINITION 2.1.4 We write $f : [ A , B ] \longrightarrow I$ if, for each $x \in [ A , B ]$ ， $f \left( x \right) \in I$

1. $f : \lfloor A , B \rfloor \longrightarrow I$ is called surjective (or onto) if, for each $z \in I$ ， there is some $x \in \left[ A , B \right]$ (depending on $z$ ）such that $z = f ( x )$ ·

2. $f : \lfloor A , B \rfloor \longrightarrow I$ is called injective (or 1-to-1） if $f ( x _ { 1 } ) = f ( x _ { 2 } )$ implies that $x _ { 1 } = x _ { 2 }$ ·

The proof of the following facts is a direct consequence of the definitions,and will be left as an exercise.

PROPOSITION 2.1.5 Suppose $f : \left\lfloor A , B \right\rfloor \longrightarrow \mathbb { R }$

1.If $f : [ A , B ] \longrightarrow [ f ( A ) , f ( B ) ]$ and $g$ is an inverse for $f$ ，then $f$ is surjective and $g$ is injective.

2.If $f ( A ) \leq f \left( B \right)$ and $f$ and $g$ are inverses of each other, then $f : [ A , B ] \longrightarrow$ $| f ( A ) , f ( B ) |$ ，and both $f$ and $g$ are injective and surjective (1-to-1 and onto).

A $B$ ExAMPLE 2.1.6 $f ( x ) = 1 - | 1 - x |$ on the interual $\widehat { | \mathrm { ~ 0 ~ , ~ } 3 / 2 | }$ Then $f ( 0 ) = 0 <$ $f ( A ) \quad f ( B )$ $1 / 2 \ = \ f ( 3 / 2 )$ . The function $g ( z ) ~ = ~ z$ on the interval $\widehat { \Gamma ^ { 0 } \mathrm { ~ , ~ } 1 / 2 } ]$ is an inverse for $f$ .Note that $f$ is surjective but not injective, since $f \left( 1 / 2 \right) = f \left( 3 / 2 \right)$ ， while $g : | 0 , 1 / 2 | \longrightarrow | 0 , 3 / 2 |$ is injective but not surjective.

We will be interested in finding some conditions that will guarantee that a function, defined on some interval $\lfloor A , B \rfloor$ , has an inverse.

Some functions can be inverted simply by solving for $_ { x }$ .For example, for the fractional-linear function $\frac { \alpha x + \beta } { \gamma x + \delta }$ ， we can write $\begin{array} { r } { y = \frac { \alpha x + \beta } { \gamma x + \delta } } \end{array}$ and find that $\begin{array} { r } { x = \frac { \delta y - \beta } { - \gamma y + \alpha } } \end{array}$ (with appropriate domains). In general, though,we will have to make some sort of assumptions to guarantee that,for each allowable real number $z$ lying in some interval,we can find an $_ { x }$ in the domain of $f$ such that $f ( x ) = z$ ； furthermore,we want to avoid the possibility that there might be more than one such $_ { x }$ ，since that will complicate our task of finding the right one. So,it will be useful to make sure that $f ( x _ { 1 } ) = f ( x _ { 2 } )$ implies that $x _ { 1 } = x _ { 2 }$ ． Also,for reasons that will become clear when you see how the construction unfolds,we want $f ( x _ { 1 } )$ and $f ( x _ { 2 } )$ to be close when $x _ { 1 }$ and $x _ { 2 }$ are close.

One way to meet these conditions on $f$ is to assume that $f$ satisfies Lipschitz conditions.1

DEFINITION 2.1.7（LIPSCHITZ CONDITIONS） SuPpOse that $f$ is defined on the in-terval $\lfloor A , B \rfloor$

1. The function $f$ satisfies a left Lipschitz condition if there is a real number $L > 0$ such that $L \cdot ( y - x ) \leq f ( y ) - f ( x )$ for all $A \leq x \leq y \leq B$   
2. The function $f$ satisfies a right Lipschitz condition if there is a real number $K > 0$ such that $f ( y ) - f ( x ) \leq K \cdot ( y - x )$ for all $A \leq x \leq y \leq B$   
3. $f$ satisfies a two-sided Lipschitz condition if it satisfies both left and right conditions with $L \leq K$

Please note that Lipschitz conditions aren't unique,and don't have to be the best possible. Consider the function $f ( x ) = x ^ { 3 } + 2 x + 1$ on the interval $\lfloor 0 , 2 \rfloor$ We can write

$$
{ \begin{array} { l l l } { f ( y ) - f ( x ) } & { = } & { \left( y ^ { 3 } + 2 y + 1 \right) - \left( x ^ { 3 } + 2 x + 1 \right) } \\ & { = } & { \left( y ^ { 3 } - x ^ { 3 } \right) + 2 ( y - x ) } \\ & { = } & { ( y - x ) ( y ^ { 2 } + x y + x ^ { 2 } ) + 2 ( y - x ) } \\ & { = } & { ( y ^ { 2 } + x y + x ^ { 2 } + 2 ) ( y - x ) . } \end{array} }
$$

For $_ x$ and $y \mathrm { i n }$ the interval $\lfloor 0 , 2 \rfloor$ ， $y ^ { 2 } + x y + x ^ { 2 } + 2$ is never bigger than 14 nor less than 2,so $f$ satisfies the Lipschitz conditions:

$$
2 ( y - x ) \leq f ( y ) - f ( x ) \leq 1 4 ( y - x ) .
$$

Onthe otherditi ${ \frac { 3 } { 2 } } ( y - x ) \leq f ( y ) - f ( x ) \leq 1 5 ( y - x )$ . In fact,if $0 < L \leq 2$ and $1 4 \leq K$ ,then $f$ also satisfies $L \cdot ( y - x ) \leq f ( y ) - f ( x ) \leq K \cdot ( y - x )$ If $f$ satisfies a two-sided Lipschitz condition we can deduce two important facts:

· $f \left( x \right) \leq f \left( y \right)$ when $x \leq y$ and $f \left( x \right) < f \left( y \right)$ when $x < y$ （ $f$ is strictly increasing). · $f ( y ) - f ( x ) \leq K \cdot \delta$ when $| y - x | \leq \delta$

These are easy exercises.

We are now ready to find inverses.

# Exercises

1. Find Lipschitz conditions for the function $P ( x ) = 2 x ^ { 2 } - 3 x + 4$ on the interval [1,3].

2. Show that the squaring and cubing functions satisfy left and right Lipschitz condition on any interval $\lfloor A , B \rfloor$ with $0 < A \le B$ .To find them,note that $y ^ { 2 } - x ^ { 2 } = ( y + x ) ( y - x )$ and $y ^ { 3 } - x ^ { 3 } = ( y ^ { 2 } + y x + x ^ { 2 } ) ( y - x )$ . Now see how big or small $( y + x )$ and $( y ^ { 2 } + y x + x ^ { 2 } )$ can be on the interval $\lfloor A , B \rfloor$

3.Prove that neither the squaring nor cubing functions can satisfy a left Lipschitz condition on any interval containing O. (Hint: Use the factorizations of the previous exercise; show that $x + y$ (resp. $x ^ { 2 } + x y + y ^ { 2 } )$ can be made arbitrarily small while $y - x > 0$ . You can let $x = 0$ for simplicity.） Can either function satisfy a right Lipschitz condition on such an interval?

4. Show that the function $w ( x ) = \frac { x ^ { 2 } } { 1 + x }$ satisfies a two-sided Lipschitz conditions on every interval $\lfloor A , B \rfloor$ where $A > 0$

5.If $f$ satisfies a left Lipschitz condition, prove that $f \left( x \right) \leq f \left( y \right)$ when $x \le y$ and $f \left( x \right) < f \left( y \right)$ when $x < y$ .(That is, $f$ is strictly increasing). Prove also that $f ( x ) = f ( y )$ implies $x = y$ (so $f$ is 1-to-1). Think of this as a cancellation law: in a certain sense we can cancel $f$ from the equation $f \left( x \right) = f \left( y \right)$

6. The left Lipschitz condition says that a function “can’t grow too slowly"； explain. Suppose the function also satisfies a right Lipschitz condition: then it “can't grow too rapidly.” Explain.

7. Find an interval and Lipschitz conditions for the function $h ( x ) = 7 - 3 0 x +$ $3 3 x ^ { 2 } - 4 x ^ { 3 }$ on that interval.(Hint:This is tricky. It may help to write $y ^ { 2 } + y x + x ^ { 2 }$ as $( y + x ) ^ { 2 } - x y$ and let $u = y + x$ .）

8. Assume $f$ and $g$ satisfy Lipschitz conditions $L _ { f } \cdot ( y - x ) \leq f ( y ) - f ( x ) \leq$ $K _ { f } \mathbf { \nabla } \cdot ( y - x )$ and $L _ { g } \cdot ( y - x ) \leq g ( y ) - g ( x ) \leq K _ { g } \cdot ( y - x )$ on an interval $\lfloor A , B \rfloor$

(a）Find Lipschitz conditions for the functions $f + g$ and $\lambda f$ （ $\lambda > 0$ a constant).   
(b） Find Lipschitz conditions for the composition $f \circ g$ , assuming it is defined.   
(c) Suppose $f$ and $g$ are positively bounded on $\lfloor A , B \rfloor$ ，meaning that there are constants such that $0 < S _ { f } \leq f ( x ) \leq T _ { f }$ ， $0 < S _ { g } \le g ( x ) \le T _ { g }$ .Find Lipschitz conditions for the product $f g$ (Hint: Add and subtract $f ( x ) g ( y )$ when looking at $f ( y ) g ( y ) - f ( x ) g ( x ) )$

9.Suppose that $f$ satisfies a two-sided Lipschitz condition on $\lfloor A , B \rfloor$ . Prove that $| f ( y ) - f ( x ) | \leq K \cdot | y - x |$ for all $x , y \in \left\lfloor A , B \right\rfloor$ (with no assumptions on the relative sizes of $_ { x }$ and $_ y$ ). (Hint: Use the fact that $x \leq y$ and $y \le x$ can't both be ruled out—see Remark 1.5.36.)

# 2.2An Inverse Function Theorem

THEOREM 2.2.1 (INVERSE FUNCTION THEOREM） SuppOse the function $f$ is defined on the interval $\lfloor A , B \rfloor$ ，and that for some constants $K , L$ with $0 < L \le K$ ， we have the two-sided Lipschitz condition

$$
L ( y - x ) \leq f ( y ) - f ( x ) \leq K ( y - x )
$$

whenever $A \leq x \leq y \leq B$ . Then we can define a function $g : \lfloor f ( A ) , \ f ( B ) \rfloor \to \lfloor A , B \rfloor$ such that $f \left( g ( z ) \right) = z$ and the Lipschitz condition

$$
\frac 1 K ( w - z ) \leq g ( w ) - g ( z ) \leq \frac 1 L ( w - z )
$$

is satisfied for all $f ( A ) \leq z \leq w \leq f ( B )$

A naive proof of this theorem,using bisection,would proceed as follows. Start with the interval $\left\lfloor a _ { 0 } , b _ { 0 } \right\rfloor \ = \ \left\lfloor A , B \right\rfloor$ and construct a sequence of nested intervals $\left\lfloor a _ { 0 } , b _ { 0 } \right\rfloor \supset \cdots \supset \left\lfloor a _ { k - 1 } , b _ { k - 1 } \right\rfloor \supset \left\lfloor a _ { k } , b _ { k } \right\rfloor \supset \cdots$ ，with $f ( a _ { k } ) \leq z \leq f ( b _ { k } )$ We would construct these recursively, that is,using the one already found to find the next. So suppose that $\left\lfloor a _ { k } , b _ { k } \right\rfloor$ has been defined with $z$ lying between $f ( a _ { k } )$ and $f ( b _ { k } )$ Let $_ { m }$ be its midpoint (i.e. $m = ( a _ { k } + b _ { k } ) / 2 )$ ，and look at $f ( m )$ If $z \leq f ( m )$ ， then $f ( a _ { k } ) \leq z \leq f ( m )$ ，s0 $f ^ { - 1 } ( z )$ would lie between $a _ { k }$ and $_ { m }$ (we are assuming $f$ is increasing;i.e.if $x \ \leq \ y$ then $f \left( x \right) \leq f \left( y \right) \rangle$ .In this case,we would choose the next interval $[ a _ { k + 1 } , b _ { k + 1 } ]$ to be $\lfloor a _ { k } , m \rfloor$ . On the other hand, if $f ( m ) \leq z$ ，then $f ( m ) \leq z \leq f ( b _ { k } )$ ， so we would choose $\left\lfloor a _ { k + 1 } , b _ { k + 1 } \right\rfloor = \left\lfloor m , b _ { k } \right\rfloor$ . Each of the intervals $\lfloor a _ { k } , m \rfloor$ ， $[ m , b _ { k } ]$ have half the length of $\left[ a _ { k } , b _ { k } \right]$ . Repeating this process yields a nested (hence consistent） family of real intervals,each one-half the length of the previous one. By the Completeness Theorem, this family would have a limit which we call $g ( z )$ , our candidate for $f ^ { - 1 } ( z )$

There is only one thing wrong with this approach: it may not be possible to determine the relative sizes of $f ( m )$ and $z$ because it is not always possible to compare two reals in this way. This is a very“real” problem in implementing a bisection method of this type on a computer. It may turn out that to a thousand binary or decimal places, $f ( m )$ and $z$ are equal—possibly as a result of rounding errors. Even worse,differences in algorithms or rounding errors may produce,in the thousandth place, $f ( m ) < z$ when,in fact, $f ( m ) > z$ . We are careful to avoid this problem in the proof that follows.

We first prove the following useful lemma.

LEMMA 2.2.2 If $x \in I = \lfloor r , s \rfloor$ and $z \in J = \lfloor u , v \rfloor$ where $I$ and $J$ are intersecting real intervals, then

$$
| z - x | \leq \ell ( I ) + \ell ( J ) .
$$

Proof. Intuitively, since $I$ and $J$ intersect, the widest interval they can span occurs when they meet at just one endpoint:

![](images/f0f98c1f8f86e6fe5200a829d271e0c643aad3e7b39fe55fa8e83b1eaba68109.jpg)

Here's the formal argument. Since $r \leq x \leq s$ and $u \leq z \leq v$ ， $( z - v ) + ( r - x ) \leq 0$ Thus

$$
\begin{array} { l l l } { z - x } & { \le } & { v - r = v - ( u - u ) - r + ( s - s ) } \\ & { = } & { ( v - u ) + ( s - r ) + ( u - s ) } \\ & { \le } & { \ell ( J ) + \ell ( I ) } \end{array}
$$

since $u - s \leq 0$ (because $I$ and $J$ intersect). Starting with $x - z$ instead of $z - x$ ，a similar argument shows that $x - z \leq \ell ( I ) + \ell ( J )$ S0 $- \ell ( I ) - \ell ( J ) \leq z - x$ and we are done (by Proposition 1.5.26).■

Proof of the Inverse Function Theorem.The proof will use a variation of the bisection method. We will want to trap $z$ in the images of smaller and smaller subintervals of $\lfloor A , B \rfloor$ . To do that,we will have to make comparisons of $z$ and $f ( m )$ ， where $_ { m }$ is a midpoint of one of these subintervals. Since the real numbers $z$ and $f ( m )$ are families of rational intervals,we will need to use a comparison scheme that exploits this representation. It turns out that using a kind of “threefold"bisection does the job:we will look at the images of the left half, the right half,and the middle half of subintervals of $\lfloor A , B \rfloor$

Suppose $f ( A ) \leq z \leq f ( B )$ and let $I _ { 0 } ( z ) = \lfloor a _ { 0 } , b _ { 0 } \rfloor = \lfloor A , B \rfloor$ .Suppose that $I _ { 0 } ( z ) \supset I _ { 1 } ( z ) \supset \cdots \supset I _ { n } ( z ) = [ a _ { n } , b _ { n } ]$ have already been defined, with

$$
\begin{array} { r c l } { { f ( a _ { n } ) } } & { { \leq } } & { { z \leq f ( b _ { n } ) } } \\ { { } } & { { } } & { { } } \\ { { \ell \left( I _ { j + 1 } \right) } } & { { = } } & { { { \frac { 1 } { 2 } } \ell \left( I _ { j } \right) . } } \end{array}
$$

We will now construct $I _ { n + 1 }$

For simplicity of notation, let $a = a _ { n }$ and $b = b _ { n }$ .Take $m = ( a + b ) / 2$ ， $p =$ $( 3 a + b ) / 4$ ，and $q = ( a + 3 b ) / 4$ . Consider the intervals $\lfloor a , m \rfloor$ ， $\lfloor m , b \rfloor$ and $[ p , q ]$ ，each with length $\ell ( \lfloor a , b \rfloor ) / 2$ . These are the left, right and middle halves of the interval $[ a , b ]$ We can now look at the images of these intervals under $f$ ， $\left\lfloor f ( a ) , f ( m ) \right\rfloor$ ， $\lfloor f ( m ) , f ( b ) \rfloor$ and $\left\lfloor f ( p ) , f ( q ) \right\rfloor$ , and ask: “In which one does $z$ lie?” Here's a picture:

![](images/6b82ff83d3d8d2eaa219bf5a76ddd74a658f4faa1522719b496dbe44584557da.jpg)

To make this determination,let's suppose that $I$ is a rational interval in the family of the real number $f ( m )$ and $J$ is a rational interval in the real $z$ .For the moment,let these intervals be arbitrary (we'll place some length restrictions on them shortly). Since $I$ and $J$ have rational endpoints,we can compare them,with only three possible results. If $I < J$ ，then $f ( m ) < z$ ；if $I > J$ ,then $f ( m ) > z$ . The third possibility is that $I$ and $J$ intersect. This case leads to the following diagram.

What parts of this diagram can we actually verify? Because of the left Lipschitz condition, $f$ is non-decreasing,so the relative placement of $f ( a )$ ， $f ( \boldsymbol p )$ ， $f ( m )$ ， $f ( q )$ ， and $f ( b )$ is correct.The diagram also correctly reflects the assumptions that $I$ and $J$ intersect and that $I$ is an interval of $f ( m )$ . Since we are looking for a subinterval of $\lfloor a , b \rfloor$ whose image under $f$ contains $z$ , the diagram suggests that $\left\lfloor p , q \right\rfloor$ will work if we can guarantee that $z$ is sufficiently close to $f ( m )$ . Can we make this happen by choosing the lengths of $I$ and $J$ small enough? Here's where the lemma we just proved helps.It tells us that $z$ and $f ( m )$ can't differ by more than $\ell ( I ) + \ell ( J )$ .On the other hand, $f ( \boldsymbol p )$ and $f ( q )$ can't be too close to $f ( m )$ because of the left Lipschitz condition:

$$
f ( m ) - f ( p ) \geq L \cdot { \frac { b - a } { 4 } } > 0
$$

and

$$
f ( q ) - f ( m ) \geq L \cdot \frac { b - a } { 4 } > 0 .
$$

The distance between either $f ( \boldsymbol p )$ or $f ( q )$ and $f \left( m \right)$ is at least $\epsilon = L \cdot { \frac { b - a } { 4 } }$ Since $I$ and $J$ come from fine families,we can assume that they satisfy $\ell ( I ) + \ell ( J ) < \epsilon$ ,S0 we have $| z - f ( m ) | \leq \epsilon$ . Putting our inequalities together, we have

$$
f ( p ) \leq f ( m ) - \epsilon \leq z \leq f ( m ) + \epsilon \leq f ( q ) .
$$

Thus $f ( p ) \leq z \leq f ( q )$

In summary, here is the definition of $I _ { n + 1 }$ ， assuming that $I _ { n } ( z ) ~ = ~ \lfloor a , b \rfloor$ has already been constructed and that we have chosen intervals $I \in f ( m )$ and $J \ \in \ z$

with $\ell ( I ) + \ell ( J ) < \epsilon = L \cdot { \frac { b - a } { 4 } }$ ：

$$
I _ { n + 1 } = { \left\{ \begin{array} { l l } { [ m , b ] } & { { \mathrm { i f ~ } } I < J , } \\ { [ a , m ] } & { { \mathrm { i f ~ } } I > J , } \\ { [ p , q ] } & { { \mathrm { i f ~ } } I { \mathrm { ~ a n d ~ } } J { \mathrm { ~ i n t e r s e c t . } } } \end{array} \right. }
$$

Note that for each $k$ we have $\ell ( I _ { k } ) = ( B - A ) / 2 ^ { k }$

Let $\Sigma ( z , f ) = \{ I _ { k } : k = 0 , 1 , 2 , \ldots \}$ . This is a family of nested intervals containing arbitrarily small ones,so it is consistent and fine.Applying the Completeness Theorem, define $g ( z ) = \operatorname* { l i m } { \Sigma ( z , f ) }$

Then $g ( z )$ is a real number such that for each $k$ ，

$$
a _ { k } \leq g ( z ) \leq b _ { k } .
$$

Hence

$$
f ( a _ { k } ) \leq f ( g ( z ) ) \leq f ( b _ { k } ) .
$$

By construction, we also have

$$
f ( a _ { k } ) \leq z \leq f ( b _ { k } ) .
$$

Thus,both $f ( g ( z ) )$ and $z$ lie in each interval $\lfloor f ( a _ { k } ) , f ( b _ { k } ) \rfloor$ . These intervals are arbitrarily fine because

$$
f ( b _ { k } ) - f ( a _ { k } ) \leq K \cdot ( b _ { k } - a _ { k } ) = K \cdot ( B - A ) / 2 ^ { k } .
$$

(Here is where we finally use the right Lipschitz condition!） By Proposition 1.7.7 on the uniqueness of limits,we can conclude that $f ( g ( z ) ) = z$

Now we will verify that inequalities $( * * )$ hold. We know that $g ( w )$ and $g ( z )$ are both in $\lfloor A , B \rfloor$ . We know that $g ( w ) \geq g ( z )$ because if $g ( w ) < g ( z )$ ， we would have $0 < L \cdot ( g ( z ) - g ( w ) ) \leq f ( g ( z ) ) - f ( g ( w ) ) = z - w$ or $z > w$ ，which contradicts the assumption.Therefore,since $A \leq g ( z ) \leq g ( w ) \leq B$ ，we get

$$
0 \leq L \cdot ( g ( w ) - g ( z ) ) \leq f ( g ( w ) ) - f ( g ( z ) ) = w - z \leq K \cdot ( g ( w ) - g ( z ) ) .
$$

From $L \cdot ( g ( w ) - g ( z ) ) \leq w - z$ we get $g ( w ) - g ( z ) \leq \frac { 1 } { L } ( w - z )$ , and from the last inequality we get $\cfrac 1 K ( w - z ) \leq g ( w ) - g ( z )$ . Thus we have established our Lipschitz conditions for $g$

It is possible to give a somewhat shorter proof of this construction using $\epsilon$ -Trichotomy (Proposition 1.6.9)—see the exercises.

COROLLARY 2.2.3 In the Inverse Function Theorem, it is also true that, for any $x \in \left[ A , B \right]$ ， $g ( f ( x ) ) = x$

Proof. Exercise ■

As we have noted, the left Lipschitz condition implies that the function is nondecreasing. There is a version of the Inverse Function Theorem for decreasing functions. Here the Lipschitz constants are negative,but everything else is pretty much the same.

THEOREM 2.2.4 (INVERSES OF DECREASING FUNCTIONS） SuppOSe the real-valued function $f$ is defined on the interval $\lfloor A , B \rfloor$ and that for some constants $K ^ { \prime } , L ^ { \prime }$ with $L ^ { \prime } \leq K ^ { \prime } < 0$ ， we have the two-sided Lipschitz condition

$$
L ^ { \prime } ( y - x ) \le f ( y ) - f ( x ) \le K ^ { \prime } ( y - x )
$$

whenever $A \leq x \leq y \leq B$ . Then we can define a function $g : | f ( B )$ ， $f ( A ) |  \lfloor A , B \rfloor$ such that $f \left( g ( z ) \right) = z$ and the Lipschitz condition

$$
\frac { 1 } { K ^ { \prime } } ( w - z ) \leq g ( w ) - g ( z ) \leq \frac { 1 } { L ^ { \prime } } ( w - z )
$$

is satisfied for all $f ( B ) \leq z \leq w \leq f ( B )$

Proof. There are two ways to prove this. The most straightforward is to go back through the proof of the usual IFT(Theorem 2.2.1 above） and make the slight changes necessary to make it work under these new Lipschitz conditions. On the other hand, it is annoying to have to do all this work over again. Fortunately, there is a trick.Note that the function $- f$ is increasing,and satisfies the conditions of the usual IFT.Finding an inverse for $- f$ yields an inverse for $f$ . The details are left as one of the exercises at the end of this section.■

When $n > 0$ , we can apply the Inverse Function Theorem to find $_ { n }$ th roots. The following algebraic lemma and corollary,easily proved by induction, establish the necessary Lipschitz conditions.

LEMMA 2.2.5 For all $x , y \in \mathbb { R }$ and $n \in \mathbb N$ ，

$$
y ^ { n } - x ^ { n } = \left( \sum _ { i = 0 } ^ { n - 1 } y ^ { i } x ^ { n - 1 - i } \right) ( y - x )
$$

COROLLARY 2.2.6 If $0 < A \leq x \leq y \leq B$ then

$$
n A ^ { n - 1 } ( y - x ) \leq y ^ { n } - x ^ { n } \leq n B ^ { n - 1 } ( y - x ) .
$$

The role of this lemma and corollary and further details about $_ { n }$ th roots are discussed in the exercises.

Note that $K$ and $L$ are not allowed to be $0$ in Lipschitz conditions.If you look through the proof of the IFT you can see why $K = 0$ ， for example, is not useful. Nevertheless, the squaring function, for example, does have the square root function as an inverse on any interval $| 0 , B |$ . However, the square root does not satisfy any Lipschitz condition of the form ${ \sqrt { y } } - { \sqrt { x } } \leq K ( y - x )$ on any interval containing 0. You can see this easily by letting $x = 0$ in such a relation and noting that ${ \sqrt { y } } / y$ can't be bounded by any $K$ on an interval $| 0 , B |$ ．Thus,we have to modify the statement of the IFT and its proof, slightly, to deal with intervals containing 0. We will state the results here,but leave their proofs as exercises.

THEOREM 2.2.7 (IFT: ONE-SIDED CASE） Suppose that $f$ is defined on the interval $| 0 , B |$ with $f ( 0 ) = 0$ and $f ( B ) = D > 0$ . Suppose also that for each $A$ with $0 < A \leq$ $B$ ， we have a number $L _ { A } > 0$ (depending on $A$ ）such that

$$
L _ { A } \cdot ( y - x ) \leq f ( y ) - f ( x ) \quad f o r \ a l l \ A \leq x \leq y \leq B
$$

and another number $K > 0$ such that

$$
f ( y ) - f ( x ) \leq K \cdot ( y - x ) \quad f o r \ a l l \ 0 \leq x \leq y \leq B .
$$

Then we can define a function $g : [ 0 , D ] \to [ 0 , B ]$ such that for each $z \in \left[ 0 , D \right]$ ， $f ( g ( z ) ) = z$ . Furthermore, $g$ will satisfy Lipschitz conditions on all intervals of the form $\lfloor P , D \rfloor$ where $0 < P \le D$ and $C \leq - Q < 0$

THEOREM 2.2.8 (IFT: TWO-SIDED CASE） Suppose that $A < 0 < B$ and that $f$ is defined on the interval $[ A , B ]$ with $F ( A ) = C$ ， $f ( B ) = D$ and $f ( 0 ) = 0$ . Suppose also that for each $0 < E \le B$ , we have a number $L _ { E } > 0$ (depending on $E$ ）with

$$
L _ { E } \cdot ( y - x ) \leq f ( y ) - f ( x ) \ f o r \ a l l \ E \leq x \leq y \leq B
$$

and, for each $A \leq F < 0$ ， a number $L _ { F } ^ { \prime }$ (depending on $F$ ）with

Finally, suppose that there is a $K > 0$ with

$$
f ( y ) - f ( x ) \leq K \cdot ( y - x ) \ f o r \ a l l \ A \leq x \leq y \leq B .
$$

Then we can define a function $g : [ C , D ] \to [ A , B ]$ such that for each $z \in | C , D |$ ， $f ( g ( z ) ) = z$ . Furthermore, $g$ will satisfy Lipschitz conditions on all interuals of the form $\left\lfloor P , D \right\rfloor$ or $\left[ C , - Q \right]$ where $0 < P \le D$ and $C \leq - Q < 0$

Applying the one-sided case of IFT to evenpower functions,we see that their inverses,even roots,are defined on intervals $| 0 , B |$ . The two-sided case shows that odd roots are defined on anyinterval. The details of these applications of the IFT to general $_ { n }$ th powers we leave for the exercises.

DEFINITION $2 . 2 . 9 _ { \_ } \sqrt { }$ ，or $( ~ ) ^ { \frac { 1 } { n } }$ , is the inverse of the function $( ~ ) ^ { n }$ . When n is odd, this function is defined on any interval; when $_ n$ is even it is defined only on intervals $\lfloor A , B \rfloor$ with $A \geq 0$

# Exercises

1. We know from the last set of exercises that squaring and cubing satisfy Lipschitz conditions on any finite interval $\lfloor A , B \rfloor$ with $A > 0$ ．Use this to show that any number $C > 0$ has a square root and a cube root.To do, this you'll need to show that there are always positive real numbers $A$ and $B$ such that $A ^ { 2 } \le C \le B ^ { 2 }$ . (Hint: $A = \operatorname* { m i n } ( C , 1 )$ and $B = \operatorname* { m a x } ( C , 1 )$ should work. Explain why.)

2. We know from the last set of exercises that squaring and cubing satisfy Lipschitz conditions on any finite interval $\lfloor A , B \rfloor$ with $A > 0$ .What does the Inverse Function Theorem say about the Lipschitz conditions satisfied by √ and on an interval $| C , D |$ with $0 < C \le D$ ? Be careful in answering this question，since the Inverse Function Theorem as stated gives the Lipschitz conditions for the inverse $g$ in terms of $_ { x }$ and $_ y$ , lying in $\lfloor A , B \rfloor$ ,the interval for the original function $f$ . Now you want to express the Lipschitz conditions for the inverse function (here the root function) in terms of variables $w$ and $z$ lying in some $| C , D |$ . Thus,you'll have to find the corresponding $A$ and $B$ in terms of $C$ and $D$ in order to apply the IFT. The preceding exercise should be helpful.

3. More generally, prove that for all $x , y \in \mathbb { R }$ and $n \in \mathbb N$ ，

$$
y ^ { n } - x ^ { n } = \left( \sum _ { i = 0 } ^ { n - 1 } y ^ { i } x ^ { n - 1 - i } \right) ( y - x ) .
$$

(Hint: Induction is a good method). Discuss how this result gives us Lipschitz conditions for general $n$ th power functions on intervals $\lfloor A , B \rfloor$ with $A > 0$

4.Apply exercise 3 above to show that any number $C > 0$ has an $_ { n }$ th root；see the hint in exercise 1 above.

5.Apply the Inverse Function Theorem to deduce the existence of $_ { n }$ th roots on intervals $| C , D |$ ，with $0 < C \le D$ . Give the Lipschitz conditions satisfied by $_ { n }$ th roots on this interval in the form $L \cdot ( w - z ) \leq \sqrt [ n ] { w } - \sqrt [ n ] { z } \leq K \cdot ( w - z )$ ， where $L$ and $K$ are expressed in terms of $C$ and $D$ . The previous exercise will be helpful.

6.Redo the previous two exercises in light of the one- and two-sided cases of the Inverse Function Theorem (see Theorems 2.2.7 and 2.2.8).

7.Let $A _ { 1 } , A _ { 2 } , . . . , A _ { n }$ be positive real numbers,and define the following.

(a) The arithmetic mean: $A = { \frac { A _ { 1 } + A _ { 2 } + \cdots + A _ { n } } { n } }$ (b) The geometric mean: $G = \sqrt [ n ] { A _ { 1 } \cdot A _ { 2 } \cdot \cdot \cdot \cdot \cdot A _ { n } }$

(c) The harmonic mean:

$$
H = { \frac { 1 } { { \frac { 1 } { n } } \left( { \frac { 1 } { A _ { 1 } } } + { \frac { 1 } { A _ { 2 } } } + \cdot \cdot \cdot + { \frac { 1 } { A _ { n } } } \right) } } = { \frac { n } { { \frac { 1 } { A _ { 1 } } } + { \frac { 1 } { A _ { 2 } } } + \cdot \cdot \cdot + { \frac { 1 } { A _ { n } } } } }
$$

Prove that $A \geq G \geq H$ . (Hint: Look at exercise 10 on page 55.)

8.Give a shorter proof of the Inverse Function Theorem by making use of $\epsilon$ Trichotomy (Proposition 1.6.9): compare $z$ with $f ( m )$ , taking $\epsilon = L \cdot ( b - a ) / 4$

9.Prove Theorem 2.2.4, the IFT for decreasing functions,using the trick of replacing the decreasing function $f$ by the increasing function $- f$ .Note the new Lipschitz conditions you get,and figure out how the inverse $g$ for $- f$ can be used to get an inverse for $f$

10.(Technical) Prove the One-sided and Two-sided versions of the Inverse Function Theorem (Theorems 2.2.7 and 2.2.8). Here is a sketch of the more difficult twosided case,using $\epsilon$ -Trichotomy. (Make sure you understand the proof of IFT before trying this variation; doing exercise 8 first is a good idea).

Proof. Suppose $A < 0 < B$ .Let $L ^ { \prime } ( F )$ be the left Lipschitz constant on $\lfloor A , F \rfloor$ and let $L ( E )$ be the left Lipschitz constant on $\lfloor E , B \rfloor$ . Divide $\lfloor A , 0 \rfloor$ into fourths $( A , 3 A / 4 , A / 2 , A / 4 , 0 )$ and divide $| 0 , B |$ into fourths $( 0 , B / 4 , B / 2 , 3 B / 4 , B )$ Use $\epsilon$ -Trichotomy:first let $\epsilon ^ { \prime } = L ^ { \prime } ( A / 4 ) \cdot ( A / 4 )$ If $z ~ < ~ f ( A / 2 )$ ，the next interval is $\lfloor A , A / 2 \rfloor$ .If $z$ is within $\epsilon ^ { \prime }$ of $f ( A / 2 )$ , the next interval is $\lfloor 3 A / 4 , A / 4 \rfloor$ If $z ~ > ~ f ( A / 2 )$ let $e \ = \ L ( B / 4 ) \cdot ( B / 4 )$ ，and apply $\epsilon$ -trichotomy again.If $z > f ( B / 2 )$ ,the next interval is $\lfloor B / 2 , B \rfloor$ ；if $z$ within $\epsilon$ of $f ( B / 2 )$ ，the next interval is $\lfloor B / 4 , 3 B / 4 \rfloor$ .Finally, if $z < f ( B / 2 )$ , the next interval is $\lfloor A / 2 , B / 2 \rfloor$ Note that in all cases save the very last,we are reduced to the standard construction from IFT, since we have Lipschitz conditions on the full interval. In the last case we repeat these steps since $A / 2 < 0 < B / 2$

11. Suppose we know the basic facts from calculus about $\exp ( x ) = e ^ { x }$ and $\ln ( x )$ ， namely that $\textstyle \ln ( x ) = \int _ { 1 } ^ { x } ( 1 / t ) d t$ s0 $\ln ( y ) - \ln ( x ) = \textstyle \int _ { x } ^ { y } ( 1 / t ) d t$ and that $\exp ( x )$ is the inverse of $\ln ( x )$ .Also suppose we know that the integral of a function is bounded below (resp.above） by the product of the length of the interval of integration with the smallest (resp. biggest） value of the function on the interval.(Draw a diagram to see that this makes sense.） Use this to find Lipschitz conditions on the logarithm over a finite interval $\lfloor A , B \rfloor$ ， $0 < A \le B$ ， then find Lipschitz conditions on the exponential function over an interval $| C , D | = \left\lfloor \ln A , \ln B \right\rfloor$ . We will discuss the calculus of these functions in more detail in Section 6.2. Inequalities for ln (and similar ones for $\log _ { A }$ ）will be derived in the next section without using calculus (see page 97).

12. Consider the function $f ( x ) = x ^ { 2 }$

(a) Find a Lipschitz condition for $f$ on the interval $D = [ . 8 3 2 , . 8 3 3 ]$   
(b） Because of this condition, we know that $f$ has an inverse on this interval. It is,of course, the square root function. Now recall the assignment where you worked with the real number called “ $\mathrm { l n } 2 ^ { \circ }$ (see page 42). Verify that $\ln 2 \in f ( D ) = D ^ { 2 } = [ . 8 3 2 ^ { 2 } , . 8 3 3 ^ { 2 } ]$ . Do this by finding a small enough rational interval bracketing $\ln { 2 }$ and contained in $D ^ { 2 }$   
(c） The proof of the Inverse Function Theorem describes how to find a rational subinterval $E \subset D$ having length half that of $D$ such that $\ln 2 \in E ^ { 2 }$ .Go through the details of finding this subinterval and find it.

You will need to compute some very small intervals in $\ln { 2 }$ to do the above, so the following outline of a computer program may be helpful if you haven't done much programming. This will ask you for $K$ and then compute the left and right endpoints of the $K$ th interval of $\ln { 2 }$

<table><tr><td>input K 0-&gt;S</td></tr><tr><td>For N= 1 to K do begin S +1/(2*N-1) -&gt; S S - 1/(2*N) -&gt; S</td></tr><tr><td>end output S REMLeft endpoint output S+1/(2*K+1) REM Right endpoint</td></tr></table>

# 2.3 The Exponential Function

We need to define $A ^ { x }$ for real numbers $_ x$ and $A$ ,with $A > 0$ . We already know how to define $A ^ { n }$ for $n \in \mathbb N$ (the natural numbers), since this is just repeated multiplication, so our next step is to extend this to $n \in \mathbb { Z }$ (the integers).Once we have $A ^ { n }$ for integer exponents,we'll extend the definition to rational exponents, then finally to real exponents (via the Completeness Theorem） by looking at the family of real intervals $\lfloor A ^ { r } , A ^ { s } \rfloor$ ，where $\lfloor r , s \rfloor$ varies over the rational intervals in the real number $_ { x }$

DEFINITION 2.3.1 Let $A$ be a positive real number and n an integer. Then

1. $A ^ { 0 } = 1$   
2.For $n > 0 , \ A ^ { n + 1 } = A \cdot A ^ { n }$   
3.For $n < 0$ ， $A ^ { n } = 1 / \left( A ^ { - n } \right) = 1 / \left( A ^ { | n | } \right)$

PROPOSITION 2.3.2（LAWS OF EXPONENTS FOR INTEGERS） GiUen $A , B \in \mathbb { R }$ andm and n integers,

1. $A ^ { m + n } = A ^ { m } A ^ { n }$   
2. $( A ^ { m } ) ^ { n } = A ^ { m n }$   
3. $( A B ) ^ { n } = A ^ { n } B ^ { n }$

Proof. The case where $_ { m }$ and $_ n$ are both positive can be proved easily by induction.   
The other cases use the previous definition for negative exponents — see exercises.

The next useful fact is a direct consequence of the Inverse Function Theorem and is a type of cancellation theorem (we are cancelling the exponent $_ { n }$

LEMMA 2.3.3 （R0OT LEMMA） Suppose $A , B$ are positive reals and $n \ne ~ 0$ is an integer. Then $A ^ { n } = B ^ { n }$ implies $A = B$

Proof. Exercise.■

Our next step is to define $A ^ { r }$ for rationals $r = m / n$ . Since there are two possibilities, $( A ^ { 1 / n } ) ^ { m }$ and $( A ^ { m } ) ^ { 1 / n }$ , it is nice to know that it doesn't make a difference. This is shown by the following lemma.

LEMMA 2.3.4 Given q real number $A > 0$ and $m , n \in \mathbb { Z } , ( A ^ { 1 / n } ) ^ { m } = ( A ^ { m } ) ^ { 1 / n } .$

Proof. By the definition of inverse function, we have $\left[ ( A ^ { m } ) ^ { 1 / n } \right] ^ { n } = A ^ { m }$ Also $\left[ ( A ^ { 1 / n } ) ^ { m } \right] ^ { n } = ( A ^ { 1 / n } ) ^ { m n } = ( A ^ { 1 / n } ) ^ { n m } = \left[ ( A ^ { 1 / n } ) ^ { n } \right] ^ { m } = A ^ { m }$ .Applying the Root Lemma (2.3.3) above completes the proof. $|$

DEFINITION 2.3.5 For a rational number $r = m / n > 0$ with $m , n \in \mathbb { N }$ and $A > 0$ ， $A ^ { r } = ( A ^ { m } ) ^ { 1 / n }$

DEFINITION 2.3.6 For a rational number $r < 0$ and $A > 0$ ， $A ^ { r } = 1 / ( A ^ { - r } )$

LEMMA 2.3.7 If $A , B > 0$ are real and $_ n$ is a non-zero integer, then $( A B ) ^ { 1 / n } =$ $A ^ { 1 / n } B ^ { 1 / n }$

Proof.Deal with the cases $n > 0$ and $n < 0$ separately. Raise both sides to the $_ { n }$ th power,show that you get the same number, then apply the Root Lemma.

For rationals we now have the fundamental exponent laws.

PROPOSITION 2.3.8 (LAWS OF EXPONENTS FOR RATIONALS） SupPOSe $A , B > 0$ arereals and $r , s$ rationals.Then

1. $r = s \Longrightarrow A ^ { r } = A ^ { s }$   
2. $( A B ) ^ { r } = A ^ { r } B ^ { r }$   
3. $A ^ { r + s } = A ^ { r } A ^ { s }$   
4. $( A ^ { r } ) ^ { s } = A ^ { r s }$

Proof. We prove just the first part. Suppose that $r = m / n$ and $s = m ^ { \prime } / n ^ { \prime }$ with $m , n , m ^ { \prime } , n ^ { \prime } > 0$ . Since $r = s$ , we know that $m n ^ { \prime } = m ^ { \prime } n$ . Then

$$
\begin{array} { r l } & { \quad ( A ^ { r } ) ^ { n n ^ { \prime } } = ( A ^ { m / n } ) ^ { n n ^ { \prime } } = \left[ ( A ^ { m / n } ) ^ { n } \right] ^ { n ^ { \prime } } = ( A ^ { m } ) ^ { n ^ { \prime } } = A ^ { m n ^ { \prime } } } \\ & { \quad ( A ^ { s } ) ^ { n n ^ { \prime } } = ( A ^ { m ^ { \prime } / n ^ { \prime } } ) ^ { n n ^ { \prime } } = \left[ ( A ^ { m ^ { \prime } / n ^ { \prime } } ) ^ { n ^ { \prime } } \right] ^ { n } = ( A ^ { m ^ { \prime } } ) ^ { n } = A ^ { m ^ { \prime } n } . } \end{array}
$$

Thus $( A ^ { r } ) ^ { n n ^ { \prime } } = ( A ^ { s } ) ^ { n n ^ { \prime } }$ ,s0 $A ^ { r } = A ^ { s }$ by the Root Lemma. Suppose that $r$ and $s$ are negative. Then we have $A ^ { r } = ( 1 / A ) ^ { - r } = ( 1 / A ) ^ { | m | / | n | }$ and $A ^ { s } = ( 1 / A ) ^ { \vert m ^ { \prime } \vert / \vert n ^ { \prime } \vert }$ By what we have just proved, these last numbers are equal and we are done. The other parts are proved in a similar fashion.

Having defined $A ^ { r }$ for rational $r$ ,we are now ready to work on $A ^ { x }$ for $_ x$ real. The idea will be to construct a family of intervals of the form $\lfloor A ^ { r } , A ^ { s } \rfloor$ with $\lfloor r , s \rfloor \in x$ and apply the Completeness Theorem.We first deal with the case $A \geq 1$ ，since in this case the function $A ^ { r }$ increases with $r$

PROPOSITION 2.3.9 Suppose $A \in \mathbb R$ ， $A \geq 1$ ，and $r , s \in \mathbb { Q }$ with $r \leq s$ . Then $A ^ { r } \leq A ^ { s }$

Proof. We have $A ^ { r } \leq A ^ { s }$ if and only if $1 \leq A ^ { s - r }$ . Since $s - r$ is non-negative, it suffices to show that $A ^ { u } \geq 1$ for any non-negative rational $_ u$

First note that for $n \in \mathbb N$ ， we have $A ^ { n } \geq A \geq 1$ (this is easily established by induction).

In Corollary 2.2.6,we obtained the inequality $y ^ { n } - x ^ { n } \leq n A ^ { n - 1 } ( y - x )$ on the interval $\lfloor 1 , A \rfloor$ .Let $f ( x ) = x ^ { n }$ ； then $f : \lfloor 1 , A \rfloor \to \lfloor 1 , A ^ { n } \rfloor$ .Using this and applying the IFT to $f$ , we see that $\textstyle { \frac { 1 } { n A ^ { n - 1 } } } ( w - z ) \leq w ^ { 1 / n } - z ^ { 1 / n }$ on the interval $\displaystyle { \lfloor 1 , A ^ { n } \rfloor }$ . Since we have just shown that $1 \leq A \leq A ^ { n }$ , we can let $w = A$ and $z = 1$ ,obtaining

$$
0 \leq { \frac { 1 } { n A ^ { n - 1 } } } ( A - 1 ) \leq A ^ { 1 / n } - 1 .
$$

Thus $A ^ { 1 / n } \geq 1$ for any real $A \geq 1$ . Since $A ^ { m } \geq 1$ ， we can replace the $A$ in $A ^ { 1 / n }$ by $A ^ { m }$ ， giving us $A ^ { u } = A ^ { m / n } = ( A ^ { m } ) ^ { 1 / n } \geq 1$

We now turn to $A ^ { x }$ for $A \geq 1$ and $_ { x }$ real. Recall that $x ^ { * }$ is the family consisting of all rational intervals $\lfloor r , s \rfloor$ where $r \leq x \leq s$ . For any rational interval $\lfloor r , s \rfloor$ in $x ^ { * }$ ， we have already defined $A ^ { r }$ and $A ^ { s }$ ，and by the proposition just proved，we know that $A ^ { r } \leq A ^ { s }$

Let $\Sigma ( A , x ) = \{ \vert A ^ { r } , A ^ { s } \vert : \vert r , s \vert \in x ^ { * } \}$ . To prove that this family is fine, we establish a fundamental inequality for exponentials (here just for rational exponents).

LEMMA 2.3.10 For real $A \geq 1$ and rationals $r \leq s$

$$
A ^ { r } \left( 1 - { \frac { 1 } { A } } \right) ( s - r ) \leq A ^ { s } - A ^ { r } \leq A ^ { s } ( A - 1 ) ( s - r ) .
$$

Proof. Let $s - r = m / n$ with $_ { m }$ and $_ { n }$ non-negative integers. Apply Corollary 2.2.6 to $f ( x ) = x ^ { m }$ on the interval [1, $A ^ { 1 / n } ]$ to get

$$
m ( A ^ { 1 / n } - 1 ) \leq A ^ { m / n } - 1 \leq m ( A ^ { 1 / n } ) ^ { m - 1 } ( A ^ { 1 / n } - 1 ) .
$$

Apply the corollary again to $\phi ( x ) = x ^ { n }$ on the interval [1, $A ^ { 1 / n } ]$ to get

$$
\begin{array} { r } { n ( A ^ { 1 / n } - 1 ) \le A - 1 \le n ( A ^ { 1 / n } ) ^ { n - 1 } ( A ^ { 1 / n } - 1 ) . } \end{array}
$$

For clarity, we label the four separate parts of this inequality as

(1) $m ( A ^ { 1 / n } - 1 ) \leq A ^ { m / n } - 1$ (2) $A ^ { m / n } - 1 \leq m ( A ^ { 1 / n } ) ^ { m - 1 } ( A ^ { 1 / n } - 1 )$

（4) (3） $\begin{array} { l } { { n ( A ^ { 1 / n } - 1 ) \leq A - 1 } } \\ { { A - 1 \leq n ( A ^ { 1 / n } ) ^ { n - 1 } ( A ^ { 1 / n } - 1 ) } } \end{array}$ Inequality (3) gives

$$
A ^ { 1 / n } - 1 \leq { \frac { A - 1 } { n } } ,
$$

while (4) yields:

$$
A ^ { 1 / n } - 1 \geq { \frac { A - 1 } { n } } A ^ { ( 1 - n ) / n } = { \frac { A - 1 } { n } } { \frac { A ^ { 1 / n } } { A } } \geq { \frac { 1 } { n } } \left( 1 - { \frac { 1 } { A } } \right) .
$$

Multiplying this last inequality by $_ { m }$ and combining with (1） gives:

$$
{ \frac { m } { n } } \left( 1 - { \frac { 1 } { A } } \right) \leq m \left( A ^ { 1 / n } - 1 \right) \leq A ^ { m / n } - 1 .
$$

Now note that, since $- 1 / n \leq 0$ , we know that $A ^ { - 1 / n } \leq 1$ so we have

$$
( A ^ { 1 / n } ) ^ { m - 1 } = A ^ { m / n } A ^ { - 1 / n } \leq A ^ { m / n } .
$$

Combining this fact with (2) and (3) gives us

$$
\begin{array} { r c l } { { A ^ { m / n } - 1 } } & { { \le } } & { { m \left( A ^ { m / n } \right) \left( A ^ { 1 / n } - 1 \right) } } \\ { { } } & { { \le } } & { { m \left( A ^ { m / n } \right) \left( \displaystyle \frac { A - 1 } { n } \right) = \displaystyle \frac { m } { n } \left( A ^ { m / n } \right) ( A - 1 ) . } } \end{array}
$$

Putting ( $^ *$ and $( ^ { * * } )$ together yields

$$
{ \frac { m } { n } } \left( 1 - { \frac { 1 } { A } } \right) \leq A ^ { m / n } - 1 \leq { \frac { m } { n } } A ^ { m / n } ( A - 1 ) .
$$

Since $m / n = s - r$ ， we have $A ^ { s } - A ^ { r } = A ^ { r } ( A ^ { m / n } - 1 )$ , and therefore

$$
A ^ { r } \left( 1 - { \frac { 1 } { A } } \right) ( s - r ) \leq A ^ { s } - A ^ { r } \leq A ^ { s } ( A - 1 ) ( s - r ) .
$$

PROPOSITION 2.3.11 $\Sigma ( A , x )$ is a consistent and fine family.

Proof. Given $\lfloor A ^ { r } , A ^ { s } \rfloor$ and $\lfloor A ^ { u } , A ^ { v } \rfloor$ in $\Sigma ( A , x )$ ，we know that $r \ \leq \ x \ \leq \ s$ and $u \leq x \leq v$ . Therefore $u \leq s$ and $r \leq v$ . So,by the Proposition 2.3.9, $A ^ { u } \leq A ^ { s }$ and $A ^ { r } \leq A ^ { v }$ . Thus the two intervals intersect,and we have established consistency.

Now, given $\epsilon > 0$ , we must find an interval in $\Sigma ( A , x )$ of length less than $\epsilon$ Let us fix an interval $\lfloor c , d \rfloor$ in $x ^ { * }$ . For any subinterval $\lfloor r , s \rfloor$ of $\lfloor c , d \rfloor$ , we can apply Lemma (2.3.10) to obtain

$$
\begin{array} { l l l } { \overbrace { A ^ { c } ( 1 - 1 / A ) } ^ { L } ( s - r ) } & { \leq } & { A ^ { r } \left( 1 - 1 / A \right) ( s - r ) } \\ & { \leq } & { A ^ { s } - A ^ { r } \leq A ^ { s } ( A - 1 ) ( s - r ) } \\ & { \leq } & { \underbrace { A ^ { d } ( A - 1 ) } _ { K } ( s - r ) } \end{array}
$$

or

$$
L \cdot ( s - r ) \leq A ^ { s } - A ^ { r } \leq K \cdot ( s - r ) .
$$

Therefore,to get an interval $\lfloor A ^ { r } , A ^ { s } \rfloor$ in $\Sigma ( A , x )$ with length less than $\epsilon$ ，we can simply choose $\lfloor r , s \rfloor$ to be any subinterval of $\lfloor c , d \rfloor$ having length less than $\epsilon / K$ ： $-$

It may be worthwhile to explain here why we had to expand the family $_ { x }$ to the family $x ^ { * }$ .We have to be careful in trying to deduce arbitrary fineness from the inequality $A ^ { s } - A ^ { r } \leq A ^ { s } ( A - 1 ) ( s - r )$ . Making $s - r$ arbitrarily small on the right-hand side may make $A ^ { s }$ unboundedly large at the same time.This is because we know that the family $_ x$ is fine,which only means that we can find some $[ r , s ] \in x$ with $s - r$ small. However, the algorithm for doing so may force $s$ (and hence $r$ ）to be large.But since the intersection of any two intervals in $x ^ { * }$ is also in $x ^ { * }$ ，we can restrict ourselves to subintervals of a fixed constant interval, as we did at the end of the proof.

We now could use the following to define the exponential function:

1. For $A \geq 1$ ,let $A ^ { x } = \operatorname* { l i m } ( \Sigma ( A , x ) )$ ，  
2.For $0 < A \leq 1$ let $A ^ { x } = ( 1 / A ) ^ { - x }$

However,it is much simpler to define $A ^ { x }$ in terms of a single family of intervals for $_ x$ without having to separate into cases.Fortunately, this is not hard to do.

DEFINITION 2.3.12 (LIMITING FAMILY FOR $A ^ { x }$ ）For $A > 0$ ，

$$
S ( A , x ) = \{ [ \operatorname* { m i n } ( A ^ { r } , A ^ { s } ) , \operatorname* { m a x } ( A ^ { r } , A ^ { s } ) ] : [ r , s ] \in x ^ { * } \} .
$$

If we know how big $A$ is,then the definition of this family can be simplified.For $A > 0$ and $r , s \in \mathbb { Q }$ ，

1. When $A \geq 1$ ， $\lfloor \operatorname* { m i n } ( A ^ { r } , A ^ { s } ) , \operatorname* { m a x } ( A ^ { r } , A ^ { s } ) \rfloor = \lfloor A ^ { r } , A ^ { s } \rfloor .$   
2. When $A \leq 1$ ， $[ \operatorname* { m i n } ( A ^ { r } , A ^ { s } ) , \operatorname* { m a x } ( A ^ { r } , A ^ { s } ) ] = [ A ^ { s } , A ^ { r } ] .$

PROPOSITION 2.3.13 $S ( A , x )$ is a consistent and fine family.

Proof. We will deal with the two cases $A \leq 1$ and $A \geq 1$ separately. (We have discussed this method of reasoning in the proof of Proposition 1.5.35.） We have proved the case for $A \geq 1$ .For $A \leq 1$ we have $1 / A \geq 1$ , and for $\lfloor r , s \rfloor$ and $\left\lfloor u , v \right\rfloor$ in $x ^ { * }$

we have $r \leq v$ and $u \leq s$ . This implies that $( 1 / A ) ^ { r } \leq ( 1 / A ) ^ { v }$ and $( 1 / A ) ^ { u } \leq ( 1 / A ) ^ { s }$ and therefore $A ^ { v } \leq A ^ { r }$ and $A ^ { s } \leq A ^ { u }$ ，s0 $\lfloor A ^ { s } , A ^ { r } \rfloor$ and $\lfloor A ^ { v } , A ^ { u } \rfloor$ intersect.So $S ( A , x )$ is consistent for both $A \geq 1$ and $A \leq 1$ ,and therefore is consistent.

Now we will show that $S ( A , x )$ contains arbitrarily smallintervals. Take any $\lfloor r , s \rfloor$ in $x ^ { * }$ .For $A \geq 1$ ，we have

$$
0 \leq A ^ { s } - A ^ { r } \leq A ^ { s } ( A - 1 ) ( s - r ) .
$$

For $A \leq 1$ , replacing $A$ by $1 / A$ in the equation above yields

$$
0 \leq A ^ { r } - A ^ { s } \leq A ^ { r - 1 } ( 1 - A ) ( s - r ) .
$$

So if we fix an interval $\lfloor c , d \rfloor$ in $x ^ { * }$ , the following hold for all subintervals $\lfloor r , s \rfloor$ of that interval.

(1）By relation ( $^ *$ ）， $0 \leq A ^ { s } - A ^ { r } \leq A ^ { d } ( A - 1 ) ( s - r )$ if $A \geq 1$ (2）By relation $( * * )$ ， $0 \leq A ^ { r } - A ^ { s } \leq A ^ { c - 1 } ( 1 - A ) ( s - r )$ if $A \leq 1$

By the relations above, for $A > 0$ we have

$$
| A ^ { s } - A ^ { r } | \leq ( s - r ) \operatorname* { m a x } ( A ^ { d } , A ^ { c - 1 } ) | A - 1 | .
$$

But

$$
\ell ( [ \operatorname* { m i n } ( A ^ { r } , A ^ { s } ) , \operatorname* { m a x } ( A ^ { r } , A ^ { s } ) ] ) = \operatorname* { m a x } ( A ^ { r } , A ^ { s } ) - \operatorname* { m i n } ( A ^ { r } , A ^ { s } ) = | A ^ { s } - A ^ { r } | .
$$

Therefore we can use inequality $( * * * )$ to get arbitrarily small intervals in $S ( A , x )$

We now can give the definition of the exponential function in terms of the single family $S$

DEFINITION 2.3.14（THE EXPONENTIAL FUNCTION） For $A > 0$ ， $A ^ { x } = \operatorname* { l i m } ( S ( A , x ) )$

PROPOSITION 2.3.15(LAWS OF EXPONENTS FOR REALS） Given real numbers $A$ ， $B$ ，$_ { x }$ ，and $_ y$ with $A , B > 0$ ，

1.If $x = y$ (as reals) then $A ^ { x } = A ^ { y }$

2. $A ^ { x + y } = A ^ { x } A ^ { y }$

3. $( A ^ { x } ) ^ { y } = A ^ { x y }$

4 $( A B ) ^ { x } = A ^ { x } B ^ { x }$

Proof. If $x = y$ as reals, then $x ^ { * } \sim y ^ { * }$ , and it is easy to see that every interval in $S ( A , x )$ meets every interval in $S ( A , y )$ . Apply Corollary 1.8.6 to conclude that their limits are equal, so $A ^ { x } = A ^ { y }$

We next show that $( A ^ { x } ) ^ { y } = A ^ { x y }$ in the case where $A \geq 1$ and $x \geq 0$ .First, assume $_ y$ is rational, $y = \{ \vert u , u \vert \}$ .For $[ r , s ] \in x$ ， $A ^ { x } \in [ A ^ { r } , A ^ { s } ]$ and hence

$$
( A ^ { x } ) ^ { y } \in [ \operatorname* { m i n } ( A ^ { r u } , A ^ { s u } ) , \operatorname* { m a x } ( A ^ { r u } , A ^ { s u } ) ] .
$$

On the other hand, $x u \in \left| \operatorname* { m i n } ( r u , s u ) , \operatorname* { m a x } ( r u , s u ) \right|$ ，s0

$$
A ^ { x u } \in [ \operatorname* { m i n } ( A ^ { r u } , A ^ { s u } ) , \operatorname* { m a x } ( A ^ { r u } , A ^ { s u } ) ]
$$

as well. Since the family of intervals $\left| \operatorname* { m i n } ( A ^ { r u } , A ^ { s u } ) , \operatorname* { m a x } ( A ^ { r u } , A ^ { s u } ) \right|$ is fine (by the fundamental inequality of Lemma 2.3.10), $( A ^ { x } ) ^ { u } = A ^ { x u }$ .Now suppose $\lfloor u , v \rfloor \in y$ Then

$$
A ^ { x y } \in [ A ^ { x u } , A ^ { x v } ] = [ ( A ^ { x } ) ^ { u } , ( A ^ { x } ) ^ { v } ] .
$$

But,by the definition of $( A ^ { x } ) ^ { y }$ ， $( A ^ { x } ) ^ { y }$ belongs to $[ ( A ^ { x } ) ^ { u } , ( A ^ { x } ) ^ { v } ]$ as well. Since the family of such intervals is fine, we must have $( A ^ { x } ) ^ { y } = A ^ { x y }$ . The remaining cases and properties are proved similarly.■

COROLLARY 2.3.16 $A ^ { - x } = 1 / ( A ^ { x } )$

PROPOSITION 2.3.17（BOUNDS FOR EXPONENTIAL FUNCTIONS） For $0 \leq c \leq x \leq$ $y \leq d$ ，

$$
A ^ { c } \left( 1 - { \frac { 1 } { A } } \right) ( y - x ) \leq A ^ { y } - A ^ { x } \leq A ^ { d } ( A - 1 ) ( y - x ) .
$$

Proof. We will prove the first inequality; the second is proved similarly. The idea is to find a limiting family $\boldsymbol { S }$ for $A ^ { c } \left( 1 - { \textstyle { \frac { 1 } { A } } } \right) ( y - x )$ and a limiting family $\boldsymbol { \mathcal { T } }$ for $A ^ { y } - A ^ { x }$ ,and to show that $U \leq V$ for every lower bound $U$ of $\boldsymbol { S }$ and upper bound $V$ of $\boldsymbol { \tau }$ . Then $S \le T$ , and we can invoke Proposition 1.8.5 (“weak inequalities are preserved in the limit"）to conclude that $\operatorname* { l i m } ( S ) \leq \operatorname* { l i m } ( T )$

Let $Q$ be any rational upper bound for $d$ . Then we have $0 \leq c \leq x \leq y \leq d \leq Q$ Let $I = \left\lfloor 0 , Q \right\rfloor$ . Replace each rational interval in the families defining the real numbers $c$ ， $_ { x }$ ， $_ y$ ，and $d$ by its intersection with $I$ . By doing so,we can assume that all lower bounds for any of these families are non-negative. We will need this to simplify our construction of product families below.

Let $c _ { R }$ ， $x _ { R }$ ,and $_ { y R }$ be the limiting families obtained by converting every rational interval in $c$ ， $_ { x }$ and $_ y$ into a real interval having the same endpoints. From the section on limiting families (1.8.1),we know that these families of real intervals have limits $c$ ， $_ x$ ，and $_ y$ ,respectively.

Let $\mathcal { F }$ be the family containing the single interval $\lfloor 1 - 1 / A , 1 - 1 / A \rfloor$ Let ${ \boldsymbol { S } } =$ $A ^ { ( c _ { R } ) } \cdot F \cdot ( y _ { R } - x _ { R } )$ and $\mathcal { T } = A ^ { ( y _ { R } ) } - A ^ { ( x _ { R } ) }$ .To find a typical lower bound for $\boldsymbol { S }$ ， pick arbitrary intervals $| r _ { c } , s _ { c } | \in c _ { R }$ ， $| r _ { x } , s _ { x } | \in x _ { R }$ and $[ r _ { y } , s _ { y } ] \in y _ { R }$ ； these are real intervals with rational endpoints. Because we have made all our lower bounds non-negative,all these numbers and intervals are non-negative,so it follows from the definition of intervalmultiplicationand subtraction that $U = A ^ { ( r _ { c } ) } ( 1 - 1 / A ) ( r _ { y } - s _ { x } )$ is a typical lower bound for $\boldsymbol { S }$

In order to prove that $S \leq \mathcal { T }$ ，we only have to show that for each $\epsilon > 0$ there are intervals $I \in S$ and $J \in \mathcal { T }$ ,each with length less than $\epsilon$ ,such that the left-hand endpoint of $I$ is $\leq$ the right-hand endpoint of $J$ . (This is the content of Lemma 1.8.7 and its corollary, Eudoxus’Method of Exhaustion). So,for each pair of intervals $| r _ { c } , s _ { c } | \in x _ { R }$ and $[ r _ { x } , s _ { x } ] \in x _ { R }$ of length $< \epsilon$ ,replace $[ r _ { x } , s _ { x } ]$ by $| \mathrm { m a x } ( r _ { c } , r _ { x } ) , s _ { x } | \in x _ { R }$ This last interval also has length less than $\epsilon$ ，and $\operatorname* { m a x } ( r _ { c } , r _ { x } ) \leq r _ { c }$ . Thus, since the algebraic operations in $\begin{array} { r } { A ^ { c } \left( 1 - \frac { 1 } { A } \right) \left( y - x \right) \le A ^ { y } - A ^ { x } } \end{array}$ all preserve fineness, we need only look at intervals in $c _ { R }$ and $x _ { R }$ with the property $r _ { c } \le r _ { x }$

A typical upper bound for $\boldsymbol { \mathcal { T } }$ from this family is $V = A ^ { \left( s _ { y } ^ { \prime } \right) } - A ^ { \left( r _ { x } ^ { \prime } \right) }$ ，where $[ r _ { x } ^ { \prime } , s _ { x } ^ { \prime } ]$ and $[ r _ { y } ^ { \prime } , s _ { y } ^ { \prime } ]$ areanothersetofitervals in $x _ { R }$ and $_ { y R }$ respectively (and $r _ { c } \leq r _ { x } ^ { \prime }$ ). Since all the $r$ 's and $s$ 's are rational, we can use Lemma 2.3.1O again to see that

$$
\begin{array} { r l } & { U = A ^ { r _ { c } } ( 1 - 1 / A ) ( r _ { y } - s _ { x } ) \le A ^ { r _ { x } ^ { \prime } } ( 1 - 1 / A ) ( r _ { y } - s _ { x } ) } \\ & { \qquad \le A ^ { r _ { x } ^ { \prime } } ( 1 - 1 / A ) ( s _ { y } ^ { \prime } - r _ { x } ^ { \prime } ) } \\ & { \qquad \le A ^ { s _ { y } ^ { \prime } } - A ^ { r _ { x } ^ { \prime } } = V . } \end{array}
$$

We conclude $S \leq \mathcal { T }$ ■

COROLLARY 2.3.18 For the numbers A and c with $A \geq 0$ ，

1. $A \geq 1$ and $c \geq 0$ implies $A ^ { c } \geq 1$   
2. $A \geq 1$ and $c \leq 0$ implies $A ^ { c } \leq 1$   
3. $A \leq 1$ and $c \geq 0$ implies $A ^ { c } \leq 1$   
4. $A \leq 1$ and $c \leq 0$ implies $A ^ { c } \geq 1$

The first of these follows from the Proposition 2.3.17,and the others follow from the first by noting that $A ^ { - c } = 1 / ( A ^ { c } )$

It turns out that the assumption $0 \leq c \leq x \leq y \leq d$ can be weakened: the numbers don't have to be non-negative.In reading the proof below, note that we don't have to use intervals anymore. That part of the work was done in Proposition 2.3.10 above, and now we can proceed by simply dealing with the various cases.

PROPOSITION 2.3.19（LIPSCHITZ CONDITION FOR EXPONENTIAL FUNCTIONS） If$A > 0$ and $c \leq x \leq y \leq d$ ，then

$$
\underbrace { A ^ { c } \left( 1 - { \frac { 1 } { A } } \right) } _ { L } ( y - x ) \leq A ^ { y } - A ^ { x } \leq \underbrace { A ^ { d } ( A - 1 ) } _ { K } ( y - x ) .
$$

Before beginning the proof, we note that,for real numbers $c , \ x , \ y$ ,and $d$ , we can not rule out all of the following cases:

$\begin{array} { l } { 0 \leq c \leq x \leq y \leq d } \\ { c \leq 0 \leq x \leq y \leq d } \\ { c \leq x \leq 0 \leq y \leq d } \\ { c \leq x \leq y \leq 0 \leq d } \\ { c \leq x \leq y \leq d \leq 0 } \end{array}$

Thus,it suffces to prove the inequality in each of these cases. We will give the proof for $c \leq x \leq 0 \leq y \leq d$ and leave the others as exercises. We will need the following small but helpful result.

LEMMA 2.3.20 If $A \geq 0$ ，then $A ^ { c } ( 1 - 1 / A ) \leq ( 1 - 1 / A )$ and $( A - 1 ) \leq A ^ { d } ( A - 1 )$

Proof of the Lemma. We'll only show the first inequality; the proof of the second is similar. If $A > 1$ ,then $A ^ { c } \leq 1$ since $c$ is assumed non-positive. Multiplying by the non-negative quantity $1 - 1 / A$ gives us what we want. If $A = 1$ ,then both sides are equal. Finally, if $A < 1$ ，then $A ^ { c } \geq 1$ ， so multiplying by the non-positive quantity $( 1 - 1 / A )$ also gives us the inequality we want.■

Proof of the Proposition. Now we return to Proposition 2.3.19. Since $0 \leq y \leq d$ we can apply the inequality in a case we already know, with $c = 0 = x$ , to conclude

$$
A ^ { 0 } ( 1 - 1 / A ) y \leq A ^ { y } - A ^ { 0 } \leq A ^ { d } ( A - 1 ) y .
$$

Applying the first inequality of the lemma gives:

$$
A ^ { c } ( 1 - 1 / A ) y \leq A ^ { y } - 1 \leq A ^ { d } ( A - 1 ) y .
$$

Now we also have $0 \leq - x \leq - c$ ， so we can once again apply the inequality we already know, with $1 / A$ in place of $A$ , to obtain

$$
( 1 / A ) ^ { 0 } ( 1 - A ) ( - x ) \leq ( 1 / A ) ^ { - x } - 1 \leq ( 1 / A ) ^ { - c } ( 1 / A - 1 ) ( - x )
$$

or

$$
( 1 - A ) ( - x ) \leq A ^ { x } - 1 \leq A ^ { c } ( 1 / A - 1 ) ( - x ) .
$$

Finally, multiplying by $^ { - 1 }$ and using the lemma, we get the inequalities

$$
A ^ { c } ( 1 - 1 / A ) ( - x ) \leq 1 - A ^ { x } \leq ( A - 1 ) ( - x ) \leq A ^ { d } ( A - 1 ) ( - x ) ,
$$

which we add to $( * )$ to obtain the desired result.■

COROLLARY 2.3.21 For real numbers $A > 0$ and $x < y$ ，

1. $A > 1 \Longrightarrow A ^ { x } < A ^ { y }$   
2. $A \geq 1 \Longrightarrow A ^ { x } \leq A ^ { y }$   
3. $A < 1 \Longrightarrow A ^ { x } > A ^ { y }$   
4. $A \leq 1 \Longrightarrow A ^ { x } \geq A ^ { y } \mathbf { l }$   
5. $A = 1 \Longrightarrow A ^ { x } = A ^ { y } = 1$

COROLLARY 2.3.22 For real numbers $_ { x }$ and $0 < A < B$ ，

1. $x > 0 \Longrightarrow A ^ { x } < B ^ { x }$   
2. $x \geq 0 \Longrightarrow A ^ { x } \leq B ^ { x }$   
3. $x < 0 \Longrightarrow A ^ { x } > B ^ { x }$   
4. $x \leq 0 \Longrightarrow A ^ { x } \geq B ^ { x }$

5. $x = 0 \Longrightarrow A ^ { x } = B ^ { x } = 1$

This follows by applying the previous corollary to $A / B$

# The Logarithm Function

We start with the Lipschitz condition for exponential functions (Proposition 2.3.19). When $c \leq x \leq y \leq d$ and either $0 < A < 1$ or $A > 1$ , we have

$$
\underbrace { A ^ { c } \left( 1 - 1 / A \right) } _ { L } \cdot ( y - x ) \leq A ^ { y } - A ^ { x } \leq \underbrace { A ^ { d } ( A - 1 ) } _ { K } \cdot ( y - x ) .
$$

It is sometimes more convenient to write $A ^ { c } \left( 1 - 1 / A \right)$ as $A ^ { c - 1 } ( A - 1 )$ This is, of course,a two-sided Lipschitz condition，so we can apply the Inverse Function Theorem to the function $A ^ { x }$ to obtain its inverse,which we call $\log _ { A }$ . Note that if $0 < A < 1$ ,we have to use the IFT for decreasing functions (Theorem 2.2.4).

DEFINITION 2.3.23 When $0 < A < 1$ or $A > 1$ ， $\log _ { A } ( x )$ is the inverse of the function $A ^ { x }$ ·

We then have, for $A ^ { c } \leq z \leq w \leq A ^ { d }$ ，

$$
\frac { 1 } { A ^ { d } ( A - 1 ) } \cdot ( w - z ) \leq \log _ { A } ( w ) - \log _ { A } ( z ) \leq \frac { 1 } { A ^ { c } ( 1 - 1 / A ) } \cdot ( w - z ) .
$$

The only problem with this formula is that the Lipschitz conditions on the logarithm are written in terms of the interval $\lfloor c , d \rfloor$ ,which is part of a domain for the exponential function. Supposing that $0 < C \le z \le w \le D$ , can we express this inequality in terms of $C$ and $D$ ? We can if we can write $C = A ^ { c }$ and $D = A ^ { d }$ for some reals $c$ and $d$ . So the question boils down to the following: If $0 < C \le D$ are reals, can we find powers of $A$ such that $A ^ { P } \leq C \leq D \leq A ^ { Q \cdot }$

LEMMA 2.3.24 For any real $\alpha > 0$ and integer $P \geq 0$ ， $( 1 + \alpha ) ^ { P } \geq 1 + P \alpha$

The proof, by induction,is an exercise.

LEMMA 2.3.25 For any $\alpha > 0$ and $C > 0$ there is some $P$ such that $P \alpha > C$

Proof. Choose whole numbers such that $0 < C < m / n$ and $0 < m ^ { \prime } / n ^ { \prime } < \alpha$ .Then all you need is $P ( n m ^ { \prime } ) > m n ^ { \prime }$ (so $P = m n ^ { \prime }$ will work, for example). $\_$

COROLLARY 2.3.26 For any real $0 < A < 1$ or $A > 1$ and reals $0 < C \le D$ ， there exist integers $P$ and $Q$ such that $0 < A ^ { - P } \leq C \leq D \leq A ^ { Q }$ .

Proof. In the case $A > 1$ , choose $P$ such that $A ^ { P } > 1 / C$ ，s0 $A ^ { - P } < C$ , and choose $Q$ such that $A ^ { Q } > D$ . When $0 < A < 1$ consider $1 / A$ ,which is greater than 1.■

PROPOSITiON 2.3.27 The logarithm is defined on any interval $| C , D |$ with $C > 0$

Proof. Choose $P$ and $Q$ such that $0 < A ^ { - P } \leq C \leq D \leq A ^ { Q }$ and apply the IFT to $A ^ { x }$ on the interval $\lfloor - P , Q \rfloor$ ■

PROPOSITION 2.3.28 (LAWS OF THE LOG)

1. $\log _ { A } ( z ^ { w } ) = w \log _ { A } z$   
2. $\log _ { A } ( z w ) = \log _ { A } z + \log _ { A } w$   
3. $\log _ { A } ( z / w ) = \log _ { A } z - \log _ { A } w .$   
4. $\log _ { B } z = ( \log _ { A } z ) / ( \log _ { A } B )$

(These follow from similar properties for exponential functions and the fact that $A ^ { U } = A ^ { V }$ implies $U = V$ . See the exercises.)

# Exercises

1.Prove these properties of integer exponentiation frst when $_ { n }$ and $_ { m }$ are nonnegative (by induction),then when one or both of $n , m$ are negative:

(a) $A ^ { m + n } = A ^ { m } A ^ { n } .$ (b） $( A ^ { m } ) ^ { n } = A ^ { m n }$ （c） $( A B ) ^ { n } = A ^ { n } B ^ { n } .$

(Hint: Use the definition $A ^ { n } = 1 / \left( A ^ { - n } \right)$ when $_ n$ is negative.)

2. Prove the Root Lemma (Lemma 2.3.3): Suppose $A , B$ are positive reals and $n \neq 0$ is an integer. Then $A ^ { n } = B ^ { n }$ implies $A = B$

3. Using the definition $A ^ { m / n } = ( A ^ { m } ) ^ { 1 / n }$ ， prove, that $A ^ { ( - m ) / ( - n ) } = A ^ { m / n }$ when $m , n$ are positive integers.

4. Prove Proposition (2.3.15), the Laws of Exponents (two parts are proved in the text).

5. Prove Lemma 2.3.24 from the text: For any real $\alpha > 0$ and integer $P \geq 0$ ， $( 1 + \alpha ) ^ { P } \geq 1 + P \alpha$

6.Prove that if $0 < C \le D$ and $A > 0$ , then there is an integer $N$ such that $0 < A ^ { - N } < C \le D < A ^ { N }$

7. The function $\log _ { A } ( x )$ is defined on any interval $0 < C \le x \le D$ . Find Lipschitz conditions for $\log _ { A }$ in terms of $C$ and $D$

8. Prove the following properties of the logarithm using the corresponding property,proved in the text for exponentiation.

(a) $\log _ { A } ( z ^ { w } ) = w \log _ { A } z .$

$$
\begin{array} { r l } & { \log _ { A } ( z w ) = \log _ { A } z + \log _ { A } w . } \\ & { \log _ { A } ( z / w ) = \log _ { A } z - \log _ { A } w . } \\ & { \log _ { B } z = ( \log _ { A } z ) / ( \log _ { A } B ) . } \end{array}
$$

(Hint: $A ^ { L } = A ^ { R }$ implies $L = R$ ）

# 2.4Natural Logs and the Euler Number $e$

In order to take the mystery out of what we're about to do in this section,remember the computation from calculus where you look at the derivative of the function $f ( x ) = a ^ { x }$ ：

$$
\begin{array} { r c l } { f ^ { \prime } ( x ) } & { = } & { \displaystyle \operatorname* { l i m } _ { h \to 0 } \frac { a ^ { x + h } - a ^ { x } } { h } = \operatorname* { l i m } _ { h \to 0 } \frac { a ^ { x } \left( a ^ { h } - 1 \right) } { h } } \\ & { = } & { a ^ { x } \operatorname* { l i m } _ { h \to 0 } \frac { a ^ { h } - 1 } { h } . } \end{array}
$$

On the other hand, using the Chain Rule gives the formula $f ^ { \prime } ( x ) = a ^ { x } \ln a$ . So you deduce that $L ( a ) = \operatorname* { l i m } _ { h \to 0 } { \frac { a ^ { h } - 1 } { h } } = \ln a$ . Now we haven't done any calculus yet, but we will use this as motivation to examine the numbers $( a ^ { x } - 1 ) / x$ ，where $a > 1$ and $_ x$ is small and positive.

First note that

$$
{ \frac { 1 } { a ^ { x } } } \cdot { \frac { a ^ { x } - 1 } { x } } = { \frac { a ^ { - x } - 1 } { - x } } .
$$

Now,using the right-hand side of the Lipschitz condition for exponential functions (Proposition 2.3.19),with $a ^ { y }$ in place of $A$ ， $x / y$ in place of $_ y$ and $0$ in place of $_ { x }$ ，we get

$$
\left( a ^ { y } \right) ^ { x / y } - 1 \le \left( a ^ { y } \right) ^ { x / y } \left( a ^ { y } - 1 \right) \left( x / y \right)
$$

or

$$
a ^ { x } - 1 \leq a ^ { x } ( a ^ { y } - 1 ) ( x / y ) .
$$

Therefore

$$
\frac { a ^ { - x } - 1 } { - x } = \frac { 1 } { a ^ { x } } \cdot \frac { a ^ { x } - 1 } { x } \leq \frac { a ^ { y } - 1 } { y } .
$$

DEFINITION 2.4.1 For $a > 1$ let

$$
\Lambda ( a ) = \left\{ \left[ { \frac { a ^ { - x } - 1 } { - x } } , { \frac { a ^ { x } - 1 } { x } } \right] : x > 0 \right\} .
$$

PROPOSITION 2.4.2 $\Lambda ( a )$ is a consistent and fine family.

Proof. The consistency is an immediate consequence of inequality $( * * )$ To show that $\Lambda ( a )$ contains arbitrarily small intervals,note that

$$
\ell \left( \left[ \frac { a ^ { - x } - 1 } { - x } , \frac { a ^ { x } - 1 } { x } \right] \right) = \frac { a ^ { x } - 1 } { x } \left( 1 - \frac { 1 } { a ^ { x } } \right) = \frac { ( a ^ { x } - 1 ) ^ { 2 } } { x a ^ { x } } .
$$

But inequality $( * )$ ，with $y = 1$ , tells us that $a ^ { x } - 1 \leq x a ^ { x } ( a - 1 )$ .Therefore

$$
{ \frac { ( a ^ { x } - 1 ) ^ { 2 } } { x a ^ { x } } } \leq { \frac { x ^ { 2 } ( a ^ { x } ) ^ { 2 } } { x a ^ { x } } } ( a - 1 ) ^ { 2 } = x a ^ { x } ( a - 1 ) ^ { 2 }
$$

and $a ^ { x } \leq a$ for $0 < x \le 1$ . So we get

$$
\ell \left( \left[ \frac { a ^ { - x } - 1 } { - x } , \frac { a ^ { x } - 1 } { x } \right] \right) \leq x a ^ { x } ( a - 1 ) ^ { 2 } \leq x a ( a - 1 ) ^ { 2 } .
$$

Clearly, $x a ( a - 1 ) ^ { 2 }$ will be les han $\epsilon$ when $\begin{array} { r } { x < \frac { \epsilon } { a ( a - 1 ) ^ { 2 } } } \end{array}$

DEFINITION 2.4.3 Let $L ( a ) = \operatorname* { l i m } ( \Lambda ( a ) )$

(Think of $L ( a )$ as $\ln ( a )$ .）

REMARK 2.4.4 Note that, for all $x > 0$ and $a > 1$ ，

$$
{ \frac { a ^ { - x } - 1 } { - x } } \leq L ( a ) \leq { \frac { a ^ { x } - 1 } { x } } .
$$

PROPOSITION 2.4.5 For all $\lambda > 0$ ， $L ( a ^ { \lambda } ) = \lambda L ( a )$

Proof. Let $J$ be any interval in $\Lambda ( { a } ^ { \lambda } )$ .Then

$$
\begin{array} { l } { \displaystyle { J = \left[ \frac { ( a ^ { \lambda } ) ^ { - x } - 1 } { - x } , \frac { ( a ^ { \lambda } ) ^ { x } - 1 } { x } \right] = \left[ \lambda \frac { a ^ { - \lambda x } - 1 } { - \lambda x } , \lambda \frac { a ^ { \lambda x } - 1 } { \lambda x } \right] } } \\ { \displaystyle { \phantom { \frac { J = \lambda x } { J = \lambda x } } } } \\ { \displaystyle { = \lambda \left[ \frac { a ^ { - \lambda x } - 1 } { - \lambda x } , \frac { a ^ { \lambda x } - 1 } { \lambda x } \right] = \lambda \left[ \frac { a ^ { - y } - 1 } { - y } , \frac { a ^ { y } - 1 } { y } \right] } } \end{array}
$$

where $y = \lambda x$

Therefore, any interval in $J$ is of the form $\lambda I$ ，where $I$ is an interval in $\Lambda ( a )$ .So in the limit we have

$$
\operatorname* { l i m } ( \Lambda ( a ^ { \lambda } ) ) = \operatorname* { l i m } ( \lambda \Lambda ( a ) ) = \lambda \operatorname* { l i m } ( \Lambda ( a ) ) ,
$$

which implies that $L ( a ^ { \lambda } ) = \lambda L ( a )$

PROPOSITION 2.4.6 For all $a , b > 1$ ， $a ^ { 1 / L ( a ) } = b ^ { 1 / L ( b ) }$

Proof. Let $\lambda = \log _ { a } b$ . Then $b = a ^ { \lambda }$ , and we have

$$
b ^ { 1 / L ( b ) } = ( a ^ { \lambda } ) ^ { 1 / L ( a ^ { \lambda } ) } = ( a ^ { \lambda } ) ^ { 1 / ( \lambda L ( a ) ) } = a ^ { 1 / L ( a ) } .
$$

$A s i d e$ : Recall the basic property of logs, $\log _ { B } z = \log _ { A } z / \log _ { A } B$ . If we put $A =$ $e = z$ ，we get $\log _ { B } e = 1 / \log _ { e } B$ .Since our motivation for this is the belief—soon to be verified-that $L ( a ) = \log _ { e } a $ , then the result that $a ^ { 1 / L ( a ) }$ is the same for all $a$ just amounts to noting that $a ^ { 1 / L ( a ) } = a ^ { \log _ { a } e } = e$ ）

DEFINITION 2.4.7 The Euler number is given by $e = 2 ^ { 1 / L ( 2 ) }$

COROLLARY 2.4.8 For all $a > 1$ ， $e = a ^ { 1 / L ( a ) }$

REMARK 2.4.9 As we have noted aboe, $\begin{array} { r } { \frac { a ^ { - x } - 1 } { - x } \leq L ( a ) \leq \frac { a ^ { x } - 1 } { x } } \end{array}$ If we let $\begin{array} { r } { x = \frac { 1 } { 2 } } \end{array}$ and $a = 4$ ，we get $\begin{array} { r } { \frac { 1 - \frac { 1 } { 2 } } { \frac { 1 } { 2 } } \le L ( 4 ) \le \frac { 2 - 1 } { \frac { 1 } { 2 } } } \end{array}$ $\begin{array} { r } { s o \ \frac 1 2 \ \leq \ \frac { 1 } { L ( 4 ) } \ \leq \ 1 } \end{array}$ . The previous corollary gives $2 \leq e \leq 4$

PROPOSITION 2.4.10 For all $a > 0$ ， $L ( a ) = \log _ { e } a$

Proof. $e = a ^ { 1 / L ( a ) } \Longrightarrow e ^ { L ( a ) } = a \Longrightarrow L ( a ) = \log _ { e } a$

COROLLARY 2.4.11 $L ( e ) = 1$

COROLLARY 2.4.12 For all $x > 0$ ，

$$
{ \frac { e ^ { - x } - 1 } { - x } } \leq 1 \leq { \frac { e ^ { x } - 1 } { x } } .
$$

In particular, $e ^ { x } \geq 1 + x$

NOTATION 2.4.13 From now on we will use $\ln a$ in place of $\log _ { e } a$

Although the definition of the power function $x ^ { n }$ for $_ n$ an integer preceded our study of exponential functions,we need the latter to give a more general definition of the former when $_ { n }$ is not an integer. We have defined the function $A ^ { u }$ for fixed $A > 0$ and any real $^ u$ . So, for any $x > 0$ and any real $_ u$ we can define the number $x ^ { u }$ to be the value of $A ^ { u }$ when $A = x$ . This allows us to piece together the function $x ^ { u }$ However, it is nicer to give a definition in terms of functions we have alread defined. The key is to note that $e ^ { \ln x } = x$ ，since $e ^ { x }$ and $\ln x$ are inverse functions. Raising both sides to the power $^ u$ ，and using $( A ^ { x } ) ^ { y } = A ^ { x y }$ ，we are lead to the following definition.

DEFINITION 2.4.14（THE POWER FUNCTION） For $x > 0$ and real $_ u$ ，

$$
x ^ { u } = e ^ { u \cdot \ln x } .
$$

# Exercises

1.In a previous set of exercises from chapter 1 we defined a number called “ $\mathrm { I n } 2 ^ { \cdot }$ . In this section we defined, for each $^ { a }$ ,a family $\Lambda ( a )$ , whose limit we proved was equal to $\ln ( 2 )$ (where $\ln ( x )$ is the inverse of the function $e ^ { x }$ ). Given the suggestiveness of the notation,it is reasonable to suppose that these real numbers are equal, i.e. $\ln 2 = \ln ( 2 )$

(a) Examine the families for $\mathrm { I n 2 }$ and $\ln ( 2 )$ ,and write down conditions that would prove $\ln 2 = \ln ( 2 )$

(b） Try to find some numerical evidence that these conditions do hold.Aside from this numerical evidence and the suggestive nature of the notation, is there any apparent reason for believing that these real numbers are equal?

(As far as numerical evidence goes, note the following:

$$
e ^ { \pi { \sqrt { 1 6 3 } } } = 2 6 2 5 3 7 4 1 2 6 4 0 7 6 8 7 4 4 . 0 0 0 0 0 0 0 0 0 0 0
$$

to $_ { 1 1 }$ decimal places! But

# eV163 = 262537412640768743.99999999992507259719818568865

to 32 places!).

(c） Verifying these conditions directly seems to be a daunting task; do you have any ideas on how it might be done?

(d) The strong principle of real trichotomy says that, for reals $_ { x }$ and $_ y$ ，exactly one of the following conditions holds: $x < y$ ， $x = y$ ， $x > y$ .What evidence is there that this is correct? Opposing this principle is the following:“Generally, to prove two reals equal (or unequal) requires a theorem." Discuss these principles in the light of $\mathrm { I n 2 }$ and $\ln ( 2 )$ .We will be able to prove that $\ln { 2 }$ and $\ln ( 2 )$ are actually equal, later,after we discuss power series.

2. We have derived the following Lipschitz conditions for exponential functions:

$$
A ^ { c } \left( 1 - \frac 1 A \right) ( y - x ) \le A ^ { y } - A ^ { x } \le A ^ { d } ( A - 1 ) ( y - x ) ,
$$

where $c \leq x \leq y \leq d$ (see Proposition 2.3.19)

(a） Suppose now that $0 < C \le X \le Y \le D$ . Use the above inequality and the Inverse Function Theorem to find left and right Lipschitz conditions for the $\log _ { A }$ function. (This issue was discussed at the end of Section 2.3.)

(b) When $A = e$ , prove that we can obtain a better bound, namely

$$
{ \frac { Y - X } { D } } \leq \ln ( Y ) - \ln ( X ) \leq { \frac { Y - X } { C } } .
$$

2412. The e n-hand i $\begin{array} { r } { \frac { e ^ { - x } - 1 } { - x } \leq 1 \leq \frac { e ^ { x } - 1 } { x } } \end{array}$ e-1 for all x > 0—see Corollary king Corolaey $e ^ { x } \geq 1 + x$   
$x \geq \ln ( 1 + x )$ . Since $Y \geq X > 0$ ， we can write $Y / X = 1 + ( Y - X ) / X$ Now let $x = ( Y - X ) / X$ so $\ln ( Y / X ) = \ln Y - \ln X \leq { \frac { Y - X } { X } } \leq { \frac { Y - X } { C } }$ since $C \ \leq \ X$ .Prove the other half using $\textstyle { \frac { e ^ { - x } - 1 } { - x } } \leq 1$ and choosing $_ { x }$ carefully.)

(c) Now deal with the general base $A$ by noting that $\begin{array} { r } { \log _ { A } ( U ) = \frac { 1 } { \ln ( A ) } \ln ( U ) } \end{array}$ (obtained from $x = A ^ { \log _ { A } ( x ) }$ by applying ln to both sides).

