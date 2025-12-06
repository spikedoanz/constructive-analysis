/-!
# Chapter 5: The Riemann Integral

Definitions extracted from Bridger's 'Real Analysis: A Constructive Approach'
-/

-- We only need natural numbers as a foundation

/- DEFINITION 5.1.4
   5.1.4 For any $u , v \in I$ ，
   
   $$
   \int _ { u } ^ { v } g = \int _ { \operatorname* { m i n } ( u , v ) } ^ { v } g - \int _ { \operatorname* { m i n } ( u , v ) } ^ { u } g .
   $$
-/

/- DEFINITION 5.1.6
   5.1.6 A sequence of points $a = p _ { 0 } \leq p _ { 1 } \leq \dots \leq p _ { n } = b$ is called a partition of the interval $[ a , b ]$
   
   Suppose, then, that we have $a = p _ { 0 } \leq p _ { 1 } \leq \cdot \cdot \cdot \leq p _ { n } = b$ in $I$ . A simple induction argument using Condition 5.1.2 of the integral shows that
   
   $$
   \int _ { a } ^ { b } g = \sum _ { i = 1 } ^ { n } \int _ { p _ { i - 1 } } ^ { p _ { i } } g
   $$
   
   If we also know that $L _ { i } \leq g \leq U _ { i }$ on each $\left\lfloor p _ { i - 1 } , p _ { i } \right\rfloor$ and we set $\Delta _ { i } = p _ { i } - p _ { i - 1 }$ ,then by using this equation and Condition 5.1.1, we can conclude that
   
   $$
   \sum _ { i = 1 } ^ { n } L _ { i } \Delta _ { i } \leq \int _ { a } ^ { b } g \leq \sum _ { i = 1 } ^ { n } U _ { i } \Delta _ { i } .
   $$
   
   Since our function is uniformly continuous,its values on intervals of small length cannot vary very much. This enables us to find bounds on partition intervals,which we now combine with inequality $( ^ { * } )$
-/

/- DEFINITION 5.1.8
   5.1.8 Assume $g$ is defined on $[ a , b ]$ . For any partition $a = p _ { o } \leq p _ { 1 } \leq$   
   $\cdots \leq p _ { n } = b$ and points $x _ { i } \in \lfloor p _ { i - 1 } , p _ { i } \rfloor$ ， a number of the form $\sum _ { i = 1 } ^ { n } g ( x _ { i } ) ( p _ { i } - p _ { i - 1 } )$ is   
   called a Riemann sum.
   
   So,if the integral exists,we know two important facts about it. First of all, Proposition 5.1.7 tells us that Riemann sums approximate it. Even better, it tells us that they approximate the integral within $\epsilon ( b - a )$ if the intervals in the partition have length less than the modulus of continuity $\delta ( \epsilon )$ . This gives us a method for calculating integrals if we can evaluate the limit of these sums: see the exercises.
   
   Secondly, we know that if the integral exists, then it must be trapped between contained in the interval between the lower and upper sums $\begin{array} { r } { \left[ \sum _ { i = 1 } ^ { n } L _ { i } \Delta _ { i } , \sum _ { i = 1 } ^ { n } U _ { i } \Delta _ { i } \right] ) } \end{array}$ $\textstyle \sum _ { i = 1 } ^ { n } L _ { i } \Delta _ { i }$ and Thissugeststhattocostuct $\textstyle \sum _ { i = 1 } ^ { n } U _ { i } \Delta _ { i }$ (i.e.it must be the integral—in other words,show that it exists—we should look at the following family.
   
   DEFINITioN 5.1.9 Given a uniformly continuous function $g$ on $\lfloor a , b \rfloor$ , define the family
   
   $$
   I ( g ; [ a , b ] ) = \left\{ \left[ \sum _ { i = 1 } ^ { n } L _ { i } \Delta _ { i } , \sum _ { i = 1 } ^ { n } U _ { i } \Delta _ { i } \right] \right\} ,
   $$
   
   where $\alpha = p _ { 0 } \leq p _ { 1 } \leq \cdots \leq p _ { n } = b$ is any partition of $\lfloor a , b \rfloor$ ，and $L _ { i } \leq g \leq U _ { i }$ on $\left\lfloor p _ { i - 1 } , p _ { i } \right\rfloor$ and $\Delta _ { i } = p _ { i } - p _ { i - 1 }$ for $i = 1 , \ldots , n$
-/

/- DEFINITION 5.1.11
   5.1.11 $\begin{array} { r } { \int _ { a } ^ { b } g = \operatorname* { l i m } \left( I ( g ; [ a , b ] ) \right) } \end{array}$
   
   For historical reasons,we often write
   
   $$
   \int _ { a } ^ { b } g = \int _ { a } ^ { b } g ( x ) d x .
   $$
   
   The“variable” $_ { x }$ has no intrinsic significance; in fact,we can use any letter in this expression. If $x _ { i } ^ { * } \in [ x _ { i - 1 } , x _ { i } ]$ is chosen arbitrarily, then $L _ { i } \leq g ( x _ { i } ^ { * } ) \leq U _ { i }$ for each $i$ ， and we have
   
   $$
   \sum _ { i = 1 } ^ { n } L _ { i } \Delta _ { i } \leq \sum _ { i = 1 } ^ { n } g ( x _ { i } ^ { * } ) \Delta _ { i } \leq \sum _ { i = 1 } ^ { n } U _ { i } \Delta _ { i } .
   $$
   
   Thus, sums of the form $\textstyle \sum _ { i = 1 } ^ { n } g ( x _ { i } ^ { * } ) \Delta _ { i }$ lie in the intervals of $I ( \boldsymbol { g } ; \left\lfloor \boldsymbol { a } , \boldsymbol { b } \right\rfloor )$ ， and hence approximate the integral. The Greek $\sum$ was metamorphosed by Leibniz into $\boldsymbol { \int }$ ,the elongated S, in taking the limit over finer partitions,while the $g ( x _ { i } ^ { * } )$ became simply $g ( x )$ . When $_ x$ is the chosen variable, $\Delta _ { i } = x _ { i } - x _ { i - 1 } = \Delta x$ is written in the limit as $d x$ ,especially when all the subintervals $\lfloor x _ { i - 1 } , x _ { i } \rfloor$ have the same length.
   
   Of course, we must formally check that $\textstyle \int _ { a } ^ { b } g$ defined in this way satisfies the two basic conditions for being an integral.
-/

/- DEFINITION 5.2.7
   5.2.7 That $g$ and $h$ don't cross on $\lfloor a , b \rfloor$ means that either $g \geq h$ on all of $\lfloor a , b \rfloor$ or $h \geq g$ on all of $\lfloor a , b \rfloor$
   
   We can now generalize our previous result without committing ourselves to a given ordering of $^ { a }$ and $b$ ,and $g$ and $h$ . This will be useful later in our discussion of Taylor series.
-/

/- DEFINITION 5.3.5
   5.3.5 The symbol $\textstyle \int _ { a } ^ { b } f$ (where either one of a or b or both may be $\infty$ ） is called an improper integral if $f$ is not UC on $\lfloor a , b \rfloor$ (half open or open when an endpoint is $\infty$ ）
-/

/- DEFINITION 5.3.6
   5.3.6 Suppose that c is either a finite number or $\infty$ ，and that $f$ is uniformly continuous on every finite subinterval of $I = \lfloor a , c \ )$
-/

/- NOTATION 5.3.9
   5.3.9 When an improper integral converges, we say that it erists， and write $\textstyle \int _ { a } ^ { \infty } f$ r $\textstyle \int _ { a } ^ { c } f$ (respectively: $\textstyle \int _ { - \infty } ^ { b } f$ or $\textstyle \int _ { c } ^ { b } f )$ for the number $L$ it converges to.
-/

/- DEFINITION 5.3.10
   5.3.10 If sM-∞ f=-or+,we say that the integraldiverges (similarly for $\textstyle \int _ { M \to - \infty } ^ { b } f )$
-/

/- DEFINITION 5.3.15
   5.3.15 When $f$ is uniformly continuous on every finite subinterval of $( - \infty , \infty )$ , the integral $\textstyle \int _ { - \infty } ^ { \infty } f$ exists if both integrals $\textstyle \int _ { - \infty } ^ { u } f$ and $\textstyle \int _ { a } ^ { \infty } f$ erist; we write $\textstyle \int _ { - \infty } ^ { \infty } f = \int _ { - \infty } ^ { u } f + \int _ { a } ^ { \infty } f$
   
   (The previous proposition shows that this is independent of $^ { a }$ ）
   
   In a similar way we can deal with improper integrals over a finite interval $\lfloor a , b \rfloor$ ， where $f$ may behave badly at some $c$ between $^ { a }$ and $b$
-/

/- DEFINITION 5.3.16
   5.3.16 Suppose $f$ is uniformly continuous on all closed subintervals of $[ a , c )$ and of $( c , b ]$ If thelimuts $\textstyle \int _ { a } ^ { c } f = \int _ { a } ^ { M \to c - } f$ and $\textstyle \int _ { M \to c + } ^ { b } f$ both erist, then we define $\textstyle \int _ { a } ^ { b } f = \operatorname* { l i m } \int _ { a } ^ { M \to c - } f + \operatorname* { l i m } \int _ { M \to c + } f$
-/

/- DEFINITION 5.3.20
   5.3.20 A function $f$ ， $U C$ on every finite subinterval of $( - \infty , \infty )$ ，is said to be absolutely integrable if $\textstyle \int _ { - \infty } ^ { \infty } | f |$ converges.
-/

/- DEFINITION 5.3.25
   5.3.25 For $x > 0$ , the Gamma function is defined by
   
   $$
   \Gamma ( x ) = \int _ { 0 } ^ { \infty } t ^ { x - 1 } e ^ { - t } d t .
   $$
-/

/- DEFINITION 5.3.26
   5.3.26 For certain functions $h ( t )$ ， the Laplace transform $H$ of $h$ is defined by
   
   $$
   H ( x ) = \int _ { 0 } ^ { \infty } e ^ { - x t } h ( t ) \ d t .
   $$
   
   Finally, we can use improper integrals to test for convergence of series whose terms are given by evaluating continuous functions on integers.
   
   subinteroal of THEOREM 5.3.27（INTEGRAL TEST） Suppose $\mathbb { R }$ and is weakly decresing.Then $f \geq 0$ $\scriptstyle \sum _ { k = 0 } ^ { \infty } f ( k )$ is continuous on every finite converges if and only f $\textstyle \int _ { 0 } ^ { \infty } f ( x ) d x$ converges.
   
   Proof. Since $\begin{array} { r } { \int _ { k } ^ { k + 1 } f ( x ) \leq f ( k ) } \end{array}$ $f$ is decreasing, When $n \geq m$ $f ( k + 1 ) \leq f ( x ) \leq f ( k )$ we can sum t get for $x \in \left\lfloor k , k + 1 \right\rfloor$ ,s0 $f ( k + 1 ) \leq$
   
   $$
   \sum _ { k = m } ^ { n } f ( k + 1 ) \leq \int _ { m } ^ { n + 1 } f ( x ) d x \leq \sum _ { k = m } ^ { n } f ( k ) .
   $$
   
   Thus, if either the sum or the integral satisfies the Cauchy convergence criterion, so does the other.■
   
   Note that the convergence of neither sum nor the integral depends on the lower limit being 0: $\scriptstyle \sum _ { k = K } ^ { \infty } f ( k )$ converges if and only if $\textstyle \int _ { K } ^ { \infty } f ( x ) d x$ converges.
   
   (See exercises for applications.)
   
   In conclusion,we note that although the Riemann integral was initially defined only for functions uniformly continuous on a finite interval, we were able to extend it by defining improper integrals for certain functions. We make this formal in the following extension of our original definition.
-/

/- DEFINITION 5.3.28
   5.3.28（RIEMANN INTEGRABILITY） $f$ is said to be Riemann integrable over an interval $\lfloor a , b \rfloor$ if there is a partition $a = p _ { 0 } \leq p _ { 1 } \leq \cdots \leq p _ { n - 1 } \leq p _ { n } = b$ such that the integrals (proper or improper)
   
   $$
   V _ { k } = \int _ { p _ { k - 1 } } ^ { p _ { k } } f
   $$
   
   for $k = 1 , \dots , n$ exist. When this is the case, we define
   
   $$
   \int _ { a } ^ { b } f = V _ { 1 } + V _ { 2 } + . . . + V _ { n } .
   $$
-/
