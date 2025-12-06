# 5.1 Definition and Existence

We will take the approach here of specifying what we want an integral to be, and then show that the description we give determines how it must be defined. We then construct it. Of course,our motivation for the conditions imposed on the integral come from our intuitive idea of area,which is exploited when the integral is introduced in the usual calculus course. In keeping with our idea of doing a careful and abstract analysis,we'll try to avoid drawing pictures,at least for a while.

Let us fix some interval $I$ of reals. Throughout this section $I$ will be a finite interval. An integral on $I$ is a rule that associates with each subinterval $\lfloor u , v \rfloor \subset I$ and each uniformly continuous function $f$ on $\left\lfloor u , v \right\rfloor$ ,a well-defined real number denoted $\textstyle \int _ { u } ^ { v } f$ . We will assume that this association satisfies the following fundamental conditions,where $A \leq g \leq B$ on $\left\lfloor u , v \right\rfloor$ means that $A \leq g ( t ) \leq B$ for each $t \in \left\lfloor u , v \right\rfloor$

<table><tr><td>Basic Properties of Integrals CONDITION 5.1.1 For each [u,u] C I and each A≤ g ≤ B on</td></tr><tr><td>[u,u],we have A·(v- u)≤ Ju g≤B.(u-u).</td></tr><tr><td>CoNDITION 5.1.2 For each [a,b] C I with a ≤ c ≤ b and each g, we have</td></tr><tr><td>rc cb cb g+ g. Ja C a</td></tr></table>

REMARK 5.1.3 $\textstyle \int _ { x } ^ { x } g = 0$ . In fact, on $\lfloor x , x \rfloor$ we have $g ( x ) \leq g \leq g ( x )$ , so by Condition 5.1.1: $\begin{array} { r } { 0 = g ( x ) ( x - x ) \leq \int _ { x } ^ { x } g \leq g ( x ) ( x - x ) = 0 } \end{array}$

Suppose that such an integral exists. The numbers $_ u$ and $v$ in $\textstyle \int _ { u } ^ { v } g$ are sometimes called the limits of the integral and are assumed to satisfy $u \leq v$ in the first property above.We can extend the notation somewhat by eliminating this condition.

DEFINITION 5.1.4 For any $u , v \in I$ ，

$$
\int _ { u } ^ { v } g = \int _ { \operatorname* { m i n } ( u , v ) } ^ { v } g - \int _ { \operatorname* { m i n } ( u , v ) } ^ { u } g .
$$

REMARK 5.1.5 If we know that $u \leq v$ ， then Definition 5.1.4 reduces to our usual notation, because $\operatorname* { m i n } ( u , v ) = u$ and $\begin{array} { r } { \int _ { \operatorname* { m i n } ( u , v ) } ^ { v } g - \int _ { \operatorname* { m i n } ( u , v ) } ^ { u } g } \end{array}$ becomes $\begin{array} { r } { \int _ { u } ^ { v } g - \int _ { u } ^ { u } g = } \end{array}$

$\textstyle \int _ { u } ^ { v } g$ . On the other hand,if we know that $\textit { v } \leq \textit { u }$ ，then $\operatorname* { m i n } ( u , v ) = v$ ，and the definition and previous remark give

$$
\int _ { u } ^ { v } g = - \int _ { v } ^ { u } g .
$$

DEFINITION 5.1.6 A sequence of points $a = p _ { 0 } \leq p _ { 1 } \leq \dots \leq p _ { n } = b$ is called a partition of the interval $[ a , b ]$

Suppose, then, that we have $a = p _ { 0 } \leq p _ { 1 } \leq \cdot \cdot \cdot \leq p _ { n } = b$ in $I$ . A simple induction argument using Condition 5.1.2 of the integral shows that

$$
\int _ { a } ^ { b } g = \sum _ { i = 1 } ^ { n } \int _ { p _ { i - 1 } } ^ { p _ { i } } g
$$

If we also know that $L _ { i } \leq g \leq U _ { i }$ on each $\left\lfloor p _ { i - 1 } , p _ { i } \right\rfloor$ and we set $\Delta _ { i } = p _ { i } - p _ { i - 1 }$ ,then by using this equation and Condition 5.1.1, we can conclude that

$$
\sum _ { i = 1 } ^ { n } L _ { i } \Delta _ { i } \leq \int _ { a } ^ { b } g \leq \sum _ { i = 1 } ^ { n } U _ { i } \Delta _ { i } .
$$

Since our function is uniformly continuous,its values on intervals of small length cannot vary very much. This enables us to find bounds on partition intervals,which we now combine with inequality $( ^ { * } )$

PROPOSITION 5.1.7 Suppose $_ { g }$ is uniformly continuous on $\lfloor a , b \rfloor$ and $\delta = \delta ( \epsilon )$ is $a$ modulus of continuity for $g$ on $\lfloor a , b \rfloor$ (i.e. $| g ( y ) - g ( x ) | ~ < \epsilon$ when $| y - x | \ < \delta$ and $x , y \in \left\lfloor a , b \right\rfloor ,$ . Suppose also that we choose our partition so fine that $\Delta _ { i } = p _ { i } - p _ { i - 1 } <$ $\delta$ . Then for any choice of points $x _ { i } \in \lfloor p _ { i - 1 } , p _ { i } \rfloor$ , we have

$$
\begin{array} { c } { { \displaystyle \sum _ { i = 1 } ^ { n } g ( x _ { i } ) \Delta _ { i } - \epsilon ( b - a ) \le \int _ { a } ^ { b } g \le \sum _ { i = 1 } ^ { n } g ( x _ { i } ) \Delta _ { i } + \epsilon ( b - a ) , ~ i . e . } } \\ { { \displaystyle \left| \int _ { a } ^ { b } g - \sum _ { i = 1 } ^ { n } g ( x _ { i } ) \Delta _ { i } \right| \le \epsilon ( b - a ) . } } \end{array}
$$

Proof. To verify this, first note we have $g ( x _ { i } ) - \epsilon \leq g ( t ) \leq g ( x _ { i } ) + \epsilon$ for any $t \in \mathsf { \Gamma } | p _ { i - 1 } , p _ { i } |$ ， since $| x _ { i } - t | \leq \Delta _ { i } \leq \delta$ .Therefore, we can set $L _ { i } = g ( x _ { i } ) - \epsilon$ and $U _ { i } = g ( x _ { i } ) + \epsilon$ in the inequality ( $^ *$ )above (also note that $\begin{array} { r } { \sum _ { i = 1 } ^ { n } \Delta _ { i } = b - a ) } \end{array}$ ：

DEFINITION 5.1.8 Assume $g$ is defined on $[ a , b ]$ . For any partition $a = p _ { o } \leq p _ { 1 } \leq$   
$\cdots \leq p _ { n } = b$ and points $x _ { i } \in \lfloor p _ { i - 1 } , p _ { i } \rfloor$ ， a number of the form $\sum _ { i = 1 } ^ { n } g ( x _ { i } ) ( p _ { i } - p _ { i - 1 } )$ is   
called a Riemann sum.

So,if the integral exists,we know two important facts about it. First of all, Proposition 5.1.7 tells us that Riemann sums approximate it. Even better, it tells us that they approximate the integral within $\epsilon ( b - a )$ if the intervals in the partition have length less than the modulus of continuity $\delta ( \epsilon )$ . This gives us a method for calculating integrals if we can evaluate the limit of these sums: see the exercises.

Secondly, we know that if the integral exists, then it must be trapped between contained in the interval between the lower and upper sums $\begin{array} { r } { \left[ \sum _ { i = 1 } ^ { n } L _ { i } \Delta _ { i } , \sum _ { i = 1 } ^ { n } U _ { i } \Delta _ { i } \right] ) } \end{array}$ $\textstyle \sum _ { i = 1 } ^ { n } L _ { i } \Delta _ { i }$ and Thissugeststhattocostuct $\textstyle \sum _ { i = 1 } ^ { n } U _ { i } \Delta _ { i }$ (i.e.it must be the integral—in other words,show that it exists—we should look at the following family.

DEFINITioN 5.1.9 Given a uniformly continuous function $g$ on $\lfloor a , b \rfloor$ , define the family

$$
I ( g ; [ a , b ] ) = \left\{ \left[ \sum _ { i = 1 } ^ { n } L _ { i } \Delta _ { i } , \sum _ { i = 1 } ^ { n } U _ { i } \Delta _ { i } \right] \right\} ,
$$

where $\alpha = p _ { 0 } \leq p _ { 1 } \leq \cdots \leq p _ { n } = b$ is any partition of $\lfloor a , b \rfloor$ ，and $L _ { i } \leq g \leq U _ { i }$ on $\left\lfloor p _ { i - 1 } , p _ { i } \right\rfloor$ and $\Delta _ { i } = p _ { i } - p _ { i - 1 }$ for $i = 1 , \ldots , n$

PROPOSITION 5.1.10 $I ( \boldsymbol { g } ; \left\lfloor \boldsymbol { a } , \boldsymbol { b } \right\rfloor )$ is a consistent and fine family of real intervals.

Proof. First we prove fineness,which turns out to be easy. Given $\epsilon > 0$ ，let $\begin{array} { r } { \alpha = \frac { \epsilon } { 2 ( b - a ) } } \end{array}$ . (If necessary,to avoid dividing by $0$ , replace $b - a$ by a slightly larger number.)

Take $_ n$ so large that $( b - a ) / n$ is less than a modulus of continuity $\delta ( \alpha )$ We divide $[ a , b ]$ into $_ n$ equal pieces by setting $\begin{array} { r } { p _ { i } = a + \frac { i } { n } ( b - a ) } \end{array}$ for $i = 1 \dots n$

We now can let $L _ { i } = g ( p _ { i - 1 } ) - \alpha$ and $U _ { i } = g ( p _ { i - 1 } ) + \alpha$ . Note that we could have used, in place of $g ( p _ { i - 1 } )$ ,any $g ( t )$ for $t \in [ p _ { i - 1 } , p _ { i } ]$ . We now have

$$
\ell \left( \left[ \sum _ { i = 1 } ^ { n } L _ { i } \Delta _ { i } , \sum _ { i = 1 } ^ { n } U _ { i } \Delta _ { i } \right] \right) = 2 \alpha ( b - a ) < \epsilon ,
$$

so the family is fine.

Now let's turn to consistency. We must show that the left endpoint of any interval in $I ( \boldsymbol { g } ; \left\lfloor \boldsymbol { a } , \boldsymbol { b } \right\rfloor )$ does not exceed the right endpoint of any other. So we have to consider two partitions of $[ a , b ]$ ：

$$
\begin{array} { c } { { a = x _ { 0 } \leq x _ { 1 } \leq \cdots \leq x _ { m } = b \mathrm { ~ w i t h ~ } L _ { i } \leq g \leq U _ { i } \mathrm { ~ o n ~ } [ x _ { i - 1 } , x _ { i } ] } } \\ { { a = y _ { 0 } \leq y _ { 1 } \leq \cdots \leq y _ { n } = b \mathrm { ~ w i t h ~ } L _ { j } ^ { * } \leq g \leq U _ { j } ^ { * } \mathrm { ~ o n ~ } [ y _ { j - 1 } , y _ { j } ] . } } \end{array}
$$

Also, let $\Delta _ { i } = x _ { i } - x _ { i - 1 }$ and ${ \Delta } _ { j } ^ { \ast } = y _ { j } - y _ { j - 1 }$

Let $P ( m , n )$ denote the following statement, which expresses consistency for the sizes $_ { m }$ ， $_ { n }$ ：

$$
\left\{ \begin{array} { c } { \mathrm { F o r ~ a n y ~ i n t e r v a l ~ } [ a , b ] , \mathrm { ~ f u n c t i o n ~ } g \mathrm { ~ u n i f o r m l y ~ c o n t i n u o u s ~ o n ~ } [ a , b ] , } \\ { \mathrm { p o s i t i v e ~ i n t e g e r s ~ } m , n , { \mathrm { a n d ~ p a r t i t i o n s ~ a s ~ a b o v e } } , } \\ { \sum _ { i = 1 } ^ { m } L _ { i } \Delta _ { i } = L \leq U ^ { * } = \sum _ { i = 1 } ^ { n } U _ { i } ^ { * } \Delta i . } \end{array} \right\}
$$

Call $m + n$ the degree of $P ( m , n )$ . We establish the truth of $P ( m , n )$ by induction on the degree: the truth of $P ( m , n )$ always follows from the truth of $P ( p , q )$ of smaller degree. (Actually, it will always follow from the truth of $P ( m - 1 , n )$ or $P ( m , n - 1 )$ ）

The smallest possible values for $_ { m }$ and $_ { n }$ are both 1,so the smallest possible degree is 2. Since $P ( 1 , 1 )$ is clearly true (because the partitions both reduce to just endpoints),we can start our induction on degree 2. So let us suppose we have proved $P ( m , n )$ for all degrees up to (but not including) $m + n$ , and consider $P ( m , n )$

We cannot exclude both $x _ { 1 } \leq y _ { 1 }$ and $y _ { 1 } \leq x _ { 1 }$ ， so it suffices to prove $P ( m , n )$ in both of these cases. Suppose, then, that $x _ { 1 } \leq y _ { 1 }$ . We will show that $P ( m - 1 , n )$ implies that $L \leq U ^ { * }$ . First,note that

$$
a = x _ { 0 } = y _ { 0 } \leq x _ { 1 } \leq y _ { 1 } .
$$

Choose $t \in \left[ a , x _ { 1 } \right] \subset \left[ a , y _ { 1 } \right]$ . By assumption, $L _ { 1 } \leq g ( t )$ and $g ( t ) \leq U _ { 1 } ^ { * }$ , so we conclude that

$$
L _ { 1 } \Delta _ { 1 } = L _ { 1 } ( x _ { 1 } - x _ { 0 } ) \leq U _ { 1 } ^ { * } ( x _ { 1 } - x _ { 0 } ) .
$$

Let $c = x _ { 1 }$ and consider the following partitions of the interval $\displaystyle \left\lfloor c , b \right\rfloor$ ：

$$
\begin{array} { l } { c = x _ { 1 } \leq x _ { 2 } \leq \cdot \cdot \cdot \leq x _ { m } = b } \\ { c = x _ { 1 } \leq y _ { 1 } \leq \cdot \cdot \cdot \leq y _ { n } = b . } \end{array}
$$

Note that the first of these has only $m - 1$ intervals. The degree of $P ( m - 1 , n )$ is $m - 1 + n < m + n$ , so it is true by induction hypothesis. Leting $y _ { 0 } = x _ { 1 }$ , this tells us that

$$
\underbrace { \sum _ { i = 2 } ^ { m } L _ { i } \Delta _ { i } } _ { m - 1 { \mathrm { ~ t e r m s } } } \le \left( \underbrace { \sum _ { j = 2 } ^ { n } U _ { j } ^ { * } \Delta _ { j } ^ { * } } _ { n { \mathrm { ~ t e r m s } } } \right) + U _ { 1 } ^ { * } ( y _ { 1 } - x _ { 1 } ) .
$$

Now just add $L _ { 1 } \Delta _ { 1 } \leq U _ { 1 } ^ { * } ( x _ { 1 } - x _ { 0 } )$ to both sides to show that $L \leq U ^ { * }$

Thus, if $x _ { 1 } \leq y _ { 1 }$ ,then $L \leq U ^ { * }$ . In a symmetrical way, if $y _ { 1 } \leq x _ { 1 }$ ,then $P ( m , n - 1 )$ implies $L \leq U ^ { * }$ . So, in either case, $P ( m , n )$ can be established if we know it for either of the statements $P ( m - 1 , n )$ or $P ( m , n - 1 )$ of smaller degrees. Thus it is true for all degrees and we are done.■

Since the family $I ( \boldsymbol { g } ; \left\lfloor \boldsymbol { a } , \boldsymbol { b } \right\rfloor )$ is consistent and fine,the Completeness Theorem tells usthatitsliitistsAseavalreadyseen $\begin{array} { r } { \sum _ { i = 1 } ^ { n } L _ { i } \Delta _ { i } \leq \int _ { a } ^ { b } g \leq \sum _ { i = 1 } ^ { n } U _ { i } \Delta _ { i } } \end{array}$ so the integral must lie in every interval of the family. This leaves us no choice in how to define it.

DEFINITION 5.1.11 $\begin{array} { r } { \int _ { a } ^ { b } g = \operatorname* { l i m } \left( I ( g ; [ a , b ] ) \right) } \end{array}$

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

PROPOSITION 5.1.12 $\begin{array} { r } { \int _ { a } ^ { b } g = \operatorname* { l i m } ( I ( g ; [ a , b ] ) ) } \end{array}$ satisfies Conditions 5.1.1 and 5.1.2.

Proof. Suppose $A \leq g \leq B$ on $\lfloor u , v \rfloor$ . Then $\left[ A \cdot ( v - u ) , B \cdot ( v - u ) \right]$ is an interval in $I ( g ; \left\lfloor u , v \right\rfloor )$ . Since the limit of a family lies in each interval of the family, we see that $\begin{array} { r } { A \cdot ( v - u ) \leq \int _ { u } ^ { v } g \leq B \cdot ( v - u ) } \end{array}$ ,which establishes the first condition.

To prove the second, suppose that $a \leq c \leq b$ , and choose intervals $J \in I ( g ; \lfloor a , c \rfloor )$ and $K \in I ( g ; \lfloor c , b \rfloor )$ ：

$$
\begin{array} { r c l } { { J } } & { { = } } & { { \displaystyle \left[ \sum _ { i = 1 } ^ { n } { { L } _ { i } \cdot ( { x } _ { i } - { x } _ { i - 1 } ) } , \sum _ { i = 1 } ^ { n } { { U } _ { i } \cdot ( { x } _ { i } - { x } _ { i - 1 } ) } \right] } } \\ { { K } } & { { = } } & { { \displaystyle \left[ \sum _ { i = 1 } ^ { m } { { L } _ { i } ^ { \prime } \cdot ( { y } _ { i } - { y } _ { i - 1 } ) } , \sum _ { i = 1 } ^ { m } { { U } _ { i } ^ { \prime } \cdot ( { y } _ { i } - { y } _ { i - 1 } ) } \right] , } } \end{array}
$$

where the $_ { x }$ 's partition $\lfloor a , c \rfloor$ and the $_ y$ 's partition $\displaystyle \left\lfloor c , b \right\rfloor$

We can rewrite $K$ as

$$
K = \left[ \sum _ { i = n + 1 } ^ { n + m } L _ { i } \cdot ( x _ { i } - x _ { i - 1 } ) , \sum _ { i = n + 1 } ^ { n + m } U _ { i } \cdot ( x _ { i } - x _ { i - 1 } ) \right] ,
$$

where $x _ { n } = c$ ， $x _ { m + n } = b$ and $L _ { n + j } = L _ { j } ^ { \prime }$ ， $U _ { n + j } = U _ { j } ^ { \prime }$ for $j = 1 , \ldots , m$ Also,

$$
J + K = \left[ \sum _ { i = 1 } ^ { n + m } L _ { i } \cdot ( x _ { i } - x _ { i - 1 } ) , \sum _ { i = 1 } ^ { n + m } U _ { i } \cdot ( x _ { i } - x _ { i - 1 } ) \right] .
$$

Thus, $J + K \in I ( g ; \lfloor a , b \rfloor )$ ， and we have proved that the sum $J + K$ of any $I ( g ; \left\lfloor a , c \right\rfloor )$ -interval $J$ with any $I ( \boldsymbol { g } ; \left\lfloor c , b \right\rfloor )$ -interval $K$ is an $I ( \boldsymbol { g } ; \left\lfloor \boldsymbol { a } , \boldsymbol { b } \right\rfloor )$ -interval, so ${ \textstyle \int _ { a } ^ { b } } g \in$ $J + K$ . Of course, $\textstyle \int _ { a } ^ { c } g + \int _ { c } ^ { b } g \in J + K$ also. Given any $\epsilon > 0$ , we can always choose these intervals so that allof $J$ ， $K$ ,and $J + K$ have length less than $\epsilon$ Since $\textstyle { \int _ { a } ^ { c } g + \int _ { c } ^ { b } g }$ and $\textstyle \int _ { a } ^ { b } g$ both lie in a (consistent) family of intervals of arbitrarily smallength, they are equal.

SUMMARY 5.1.13 For functions $f$ uniformly continuous on $I$ and $[ u , v ] \subset I$ ，the Riemann integral $\textstyle \int _ { u } ^ { v } f$ exists and is determined by these properties.

1.If $A \leq f \leq B$ om $[ u , v ]$ ，then $\begin{array} { r } { A \cdot ( v - u ) \leq \int _ { u } ^ { v } f \leq B \cdot ( v - u ) . } \end{array}$

2.For $c \in \lfloor u , v \rfloor$ ， $\textstyle { \int _ { u } ^ { c } f + \int _ { c } ^ { v } f = \int _ { u } ^ { v } f }$

3. Given $\epsilon > 0$ and $u = p _ { 0 } \leq p _ { 1 } \leq \dots \leq p _ { n - 1 } \leq p _ { n } = v$ a partition of $\left\lfloor u , v \right\rfloor$ with $| p _ { k } - p _ { k - 1 } | < \delta ( \epsilon )$ (a modulus of continuity for $f$ ), then for any numbers $x _ { k } \in \lfloor p _ { k - 1 } , p _ { k } \rfloor$ ， the integral can be approximated by a Riemann sum with the following accuracy:

$$
\left| \int _ { u } ^ { v } f \ - \ \overbrace { \sum _ { k = 1 } ^ { n } f ( x _ { k } ) ( \underbrace { p _ { k } - p _ { k - 1 } } _ { \Delta _ { k } } ) } ^ { R i e m a n \ s u m } \right| \leq \epsilon \cdot { ( v - u ) } .
$$

# Exercises

1.Write down approximating sums $\sum _ { i = 1 } ^ { n } L _ { i } \Delta _ { i } , \sum _ { i = 1 } ^ { n } U _ { i } \Delta _ { i }$ for $\textstyle \int _ { a } ^ { b } g$ in each of the following cases. Use equal size partitions with $n = 4$ (i.e.each subinterval has length $\Delta = ( b - a ) / 4$ ).

(a) $g ( x ) = 3 x$ ， $\lfloor a , b \rfloor = \lfloor 0 , 2 \rfloor$ (b) $g ( x ) = x ^ { 2 }$ ， $\lfloor a , b \rfloor = \lfloor 0 , 1 \rfloor$ (c） $g ( x ) = x ^ { 2 }$ ， $\lfloor a , b \rfloor = \lfloor - 1 , 1 \rfloor$

2.For each of the functions and intervals in the previous question, let $x _ { i }$ be the midpoint of the partition interval $\left\lfloor p _ { i - 1 } , p _ { i } \right\rfloor$

$$
\begin{array} { l l } { { \mathrm { E s t i m a t e ~ t h e ~ i n t e g r a l ~ u s i n g ~ t h e ~ R i e m a n n ~ s u m } \displaystyle \sum _ { i = 1 } ^ { 4 } g ( x _ { i } ) \Delta . } } \\ { { \mathrm { E s t i m a t e ~ t h e ~ e r r o r } \displaystyle \int _ { a } ^ { b } g - \displaystyle \sum _ { i = 1 } ^ { 4 } g ( x _ { i } ) \Delta . ~ ( \mathrm { S e e ~ P r o p o s i t i o n ~ 5 . 1 . 7 . } ) } } \end{array}
$$

3. A function is called increasing on an interval $I$ if $f ( x ) \leq f ( y )$ for all $x \le y$ in $I$ .Suppose $f$ is increasing on $\lfloor a , b \rfloor$ .Partition $[ a , b ]$ into $_ { n }$ equal pieces, each of width $\Delta = ( b - a ) / n$ . Find simple upper and lower bounds for $\textstyle \int _ { a } ^ { b } f -$ n $\begin{array} { l } { \displaystyle \sum _ { i = 1 } f ( x _ { i } ) \Delta . \mathrm { ~ ( H i n t : ~ I n ~ e a c h ~ } [ p _ { i - 1 } - p _ { i } ] , \mathrm { ~ } f ( p _ { i - 1 } ) \le f ( x ) \le f ( p _ { i } ) ; \mathrm { ~ a ~ } } \\ { \displaystyle \sum _ { i = 1 } ^ { n } f ( p _ { i } ) - f ( p _ { i - 1 } ) = f ( b ) - f ( a ) . \mathrm { ~ } } \end{array}$ lso note that

Apply this idea to estimating the error in the previous problem.

4. The functions $^ { 1 }$ ， $_ { x }$ and $x ^ { 2 }$ are uniformly continuous on any finite $\lfloor a , b \rfloor$ . Compute $\textstyle \int _ { a } ^ { b } 1$ $\textstyle \int _ { a } ^ { b } x$ and $\textstyle \int _ { a } ^ { b } x ^ { 2 }$ (Hint:Youcanuse anypartitionsyou want,so divide $\lfloor a , b \rfloor$ into $_ { n }$ equal pieces, so your partition wil be $p _ { k } = a + k ( b - a ) / n$ ， $k = 0 , \ldots , n$ . It is also useful to know the formulas

$$
\begin{array} { l } { { \displaystyle \sum _ { k = 1 } ^ { n } k = n ( n + 1 ) / 2 } } \\ { { \displaystyle \sum _ { k = 1 } ^ { n } k ^ { 2 } = n ( n + 1 ) ( 2 n + 1 ) / 6 . } } \end{array}
$$

5. Suppose we have two partitions of the interval $\lfloor a , b \rfloor$

$$
\begin{array} { c c l } { { a } } & { { = } } & { { x _ { 0 } \leq x _ { 1 } \leq x _ { 2 } = b } } \\ { { a } } & { { = } } & { { y _ { 0 } \leq y _ { 1 } \leq y _ { 2 } = b . } } \end{array}
$$

Suppose also that $a = x _ { 0 } = y _ { 0 } \leq x _ { 1 } \leq y _ { 1 } \leq x _ { 2 } = y _ { 2 } = b$ . Use the idea and notation of the proof of Proposition 5.1.10 to show that $L _ { 1 } ( x _ { 1 } - x _ { 0 } ) + L _ { 2 } ( x _ { 2 } -$ $x _ { 1 } ) \leq U _ { 1 } ^ { * } ( y _ { 1 } - y _ { 0 } ) + U _ { 2 } ^ { * } ( y _ { 2 } - y _ { 1 } )$ . If you feel ambitious, try this exercise again with $a = x _ { 0 } \leq x _ { 1 } \leq x _ { 2 } \leq x _ { 3 } = b$ and $x _ { 2 } \leq x _ { 3 } = y _ { 2 } = b$

6.We have shown that Riemann sums approximate the integral $\textstyle \int _ { a } ^ { b } f$ . Instead of partitioning the interval $\lfloor a , b \rfloor$ into equal-size pieces,Pierre de Fermat (1601- 1665）used the following partition in computing $\textstyle \int _ { a } ^ { b } x ^ { S }$

$$
\begin{array} { r c l } { \beta } & { = } & { ( b / a ) ^ { 1 / n } = \sqrt [ n ] { b / a } } \\ { x _ { 0 } } & { = } & { a < \underbrace { a \beta } _ { x _ { 1 } } < \underbrace { a \beta } _ { x _ { 2 } } ^ { 2 } < \underbrace { a \beta } _ { x _ { 3 } } ^ { 3 } < \dots < \underbrace { a \beta } _ { x _ { n - 1 } } ^ { n - 1 } < a \beta ^ { n } = b = x _ { n } } \end{array}
$$

and the Riemann sum

$$
\sum _ { k = 1 } ^ { n } f ( x _ { k } ) ( x _ { k } - x _ { k - 1 } ) = \sum _ { k = 1 } ^ { n } \left( a \beta ^ { k } \right) ^ { S } ( a \beta ^ { k } - a \beta ^ { k - 1 } ) .
$$

Assume $S$ is an integer (positive or negative) not equal to $^ { - 1 }$ ,and show that this method works， producing $\begin{array} { r } { \int _ { a } ^ { b } x ^ { S } = \frac { b ^ { S + 1 } - a ^ { S + 1 } } { S + 1 } } \end{array}$ bs+1-as+1Youll have todothe following:

(a） Show that the lengths of the intervals become arbitrarily smal as $n \longrightarrow \infty$ ， i.e. $\beta \to 1$ as $n \longrightarrow \infty$ (this is exercise 3 on page 105).   
(b) Calculate the Riemann sums (they are geometric series).   
(c) Find the limit of the Riemann sums as $n \to \infty$ (recalling $( x ^ { K } - y ^ { K } ) =$ $( x - y ) ( x ^ { K - 1 } + x ^ { K - 2 } y + \cdot \cdot \cdot + y ^ { K - 1 }$ will be useful).

7. Prove these useful estimates (see [Mercer, 2005]).

(a)(Mercer's Lemma） Let $f$ and $g$ be uniformly continuous on $[ a , b ]$ ，with $m \leq f \leq M$ on this interval. Suppose that $\int _ { a } ^ { b } g ( x ) \ d x = 0$ . Then

$$
\left| { \begin{array} { l } { b } \\ { \displaystyle \int _ { a } f ( x ) g ( x ) \ d x } \\ { a } \end{array} } \right| \leq { \frac { 1 } { 2 } } ( M - m ) \int _ { a } ^ { b } | g ( x ) | \ d x .
$$

$$
( { \mathrm { H i n t } } \colon \int _ { a } ^ { b } f ( x ) g ( x ) \ d x = { \frac { 1 } { 2 } } \int _ { a } ^ { b } ( 2 f ( x ) - M - m ) g ( x ) \ d x . )
$$

(b） PROPOSITION Let $f$ and $g$ be uniformly continuous on $\lfloor a , b \rfloor$ with $m \leq$ $f \leq M$ and $n \leq g \leq N$ .Let

$$
F = { \frac { 1 } { b - a } } \int _ { a } ^ { b } f ( x ) \ d x { \mathrm { ~ a n d ~ } } G = { \frac { 1 } { b - a } } \int _ { a } ^ { b } g ( x ) \ d x .
$$

Then

$$
\begin{array} { r l } & { \left| \displaystyle \frac { 1 } { b - a } \int _ { a } ^ { b } f ( x ) g ( x ) ~ d x - F G \right| } \\ { \le } & { \displaystyle \frac { 1 } { 2 } \operatorname* { m i n } \left[ ( M - m ) \int _ { a } ^ { b } \left| g ( x ) - G \right| ~ d x , ~ ( N - n ) \int _ { a } ^ { b } \left| f ( x ) - F \right| ~ d x \right] . } \end{array}
$$

(Hint: Set $h = g - G$ so that $\int _ { a } ^ { b } h ( x ) \ d x = 0$ ； apply Mercer's Lemma to $f$ and $h$ . Now do the same thing with the roles of $f$ and $g$ reversed.)

# 5.2 Elementary Properties

We now deduce some of the properties of the definite integral from the definition and construction of the previous section.

PROPOSITION 5.2.1 Given $g$ continuous on $I$ and $a , b , c \in I$ ，

$$
\int _ { a } ^ { c } g + \int _ { c } ^ { b } g = \int _ { a } ^ { b } g .
$$

Proof. Using Definition 5.1.4 we can write

$$
\begin{array} { l l l } { \displaystyle \int _ { r } ^ { s } g = \int _ { \operatorname* { m i n } ( r , s ) } ^ { s } g - \int _ { \operatorname* { m i n } ( r , s ) } ^ { r } } \\ { \displaystyle \quad = \int _ { \operatorname* { m i n } ( r , s ) } ^ { s } g + \underbrace { \int _ { \operatorname* { m i n } ( r , s , t ) } ^ { \operatorname* { m i n } ( r , s ) } g - \int _ { \operatorname* { m i n } ( r , s , t ) } ^ { \operatorname* { m i n } ( r , s ) } g } _ { \displaystyle = \mathrm { ~ 0 ~ } } - \int _ { \operatorname* { m i n } ( r , s ) } ^ { r } g } \end{array}
$$

for any $r , s , t \in I$ . But we have verified that the integral satisfies Condition 5.1.2 in the previous section, and $\operatorname* { m i n } ( r , s , t ) \leq \operatorname* { m i n } ( r , s ) \leq r , s$ ,S0 $\begin{array} { r } { \int _ { \operatorname* { m i n } ( r , s ) } ^ { s } g + \int _ { \operatorname* { m i n } ( r , s , t ) } ^ { \operatorname* { m i n } ( r , s ) } g = } \end{array}$ $\int _ { \operatorname* { m i n } ( r , s , t ) } ^ { s }$ and $\begin{array} { r } { \int _ { \operatorname* { m i n } ( r , s ) } ^ { r } g + \int _ { \operatorname* { m i n } ( r , s , t ) } ^ { \operatorname* { m i n } ( r , s ) } g = \int _ { \operatorname* { m i n } ( r , s , t ) } ^ { r } } \end{array}$ We conclde that

$$
\int _ { r } ^ { s } = \int _ { \operatorname* { m i n } ( r , s , t ) } ^ { s } g - \int _ { \operatorname* { m i n } ( r , s , t ) } ^ { r } g .
$$

By applying this twice we get

$$
\begin{array} { l } { \displaystyle \int _ { a } ^ { c } g + \int _ { c } ^ { b } g = \int _ { \operatorname* { m i n } ( a , b , c ) } ^ { c } - \int _ { \operatorname* { m i n } ( a , b , c ) } ^ { a } g + \int _ { \operatorname* { m i n } ( a , b , c ) } ^ { b } g - \int _ { \operatorname* { m i n } ( a , b , c ) } ^ { c } g } \\ { \displaystyle = \int _ { \operatorname* { m i n } ( a , b , c ) } ^ { b } g - \int _ { \operatorname* { m i n } ( a , b , c ) } ^ { a } g } \\ { \displaystyle = \int _ { a } ^ { b } g . } \end{array}
$$

COROLLARY 5.2.2 If $g$ is uniformly continuous on $I$ and $p _ { 0 } , \ldots , p _ { n } \in I$ then

$$
\int _ { p _ { 0 } } ^ { p _ { n } } g = \sum _ { i = 1 } ^ { n } \int _ { p _ { i - 1 } } ^ { p _ { i } } g .
$$

(Prove this by induction on $_ { n }$ .）

COROLLARY 5.2.3 If $g$ is uniformly continuous on $I$ and $p , x , y \in I$ ，then

$$
\int _ { p } ^ { y } g - \int _ { p } ^ { x } g = \int _ { x } ^ { y } g .
$$

PROPOSITION 5.2.4 If $f$ is non-negative and continuous on $[ a , b ]$ and $f ( c ) > 0$ for some $c \in \left\lfloor a , b \right\rfloor$ ，then $\textstyle \int _ { a } ^ { b } f ( x ) d x > 0$

COROLLARY 5.2.5 If $f$ is non-negative and continuous on $[ a , b ]$ and $\textstyle \int _ { a } ^ { b } f ( x ) d x = 0$ ， then $f$ is identically $\boldsymbol { \mathit { 0 } }$ on $\lfloor a , b \rfloor$

COROLLARY 5.2.6 Suppose that $g \leq f \leq h$ on the interval $\lfloor a , b \rfloor$ and all three functions are continuous on $\lfloor a , b \rfloor$ . Then

$$
\int _ { a } ^ { b } g \leq \int _ { a } ^ { b } f \leq \int _ { a } ^ { b } h .
$$

Proof. These are all exercises.

DEFINITION 5.2.7 That $g$ and $h$ don't cross on $\lfloor a , b \rfloor$ means that either $g \geq h$ on all of $\lfloor a , b \rfloor$ or $h \geq g$ on all of $\lfloor a , b \rfloor$

We can now generalize our previous result without committing ourselves to a given ordering of $^ { a }$ and $b$ ,and $g$ and $h$ . This will be useful later in our discussion of Taylor series.

LEMMA 5.2.8 Suppose $f \geq 0$ is continuous on $\left| \operatorname* { m i n } ( a , b ) , \operatorname* { m a x } ( a , b ) \right|$ . Then

$$
\left| \int _ { a } ^ { b } f \right| = \int _ { \displaystyle \operatorname* { m i n } ( a , b ) } ^ { \displaystyle \operatorname* { m a x } ( a , b ) } f .
$$

Proof.Exercise.■

PROPOsITiON 5.2.9 Suppose that the continuous functions $_ { g }$ and $h$ don't cross on the interval $\left| \operatorname* { m i n } ( a , b ) , \operatorname* { m a x } ( a , b ) \right|$ .If $f ( x )$ is between $g ( x )$ and $h ( x )$ for all $_ { x }$ in this interoual, then $\textstyle \int _ { a } ^ { b } f$ is between $\textstyle \int _ { a } ^ { b } g$ and $\textstyle \int _ { a } ^ { b } h$

Proof. Because $g$ and $h$ don't cross,we only have to check the result for the two cases $g \leq h$ and $h \leq g$ . So suppose $g \leq h$ . Since $f ( x )$ is between $g ( x )$ and $h ( x )$ ，we have $g ( x ) \leq f ( x ) \leq h ( x )$ for all $_ { x }$ in the interval. Now we have

$$
\begin{array} { r l } {  { \int _ { a } ^ { b } h - \int _ { a } ^ { b } \varrho \bigg \vert - \bigg \vert \int _ { a } ^ { b } h - g \bigg \vert } } \\ & { - \bigg \vert \int _ { a \in \{ a , b \} } ^ { b } \mathrm { d } a - g \bigg \vert } \\ & { = \int _ { a \in \{ a , b \} } ^ { a \in \{ a , b \} } ( h - f ) + ( f - g ) } \\ & { = \int _ { a \in \{ a , b \} } ^ { a \in \{ a , b \} } h - f + \int _ { a \in \{ a , b \} } ^ { a \in \{ a , b \} } f - g } \\ & { -  \int _ { a } ^ { b } h - f  +  \int _ { a } ^ { b } f - g  } \\ & { -  \int _ { a } ^ { b } \mathrm { d } a - \int _ { a } ^ { b } f  +  \int _ { a } ^ { b } f - \int _ { a } ^ { b } g  } \end{array}
$$

Thus,we get our result in this case by Proposition 1.5.44. The case $h \leq g$ is,of course,similar.

PROPOSITION 5.2.10（LINEARITY OF THE INTEGRAL） GiUen $f$ and $_ { g }$ continuous on $\lfloor a , b \rfloor$ and $r , s \in \mathbb { R }$ ， we have

$$
\int _ { a } ^ { b } ( r f + s g ) = r \int _ { a } ^ { b } f + s \int _ { a } ^ { b } g .
$$

Proof. We will show that for any $\epsilon > 0$ , the left and right sides differ by less than $\epsilon$ For the moment, let $\epsilon _ { 1 } > 0$ be arbitrary. Since $f$ and $g$ are continuous, so is $r f + s g$ Let $\delta _ { f } ( \epsilon _ { 1 } )$ ， $\delta _ { g } ( \epsilon _ { 1 } )$ and $\delta _ { r f + s g } ( \epsilon _ { 1 } )$ be moduli of continuity for these functions,and let $\delta$ be the minimum of these three moduli. Let $p _ { 0 } , \ldots , p _ { n }$ be a partition of $\lfloor a , b \rfloor$ with $p _ { i } - p _ { i - 1 } < \delta$ for each $i = 1 , \dots n$

Let $\begin{array} { r } { A _ { f } = \sum _ { i = 1 } ^ { n } f ( p _ { i } ) \Delta _ { i } } \end{array}$ and $\begin{array} { r } { A _ { g } = \sum _ { i = 1 } ^ { n } g ( p _ { i } ) \Delta _ { i } } \end{array}$ be Riemann sums for $\textstyle \int _ { a } ^ { b } f$ and $\textstyle \int _ { a } ^ { b } g$ Then $r A _ { f } + s A _ { g }$ is a Riemann sum for $r f + s g$ We know fromProposition5.1.7 that these Riemann sums differ from the integral they approximate by an amount less than $\epsilon _ { 1 } ( b - a )$

$$
\begin{array} { r l } & { \displaystyle \int _ { a } ^ { b } ( r f + s g ) - r \int _ { a } ^ { b } f - s \int _ { a } ^ { b } g \Bigg | } \\ & { = \displaystyle  ( \int _ { a } ^ { b } r f + s g ) - ( r A _ { f } + s A _ { g } ) + r A _ { f } - r ( \int _ { a } ^ { b } f ) + s A _ { g } - s ( \int _ { a } ^ { b } g )  } \\ & { \le \displaystyle  ( \int _ { a } ^ { b } r f + s g ) - ( r A _ { f } + s A _ { g } )  + \displaystyle  r A _ { f } - r ( \int _ { a } ^ { b } f )  +  s A _ { g } - s ( \int _ { a } ^ { b } g )  } \\ & { \le \epsilon _ { 1 } ( b - a ) + \displaystyle  r \rvert \epsilon _ { 1 } ( b - a ) + \displaystyle  s  \epsilon _ { 1 } ( b - a ) } \\ & { = \epsilon _ { 1 } ( b - a ) ( 1 + \displaystyle  r  + \displaystyle  s  ) . } \end{array}
$$

By choosing $\begin{array} { r } { \epsilon _ { 1 } < \frac { \epsilon } { ( b - a ) ( 1 + | r | + | s | ) } } \end{array}$ we will have $\textstyle \int _ { a } ^ { b } r f + s g$ and $\textstyle r \int _ { a } ^ { b } f + s \int _ { a } ^ { b } g$ within $\epsilon$ . Since they are arbitrarily close,they are equal. $|$

# Exercises

1. Suppose $h$ is formed by amalgamating the UC functions $f$ on $\lfloor a , b \rfloor$ and $g$ on $\lfloor b , c \rfloor$ (see Proposition 4.2.21)； so $h ( x ) = f ( x )$ for $x \in \left[ a , b \right]$ and $h ( x ) = g ( x )$ for $x \in \lfloor b , c \rfloor$ (with $f ( b ) = g ( b )$ ). What can you say about the integral $\textstyle \int _ { a } ^ { c } h$ ？

2. Suppose $f \geq 0$ is UC on $\left| \operatorname* { m i n } ( a , b ) , \operatorname* { m a x } ( a , b ) \right|$ . Prove that

$$
\left| \int _ { a } ^ { b } f \right| = \int _ { \operatorname* { m i n } ( a , b ) } ^ { \operatorname* { m a x } ( a , b ) } f .
$$

(Hint: You may separate into cases $a \leq b$ and $b \leq a$ : see Remark1.5.36 .)

3. Suppose $f$ is UC on $[ a , b ]$ Prove that $\textstyle \left| \int _ { a } ^ { b } f \right| \leq \int _ { a } ^ { b } | f |$ . (One way is to use Proposition 5.1.7.)

4. Suppose $g \leq f \leq h$ on the interval $\lfloor a , b \rfloor$ ， and all three functions are UC on $[ a , b ]$ . Then

$$
\int _ { a } ^ { b } g \leq \int _ { a } ^ { b } f \leq \int _ { a } ^ { b } h .
$$

5. Suppose $f$ is UC on $\lfloor a , b \rfloor$ . For each positive integer $_ { n }$ ,let $\Delta = \left( b - a \right) / n$ and $x _ { k } = a + k \Delta$ ， $k = 0 , \ldots , n$ . Define

$$
A _ { n } = { \frac { 1 } { n } } \left( f \left( x _ { 1 } \right) + f ( x _ { 2 } ) + \cdots + f ( x _ { n } ) \right) .
$$

(a) Express $A = \operatorname* { l i m } _ { n \to \infty } A _ { n }$ in terms of an integral. (Hint: $A _ { n }$ is a Riemann sum.) $A$ is called the average value of $f$ on the interval $\lfloor a , b \rfloor$ (b）If $L \leq f \leq U$ on $\lfloor a , b \rfloor$ ， prove that $L \leq A \leq U$ as well.

# 5.3Extensions and Improper Integrals

In this section, we show how the integral of a function can sometimes be extended, even to an interval on which the function may not be uniformly continuous.

Suppose $f$ is uniformly continuous on an interval $I$ . If we fix some $c \in I$ ，then we can define, for all $x \in I$ ，

$$
\phi ( x ) = \int _ { c } ^ { x } f .
$$

PROPOSITION 5.3.1 $\phi$ is a uniformly continuous function on $I$

Proof. Since $f$ is continuous on $I$ ， $f$ is bounded on $I$ . Thus, $- B \leq f ( x ) \leq B$ for some $B \geq 0$ ，and

$$
\begin{array} { l } { | \phi ( y ) - \phi ( x ) | = \displaystyle \left| \int _ { c } ^ { y } f - \int _ { c } ^ { x } f \right| = \displaystyle \left| \int _ { x } ^ { y } f \right| } \\ { \displaystyle \leq B | y - x | . } \end{array}
$$

Hence, $\phi$ is uniformly continuous with modulus of continuity $\delta ( \epsilon ) = \epsilon / B$

Suppose now that $I$ is an open finite interval $( a , b )$ and $f$ is uniformly continuous on $I$ . Then we know (see Theorem 4.2.11) that $f$ has a unique, uniformly continuous extension $\overline { { f } }$ to the closed interval $\lfloor a , b \rfloor$ . We can now define a new function on $\lfloor a , b \rfloor$ by $\begin{array} { r } { \widetilde { \phi } ( x ) = \int _ { c } ^ { x } \overline { { f } } } \end{array}$ . Clearly $\phi ( x )$ and $\overset { \sim } { \phi } ( x )$ are equal for $x \in ( a , b )$ Since $\overline { { f } }$ is uniformly continuous on $[ a , b ]$ ,so is $\widecheck { \phi }$ , by Proposition 5.3.1. Of course, $\phi$ is uniformly continuous on $( a , b )$ by the same proposition，so it has its own unique uniformly continuous extension to $[ a , b ]$ ; call it $\overline { { \phi } }$ . Because of this uniqueness,we have

PROPOSITION 5.3.2 $\overset { \sim } { \phi } = \overline { { \phi } }$ is the unique extension of $\begin{array} { r } { \phi ( x ) = \int _ { c } ^ { x } f } \end{array}$ t0 $[ a , b ]$

ExAMPLE 5.3.3 Let $f ( t ) = { \frac { t ^ { 2 } - 4 } { t - 4 } }$ on the interval $\left[ 0 , 2 \right)$ Clearly ${ \overline { { f } } } ( t ) = t + 2$ ertends $f$ to all of $\mathbb { R }$ . For any $0 \leq a \leq x < 2$ , we have

$$
\begin{array} { r c l } { { \displaystyle \int _ { a } ^ { x } \frac { t ^ { 2 } - 4 } { t - 4 } d t } } & { { = } } & { { \displaystyle \left( x ^ { 2 } / 2 + 2 x \right) - \left( a ^ { 2 } / 2 + 2 a \right) } } \\ { { } } & { { } } & { { } } \\ { { } } & { { \longrightarrow } } & { { 6 - \displaystyle \left( a ^ { 2 } / 2 + 2 a \right) } } \\ { { } } & { { = } } & { { \displaystyle \int _ { a } ^ { 2 } t + 2 \ d t . } } \end{array}
$$

(We have used the Fundamental Theorem of Calculus here-we'll prove it in the nert chapter!)

EXAMPLE 5.3.4 Let $f ( t ) = { \frac { \sin t } { t } }$ on the interval $( 0 , 1 ]$ : see the exercises.

$\textstyle \int _ { 2 } ^ { 1 0 } { \frac { 1 } { x ^ { 2 } } } d x \ )$ $\int _ { 2 } ^ { \infty } { \frac { 1 } { x ^ { 2 } } } d x )$   
interval that includesapoint wherethefunctionisnotdfied (e.g. $\textstyle \int _ { 0 } ^ { 1 } { \frac { 1 } { \sqrt { x } } } d x )$ The   
idea in both cases is to integrate almost up to the place in question ( $\infty$ in the first   
example,O in the second),and then try to take a limit as we get closer and closer.

DEFINITION 5.3.5 The symbol $\textstyle \int _ { a } ^ { b } f$ (where either one of a or b or both may be $\infty$ ） is called an improper integral if $f$ is not UC on $\lfloor a , b \rfloor$ (half open or open when an endpoint is $\infty$ ）

DEFINITiON 5.3.6 Suppose that c is either a finite number or $\infty$ ，and that $f$ is uniformly continuous on every finite subinterval of $I = \lfloor a , c \ )$

1. When $c = \infty$ ， we say that $\int _ { a } ^ { M \to \infty } f$ converges if, for every $\epsilon > 0$ there is a number $A ( \epsilon )$ such that

$$
\left| \int _ { a } ^ { u } f - \int _ { a } ^ { v } f \right| < \epsilon
$$

for any $u , v > A ( \epsilon )$ ， $u , v \in I$

2. For c finite, we say that $\int _ { a } ^ { M  c - } f$ converges if, for every $\epsilon > 0$ there is a $\delta > 0$ such that

$$
\left| \int _ { a } ^ { u } f - \int _ { a } ^ { v } f \right| < \epsilon
$$

for any $u , v \in ( c - \delta , c )$ ， $u , v \in I$

3. When $c = \infty$ ，say that sM→∞ f converges to L if, for each ∈> O there is a number $B ( \epsilon )$ such that

$$
\displaystyle \left| \int _ { a } ^ { u } f - L \right| < \epsilon
$$

4. For c finite, we say that $\int _ { a } ^ { M  c - } f$ converges to $L$ if, for each $\epsilon > 0$ there is a $\delta > 0$ such that

$$
\displaystyle \left| \int _ { a } ^ { u } f - L \right| < \epsilon
$$

for $u \in ( c - \delta , c )$ ， $u \in I$

REMARk 5.3.7 You can easily reword the above definitions to deal with the case $\textstyle \int _ { M \to - \infty } ^ { b } f$ $\textstyle \int _ { M \to c + } ^ { b } f$ With straightforward modifications, the proofs below apply to these integrals as well.

PROPOSITION 5.3.8 Forcfinite or $\infty$ ，f $\int _ { a } ^ { M  c - } f$ converges, then there is a number L such that $\int _ { a } ^ { M  c } f$ conuerges to $L$

Proof. Let $\begin{array} { r } { F ( u ) = \int _ { a } ^ { u } f } \end{array}$ . We give the proof for $c = \infty$ ; the other proof is similar. As you will notice, the argument is almost exactly the same as the one we gave for Cauchy Completeness (Theorem 3.1.14). For each $\epsilon > 0$ and $u > A ( \epsilon )$ ,we form the real interval $\lvert F ( u ) - \epsilon , F ( u ) + \epsilon \rvert$ .Let $\mathcal { F }$ be the family of all such intervals for all $\epsilon > 0$ Since, for any $\epsilon > 0$ we can find an $A ( \epsilon )$ ， $\mathcal { F }$ is fine. To prove consistancy, we must show that $F ( u ) - \epsilon _ { 1 } \leq F ( v ) + \epsilon _ { 2 }$ and $F ( v ) - \epsilon _ { 2 } \leq F ( u ) + \epsilon _ { 1 }$ ，where $u > A ( \epsilon _ { 1 } )$ and $v > A ( \epsilon _ { 2 } )$ . As usual by our ruling out argument (see 1.5.33),it suffices to assume $A ( \epsilon _ { 1 } ) \leq A ( \epsilon _ { 2 } )$ .Then $u , v > A ( \epsilon _ { 1 } )$ s0 $F ( u )$ and $F \left( v \right)$ are within $\epsilon _ { 1 }$ ； consequently $F ( v ) - \epsilon _ { 1 } \leq F ( u ) \leq F ( v ) + \epsilon _ { 1 }$ . The left-hand inequality gives $F ( v ) - \epsilon _ { 2 } < F ( v ) \leq$ $F ( u ) + \epsilon _ { 1 }$ , while the right-hand inequality gives $F ( u ) - \epsilon _ { 1 } \le F ( v ) < F ( v ) + \epsilon _ { 2 }$ .We let $L$ be the limit of this family. For similar details, see the proof that Cauchy sequences converge (Theorem 3.1.14).

NOTATION 5.3.9 When an improper integral converges, we say that it erists， and write $\textstyle \int _ { a } ^ { \infty } f$ r $\textstyle \int _ { a } ^ { c } f$ (respectively: $\textstyle \int _ { - \infty } ^ { b } f$ or $\textstyle \int _ { c } ^ { b } f )$ for the number $L$ it converges to.

DEFINITION 5.3.10 If sM-∞ f=-or+,we say that the integraldiverges (similarly for $\textstyle \int _ { M \to - \infty } ^ { b } f )$

EXAMPLE 5.3.11 When we've proved the Fundamental Theorem of Calculus, we'll know that $\begin{array} { r } { \int _ { a } ^ { b } \frac { 1 } { x ^ { 2 } } = \frac { 1 } { a } - \frac { 1 } { b } } \end{array}$ (with $0 < a < b$ ). It followus that $\textstyle \int _ { a } ^ { \infty } { \frac { 1 } { x ^ { 2 } } } = 1 / a$ (One can prove that this integral converges directly-without computing it—using the convergence of the sequence $\sum _ { i = 1 } ^ { k } { \frac { \ d H _ { 1 } } { \ d i ^ { 2 } } }$ . See the exercises at the end of this section.)

Now we turn to defining doubly infnite improper integrals, $\textstyle \int _ { - \infty } ^ { \infty } f$ . We first prove a result which is the analogue of Tail Convergence for series (Proposition 3.3.11), namely that the convergence of an integral on an infinite interval $\lfloor a , \infty )$ depends only on the infinite segment, not on the value of the integral over a finite subinterval:

LEMMA 5.3.12（TAIL CONVERGENCE FOR INTEGRALS） Suppose $f$ is uniformly continuous on every finite subinterval of $\lfloor a , \infty )$ ， and that $a \leq b$ ; then $\textstyle \int _ { b } ^ { \infty } f$ exists if and only if $\textstyle \int _ { a } ^ { \infty } f$ erists, and $\textstyle \int _ { a } ^ { \infty } f = \int _ { a } ^ { b } f + \int _ { b } ^ { \infty } f$

Proof. Suppose $\textstyle \int _ { b } ^ { \infty } f$ exists， and let $A ( \epsilon )$ be given as in the definition. Suppose $u , v > A ( \epsilon )$ . Then

$$
\left| \int _ { a } ^ { u } f - \int _ { a } ^ { v } f \right| = \left| \int _ { a } ^ { b } f + \int _ { b } ^ { u } f - \int _ { a } ^ { b } f - \int _ { b } ^ { v } \right| = \left| \int _ { b } ^ { u } f - \int _ { b } ^ { v } f \right| < \epsilon .
$$

The addition formula is a straightforward consequence.■

A similar proof shows that the same tail convergence holds for infinite lower limits.

LEMMA 5.3.13 Suppose $f$ is uniformly continuous on every finite subinterval of $( - \infty , b ]$ ， and that $a \leq b$ ; then $\textstyle \int _ { - \infty } ^ { a } f$ erists if and only if $\textstyle \int _ { - \infty } ^ { b } f$ exists, and $\textstyle \int _ { - \infty } ^ { b } f =$ $\textstyle \int _ { - \infty } ^ { a } f + \int _ { a } ^ { b } f$

PROPOSITION 5.3.14 Suppose $f$ is uniformly continuous on every finite subinterval of $( - \infty , \infty )$ . If, for some a and $b$ , both integrals $\textstyle \int _ { - \infty } ^ { u } f$ and $\textstyle \int _ { b } ^ { \infty } f$ erist, then this is true for any a and b. Furthermore, $\textstyle { \int _ { - \infty } ^ { a } f + \int _ { a } ^ { b } f + \int _ { b } ^ { \infty } f }$ is independent of a and $b$

Proof. Use Lemmas 5.3.12 and 5.3.13.

DEFINITION 5.3.15 When $f$ is uniformly continuous on every finite subinterval of $( - \infty , \infty )$ , the integral $\textstyle \int _ { - \infty } ^ { \infty } f$ exists if both integrals $\textstyle \int _ { - \infty } ^ { u } f$ and $\textstyle \int _ { a } ^ { \infty } f$ erist; we write $\textstyle \int _ { - \infty } ^ { \infty } f = \int _ { - \infty } ^ { u } f + \int _ { a } ^ { \infty } f$

(The previous proposition shows that this is independent of $^ { a }$ ）

In a similar way we can deal with improper integrals over a finite interval $\lfloor a , b \rfloor$ ， where $f$ may behave badly at some $c$ between $^ { a }$ and $b$

DEFINITION 5.3.16 Suppose $f$ is uniformly continuous on all closed subintervals of $[ a , c )$ and of $( c , b ]$ If thelimuts $\textstyle \int _ { a } ^ { c } f = \int _ { a } ^ { M \to c - } f$ and $\textstyle \int _ { M \to c + } ^ { b } f$ both erist, then we define $\textstyle \int _ { a } ^ { b } f = \operatorname* { l i m } \int _ { a } ^ { M \to c - } f + \operatorname* { l i m } \int _ { M \to c + } f$

PROPOSITION 5.3.17 Let $\int ^ { I m p r o p e r }$ denote one of the integrals $\textstyle \int _ { a } ^ { \infty }$ ， $\int _ { - \infty } ^ { b }$ $\int _ { - \infty } ^ { \infty }$ 0r $\textstyle \int _ { a } ^ { b }$ .If $\int ^ { I m p r o p e r } f$ and $\int ^ { I m p r o p e r } g$ erist,then for any constants $\alpha$ and $\beta$ ,the integral of $\alpha f + \beta g$ exists,and

$$
\int ^ { I m p r o p e r } \alpha f + \beta g = \alpha \int ^ { I m p r o p e r } f + \beta \int ^ { I m p r o p e r } g .
$$

Proof. Exercise.

One of the most useful ways of showing that the improper integral of a function converges is by comparing it with the integral of a function known to converge. The simplest test is the following.

PROPOSITION 5.3.18 (INTEGRAL COMPARISON TEST） SuppOSe that both $f$ and $g$ are UC on every finite subinterval of $\lfloor a , \infty )$ ，and $0 \leq f \leq g$

1.1f $\textstyle \int _ { a } ^ { \infty } g$ exists, then $\textstyle \int _ { a } ^ { \infty } f$ exists as well.   
2.If $\textstyle \int _ { a } ^ { \infty } f$ diverges, then $\textstyle \int _ { a } ^ { \infty } g$ diverges as well.

Proof. For the first part, $\begin{array} { r } { \left| \int _ { a } ^ { u } f - \int _ { a } ^ { v } f \right| = \left| \int _ { u } ^ { v } f \right| \le \left| \int _ { u } ^ { v } g \right| = \left| \int _ { a } ^ { u } g - \int _ { a } ^ { v } g \right| < \epsilon } \end{array}$ (for $_ u$ and $v$ sufficiently large). The divergence part is left as an exercise. $|$

Just as for series,there is a limit form of this test.

PROPOSITION 5.3.19 （LIMIT COMPARISON） Suppose that both $f$ and $g$ are nonnegative and UC on every finite subinterval of $[ a , \infty )$ and $\operatorname* { l i m } _ { x \to \infty } { \frac { f ( x ) } { g ( x ) } } = L$ with $0 < L < \infty$ . Then $\textstyle \int _ { a } ^ { \infty } f$ converges if and only if $\textstyle \int _ { a } ^ { \infty } g$ converges.

DEFINITION 5.3.20 A function $f$ ， $U C$ on every finite subinterval of $( - \infty , \infty )$ ，is said to be absolutely integrable if $\textstyle \int _ { - \infty } ^ { \infty } | f |$ converges.

EXAMPLE 5.3.21 The functions $\textstyle { \frac { x } { 1 + x ^ { 3 } } }$ and xe-x² are both uniformly continuous on all of $\mathbb { R }$ ， and for $| x |$ sufficiently large, each is smaller than $\textstyle { \frac { 1 } { x ^ { 2 } } }$ . It follows that both of these functions are absolutely integrable. Also, the function $\frac { \sin x } { 1 + x ^ { 2 } }$ has absolute value less than $\textstyle { \frac { 1 } { x ^ { 2 } } }$ when $x > 0$ ， so it too is absolutely integrable.

We can now use the comparison test to show that absolute integrability implies convergence of the integral (what you would expect). The trick is to write $f$ as the sum

$$
f = f ^ { + } - f ^ { - } ,
$$

where

$$
f ^ { + } ( x ) = { \frac { | f ( x ) | + f ( x ) } { 2 } }
$$

and

$$
f ^ { - } ( x ) = { \frac { | f ( x ) | - f ( x ) } { 2 } } .
$$

One can prove directly that $0 \leq f ^ { + } ( x ) \leq | f ( x ) |$ and $0 \leq f ^ { \mathrm { ~ - ~ } } ( x ) \leq | f ( x ) |$ ; this also follows from the following lemma.

LEMMA 5.3. ${ \mathrm { 2 2 ~ } } { \frac { | A | + A } { 2 } } = \operatorname* { m a x } ( A , 0 ) { \mathrm { ~ } } a n d { \frac { | A | - A } { 2 } } = \operatorname* { m a x } ( - A , 0 ) .$

Proof. It suffices to prove these in the cases $0 \leq A$ and $A \leq 0$ , where they are clear.

So we see that $0 \leq f ^ { + } ( x ) \leq | f ( x ) |$ and $0 \leq f ^ { \ - } ( x ) \leq | f ( x ) |$ . Clearly, $f ^ { + }$ and $f ^ { - }$ are UC wherever $f$ is, so we can apply the Comparison Test to each of them to prove the following (absolute integrability implies integrability).

COROLLARY 5.3.23 Suppose $f$ is UC on every finite subinterval of $( a , \infty )$

1.f $\int _ { a } ^ { \infty } { | f | }$ exists, then $\textstyle \int _ { a } ^ { \infty } f$ exists.   
2.If $\textstyle \int _ { - \infty } ^ { \infty } | f |$ exists, then $\textstyle \int _ { - \infty } ^ { \infty } f$ exists.

EXAMPLE 5.3.24 $\int _ { - \infty } ^ { \infty } { \frac { \sin { x } } { 1 + x ^ { 2 } } } d x$ exists.

A number of very important mathematical functions are defned in terms of improper integrals. Below are two of them; see the exercises for further discussion. Computing these and other improper integrals or finding their special properties usually requires the Fundamental Theorem of Calculus or techniques such as integration by substitution or by parts. We will return to improper integrals when we have developed these tools.

DEFINITION 5.3.25 For $x > 0$ , the Gamma function is defined by

$$
\Gamma ( x ) = \int _ { 0 } ^ { \infty } t ^ { x - 1 } e ^ { - t } d t .
$$

DEFINITION 5.3.26 For certain functions $h ( t )$ ， the Laplace transform $H$ of $h$ is defined by

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

DEFINITION 5.3.28（RIEMANN INTEGRABILITY） $f$ is said to be Riemann integrable over an interval $\lfloor a , b \rfloor$ if there is a partition $a = p _ { 0 } \leq p _ { 1 } \leq \cdots \leq p _ { n - 1 } \leq p _ { n } = b$ such that the integrals (proper or improper)

$$
V _ { k } = \int _ { p _ { k - 1 } } ^ { p _ { k } } f
$$

for $k = 1 , \dots , n$ exist. When this is the case, we define

$$
\int _ { a } ^ { b } f = V _ { 1 } + V _ { 2 } + . . . + V _ { n } .
$$

REMARk 5.3.29 Definition 5.3.28 assumes a partition by a finite number of points. $\sum _ { k = 1 } ^ { N } V _ { k }$ $N  \infty$ $a = - \infty$ $b = \infty$

# Exercises

1. Suppose hat $f$ isUCoeveryledsuimtral f $( c , b ]$ Discuss $\textstyle \int _ { M \to c + } ^ { b } f$ and define the improper integral $\textstyle \int _ { c } ^ { b } f$ (when $f$ is not UC on $\displaystyle \left\lfloor c , b \right\rfloor$ itself).   
2. Suppose that $0 \leq f \leq g$ and both functions are UC on every finite subinterval of $\lfloor a , \infty )$ . Prove that $\textstyle \int _ { a } ^ { \infty } f$ diverges implies that $\textstyle \int _ { a } ^ { \infty } g$ diverges.   
3.Complete the divergence part of the integral comparison test，Proposition 5.3.18.   
4. Prove the limit comparison test for integrals,Proposition 5.3.19..   
5. Prove that $\textstyle \int _ { 1 } ^ { \infty } { \frac { 1 } { x ^ { 2 } } }$ converges (see page 103).   
6. Prove that $\int _ { - c } ^ { \infty } e ^ { - x }$ exists. (Hint: $e ^ { - x }$ is eventually smaller than $\textstyle { \frac { 1 } { x ^ { 2 } } }$ : see Corollary 3.2.15 and the previous exercise.)   
7. Prove that if $f$ is UC on every finite subinterval of $| k , \infty )$ and $a , b \in \lfloor a , \infty \rfloor$ ， then $\textstyle \int _ { a } ^ { \infty } f$ exists if and only if $\textstyle \int _ { b } ^ { \infty } f$ exists.   
8. Suppose that $f \geq 0$ is UC on $\lfloor 1 , \infty )$ and $\textstyle { \int _ { 1 } ^ { \infty } f = B }$ ,a finite number.

(a) Give an example to show that lim f(x) need not exist. (b)Prove that if lim f(x) exists,it must be $0$

9. Prove the following part of Proposition 5.3.17: If $\textstyle \int _ { c } ^ { \infty } f$ and $\int _ { c } ^ { \infty } g$ exist, then for any constants $_ { \alpha }$ and $\beta$ ， the integral of $\alpha f + \beta g$ exists,and

$$
\int _ { c } ^ { \infty } \alpha f + \beta g = \alpha \int _ { c } ^ { \infty } f + \beta \int _ { c } ^ { \infty } g .
$$

10.Usetheintegalcmparisontesttoproetat cosdx exists.

11. Prove that if $f$ is UC on every finite interval and $\operatorname* { l i m } _ { x \to \infty } f ( x ) = L$ , then

$$
\operatorname* { l i m } _ { x \to \infty } { \frac { 1 } { x } } \int _ { 0 } ^ { x } f ( t ) d t = L .
$$

(In other words,“If $f$ is eventually close to $L$ , then its average value is eventually close to $L$ .")

12. Prove that the Gamma function $\textstyle \Gamma ( x ) ~ = ~ \int _ { 0 } ^ { \infty } t ^ { x - 1 } e ^ { - t } d t$ (for $x \ > \ 0$ ）exists. (Hint:For $t$ big enough, $t ^ { x - 1 } < e ^ { t / 2 }$ because of Corollary 3.2.15； use the integral comparison test.)

13.For certain functions $h ( t )$ , the Laplace transform $H$ of $h$ is defined by

$$
H ( x ) = \int _ { 0 } ^ { \infty } e ^ { - x t } h ( t ) \ d t .
$$

A function $h ( t )$ is exponentially bounded if, for some $k > 0$ , there is a constant $K > 0$ ， such that $| h ( t ) | \leq e ^ { k t }$ for $t > K$

(a) Prove that exponentially bounded functions have Laplace transforms. (b） Give the values of $_ { x }$ for which $H ( x )$ is defined. (c) Give some examples of such functions. (Computing Laplace transforms usually requires integration by parts,which we'll deal with later.)

14. Let $\textstyle f ( x ) = { \frac { \sin x } { x } }$ . Assume the following two facts about this function (we will prove them later when we examine the sine function more carefully):

· $f ( x )$ is UC on any finite closed interval not containing 0. $\operatorname* { l i m } _ { x \to 0 } { \frac { \sin x } { x } } = 1$

Prove the following (Lemma 4.2.24 will be helpful).

(a) $f ( x )$ is uniformly continuous on any punctured interval $I - \{ 0 \}$ (b) $f ( x )$ has a uniformly continuous extension to all of $\mathbb { R }$

(c） The integrals $\textstyle \int _ { 0 } ^ { b } f$ ， $\int _ { - b } ^ { 0 } f$ exist for any $b \geq 0$

15.Prove that the functions $\frac { \sin x } { 1 + x ^ { 2 } }$ and ${ x ^ { | \alpha | } } { e ^ { - | x | } }$ are absolutely integrable.

16. $\textstyle \int _ { 1 } ^ { \infty } { \frac { \sin x } { x } } d x$ is alassic eaplefanimpror integaltatovgstot absolutely.

(a) The easiest way to see that this integral converges is to use integration by parts. Although we haven't proved this technique yet,we will in the next chapter (see Proposition 6.5.3), so you are allowed to use it.

$$
\int _ { 1 } ^ { M } \frac { \sin x } { x } d x = \left. \frac { - \cos x } { x } \right| _ { 1 } ^ { M } - \int _ { 1 } ^ { M } \frac { \cos x } { x ^ { 2 } } d x .
$$

(b) To see that the integral $\int _ { 1 } ^ { M } \Big | \frac { \sin x } { x } \Big | d x$ goes to $\infty$ with $M$ ，look at the numbers $\begin{array} { r } { I _ { n } = \int _ { n \pi } ^ { ( n + 1 ) \pi } \left| \frac { \sin x } { x } \right| d x } \end{array}$ |dx,and show each one is greater than 2n+1: (Hint:Look at one arch of $| \sin x |$ and note that the function is at least $\textstyle { \frac { 1 } { 2 } }$ on a pretty big subinterval.)

17. (In this exercise you are allowed to use formulas from calculus,including the Fundamental Theorem (see Corollary 6.3.6) and integration by substitution (see Proposition 6.5.1). Use the integral test (Theorem 5.3.27)—or any simpler test—to analyze the convergence/divergence of these series.

(a) $\scriptstyle \sum _ { k = 1 } ^ { \infty } 1 / k$ (harmonic series)   
(b) 1 $\textstyle \sum _ { k = 1 } ^ { \infty } 1 / k ^ { 2 }$   
(c） 18 $\scriptstyle \sum _ { k = 1 } ^ { \infty } 1 / k ^ { p }$   
(d) $\sum _ { k = 1 } ^ { \infty } { \frac { \ln k } { k } }$   
(e) M=2   
(f) =2(n

18.(Project） The definition of the Riemann integral can be extended to functions which are piecewise uniformly continuous,even if their pieces do not agree enough to be amalgamated.For example,consider ${ \mathrm { J u m p } } ( x )$ defined in Example 4.2.29 on page 159:

$$
\operatorname { J u m p } ( x ) = { \left\{ \begin{array} { l l } { 0 } & { { \mathrm { i f ~ } } - 5 \leq x < - 4 } \\ { \cos ( \pi x ) } & { { \mathrm { i f ~ } } - 4 \leq x < - 1 } \\ { x / 3 } & { { \mathrm { i f ~ } } - 1 \leq x < 1 } \\ { 0 } & { { \mathrm { i f ~ } } 1 \leq x < 2 } \\ { { \frac { 1 } { 2 } } ( x - 3 ) ^ { 2 } + { \frac { 1 } { 2 } } } & { { \mathrm { i f ~ } } 2 \leq x < 4 } \\ { 1 . 3 } & { { \mathrm { i f ~ } } 4 \leq x \leq 5 } \end{array} \right. } .
$$

This function is UC on each of the open intervals $( - 5 , - 4 )$ ， $( - 4 , - 1 )$ ， $( - 1 , 1 )$ ， $( 1 , 2 )$ ， $( 2 , 4 )$ and $( 4 , 5 )$ , so its restriction to each extends to six separate functions which are UC on the corresponding closed intervals. Explain how to define ${ \textstyle \int _ { a } ^ { b } } \mathrm { J u m p } ( x )$ where $- 5 \leq a \leq b \leq 5$ and generalize this. If $a \ \in \ \left[ - 5 , 5 \right]$ is $\textstyle \int _ { a } ^ { u } \operatorname { J u m p } ( x )$ uniformly continuous as a function of $_ u$ for $u \in \left[ - 5 , 5 \right]$ ？

