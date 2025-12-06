# 8.THE COMPLEX NUMBERS AND FOURIER SERIES

# 8.0 Introduction

In studying power series we considered the representation of a function as an infinite linear combination of powers of a variable $_ { x }$ , that is,sums of the form

$$
f ( x ) = \sum _ { k = 0 } ^ { \infty } s _ { k } x ^ { k } .
$$

This has some distinct advantages because the building blocks $x ^ { k }$ are easily computed and the convergence properties are relatively easy to establish. Many important functions, especially the exponential and trigonometric ones,have these Taylor series representations.

On the other hand, only functions that are infinitely differentiable-and not even allof such functions,as the example of $e ^ { - 1 / x ^ { 2 } }$ shows—have Taylor series converging to them.This is a major restriction, which excludes even such nice functions as $| x |$

In this section we look at a different approach: representing functions not in terms of powers of $_ { x }$ but in terms of the basic periodic functions $\sin k x$ and $\cos k x$ We are looking for representations of the form

$$
f ( x ) = \sum _ { k = 0 } ^ { \infty } a _ { k } \cos k x + b _ { k } \sin k x ,
$$

which are called Fourier series representations. Any function that has such a representation is periodic (since each of $\sin { k x }$ and $\cos k x$ is $2 \pi$ periodic). Conversely, many periodic functions can be represented by such series in the sense of pointwise convergence. Moreover，many of those periodic functions that have a convergent Fourier series representation do not have a Taylor series representation (because they are not suffciently differentiable). Finally, Fourier representations have many nice properties that make them easy to work with．For all these reasons, Fourier theory has turned out to be very important both in applications and in spurring the development of the field of analysis.

We will prove in this chapter that every periodic uniformly differentiable function has a Fourier series converging to it. This result requires some work. Proving it, however,will provide an opportunity to introduce, if only briefly, a number of ideas and constructions that are important in more advanced courses in functional analysis. These include

· the use of complex numbers and, especially, Euler's formula $e ^ { i \theta } = \cos \theta + i \sin \theta$ ；   
· the idea of general inner products and the important Bessel and CauchySchwartz inequalities;   
· kernel functions and approximate identities;   
· convolutions of functions.

This chapter is a bare introduction to Fourier Analysis. There is a huge literature on this subject; for further reading, see, for example,[Folland,1992],[Pinsky, 2002], [Stade, 2005].

# Some history

Let $y = y ( x , t )$ represent the $_ y$ coordinate at time $t$ of a point $_ { x }$ units from the end of a vibrating string whose endpoints are stationary. An analysis of the forces on such a string leads to the following classical partial differential equation,called the wave equation:

$$
{ \frac { \partial ^ { 2 } y ( x , t ) } { \partial t ^ { 2 } } } = c ^ { 2 } { \frac { \partial ^ { 2 } y ( x , t ) } { \partial x ^ { 2 } } } .
$$

Here are some facts about this motion.

· At any fixed position $x = k$ , the point undergoes a periodic motion $y = y ( k , t )$ · The string has length $L$ and its endpoints are fixed, so $y ( 0 , t ) = y ( L , t ) = 0$ ·At initial time $t = 0$ , the curve takes the form $y = y ( x , 0 ) = f ( x )$ ， $0 \le x \le L$

The great eighteenth century mathematician David Bernoulli (1700-1782) found a whole class of fairly simple solutions to the wave equation:

$$
y _ { k } ( x , t ) = \sin \left( { \frac { k \pi } { L } } x \right) \cos \left( { \frac { c k \pi } { L } } t \right) ,
$$

with initial condition

$$
f _ { k } ( x ) = y _ { k } ( x , 0 ) = \sin \left( \frac { k \pi } { L } x \right) .
$$

Because of the form of the wave equation,if the functions $y _ { k } ( x , t )$ are solutions for $k = 1 , \ldots , N$ , then so is any linear combination

$$
y ( x , t ) = \sum _ { k = 1 } ^ { N } b _ { k } y _ { k } ( x , t ) ,
$$

where the $b _ { k }$ are arbitrary constants. This has the initial condition

$$
\begin{array} { r } { f ( x ) = \displaystyle \sum _ { k = 1 } ^ { N } b _ { k } \sin \left( \frac { k \pi } { L } x \right) . } \end{array}
$$

Bernoulli seems to have been convinced that his functions and their linear combinations represented the general solution to the wave equation—in the sense that every solution took this form. Since the initial shape of the string could be anything, providing the ends were fixed at $( 0 , 0 )$ and $( L , 0 )$ ， $f ( x )$ could be any reasonable function.This led Bernoulli to allow the sum to be infinite and make the claim that any (reasonable) function could be represented by the series

$$
\begin{array} { r } { f ( x ) = \displaystyle \sum _ { k = 1 } ^ { \infty } b _ { k } \sin \left( \frac { k \pi } { L } x \right) . } \end{array}
$$

Now this clearly can't work for any function, since the sines are odd functions (i.e. $\sin ( - x ) = - \sin ( x ) )$ while not every function is odd,and of course you'd have to have $f ( 0 ) = f ( L ) = 0$ . Also, Bernouli didn't have a good method of computing the coefficients $b _ { k }$ , nor the correct formalism to deal with issues of convergence.

A half century later, Jean-Baptiste Fourier (1768-1830) was led to consider similar series when he tried to solve the heat equation

$$
{ \frac { \partial y ( x , t ) } { \partial t } } = c ^ { 2 } { \frac { \partial ^ { 2 } y ( x , t ) } { \partial x ^ { 2 } } } .
$$

Fourier,however,went further bylooking alsoatcosineseries $\begin{array} { r } { \sum _ { k = 1 } ^ { N } a _ { k } \cos \left( k \pi x \right) } \end{array}$ which produce even functions. Fourier conjectured that every function of period $2 \pi$ has a full trigonometric expansion on the interval $\lfloor - \pi , \pi \rfloor$ ; that is,one of the form

$$
f ( x ) = \sum _ { k = 0 } ^ { \infty } a _ { k } \cos \left( k x \right) + b _ { k } \sin \left( k x \right) .
$$

He also found formulas for the coefficients in the following way. Assuming enough convergence,he multiplied both sides of equation $( ^ { * } )$ by $\cos n x$ and integrated from $- \pi$ to $\pi$ to obtain

$$
{ \begin{array} { r c l } { \displaystyle \int _ { - \pi } ^ { \pi } f ( x ) \cos ( n x ) \ d x } & { = } & { \displaystyle \sum _ { k = 0 } ^ { \infty } a _ { k } \int _ { - \pi } ^ { \pi } \cos \left( k x \right) \cos ( n x ) \ d x } \\ & { } & { \displaystyle + \sum _ { k = 0 } ^ { \infty } b _ { k } \int _ { - \pi } ^ { \pi } \sin \left( k x \right) \cos ( n x ) \ d x . } \end{array} }
$$

Fourier then used the following important facts.

LEMMA 8.0.1 For integers $k , n \geq 0$ ，

$$
\begin{array} { r c l } { { \displaystyle \int _ { - \pi } ^ { \pi } \cos ( k x ) \cos ( n x ) } } & { { = } } & { { \left\{ \begin{array} { c c } { { \pi } } & { { i f k = n } } \\ { { 0 } } & { { o t h e r w i s e } } \end{array} \right. } } \\ { { \displaystyle \int _ { - \pi } ^ { \pi } \sin ( k x ) \sin ( n x ) } } & { { = } } & { { \left\{ \begin{array} { c c } { { \pi } } & { { i f k = n } } \\ { { 0 } } & { { o t h e r w i s e } } \end{array} \right. } } \\ { { \displaystyle \int _ { - \pi } ^ { \pi } \sin ( k x ) \cos ( n x ) } } & { { = } } & { { 0 . } } \end{array}
$$

Proof. This follows from the periodicity of the sine and cosine, together with the identities

$$
\begin{array} { r l r } { \sin \left( A \right) \sin \left( B \right) } & { = } & { - \frac { 1 } { 2 } \left[ \cos ( A + B ) - \cos ( A - B ) \right] } \\ { \cos ( A ) \cos ( B ) } & { = } & { \frac { 1 } { 2 } \left[ \cos ( A + B ) + \cos ( A - B ) \right] } \\ { \sin \left( A \right) \cos \left( B \right) } & { = } & { \frac { 1 } { 2 } \left[ \sin ( A + B ) + \sin ( A - B ) \right] . } \end{array}
$$

Details are left as exercises.

Thus, from equation $( * * )$ above, $\begin{array} { r } { a _ { k } = \frac { 1 } { \pi } \int _ { - \pi } ^ { \pi } f ( x ) \cos ( k x ) \ d x } \end{array}$ . Similarly, by multiplying through by $\sin ( n x )$ , Fourier deduced that $\begin{array} { r } { b _ { k } = \frac { 1 } { \pi } \int _ { - \pi } ^ { \pi } f ( x ) \ \sin ( k x ) \ d x } \end{array}$

For the remainder of this section，we will assume that our functions are $2 \pi$ periodic, that is,

$$
f ( x + 2 \pi ) = f ( x ) \quad { \mathrm { ~ f o r ~ a l l ~ } } x { \mathrm { ~ i n ~ t h e ~ d o m a i n ~ o f ~ } } f .
$$

DEFINITioN 8.0.2 The Fourier cosine series for the function $f$ is

$$
\scriptstyle \sum _ { k = 0 } ^ { \infty } a _ { k } \cos ( k \theta )
$$

where

$$
a _ { k } = { \frac { 1 } { \pi } } \int _ { - \pi } ^ { \pi } f ( t ) \cos ( k t ) ~ d t .
$$

Similarly, the Fourier sine series for $f$ is

$$
\scriptstyle \sum _ { k = 1 } ^ { \infty } b _ { k } \sin ( k \theta )
$$

where

$$
b _ { k } = { \frac { 1 } { \pi } } \int _ { - \pi } ^ { \pi } f ( t ) \sin ( k t ) \ d t .
$$

The complete Fourier series for $f$ is

$$
\frac { a _ { 0 } } { 2 } + \sum _ { k = 1 } ^ { \infty } a _ { k } \cos ( k \theta ) + b _ { k } \sin ( k \theta ) .
$$

You may wonder about the term $a _ { 0 } / 2$ . We need this to make the formulas for $a _ { k }$ and $b _ { k }$ all have the same form.If

$$
f ( \theta ) = K + \sum _ { k = 1 } ^ { \infty } a _ { k } \cos ( k \theta ) + b _ { k } \sin ( k \theta ) ,
$$

then $\begin{array} { r } { K = { \frac { 1 } { 2 \pi } } \int _ { - \pi } ^ { \pi } f ( t ) \cos ( 0 ) \ d t = { \frac { 1 } { 2 } } a _ { 0 } } \end{array}$

It turns out that we can write the Fourier series for a function in a much more compact form by using the complex numbers $\mathbb { C }$ ，which is the subject of the next section.

# Exercises

1. Verify that Bernouli's functions are solutions to the wave equation (see page 272).

2. Suppose that $\begin{array} { r } { f ( x ) = \sum _ { k = 0 } ^ { \infty } a _ { k } \cos k x + b _ { k } \sin k x } \end{array}$ converges and that summation can be exchanged with integration (e.g. when this convergence is uniform). Verify that the coefficients $a _ { k }$ and $b _ { k }$ are given by the formulas in Definition 8.0.2; see page 274 for how Fourier did this.

3.The following functions are Riemann integrable (see Definition 5.3.28). Without worrying about convergence or periodicity, find their Fourier series on $\lfloor - \pi , \pi \rfloor$ ：

(a) $f ( \theta ) = 3 + 2 \sin ( 5 \theta ) - 5 \cos ( \theta )$   
(b) $f ( \theta ) = \cos ( \theta / 2 )$ (Hint: Write $\cos ( \theta / 2 )$ in terms of $\sin \theta$ and $\cos \theta$ ）   
（c） $f ( \theta ) = \sin ^ { 2 } ( \theta )$   
(d) $f ( \theta ) = \theta$   
（e） $f ( \theta ) = | \theta |$   
(f) $f ( \theta ) = \pi - | \theta |$

It is interesting to plot the original function $f ( \theta )$ as well as the sum of the first five or so terms of its Fourier series.

4. The seres $\begin{array} { r } { f ( \theta ) = \frac { \pi ^ { 2 } } { 3 } + 4 \sum _ { k = 1 } ^ { \infty } \frac { ( - 1 ) ^ { k } } { k ^ { 2 } } \cos ( k \theta ) } \end{array}$ converges(absolutlry oay $\theta$ What is $f ~ ?$ (Hint:Guess $f$ ,then verify that the series is its Fourier series.)

5.The Riemann-Lebesgue Lemma (Exercise 8 on page 203) says that when $f$ is UC on $\lfloor a , b \rfloor$ $\begin{array} { r } { \operatorname* { l i m } _ { \lambda \to \infty } \int _ { a } ^ { b } f ( t ) \sin ( \lambda t ) \ d t = 0 } \end{array}$ Whatdoesthissabotouriese ries? In advanced courses this lemma is often proved under weaker assumptions than uniform continuity; try it for $f$ a Riemann integrable function (Definition 5.3.28).

# 8.1 The Complex Numbers C

You are probably familiar with complex numbers as expressions of the the form $a + b i$ ， where $i = \sqrt { - 1 }$ . This is a fine working defnition,but we give a formal definition since we are being rather careful about our definitions in this book.

DEFINITION 8.1.1 (CoMPLEX NUMBERs) A complex number is an ordered pair $( a , b )$ of real numbers. Two complex numbers $( a , b )$ and $( c , d )$ are equal exactly when $a = c$ and $b = d$

· $z \in \mathbb { C }$ means $z$ is a complex number.

· The reals $\mathbb { R }$ are embedded in the complex numbers $\mathbb { C }$ by $a \longrightarrow ( a , 0 )$ ; in fact, we usually write the complex number $( a , 0 )$ as simply $^ { a }$

. We define $i = ( 0 , 1 )$

· Complex numbers are added according to the formula

$$
( a , b ) + ( c , d ) = ( a + c , b + d ) .
$$

· Complex numbers are multiplied according to the formula:

$$
( a , b ) \cdot ( c , d ) = ( a c - b d , b c + a d ) ;
$$

in particular,

and so

$$
\begin{array} { l } { a \cdot ( c , d ) = ( a , 0 ) \cdot ( c , d ) = ( a c , a d ) } \\ { \ } \\ { ( c , d ) = ( c , 0 ) + d \cdot ( 0 , 1 ) = c + d i . } \end{array}
$$

·If $z = a + b i$ , then a and b are called, respectively, the real and imaginary parts of $z$ ； $i ^ { 2 } = - 1$

·If $a ^ { 2 } + b ^ { 2 } > 0$ ，then $a + b i$ is called a unit, and

$$
( a + b i ) \cdot \left( { \frac { a } { a ^ { 2 } + b ^ { 2 } } } - { \frac { b i } { a ^ { 2 } + b ^ { 2 } } } \right) = ( 1 , 0 )
$$

or

$$
( a + b i ) \left( { \frac { a - b i } { a ^ { 2 } + b ^ { 2 } } } \right) = 1 .
$$

The complex number $\left( { \frac { a - b i } { a ^ { 2 } + b ^ { 2 } } } \right)$ is called the inverse or reciprocal of $( a , b )$ ，and   
is denoted $\frac { 1 } { a + b i }$ or $( a + b i ) ^ { - 1 }$

· For a complex number $z = a + b i$ , the norm or length of $z$ is given by

$$
| z | = | a + b i | = { \sqrt { a ^ { 2 } + b ^ { 2 } } } .
$$

· For a complex number $z = a + b i$ ， the conjugate of $z$ is given by

$$
{ \overline { { z } } } = { \overline { { a + b i } } } = a - b i .
$$

Here are some facts that follow in a straightforward way from these definitions.

PROPOSITION 8.1.2 (PROPERTIES OF COMPLEX NUMBERS)

· The operations of addition and multiplication are commutative and associative, and multiplication distributes over addition: $z ( w + w ^ { \prime } ) = z w + z w ^ { \prime }$

· $\overline { { z + w } } = \overline { { z } } + \overline { { w } }$ $\overline { { z w } } = \overline { { z } } \overline { { w } }$ $z \ { \overline { { z } } } = \left| z \right| ^ { 2 } ; 1 / z = z ^ { - 1 } = { \overline { { z } } } / \left| z \right|$ · $| z \ w | = | z | \ | w |$ and $| z + w | \leq | z | + | w |$ (triangle inequality for complex numbers).

The following result tells us that a complex number is smallif and only if both its real and imaginary parts are small.

LEMMA 8.1.3 If $| a + b i | < \epsilon$ ，then $| a | < \epsilon$ and $| b | < \epsilon$ . Conversely， if $\alpha + \beta = 1$ where $_ { \alpha }$ and $\beta$ are positive reals, then $| a | < \alpha \epsilon$ and $| b | < \beta \epsilon$ imply that $\lvert a + b i \rvert < \epsilon$

It is now possible to go through all the material in previous chapters on limits and convergence and see that the definitions still make sense for complex numbers instead of reals,with $| \cdot |$ for complex numbers in place of the absolute value for reals. Here is a brief summary of easily proved results.

PROPOSITION 8.1.4 Suppose $( z _ { k } ) = ( a _ { k } + i b _ { k } )$ is a sequence of complex numbers.

1. $\left( z _ { k } \right) \longrightarrow \left( a + b i \right)$ if and only if $( a _ { k } ) \longrightarrow a$ and $( b _ { k } ) \longrightarrow b$   
2.( $\mathcal { L } k$ ） is a Cauchy sequence if and only if $\left( a _ { k } \right)$ and $\left( b _ { k } \right)$ are Cauchy sequences.   
3. $\textstyle \sum _ { k = 0 } ^ { \infty } z _ { k }$ converges(ooegesbsolutelyfdolyf $\textstyle \sum _ { k = 0 } ^ { \infty } a _ { k }$ and $\scriptstyle \sum _ { k = 0 } ^ { \infty } b _ { k }$ converge (or converge absolutely).   
4. If the series $\scriptstyle \sum _ { k = 0 } ^ { \infty } s _ { k } z ^ { k }$ converges for $z = a + b i$ （ $\mathit { \Pi } _ { s _ { k } } ^ { ' }$ are complex numbers), and $0 \leq r < | a + b i |$ , then this series converges for all $z$ with $| z | \leq r$

Note: $\textstyle \sum _ { k = 0 } ^ { \infty } z _ { k }$ converges absolutely means that $\scriptstyle \sum _ { k = 0 } | z _ { k } |$ converges.

Here is an important result to show how this kind of thing works.

THEOREM 8.1.5 The complex exponential series

$$
e ^ { z } = \sum _ { k = 0 } ^ { \infty } { \frac { z ^ { k } } { k ! } }
$$

converges uniformly and absolutely in any disk $| z | \le R$

Proof. For $M < N$ ，

$$
\left| \sum _ { k = 0 } ^ { N } \frac { z ^ { k } } { k ! } - \sum _ { k = 0 } ^ { M } \frac { z ^ { k } } { k ! } \right| \leq \sum _ { k = M + 1 } ^ { N } \left| \frac { z ^ { k } } { k ! } \right| = \sum _ { k = M + 1 } ^ { N } \frac { | z | ^ { k } } { k ! }
$$

The sum on the right is a truncation of the real Taylor series for $e ^ { | z | }$ , which we know converges uniformly for $| z | \leq R$ , for any fixed $R$ . Thus,by making $M$ and $N$ large enough (depending only on $R$ ),this sum on the right can be make as small as we please. If follows that thepartialsums $\scriptstyle \sum _ { k = 0 } ^ { N } \left| { \frac { z ^ { k } } { k ! } } \right|$ form a Cauchy sequence, so the series for $e ^ { z }$ converges absolutely and uniformly.

# Exercises

1. Prove some of the results stated in this section about the algebra of the complex numbers.

2.Prove Proposition 8.1.4 relating convergence of sequences of complex numbers to convergence of their real and imaginary parts.

3 $\textstyle \sum _ { k = 0 } ^ { \infty } u _ { k } ( t ) + i v _ { k } ( t )$ comrt $u ( t ) + i v ( t )$ r $t \in I$ Then $\textstyle \sum _ { k = 0 } ^ { \infty } u _ { k } ( t ) + i v _ { k } ( t )$ $u ( t ) + i v ( t )$ $I$ $\scriptstyle \sum _ { k = 0 } ^ { \infty } u _ { k } ( t )$ and $\scriptstyle \sum _ { k = 0 } ^ { \infty } v _ { k } ( t )$ both converge uniformly to $u ( t )$ and $v ( t )$ ,respectively.

4. For any complex number $a$ ，provethat thegeometric series $\scriptstyle \sum _ { k = 0 } ^ { \infty } a z ^ { k }$ converges uniformly to $\frac { a } { 1 - z }$ when $| z | < 1$ ，and thatthisconvergenceisuniforminany interval $\lfloor - R , R \rfloor$ ，where $0 \leq R < 1$

# 8.2 Complex Functions and Vectors

In this chapter, we are only concerned with complex-valued functions of a real variable. The situation with complex-valued functions of a complex variable is very much different,especially with regards to differentiation and integration; so different, in fact, that there is a separate branch of mathematics called Complex Analysis devoted to it.

We will be looking at functions $f : I \longrightarrow \mathbb { C }$ ，where $I$ is a real interval. Since the conditions for uniform continuity and differentiability involve absolute value, we can substitute the complex norm $\mid \ \mid$ and everything goes through pretty much as before.

PROPOSITION 8.2.1 $f ( t ) = u ( t ) + i v ( t )$ is uniformly continuous if and only if the functions $u ( t )$ and $v ( t )$ are uniformly continuous.

PROPOSITION 8.2.2 $f ( t ) = u ( t ) + i v ( t )$ is uniformly differentiable if and only if the functions $u ( t )$ and $v ( t )$ are uniformly differentiable. When $f$ is $U D$ $f ^ { \prime } ( t ) =$ $u ^ { \prime } ( t ) + i v ^ { \prime } ( t )$ .If $f ^ { \prime } ( t ) = 0$ on $I$ ，then $f$ is constant on $I$

Next we come to the complex exponential function. We will not study $e ^ { z }$ (see Theorem 8.1.5） extensively as a function of $z$ : we won't need that for studying Fourier series. Instead,we fix a value of $z$ ，say $z = z _ { 0 } = a + b i$ ,and look at the two functions:

$$
\begin{array} { l c l } { { G ( t ) } } & { { = } } & { { { \displaystyle e ^ { t z _ { 0 } } = \sum _ { k = 0 } ^ { \infty } { \frac { ( t z _ { 0 } ) ^ { k } } { k ! } } = \sum _ { k = 0 } ^ { \infty } { \frac { t ^ { k } { z _ { 0 } } ^ { k } } { k ! } } } } } \\ { { F ( t ) } } & { { = } } & { { { \displaystyle e ^ { a t } ( \cos b t + i \sin b t ) . } } } \end{array}
$$

PROPOSITION 8.2.3 $G \left( t \right) = F ( t )$ ;i.e. $e ^ { t ( a + b i ) } = e ^ { a t } ( \cos b t + i \sin b t )$

Proof. Theorem 8.1.5 tells us that the series for $e ^ { t z _ { 0 } }$ is uniformly and absolutely convergent; differentiating it term by term gives $G ^ { \prime } ( t ) = z _ { 0 } G ( t )$ . On the other hand, straightforward differentiation of $F$ using the previous proposition gives $F ^ { \prime } ( t ) =$ $z _ { 0 } F ( t )$ as well. These formulas and the complex-valued version of the quotient rule applied to $Q ( t ) = G ( t ) / F ( t )$ shows that $Q ^ { \prime } ( t ) = 0$ .(We note that $F ( t )$ is never 0.）Thus, $Q ( t )$ is constant.Since $G ( 0 ) = F ( 0 ) = 1$ ， this constant is $1$ ， so we get $F \left( t \right) = G ( t )$

COROLLARY 8.2.4 (EULER's FORMULA） For any real number $\theta$ ， $e ^ { i \theta } = \cos \theta + i \sin \theta$

COROLLARY 8.2.5（ADDITION FORMULA FOR COMPLEX EXPONENTS） FOr any cOm-plex numbers z and z': ex+2 = e²e2.

COROLLARY 8.2.6 (DE MOIVRE'S FORMULA） For any integer $_ { n }$ ： $\left( e ^ { i \theta } \right) ^ { n } = \left( \cos { \theta } + \right.$ $i \sin \theta ) ^ { n } = \cos n \theta + i \sin n \theta$

Proof. When $n > 0$ , this is proved by induction,using the sum-of-angles formulas for sine and cosine; also, by definition, $( \cos \theta + i \sin \theta ) ^ { - n } = 1 / \left( \cos \theta + i \sin \theta \right) ^ { n } =$ $( \cos \theta - i \sin \theta ) ^ { n }$ and a similar induction argument works. $\vartriangle$

Note that de Moivre's formula holds for much more general exponents than integers,but to deal with them we would have to make a big detour into defining complex exponentiation,a topic best left for a complex variables course.

COROLLARY 8.2.7 If $z = r e ^ { i \theta }$ , then for any integer $k$

$$
\begin{array} { l c l } { { z ^ { k } } } & { { = } } & { { r ^ { k } e ^ { i k \theta } = r ^ { k } ( \cos ( k \theta ) + i \sin ( k \theta ) ) } } \\ { { \overline { { { z } } } ^ { k } } } & { { = } } & { { r ^ { k } e ^ { - i k \theta } = r ^ { k } ( \cos ( k \theta ) - i \sin ( k \theta ) ) . } } \end{array}
$$

We are almost ready to apply these formulas to express Fourier series in a very compact way; we just need to know how to compute the integral of a complex-valued function. Fortunately, we can just split such a function into real and imaginary parts, and then define the integral in the most straightforward way.

DEFINITION 8.2.8 Suppose $f : I \longrightarrow \mathbb { C }$ ， $f ( t ) = u ( t ) + i v ( t )$ where u and $v$ are Riemann integrable in $I$ . Then

$$
\int _ { a } ^ { b } f ( t ) \ d t = \int _ { a } ^ { b } u ( t ) \ d t + i \int _ { a } ^ { b } v ( t ) \ d t ,
$$

where $[ a , b ] \subset I$

The following will be very useful shortly.

LenMA 8.9 For an irtr $k$ $\begin{array} { r } { \int _ { - \pi } ^ { \pi } e ^ { i k t } ~ d t = \left\{ \begin{array} { l l } { 0 } & { i f ~ k \ne 0 } \\ { 2 \pi } & { i f ~ k = 0 } \end{array} \right. . } \end{array}$

DEFINITIoN 8.2.10 If the real-valued, Riemann integrable function $f$ is $2 \pi$ -periodic, its complex Fourier series is given by

$$
\sum _ { k = - \infty } ^ { \infty } c _ { k } e ^ { i k \theta }
$$

where

$$
c _ { k } = { \frac { 1 } { 2 \pi } } \int _ { - \pi } ^ { \pi } f \left( t \right) e ^ { - i k t } \ d t .
$$

Note that this is a formal definition: we are not asserting that this series either converges or,if it does converge,that it converges to $f$ .We will deal with these difficult questions in the next section. Also, note that the doubly infinite sum ∑=-Ckek means $\begin{array} { r } { c _ { 0 } + \sum _ { k = 1 } ^ { \infty } \left( c _ { k } e ^ { i k \theta } + c _ { - k } e ^ { - i k \theta } \right) } \end{array}$

It turns out that this complex Fourier series is simply our complete Fourier series in disguise, as we see in the following basically computational result.

PROPOSITIoN 8.2.11 As formal series (without regard to convergence),

$$
{ \frac { a _ { 0 } } { 2 } } + \sum _ { k = 1 } ^ { \infty } a _ { k } \cos ( k \theta ) + b _ { k } \sin ( k \theta ) = \sum _ { k = - \infty } ^ { \infty } c _ { k } e ^ { i k \theta } .
$$

Proof. Because of Euler's formula $e ^ { i \theta } = \cos \theta + i \sin \theta$ ， we see that $\cos k t = ( e ^ { i k t } +$ $e ^ { - i k t } ) / 2$ and $\sin ( k t ) = ( e ^ { i k t } - e ^ { - i k t } ) / ( 2 i )$ , which gives us $c _ { k } = ( a _ { k } - i b _ { k } ) / 2$ and $c _ { - k } =$ $( a _ { k } + i b _ { k } ) / 2$ for $k \geq 0$ . It therefore follows that $c _ { k } e ^ { i k \theta } + c _ { - k } e ^ { - i k \theta } = a _ { k } \cos k \theta + b _ { k } \sin k \theta$ for $k = 1 , 2 , \ldots$ ; also, $\begin{array} { r } { \frac { a _ { 0 } } { 2 } = \frac { 1 } { 2 \pi } \int _ { - \pi } ^ { \pi } f ( t ) \ d t = c _ { 0 } } \end{array}$

Looking back at the definition of the Fourier coefficients $a _ { k }$ ， $b _ { k }$ and $c _ { k }$ , as well as the formulas in Lemma 8.0.1, we see integrals of the form $\textstyle \int _ { \alpha } ^ { \beta } f ( t ) \phi ( t ) \ d t$ , where the functions $\phi$ are from the families $\{ \cos k t \}$ ， $\{ \sin k t \}$ ,or $\{ e ^ { \pm i k t } \}$

DEFINITION 8.2.12（INNER PRODUCT） If $f$ and $\phi$ are $2 \pi$ -periodic functions on the interval $\lfloor - \pi , \pi \rfloor$ , their inner product is given by

$$
\langle f , \phi \rangle = \frac { 1 } { 2 \pi } \int _ { - \pi } ^ { \pi } f ( t ) \overline { { { \phi ( t ) } } } \ d t ,
$$

where $\overline { { \phi ( t ) } }$ is the complex conjugate of $\phi ( t )$

The inner product of two functions,as defined above,has the following properties, which form the basis of the definition of the term “inner product” in the much more general setting of vector spaces and linear algebra.

# PROPOSITION 8.2.13

1. $\langle f , f \rangle$ is real and $\langle f , f \rangle \geq 0$ ， with equality if and only if $f = 0$   
2. $\langle \phi , f \rangle = { \overline { { \langle f , \phi \rangle } } }$

If you skip to the end of this section, you'll see that inner products are generalizations of dot products of vectors. Two vectors are perpendicular, or orthogonal if their dot product is $0$ .The length or magnitude of a vector $\mathbf { v }$ is defined to be $\| \mathbf { v } \| = { \sqrt { \mathbf { v } \cdot \mathbf { v } } }$ . A vector has length 1-is a unit vector—if its dot product with itself is 1.These ideas from elementary linear algebra motivate the following definition for functions.

DEFINITION 8.2.14 The norm of a function $\phi$ is given by

$$
\begin{array} { r } { \| \phi \| = \sqrt { \langle \phi , \phi \rangle } = \left( \frac { 1 } { 2 \pi } \int _ { - \pi } ^ { \pi } \left| \phi ( t ) \right| ^ { 2 } \ d t \right) ^ { 1 / 2 } . } \end{array}
$$

$\phi$ and $\psi$ are called orthogonal if $\langle \phi , \psi \rangle = 0$ . A family of functions $\{ \phi _ { k } \}$ ， $k = 0 , 1 , \ldots$ is called orthonormal if

$$
\left. \phi _ { i } , \phi _ { j } \right. = \left\{ \begin{array} { l l } { { 1 } } & { { i f i = j } } \\ { { 0 } } & { { i f i \ne j } } \end{array} \right. .
$$

The next two propositions explain why we make all these definitions.

PROPOSITION 8.2.15 The family of functions $\phi _ { k } ( t ) = e ^ { i k t }$ ， $k = 0 , \pm 1 , \pm 2 , \cdot \cdot \cdot$ is an orthonormal family.

Proof. This follows from computations using Lemma 8.2.9.

PROPOSITION 8.2.16 If $f$ is Riemann integrable then its complex Fourier coefficients are given by

$$
c _ { k } = \langle f , \phi _ { k } \rangle = \langle f , e ^ { i k t } \rangle .
$$

The following theorem is a classical result；we will use it in the next section. If you take more advanced courses in functional analysis,you will see it stated and proved in far more generality for so-called inner product spaces,and, especially, for Hilbert spaces.

THEOREM 8.2.17 (BESSEL's INEQUALITY） Suppose the family $\{ \phi _ { k } \}$ is orthonormal and $f$ and the $\phi _ { k }$ are $2 \pi$ -periodic. If $c _ { k } = \langle f , \phi _ { k } \rangle$ then

$$
\sum _ { k = 0 } ^ { n } | c _ { k } | ^ { 2 } \leq \int _ { - \pi } ^ { \pi } | f | ^ { 2 } = \left\| f \right\| ^ { 2 } .
$$

Proof. Apply the results from Proposition 8.2.13 to the inequality $0 \leq \langle f - \phi , f - \phi \rangle$ where $\begin{array} { r } { \phi = \sum _ { k = 0 } ^ { n } \phi _ { k } } \end{array}$ .Details are left as an exercise.

Let's go back for a moment to vectors, which you probably encountered in secondyear calculus. Consider the following analogy. If we have two $_ n$ -dimensional real

vectors $\mathbf { v } = ( v _ { 1 } , v _ { 2 } , \ldots , v _ { n } )$ and $\mathbf { w } = ( w _ { 1 } , w _ { 2 } , \ldots , w _ { n } )$ , then we can think of each as a function

$$
\begin{array} { r c l } { \mathbf { v } } & { = } & { v : \{ 1 , 2 , \ldots \} \longrightarrow \mathbb { R } \mathrm { ~ w h e r e ~ } v ( k ) = v _ { k } } \\ { \mathbf { w } } & { = } & { w : \{ 1 , 2 , \ldots \} \longrightarrow \mathbb { R } \mathrm { ~ w h e r e ~ } w ( k ) = w _ { k } . } \end{array}
$$

The standard dot product of $\mathbf { v }$ and $\mathbf { w }$ is then given by

$$
\mathbf { v } \cdot \mathbf { w } = \sum _ { k = 1 } ^ { n } v _ { k } w _ { k } = \sum _ { k = 1 } ^ { n } v ( k ) w ( k ) .
$$

If we think of integrals as kinds of sums (actually limits of sums), then this is similar to the inner product ${ \langle v , w \rangle }$ of the coordinate functions $v$ and $w$ .Inner products of functions and dot products of vectors are basically the same idea. We now extend the dot product construction to vectors with complex coordinates.

DEFINITION 8.2.18 (INNER PRODUCTS OF COMPLEX VECTORS) For COmplex veCtors $\mathbf { v } = ( v _ { 1 } , v _ { 2 } , \ldots , v _ { n } )$ and $\mathbf { w } = ( w _ { 1 } , w _ { 2 } , \ldots , w _ { n } )$ , the dot or inner product is given by

$$
\mathbf { v } \cdot \mathbf { w } = \sum _ { k = 1 } ^ { n } v _ { k } { \overline { { w _ { k } } } } .
$$

The length, or norm， of $\mathbf { v }$ is given by

$$
\left\| \mathbf { v } \right\| = { \sqrt { \mathbf { v } \cdot \mathbf { v } } } = { \sqrt { | v | _ { 1 } ^ { 2 } + | v | _ { 2 } ^ { 2 } + \cdots + | v _ { n } | ^ { 2 } } } .
$$

Finally, here is another important classical result that also can be extended to arbitrary inner product spaces.

THEOREM 8.2.19 (CAUCHY-SCHWARTZ INEQUALITY) For complex vectors a and b,

$$
| \mathbf { a } \cdot \mathbf { b } | \leq \left\| \mathbf { a } \right\| \left\| \mathbf { b } \right\|
$$

Proof. Use the properties summarized in Proposition 8.2.13,which apply to all inner products. Applying

$$
0 \leq ( \mathbf { a } - \lambda \mathbf { b } ) \cdot ( \mathbf { a } - \lambda \mathbf { b } )
$$

with γ = $\gamma = { \frac { \mathbf { a } \cdot \mathbf { b } } { \mathbf { b } \cdot \mathbf { b } } }$ and using $\mathbf { b } \cdot \mathbf { a } = { \overline { { \mathbf { a } \cdot \mathbf { b } } } }$ gives ,

$$
{ \begin{array} { l l l } { 0 } & { \leq } & { \mathbf { a } \cdot \mathbf { a } - { \cfrac { \mathbf { a } \cdot \mathbf { b } } { \mathbf { b } \cdot \mathbf { b } } } ( \mathbf { b } \cdot \mathbf { a } ) + { \cfrac { ( \mathbf { a } \cdot \mathbf { b } ) ( \mathbf { b } \cdot \mathbf { a } ) } { \mathbf { b } \cdot \mathbf { b } } } - { \cfrac { \mathbf { a } \cdot \mathbf { b } } { \mathbf { b } \cdot \mathbf { b } } } ( \mathbf { a } \cdot \mathbf { b } ) } \\ & { = } & { \mathbf { a } \cdot \mathbf { a } - { \cfrac { ( \mathbf { a } \cdot \mathbf { b } ) ( \mathbf { a } \cdot \mathbf { b } ) } { \mathbf { b } \cdot \mathbf { b } } } . } \end{array} }
$$

Multiplying by ${ \bf b } \cdot { \bf b }$ and taking square roots completes the proof. ■

REMARK 8.2.20 This proof is such a classic that it's a good idea to remember it. One way to think of it is to multiply out $( { \bf a } - \lambda { \bf b } ) \cdot ( { \bf a } - \lambda { \bf b } )$ as if the vectors were real. You then get

$$
\mathbf { a } \cdot \mathbf { a } - 2 \gamma ( \mathbf { a } \cdot \mathbf { b } ) + \lambda ^ { 2 } \left( \mathbf { b } \cdot \mathbf { b } \right) \geq 0 .
$$

This is a quadratic function of $\gamma$ and has a minimum at $\gamma = { \frac { \mathbf { a } \cdot \mathbf { b } } { \mathbf { b } \cdot \mathbf { b } } }$ ， so that's the substitution you make to get Cauchy-Schwartz. (If you know something about projection of vectors from linear algebra, you can also see that this value of $\mathbf { \chi } ^ { \prime } \mathbf { \chi } )$ minimizes the length of $\mathbf { a } - \lambda \mathbf { b }$ ）

REMARK 8.2.21 There is a version of Cauchy-Schwartz for functions UC on $\lfloor a , b \rfloor$ and the inner product $\langle \phi , \psi \rangle$ ：

$$
| \langle \phi , \psi \rangle | \leq \sqrt { \langle \phi , \phi \rangle } \sqrt { \langle \psi , \psi \rangle } ,
$$

i.e.

$$
\left| \int _ { a } ^ { b } \phi ( t ) \psi ( t ) ~ d t \right| \leq \left( \int _ { a } ^ { b } \left( \phi ( t ) \right) ^ { 2 } ~ d t \right) ^ { 1 / 2 } \left( \int _ { a } ^ { b } \left( \psi ( t ) \right) ^ { 2 } ~ d t \right) ^ { 1 / 2 }
$$

This is a special case of Holder's Inequality, whose proof is outlined in exercise $\gamma$ on page 209.

# Exercises

1. Show that the family of functions $\{ \sin k t \}$ and $\{ \cos k t \}$ ，for $k = 0 , 1 , \ldots$ are pairwise orthogonal. Make them into an orthonormal family.

2. Verify the details in the proof that the functions $\{ e ^ { i k t } \}$ ， $k = 0 , \pm 1 , \pm 2 , . . .$ form an orthonormal family.

3. Prove Bessel's inequality (Theorem 8.2.17).

4. Prove Euler's formula, $e ^ { i \theta } = \cos \theta + i \sin \theta$ , by substituting $i \theta$ into the series for $e ^ { z }$ and collecting real and imaginary parts.

5. Using the result $e ^ { t ( a + b i ) } = e ^ { a t } ( \cos b t + i \sin b t ) , { \mathrm { p r o v e ~ t h a t ~ } } e ^ { z + z ^ { \prime } } = e ^ { z } ~ e ^ { z ^ { \prime } } .$

6.Recall that a function $f$ is even if $f ( - x ) = f ( x )$ for all $_ { x }$ in its domain,and is odd if $f ( - x ) = - f ( x )$

(a) Show that the Fourier series for an even function involves only $\cos k \theta$ terms,while the Fourier series for an odd function has only $\sin k \theta$ terms.   
(b)） For any function $f$ ,let $f _ { e } ( x ) = { \frac { f ( x ) + f ( - x ) } { 2 } }$ and $f _ { o } ( x ) = { \frac { f ( x ) - f ( - x ) } { 2 } }$ Prove that $f = f _ { e } + f _ { o }$ and that $f _ { e }$ is even and $f _ { o }$ is odd.   
(c) Relate the previous parts to the full Fourier series for any function $f$

7. Calculate directly the complex Fourier series for the function $f ( \theta ) = | \theta |$ ， $\theta \in$ $\lfloor - \pi , \pi \rfloor$ . Do the same for the function $f ( \theta ) = \pi - | \theta |$ .These are both even functions.

8. Calculate the Fourier series for the function $f$ described below ( $f$ is odd).

$$
f ( \theta ) = \left\{ \begin{array} { l l } { - \pi - \theta } & { \mathrm { i f ~ } - \pi \leq \theta \leq - \pi / 2 } \\ { \theta } & { \mathrm { i f ~ } - \pi / 2 \leq \theta \leq \pi / 2 } \\ { \pi - \theta } & { \mathrm { i f ~ } \pi / 2 \leq \theta \leq \pi } \end{array} \right.
$$

![](images/5d51ee1b80b5843392377f148cb6d8d928e219e1de17e438bfae88fe81eccc92.jpg)

9.(Project） Fourier analysis can be done for functions that are $2 L$ -periodic,i.e. such that $f ( \theta + 2 L ) = f ( \theta )$ for all $_ { x }$ . Discuss how the families of functions $\{ \sin ( k \theta ) , \cos ( k \theta ) \}$ or $\{ e ^ { i k \theta } \}$ have to be adjusted if we take these functions to be defined on $\lfloor - L , L \rfloor$ , and restate some of the results about coefficients. Work out some examples of Fourier series in this more general setting (used by Bernoulli and Fourier).

# 8.3 Fourier Series Theory

We now turn to two important questions about convergence.

· Does the Fourier series for a function $f$ converge? · If the Fourier series for $f$ converges, does it converge to $f$ ？

The answer to the first question is rather complicated. There exist rather complicated examples of periodic continuous functions whose Fourier series don't converge at some points; the first one was constructed by du Bois-Reymond1—see [Pinsky, 2002]. On the other hand, there is a very difficult and famous result of Lennart Carleson(1966) that the Fourier series of continuous functions (actually $\mathcal { L } ^ { 2 }$ functions) must converge at almost every point of their domain,where “almost every” has a precise meaning in measure theory.

The second question is also not trivial: the Fourier series for $f$ may_ converge, but not necessarily to $f$ —see example 8.3.13 at the end of this section.When $f$ is just uniformly continuous,its values can be computed from its Fourier series (we will prove this), even though the series may not actually converge, even pointwise, to $f$

On the other hand,as we shallsee,if the Fourier series for $f$ converges, and $f$ is UC, then the Fourier series converges to $f$

First,note that each of the functions $\sin ( k \theta )$ and $\cos ( k \theta )$ have period $2 \pi / k$ ， $k = 1 , 2 , \dots$ We wouldn't even expect the Fourier series for $f$ to converge to $f$ ,then, unless $f$ is at least $2 \pi$ -periodic, so we will assume this. The following classical result is by no means the best possible general criterion for convergence,but deeper results are beyond the scope of this text. Note how its proof uses the Cauchy Schwartz inequality (Theorem 8.2.19) and Bessel's inequality (Theorem 8.2.17).A lot of classical analysis was created to deal with the kinds of questions the convergence of Fourier series raises.

THEOREM 8.3.1（CONVERGENCE OF FOURIER SERIES） If $f$ has period $2 \pi$ and is uniformly differentiable on $\lfloor - \pi , \pi \rfloor$ , then its Fourier series converges uniformly.

Proof. Let $c _ { k }$ denote the $k$ th Fourier coefficient of $f$ and $c _ { k } ^ { \prime }$ denote the $k$ th Fourier coefficient for $f ^ { \prime }$ . It is easy to see, using integration by parts, that for each $k$ ，

$$
c _ { k } ^ { \prime } = i k c _ { k } .
$$

(This is where we use the periodicity of $f$ .） Since the Fourier coefficients are of the form $\langle f , e ^ { i k t } \rangle$ , we can apply Bessels’ inequality to obtain

$$
\sum _ { k = 1 } ^ { N } k ^ { 2 } \left| c _ { k } \right| ^ { 2 } = \sum _ { k = 1 } ^ { N } \left| c _ { k } ^ { \prime } \right| ^ { 2 } \leq \frac { 1 } { 2 \pi } \int _ { - \pi } ^ { \pi } \left| f ^ { \prime } \right| ^ { 2 } = B < \infty ;
$$

similarly,

$$
\begin{array} { r } { \sum _ { k = 1 } ^ { N } k ^ { 2 } \left| c _ { - k } \right| ^ { 2 } = \sum _ { k = 1 } ^ { N } \left| c _ { - k } ^ { \prime } \right| ^ { 2 } \leq B < \infty . } \end{array}
$$

For integers $M \leq N$ we can also apply the Cauchy-Schwartz inequality to the vectors

$$
\begin{array} { l l l } { { A } } & { { = } } & { { \displaystyle \left( \frac { 1 } { M } , \frac { 1 } { M + 1 } , \cdots , \frac { 1 } { N } \right) } } \\ { { B } } & { { = } } & { { \displaystyle \left( M \left| c _ { M } \right| , \left( M + 1 \right) \left| c _ { M + 1 } \right| , \ldots , N \left| c _ { N } \right| \right) } } \end{array}
$$

which gives us

$$
\begin{array} { r c l } { \sum _ { k = M } ^ { N } | c _ { k } | } & { = } & { \displaystyle \sum _ { k = M } ^ { N } \left( \frac { 1 } { k } \right) \left( k \ | c _ { k } | \right) } \\ & { \leq } & { \displaystyle \left( \sum _ { k = M } ^ { N } \frac { 1 } { k ^ { 2 } } \right) ^ { 1 / 2 } \left( \sum _ { k = M } ^ { N } k ^ { 2 } \ | c _ { k } | ^ { 2 } \right) ^ { 1 / 2 } } \\ & { \leq } & { \displaystyle \left( \sum _ { k = M } ^ { N } \frac { 1 } { k ^ { 2 } } \right) ^ { 1 / 2 } \sqrt { B } . } \end{array}
$$

By the Cauchy test, then, $\scriptstyle \sum _ { k = 1 } ^ { \infty } | c _ { k } |$ converges since $\scriptstyle \sum _ { k = 1 } ^ { \infty } 1 / k ^ { 2 }$ does. Now $| c _ { k } e ^ { i k \theta } | =$ $\left| c _ { k } \right|$ ,SotheWeierrassst(7tellsuatrie $\scriptstyle \sum _ { k = 1 } ^ { \infty } c _ { k } e ^ { i k \theta }$

converges uniformly and absolutely. A similar argument gives convergence of the negative half of the series.

Now we examine the question of what the Fourier series converges to.

Here we will assume only that $f$ is uniformly continuous on $\lfloor - \pi , \pi \rfloor$ and is $2 \pi$ periodic ( $f \left( \theta + 2 \pi \right) = f \left( \theta \right)$ for all $\theta$ ). Since we are interested in what the Fourier series

$$
F ( \theta ) = { et { } { ' } \sum } _ { k = - \infty } ^ { \infty } c _ { k } e ^ { i k \theta }
$$

converges to,we look at the more general power series

$$
U ( x , \theta ) = { \sum } _ { k = - \infty } ^ { \infty } \left( c _ { k } e ^ { i k \theta } \right) x ^ { | k | } .
$$

Note that when $x = 1$ this sum becomes just the Fourier series for $f$ . Although we don't know that the Fourier series converges,Abel's Summation Theorem (Theorem 7.3.35) suggests that we take the limit of this power series as $x \to 1$ . If this limit $L$ exists, then we say that $F$ is Abel summable to $L$ . Our main result will be to show that this limit is just $f ( \theta )$ , so that the Fourier coefficients $c _ { k }$ actually determine $f$

We note first that the coefficients $c _ { k } e ^ { i k \theta }$ of $U ( x , \theta )$ are bounded. This is because

$$
\begin{array} { r c l } { | c _ { k } e ^ { i k \theta } | } & { = } & { | c _ { k } | } \\ & { = } & { \displaystyle \left| \frac { 1 } { 2 \pi } \int _ { - \pi } ^ { \pi } f ( t ) e ^ { - i k t } \ d t \right| } \\ & { \leq } & { \displaystyle \frac { 1 } { 2 \pi } \int _ { - \pi } ^ { \pi } | f ( t ) | \ \left| e ^ { - i k t } \right| \ d t } \\ & { = } & { \displaystyle \frac { 1 } { 2 \pi } \int _ { - \pi } ^ { \pi } | f ( t ) | \ d t = K < \infty } \end{array}
$$

(since $f$ is assumed UC on $\lfloor - \pi , \pi \rfloor$

LEMMA 8.3.2 For each $0 \leq r < 1$ ， $U ( r , \theta )$ converges absolutely and uniformly as a function of $\theta$

Proof. $\sum _ { k = - \infty } ^ { \infty } \left| \left( c _ { k } e ^ { i k \theta } \right) r ^ { | k | } \right| \leq \sum _ { k = - \infty } ^ { \infty } K r ^ { | k | }$ , so this seriesis boudedbyaconvergent geometric series and our result follows from Theorem 7.3.3, the comparison test for series of functions. □

We now replace the coefficients $c _ { k }$ by their values as integrals. Since we have established uniform convergence,we can interchange the order of summation and integration by Proposition 7.2.1; thus, for $0 \leq r < 1$ ，

$$
{ \begin{array} { r c l } { U ( r , \theta ) } & { = } & { \displaystyle \sum _ { k = - \infty } ^ { \infty } c _ { k } e ^ { i k \theta } r ^ { | k | } = \sum _ { k = - \infty } ^ { \infty } \left( { \frac { 1 } { 2 \pi } } \int _ { - \pi } ^ { \pi } f ( t ) e ^ { - i k t } \ d t \right) e ^ { i k \theta } r ^ { | k | } } \\ & { = } & { \displaystyle \int _ { - \pi } ^ { \pi } { \frac { 1 } { 2 \pi } } \left( \sum _ { k = - \infty } ^ { \infty } e ^ { i k ( \theta - t ) } r ^ { | k | } \right) \ f ( t ) \ d t } \\ & { = } & { \displaystyle \int _ { - \pi } ^ { \pi } P ( r , \theta - t ) \ f ( t ) \ d t . } \end{array} }
$$

DEFINITION 8.3.3 (POISSON KERNEL) ${ \cal P } ( r , \phi ) = \frac { 1 } { 2 \pi } \sum _ { k = - \infty } ^ { \infty } e ^ { i k \phi } r ^ { | k | }$ (defined for $0 \leq r < 1$ ） is called the Poisson kernel.

PROPOSITION 8.3.4 Fr0≤r<1,P(r,Φ)=1-2rcoΦ+²’

Proof. This is an exercise; note that $P$ is the sum of two geometric series, one for positive $k$ and the other for negative $k$ ■

DEFINITION 8.3.5（CONVOLUTION） For $f$ and $g$ uniformly continuous $\lfloor - \pi , \pi \rfloor$ ，their convolution $f * g$ is given by

$$
\left( f * g \right) ( x ) = \int _ { - \pi } ^ { \pi } f ( x - t ) g ( t ) \ d t .
$$

PROPOSITION 8.3.6 $f * g = g * f$

Proof. See the exercises.

COROLLARY 8.3.7 For each $0 \leq r < 1$ ， $U ( r , \theta ) = P ( r , \theta ) * f ( \theta ) = f ( \theta ) * P ( r , \theta ) .$

In order to find lim U(r,0), we need to look at the Poisson kernel more carefully. Here are plots of $P ( r , x )$ for a few values of $r$

![](images/5923c544c4fb621c9974064b12f99c007d3a3cd379afb680a09d3fe2210284fd.jpg)  
Poisson kernel

As you can see, values of $r$ approaching 1 give plots more and more concentrated in the middle. Since they also get taller in the middle,one might conjecture that their areas might be constant. This is in fact true；we summarize these crucial properties of $P ( r , \theta )$

LEMMA 8.3.8 The Poisson kernel has the following properties:

1. $P ( r , \theta ) \ge 0$   
2.For all $0 \leq r < 1$ ， $\begin{array} { r } { \frac { 1 } { 2 \pi } \int _ { - \pi } ^ { \pi } P ( r , \theta ) \ d \theta = 1 \ } \end{array}$   
3. For al $\delta > 0$ $\begin{array} { r } { \operatorname* { l i m } _ { r \to 1 } \int _ { \theta = \delta } ^ { \pi } P ( r , \theta ) ~ d \theta = 0 . } \end{array}$

Proof. The explicit formula $\begin{array} { r } { P ( r , \phi ) = \frac { 1 - r ^ { 2 } } { 1 - 2 r \cos \phi + r ^ { 2 } } } \end{array}$ gives thefirstandthird parts, while the second part is proved from the definition of $P ( r , \theta )$ and the basic fact that ${ \frac { 1 } { 2 \pi } } \int _ { - \pi } ^ { \pi } e ^ { i k t } d t = { \left\{ \begin{array} { l l } { 0 } & { { \mathrm { i f ~ } } k \neq 0 } \\ { 1 } & { { \mathrm { i f ~ } } k = 0 } \end{array} \right. }$ . Details are left for the exercises.

Functions that have the three properties enumerated in this last lemma are called approximate identities;see the exercises.

We now come to our fundamental result about limits of Fourier Series.

THEOREM 8.3.9 If $f$ is uniformly continuous, $\operatorname* { l i m } _ { r \to 1 } U ( r , \theta ) = f ( \theta )$

Proof. We compute:

$$
\begin{array} { r l } { \mathbb { E } [ \tau _ { \tau } , \theta , - \tau _ { \theta } ( \theta ) } & { - \left| \int _ { - \infty } ^ { T } P ( \tau _ { \theta } , \theta , - \tau _ { \theta } , f ( \theta ) , \hat { w } - f ( \theta ) \right| } \\ & { - \left| \int _ { - \infty } ^ { T } P ( \tau _ { \theta } , \theta , - \tau _ { \theta } , f ( \theta ) , \hat { w } - f ( \theta ) \right| } \\ & { = \left| \displaystyle \left( \frac { \int _ { - \infty } ^ { T } P ( \tau _ { \theta } , \theta , - \tau _ { \theta } , f ( \theta ) , \hat { w } + \hat { w } - f ( \theta ) , \hat { w } + \hat { w }   } { \mathrm { E } ( \tau _ { \theta } , \theta , - \tau _ { \theta } , \theta ) + \mathrm { E } ( \tau _ { \theta } , \theta ) } \right| } \\ & \right|{ - \ l\right)eft| \displaystyle \left| \int _ { - \infty } ^ { T } P ( \tau _ { \theta } , \theta , f ( \theta ) , \hat { w } - f ( \theta ) , \hat { w } , \theta ) \right| } \\ & { = \left| \displaystyle \left| \frac { \int _ { - \infty } ^ { T } P ( \tau _ { \theta } , \theta , f ( \theta ) , \hat { w } + f ( \theta ) , \hat { w } - f ( \theta ) , \hat { w } , \theta )  } { \mathrm { E } ( \tau _ { \theta } , \theta , - \tau _ { \theta } , \theta ) + \mathrm { E } ( \tau _ { \theta } , \theta ) } \right| } \\ & \right|{ = \left| \displaystyle \int _ { - \infty } ^ { T } P ( \tau _ { \theta } , \theta ) ( f ( \theta - g ) , - f ( \theta ) , \theta ) \right| } \\ & { \leq \int _ { - \infty } ^ { T } P ( \tau _ { \theta } , \theta ) \| f ( \theta - g ) - ( \theta ) \| \mathrm { d } g _ { \infty } \| \mathrm { d } g _ { \infty } } \end{array}
$$

Suppose we are given $\epsilon > 0$ .Since $f$ is UC, we can find a modulus of continuity $\delta = \delta _ { f } ( \epsilon / 2 )$ . We now split the last integral above into two pieces:

$$
\int _ { | t | \leq \delta } P ( r , t ) \mid f ( \theta - t ) - f ( \theta ) | \ d t + \int _ { \delta \leq | t | \leq \pi } P ( r , t ) \mid f ( \theta - t ) - f ( \theta ) | \ d t
$$

By the first two parts of Lemma 8.3.8, $| A | \le \epsilon / 2$ ; on the other hand, by making $r$ close enough to $^ { 1 }$ ， we can make $| B | < \epsilon / 2$ as well, since the continuity of $f$ ensures that $| f ( \theta - t ) - f ( \theta ) |$ is bounded. Thus, $| U ( r , \theta ) - f ( \theta ) |$ can be made less than $\epsilon$ by making $r$ close enough to 1.■

Ok, so let's put together what we now know when $f$ is UC on $\lfloor - \pi , \pi \rfloor$ and the Fourier series for $f$ converges.

1. lim U(r,0)= f(0): this is what we just proved.   
2. Thinking of $U ( r , \theta )$ as a power series in $r$ , we have that $U ( 1 , \theta )$ converges, since $U ( 1 , \theta )$ is the Fourier series for $f$   
3.With minor adjustments,it follows from Abel's Summation Theorem (7.3.35) that $\operatorname* { l i m } _ { r \to 1 } U ( r , \theta ) = U ( 1 , \theta )$

COROLLARY 8.3.1O If the Fourier series for a uniformly continuous, $2 \pi$ -periodic function $f$ converges， it converges to $f$ ; in particular, the Fourier series for any uniformly differentiable function converges to that function.

In working out examples, the following is usually helpful in simplifying computation.

LEMMA 8.3.11 Suppose $f$ is Riemann integrable on $\lfloor - \pi , \pi \rfloor$

1.If $f$ is even (i.e. $f ( - x ) = f ( x ) ,$ , then the Fourier coefficients are given by

$$
\begin{array} { l l l } { { a _ { k } } } & { { = } } & { { \displaystyle \frac { 2 } { \pi } \int _ { 0 } ^ { \pi } f ( t ) \cos ( k t ) ~ d t } } \\ { { b _ { k } } } & { { = } } & { { 0 . } } \end{array}
$$

2.1f $f$ is odd (i.e. $f \left( - x \right) = - f ( x ) )$ , then the Fourier coefficients are given by

$$
\begin{array} { l l l } { { a _ { k } } } & { { = } } & { { 0 } } \\ { { b _ { k } } } & { { = } } & { { { \displaystyle \frac { 2 } { \pi } \int _ { 0 } ^ { \pi } f ( t ) \sin ( k t ) \ d t } . } } \end{array}
$$

The proof of this is left as an exercise.

EXAMPLE 8.3.12 On the interval $\lfloor - \pi , \pi \rfloor$ define the sawtooth function $\Lambda ( \theta ) = \pi - | \theta |$

![](images/62cad14220e8f4cae4ec49dd8bd9ff0b15d392ead33fb4aed10cf9e0620d1c65.jpg)

We can extend A to all of $\mathbb { R }$ by requiring $2 \pi$ -periodicity $\Lambda ( \theta + 2 \pi ) = \Lambda ( \theta )$ ：

![](images/4041f0fe405581726cfa72842121af3d80f42361fab55b43cb0f30a0b4f9d841.jpg)  
The sawtooth function $\Lambda ( \theta )$

Since this is an even function, we see from the lemma above that the Fourier coeffcients are given by

$$
\begin{array} { l c l } { { a _ { 0 } } } & { { = } } & { { \pi } } \\ { { } } & { { } } & { { } } \\ { { a _ { k } } } & { { = } } & { { \displaystyle \frac { 2 } { \pi } \left( \frac { \left( - 1 \right) ^ { k } - 1 } { k ^ { 2 } } \right) } } \\ { { } } & { { } } & { { } } \\ { { b _ { k } } } & { { = } } & { { 0 } } \end{array}
$$

Thus, the Fourier series for $\Lambda ( \theta )$ is given by

$$
{ \frac { \pi } { 2 } } + { \frac { 4 } { \pi } } \sum _ { k = 1 } ^ { \infty } { \frac { \cos \left( \left( 2 k - 1 \right) \theta \right) } { ( 2 k - 1 ) ^ { 2 } } } .
$$

Since $\begin{array} { r } { \left| \frac { \cos ( 2 k - 1 ) \theta } { ( 2 k - 1 ) ^ { 2 } } \right| \leq \frac { 1 } { ( 2 k - 1 ) ^ { 2 } } } \end{array}$ ， this series converges absolutely; since $\Lambda$ is continuous, it is equal to its Fourier series. Here is a plot of the Fourier series truncated at $n = 5$ ：

![](images/74e076caddc1c20afe486da5b78fd2670e98c00f56a6101f7022cf62b3214e60.jpg)

The more terms of the series we take, the sharper the corners on the plot will be.

EXAMPLE 8.3.13 Now we turn to a function that fails to be defined at many points. We start with the interval $( - \pi , \pi )$ and the step function

$$
S ( \theta ) = \left\{ \begin{array} { l l } { 1 } & { i f \pi > \theta > 0 } \\ { - 1 } & { i f - \pi < \theta < 0 } \end{array} \right. .
$$

We note that $S$ is defined only for those $\theta$ for which we can determine either $- \pi <$ $\theta < 0$ or $0 < \theta < \pi$ (see the discussion of these kinds of functions beginning on page 157). We note that $S$ is uniformly continuous on both $( - \pi , 0 )$ and $( 0 , \pi )$ ，so both improper integrals $\textstyle \int _ { - \pi } ^ { \pi } S ( t ) \cos ( k t )$ dt and $\begin{array} { r } { \int _ { - \pi } ^ { \pi } S ( t ) \sin ( k t ) } \end{array}$ dt erist; since $S$ is odd, the first of these is $0$ ， and we have the Fourier coeffcients given by

$$
\begin{array} { l l l } { { a _ { k } } } & { { = } } & { { 0 } } \\ { { b _ { k } } } & { { = } } & { { { \displaystyle \frac { 2 } { \pi } } \left( { \displaystyle \frac { 1 - \cos ( k \pi ) } { k } } \right) = \left\{ \begin{array} { l l } { { 0 } } & { { i f k i s e v e n } } \\ { { { \displaystyle \frac { 4 } { k \pi } } } } & { { i f k i s o d d . } } \end{array} \right. } } \end{array} .
$$

This gives the Fourier series for $S$ ：

$$
{ \frac { 4 } { \pi } } \sum _ { k = 1 } ^ { \infty } { \frac { \sin ( ( 2 k - 1 ) \theta ) } { 2 k - 1 } }
$$

which converges by Dirichlet's test (after a bit of trigonometric manipulation). The convergence is uniform only in closed intervals not containing a multiple of $\boldsymbol { \pi }$ .

We can extend $S$ by periodicity, i.e.by defining $S \left( \theta + 2 \pi \right) = S ( \theta )$ . This defines $S$ on the union of the open intervals $( k \pi , ( k + 1 ) \pi )$ ， $k = 0 , \pm 1 , \pm 2 , . . .$ Here is what it looks like:

![](images/fe6226574e519239cec385002f1212d22413f3ebfaf5368c002116f5bfab34c1.jpg)

and here is its 5 term Fourier series:

M 1M M $_ 0$ -1 -5 0 5 10 W w W W

$$
\begin{array} { r } { S ( \theta ) \approx \frac { 4 } { \pi } \displaystyle \sum _ { k = 1 } ^ { 5 } \frac { \sin ( ( 2 k - 1 ) \theta ) } { 2 k - 1 } } \end{array}
$$

Because the function $S$ is undefined at multiples of $\boldsymbol { \mathcal { U } }$ ， we cannot conclude automatically that the Fourier series converges at these values of $\theta$ ．In fact,it clearly does (it's O)， but it can't converge uniformly since if it did, the original function $S$ would be uniformly continuous on all of $\mathbb { R }$ ，which it clearly isn't.If you look at the graph of the Fourier series, youll see that it has what appear to be extra high or low “horns” around multiples of $\boldsymbol { \mathcal { U } }$ ； They are examples of what is called the Gibbs phenomenon. When we add on more and more terms of the Fourier series, these horns decrease in width but not in height, which persists in “overshooting” the value of the function near the jump by about $1 8 \%$ . Thus, the Gibbs phenomenon prevents the Fourier series from converging uniformly. Here is a picture with 15 terms of the Fourier series:

![](images/00d501d4dae1094e44bd8ac30fb41a7f4cc1fc731d2107126c9200095a357b80.jpg)

# Some final remarks

The difference between Taylor and Fourier series is often expressed by the statement “Taylor series are local in nature while Fourier series are global.” To understand this,recall that the Taylor series for $f$ is determined by the values of the successive derivatives of $f$ at a single reference point $x = c$ . Functions that have a Taylor series must be infinitely differentiable at $c$ ,and the convergence of the Taylor series (when it converges to $f$ ) is much better the closer $_ { x }$ is to $c$ ,as you can see from the presence of $( x - c ) ^ { n + 1 }$ in the expression for the remainder (see Theorem 7.4.8).

Fourier series,on the other hand,exist when their coefficients can be calculated. These coefficients are defined by integrals (not derivatives)，and the form of these integrals, $\textstyle { \frac { 1 } { 2 \pi } } \int _ { - \pi } ^ { \pi } f ( t ) \ e ^ { - i k t } \ d t$ ， suggests that they are averages, with the function e-ikt acting as a weight. Thus, the Fourier series depends on the values of the function not at a single point,but over an entire interval. From Carleson's very difficult theorem,we know that the Fourier series of a continuous function converges almost everywhere,but even from the more elementary results in this book,we see that the Fourier series determines the function (it is a limit of convolutions) and that we get convergence with just the assumption of uniform differentiability.

When a function is not periodic, it obviously cannot have a Fourier series converging to it everywhere. If the function is defined on all of $\mathbb { R }$ or on an interval where its values don't agree on the endpoints, trying to force periodicity causes inaccuracies in the Fourier series representation (e.g. the Gibbs phenomenon). One way around this is to allow non-integer, even irrational, frequencies in the trigonometric functions $\sin \alpha t$ . When this is the case,it doesn't make sense to expand the function as a series; instead, we think of the assignment of Fourier coefficients itself as a representation of the function. Starting with $f ( t )$ as a function of the“time”variable $t$ , we create the Fourier transform function ${ \widehat { f } } ( s )$ as a function of the frequency $s$ ：

$$
{ \widehat { f } } ( s ) = \int _ { - \infty } ^ { \infty } f ( t ) e ^ { - i s t } \ d t .
$$

If $f$ satisfies certain technical hypotheses,its Fourier transform will exist.Furthermore, $f$ is recoverable from its transform via the inverse transform:

$$
f ( t ) = { \frac { 1 } { 2 \pi } } \int _ { - \infty } ^ { \infty } { \widehat { f } } ( s ) e ^ { i s t } \ d s .
$$

In the theory, the functions $f$ and $\widehat { f }$ are regarded simply as dual ways of describing the same data: one from a temporal or time domain point of view,the other from a frequency domain point of view. This perspective,along with beautiful formulas relating simple functions with their Fourier transforms and multiplication with convolution， provides deep insights into the ways functions can describe physical processes. There are important applications to signal and image-processing. Finally, the (re)discovery of the Fast Fourier Transform (FFT） has enabled computers to calculate transforms of functions represented by data very quickly, thus providing practical techniques for digital filtering and smoothing.

Arguably, the study of Fourier analysis has provided much of the stimulus for the development of modern analysis, starting with the precise definition of convergence (pointwise vs. uniform） and continuing with the creation of abstract notions of function and inner product spaces, convolution and transform theory,and harmonic analysis on more general topological spaces. I hope that the introduction provided by this book will encourage you to look further into these exciting topics.

# Exercises

1. Prove that convolution is commutative, i.e. $f * g = g * f$ (Proposition 7.5.13 will be useful).   
2. As was suggested in the text, integration is a continuous form of addition. With this in mind,what is the analogy between convolution and multiplication of polynomials or series (see Cauchy products of series on page 136 and exercise 10 on page 252).   
3.A function $g ( r , t )$ is called an approximate identity if it has the following properties,enumerated in Lemma 8.3.8:

(a) $g ( r , t ) \geq 0$ (resp. $g _ { k } ( t ) \geq 0$ ）(b) For all $0 \leq r < 1$ , ∫=π g(r,t) dt =1(c) For all $\delta > 0$ ， $\begin{array} { r } { \operatorname* { l i m } _ { r \to 1 } \int _ { t = \delta } ^ { \pi } g ( r , t ) \ d t = 0 . } \end{array}$

Show that if $f$ is $2 \pi$ -periodic and uniformly continuous on $\lfloor - \pi , \pi \rfloor$ ,then

$$
\operatorname* { l i m } _ { r \to 1 } f ( \theta ) * g ( r , \theta ) = f ( \theta ) .
$$

4. We can also define an approximate identity in a different way, as a sequence of functions $g _ { k } ( t )$ such that

$$
{ \begin{array} { r l } & { { \mathrm { ( a ) ~ } } \operatorname { F o r ~ a l l } \ k , \ g _ { k } ( t ) \geq 0 } \\ & { { \mathrm { ( b ) ~ } } \operatorname { F o r ~ a l l } \ k , \int _ { - \pi } ^ { \pi } g _ { k } ( t ) \ d t = 1 } \\ & { { \mathrm { ( c ) ~ } } \operatorname { F o r ~ a l l } \ \delta > 0 , \ \operatorname* { l i m } _ { k \to \infty } \int _ { t = \delta } ^ { \pi } g _ { k } ( t ) \ d t = 0 . } \end{array} }
$$

Show that if $f$ is $2 \pi$ -periodic and uniformly continuous on $\lfloor - \pi , \pi \rfloor$ ,then

$$
\operatorname* { l i m } _ { k \to \infty } f ( \theta ) * g _ { k } ( \theta ) = f ( \theta ) .
$$

5. In exercise 3 on page 275,you were asked to compute the Fourier series for the functions listed below. Now discuss the convergence of these series.

(a) $f ( \theta ) = 3 + 2 \sin ( 5 \theta ) - 5 \cos ( \theta )$   
(b) $f ( \theta ) = \cos ( \theta / 2 )$   
(c） $f ( \theta ) = \sin ^ { 2 } ( \theta )$   
(d) $f ( \theta ) = \theta$   
(e） $f ( \theta ) = | \theta |$   
(f) $f ( \theta ) = \pi - | \theta |$

6.Discussteconvergenceofthesries ${ \frac { 4 } { \pi } } \sum _ { k = 0 } ^ { \infty } { \frac { ( - 1 ) ^ { k } \sin ( 2 k + 1 ) x } { ( 2 k + 1 ) ^ { 2 } } }$ (-1) sin(2k+1)𝑥.What function does it converge to? (Make some plots!)

[Benacerraf-Putnam,1984] P. Benacerraf, H. Putnam,ed., Philosophy of Mathematics, ${ \boldsymbol { \mathit { \omega } } } _ { \mathcal { Z } }$ nd edition, Cambridge Univ. Press, Cambridge 1984

[Borwein, 2Oo5] D.Borwein,review of Tauberian Theory, in Bulletin of the Amer.   
Math.Soc., v. 42, no.3,pp.401-406 (2005).

[Bridger-Stolzenberg,1999] M. Bridger, G. Stolzenberg,“Uniform Calculus and the Law of Bounded Change”，Amer. Math. Monthly. v. 106 no. 7,pp. 628-635 (August-September 1999).

[Folland,1992] G.B. Folland, Fourier Analysis and its Applications, Brooks-Cole, Pacific Grove, 1992.

[Kaczor-Nowak, 20o0] W.J. Kaczor, M.T. Nowak, Problems in Mathematical Analysis I,II, Amer.Math.Soc., Providence, 2000.

[Lewin, 20o3] J.Lewin,An Interactive Introduction to Mathematical Analysis, Cambridge Univ.Press, Cambridge (UK), 2003.

[Mattuck, 1999] A. Mattuck, Introduction to Analysis, Prentice-Hall, Upper Saddle River,1999.

[Mercer, 2005] P.R. Mercer，“Error Estimates For Numerical Integration Rules”, College.Math. J. v. 36 no. 1, pp. 27-34 (January 2005).

[Pinsky, 2Oo2] M.A. Pinsky, Introduction to Fourier Analysis and Wavelets, BrooksCole,Pacific Grove,2002.

[Spivak,1994] M. Spivak,Calculus,3rd Ed.,Publish or Perish,Houston,1994.

[Stade, 20o5] E. Stade, Fourier Analysis, John Wiley and Sons, New Jersey, 2005.

[Strichartz, 1995] R.S. Strichartz, The Way of Analysis, Jones and Bartlett, Boston, 1995.

# Symbols

$A ^ { x }$ ,88   
C,275   
C2,36   
e,96   
${ \mathcal { F } } ^ { * }$ ,35   
$\subset , 1 3$   
$\langle ~ , ~ \rangle$ ， see iner product   
Sg,168   
n,22   
$\Lambda ( a )$ ,94   
$\leq , \ 2 8$   
$< , 2 7$   
$\operatorname { l i m } ( S )$ ,61   
N,1   
$N _ { a } ( \epsilon )$ ,99   
$\mathbb { Q }$ ，4   
$\mathbb { R } , 3 9$   
$\mathbb { R } ^ { * }$ ，41   
$\sim , 2 5$   
$S \to X$ ,64   
$A \cup B$ ，152   
$x ^ { u }$ ，96   
Z,3   
Abel 's Lemma, 249 -'s Summation Theorem, 249 —'s test, 126 summability, 250 summation, 249 summation,129   
absolutely integrable,180   
absolute value of family of intervals, 25 of interval, 18 properties,49 when $| X - A | < E$ ，49   
addition

of families of intervals, 25 of rational intervals,14 alternating series test,123 amalgamation of functions,153 antiderivative,198 approximation of reals by rationals, 55 arcsine, 212 arctangent,212 arithmetic operations on reals,44 averagevalue,176,183

Bessel's inequality, 281   
betweenness,52   
bisection method, 38   
bounded away from O on a set,142 on a set,142 positively, 74   
bounds for families rational, 28 real, 64   
$\mathit { c 2 }$ exercise, 38   
cancellation law for real addition,45 for real multiplication, 45   
can't be ruled out,50   
Cauchy Completeness Theorem,103 product and Abel's Theorem, 252 product of series,136 sequence,102 sequence of functions, 224   
Cauchy-Schwartz inequality, 282   
chain rule, 193   
change of variables in integrals, 210   
comparison test for improper integrals,180 for series, 117 for series of functions, 240   
Completeness Theorem, 62   
complex numbers definitions, 275   
concavity, and the second derivative, 208   
consistent families of intervals, 25 family of intervals, 24 for families of real intervals, 60   
continuity at a point (exercise),147 of inverse functions,161 uniform, function of 1 variable,139 uniform， function of 2 variables, 213   
contraction map,129   
convergence Abel's test,126 alternating series test,123 Cauchy criterion, 102 comparison test,117 of a definite integral, 177 Dirichlet's test for improper integrals, 217 for series of functions, 229 for series of numbers,125 of a series of functions, 239 of Fourier Series for UD functions, 285 $p$ -series test,117 of power series in a disk, 241 of power series: Main Theorem, 241 radius of convergence, 244 ratio test,121 root test,121 of a sequence Cauchy criterion,102 of a sequence of functions pointwise, 223 uniform, 224 of a sequence, 99 of a series, 113 absolute convergence,120 conditional convergence,120 tail convergence for integrals, 179 for series, 115   
convolution, 287   
cosine function, 262   
cross functions don't cross,174   
cube root of 2 (family), 36 exercise, 38   
decreasing, strictly decreasing, 198   
dense,149   
derivative continuity of, 188 definition, 187 $_ { n }$ th,204 partial, 213 uniqueness of, 188   
difference quotient,185   
differentiable,187 modulus of differentiability,187 $_ { n }$ times,204   
differentiation of arithmetic combinations,192 of compositions,193 of $e ^ { x }$ ，188 of inverse functions,194 of $\ln x$ ，189 of power functions,194 of quotients,193 under the integral sign, 214   
Dirichlet's test for improper integrals, 217 for series of functions, 229 for series of numbers,125   
discontinuous functions,157   
divergence of improper integal, 178 of a series, 113   
divide and average (square roots), 39   
division of reals,45   
dominated convergence for parametrized functions, 215, 2 for sequences of functions, 235   
don't cross functions don't cross, 174   
$^ e$ ,96   
$\epsilon$ -trichotomy, 56   
epsilon-trichotomy, 56   
Eudoxus’Method of Exhaustion,65   
Euler number $e$ ，96 $\operatorname* { l i m } ( 1 + 1 / k ) ^ { k }$ ，111   
Euler's formula, 279   
exp power series, 248 inverse to log (exercise), 219   
exponential functions as power series, 248 definition, 88 fundamental inequality for rational exponents, 85 for real exponents, 90 limiting family for, 87   
exponentially bounded, 183   
Extension Theorem for uniformly continuous functions,150   
extrema,approximating, 144   
families arithmetic operations,25 consistent, 24, 25   
fine families of rational intervals, 32 families of real intervals, 60   
fixed point,129   
Fourier complex series,280 sine and cosine series, 274 transform,293   
FTC,see Fundamental Theorem of Calculus   
Fubini's Theorem, 214   
function 1-to-1, 71 affine, 71 definition,70 fractional-linear,71 inverse,71 limit of, 109 non-continuous, 157 Nth power, 71   
functions defined as integrals, 211   
Fundamental Theorem of Calculus Part I, 197 Part II, 198   
Gamma function definition, 181 properties (exercise), 217   
geometric series convergence of, 114   
Gibbs phenomenon, 292   
Goldbach Conjecture, 67 number, 67   
harmonic series alternating,124 diverges, 116   
Heaviside function, 158   
Holder's inequality, 209   
hypergeometric series exercise, 251   
improper integral convergence of, 177 definition, 177 divergence of, 178 doubly infinite,179   
increasing, strictly increasing, 198   
inequalities and arithmetic operations,46   
inequality strict for families of intervals,27 for rational intervals, 16 for rational numbers,4 for real intervals, 59 for reals (as families), 40 weak,5 for families of intervals, 28 for real intervals, 59 for reals (as families), 40   
injective function, 71   
inner product general properties,280 of functions, 280   
integers,3   
integral defining family,167 defining properties, 165 definition, 168 improper, 177 linearity, 175 of piecewise function (exercise),18   
integration by parts, 211 by substitution, 210   
intersect (intervals), 22   
intersection of intervals in terms of endpoints, 22   
interval punctured, 151 rational, 12 real, 59 smallest with property P, 15 types,70   
inverse function,71   
Inverse Function Theorem continuity in two-sided case,161 for decreasing functions, 79 Lipschitz conditions,74 one-sided case,80 two-sided case, 80 with positive derivatives, 200   
P'Hopital's rule, 206   
Laplace transform definition, 181 existence,183 properties (exercise), 218   
Law of Bounded Change, 197 generalized, 199   
laws of exponents for integer exponents, 83 for rational exponents, 84 for real exponents, 88   
LBC, see Law of Bounded Change   
limit of a family of real intervals, 61 of a function, 109 of a limiting family, 63 of a sequence, 99   
limit comparison test for improper integrals,180 for series, 118   
limiting family, 63   
limits algebra of, 101 preserve weak inequalities,101   
linearity of the integral, 175   
Lipschitz condition,72 for exponential functions, 85,89, 90 for power functions,79   
local max or min, 204   
logarithm definition, 92 basic properties, 93 defined as an integral (exercise), 219 domain for, 92   
M-test (Weierstrass), 228   
mathematical induction, 2   
max for a function (approximating),144 for families, 25 for intervals,18 properties of $\operatorname* { m a x } ( A , B )$ ，48   
Method of Exhaustion, 65   
min for a function (approximating),144 for families,25 for intervals, 18 properties of $\operatorname* { m i n } ( A , B )$ ，48   
Minkowski's inequality, 209   
modulus of continuity, 139 of differentiability,187 weak vs. strong, 99   
modulus of convergence for a Cauchy sequence, 102 for a sequence, 99 for a sequence of functions, 224   
multiplication of rational intervals, 14   
natural numbers,1   
negative of a family of intervals, 25 of rational interval, 14

norm of a function, 281 nth root function,80

onto function,71   
orthogonal functions, 281   
orthonormal, 281   
overspreads, 61   
partial derivative, 213   
partial sum,112   
partition (of an interval),166   
period, 265   
periodic,265 $2 \pi$ -periodic, 274   
pi definition, 264 lies between 3 and 4, 267 properties of, 264   
pointwise limit, of a sequence of functions, 225   
Poisson kernel, 287   
power function definition for real exponent, 96 derivative,194 Lipschitz conditions,79   
power series convergence of (definition), 240 definition of, 240 term-by-term differentiation, 243 term-by-term integration, 243 uniqueness centered at 0, 245 centered at c, 254   
powers integer exponent,83 limiting family for, 86 rational exponent, 84   
product of families of intervals, 25 of intervals,14   
product rule,192   
punctured interval,151   
quotient rule,193   
$r ( x , y )$

in derivative definition,185 $r ( x , y ) \to 0$ ，186 Raabe's test,269 radius of convergence definition,244 example,using the ratio test, 245 $\operatorname* { l i m } { \left| s _ { k } \right| } ^ { 1 / k }$ 1/k,244 ratio test,121 rational approximation,55 rational numbers,4 real number arithmetic,45 real numbers definition,39 definition as Cauchy sequences,108 equality, 40 reciprocal of family of intervals,25 of rational interval,17 Riemann integrability, 182 integral, see integral sum,166 Riemann-Lebesgue lemma, 203 root ( $_ n$ th root), 80 root test for convergence,121 ruled out, 50

sawtooth function, Fourier series of, 289   
secant line (exercise), 208   
second derivative test, 205   
sequence Cauchy, 102 convergence to a limit, 99 definition, 99 of functions, 223   
series alternating,121 convergence, see convergence geometric,114 rearrangement of,134   
sine function, 262   
smallest interval,15   
smallest interval with property $P$ ，15   
step function, 158 Fourier series,291   
subsequence,106,243   
subtitution in integrals, 210   
subtraction of families of intervals, 25 of rational intervals,14 of reals, 45   
surjective function, 71   
tail convergence for integrals, 179 for series, 115   
tangent (function), 265   
tangent line, 208   
Tauberian theorems,250 Hardy-Littlewood, 250   
Taylor polynomials,255 remainder,as integral, 259 series,256 for binomial functions, 257 for exponential functions, 257 may not converge to f, 257   
Taylor's Theorem with remainder, 256   
triangle inequality for rationals, 5 for reals, 50   
trichotomy $\epsilon$ -trichotomy, 56 for rational numbers,5 for real numbers,56   
trigonometric functions addition formulas, 263 definition, 262 differential equation for, 262 periodicity, 265   
truncation error estimate, 119   
UC (uniformly continuous), 139   
UD (uniformly differentiable),187   
uniform convergence of a sequence of functions, 224 of an improper integral, 215   
uniform limit of UC functions, 226   
uniformly continuous function of 1 variable, 139 function of 2 variables, 213 functions:Extension Theorem,150   
union of intervals $( A \cup B )$ of intervals,152   
unit definition, 47 properties,47 see also $\mathbb { R } ^ { * }$ ，41   
weak inequality preserved in the limit,101,110   
Weierstrass M-test, 228   
Wiggle Lemma for the rationals, 5 for the reals, 56

# Published Titles in This Series

38Mark Bridger，Real Analysis,2019   
33 Brad G. Osgood, Lectures on the Fourier Transform and Its Applications, 2019   
32John M.Erdman，A Problems Based Course in Advanced Calculus, 2018   
31Benjamin Hutz,An Experimental Introduction to Number Theory,2018   
30 Steven J.Miller,Mathematics of Optimization: How to do Things Faster, 2017   
29 Tom L.Lindstrom，Spaces,2017   
28 Randall Pruim,Foundations and Applications of Statistics:An Introduction Using R, Second Edition,2018   
27 Shahriar Shahriari,Algebra in Action, 2017   
26 Tamara J.Lakins，The Tools of Mathematical Reasoning,2016   
25 Hossein Hosseini Giv,Mathematical Analysis and Its Inherent Nature,2016   
24 Helene Shapiro,Linear Algebra and Matrices,2015   
23 Sergei Ovchinnikov,Number Systems,2015   
22 HughL.Montgomery，Early Fourier Analysis,2014   
21 John M.Lee,Axiomatic Geometry, 2013   
20 Paul J.Sally, Jr.,Fundamentals of Mathematical Analysis, 2013   
19 R.Clark Robinson,An Introduction to Dynamical Systems: Continuous and Discrete, Second Edition, 2012   
18Joseph L.Taylor，Foundations of Analysis,2012   
17 Peter Duren, Invitation to Classical Analysis,2012   
16 Joseph L. Taylor,Complex Variables, 2011   
15Mark A.Pinsky,Partial Differential Equations and Boundary-Value Problems with Applications,Third Edition,1998   
14Michael E.Taylor,Introduction to Differential Equations,2011   
13 Randall Pruim,Foundations and Applications of Statistics,2011   
12John P.D'Angelo,An Introduction to Complex Analysis and Geometry, 2010   
11 Mark R.Sepanski,Algebra,2010   
10 Sue E.Goodman，Beginning Topology, 2005   
9Ronald Solomon，Abstract Algebra,2003 8I.Martin Isaacs,Geometry for College Students, 2001 7Victor Goodman and Joseph Stampfli,The Mathematics of Finance, 2001   
6Michael A.Bean，Probability:The Science of Uncertainty, 2001 5Patrick M.Fitzpatrick,Advanced Calculus,Second Edition, 2006 4Gerald B.Folland,Fourier Analysis and Its Applications,1992 3 Bettina Richmond and Thomas Richmond,A Discrete Transition to Advanced Mathematics,2004   
2David Kincaid and Ward Cheney, Numerical Analysis: Mathematics of Scientific Computing,Third Edition,2002   
1 Edward D.Gaughan,Introduction to Analysis,Fifth Edition,1998

Real Analysis: A Constructive Approach Through Interval Arithmetic presents a careful treatment of calculus and its theoretical underpinnings from the constructivist point of view. This leads to an important and unique feature of this book: All existence proofs are direct, so showing that the numbers or functions in question exist means exactly that they can be explicitly calculated. For example,at the very beginning, the real numbers are shown to exist because they are constructed from the rationals using interval arithmetic. This approach, with its clear analogy to scientific measurement with tolerances,is taken throughout the book and makes the subject especially relevant and appealing to students with an interest in computing, applied mathematics, the sciences, and engineering.

The first part of the book contains all the usual material in a standard onesemester course in analysis of functions of a single real variable: continuity (uniform, not pointwise)，derivatives,integrals,and convergence. The second part contains enough more technical material-including an introduction to complex variables and Fourier series-to fill out a full-year course. Throughout the book the emphasis on rigorous and direct proofs is supported by an abundance of examples，exercises,and projects-many with hints-at the end of every section. The exposition is informal but exceptionally clear and well motivated throughout.