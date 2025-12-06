/-!
# Chapter 8: The Complex Numbers and Fourier Series

Definitions extracted from Bridger's 'Real Analysis: A Constructive Approach'
-/

-- We only need natural numbers as a foundation

/- DEFINITION 8.1.1
   8.1.1 (CoMPLEX NUMBERs) A complex number is an ordered pair $( a , b )$ of real numbers. Two complex numbers $( a , b )$ and $( c , d )$ are equal exactly when $a = c$ and $b = d$
   
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
-/

/- DEFINITION 8.2.8
   8.2.8 Suppose $f : I \longrightarrow \mathbb { C }$ ， $f ( t ) = u ( t ) + i v ( t )$ where u and $v$ are Riemann integrable in $I$ . Then
   
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
-/

/- DEFINITION 8.2.12
   8.2.12（INNER PRODUCT） If $f$ and $\phi$ are $2 \pi$ -periodic functions on the interval $\lfloor - \pi , \pi \rfloor$ , their inner product is given by
   
   $$
   \langle f , \phi \rangle = \frac { 1 } { 2 \pi } \int _ { - \pi } ^ { \pi } f ( t ) \overline { { { \phi ( t ) } } } \ d t ,
   $$
   
   where $\overline { { \phi ( t ) } }$ is the complex conjugate of $\phi ( t )$
   
   The inner product of two functions,as defined above,has the following properties, which form the basis of the definition of the term “inner product” in the much more general setting of vector spaces and linear algebra.
-/

/- DEFINITION 8.2.14
   8.2.14 The norm of a function $\phi$ is given by
   
   $$
   \begin{array} { r } { \| \phi \| = \sqrt { \langle \phi , \phi \rangle } = \left( \frac { 1 } { 2 \pi } \int _ { - \pi } ^ { \pi } \left| \phi ( t ) \right| ^ { 2 } \ d t \right) ^ { 1 / 2 } . } \end{array}
   $$
   
   $\phi$ and $\psi$ are called orthogonal if $\langle \phi , \psi \rangle = 0$ . A family of functions $\{ \phi _ { k } \}$ ， $k = 0 , 1 , \ldots$ is called orthonormal if
   
   $$
   \left. \phi _ { i } , \phi _ { j } \right. = \left\{ \begin{array} { l l } { { 1 } } & { { i f i = j } } \\ { { 0 } } & { { i f i \ne j } } \end{array} \right. .
   $$
   
   The next two propositions explain why we make all these definitions.
-/

/- DEFINITION 8.2.18
   8.2.18 (INNER PRODUCTS OF COMPLEX VECTORS) For COmplex veCtors $\mathbf { v } = ( v _ { 1 } , v _ { 2 } , \ldots , v _ { n } )$ and $\mathbf { w } = ( w _ { 1 } , w _ { 2 } , \ldots , w _ { n } )$ , the dot or inner product is given by
   
   $$
   \mathbf { v } \cdot \mathbf { w } = \sum _ { k = 1 } ^ { n } v _ { k } { \overline { { w _ { k } } } } .
   $$
   
   The length, or norm， of $\mathbf { v }$ is given by
   
   $$
   \left\| \mathbf { v } \right\| = { \sqrt { \mathbf { v } \cdot \mathbf { v } } } = { \sqrt { | v | _ { 1 } ^ { 2 } + | v | _ { 2 } ^ { 2 } + \cdots + | v _ { n } | ^ { 2 } } } .
   $$
   
   Finally, here is another important classical result that also can be extended to arbitrary inner product spaces.
-/

/- DEFINITION 8.3.3
   8.3.3 (POISSON KERNEL) ${ \cal P } ( r , \phi ) = \frac { 1 } { 2 \pi } \sum _ { k = - \infty } ^ { \infty } e ^ { i k \phi } r ^ { | k | }$ (defined for $0 \leq r < 1$ ） is called the Poisson kernel.
-/

/- DEFINITION 8.3.5
   8.3.5（CONVOLUTION） For $f$ and $g$ uniformly continuous $\lfloor - \pi , \pi \rfloor$ ，their convolution $f * g$ is given by
   
   $$
   \left( f * g \right) ( x ) = \int _ { - \pi } ^ { \pi } f ( x - t ) g ( t ) \ d t .
   $$
-/
