/-!
# Chapter 3: Limits, Sequences and Series

Definitions extracted from Bridger's 'Real Analysis: A Constructive Approach'
-/

-- We only need natural numbers as a foundation

/- DEFINITION 3.1.1
   3.1.1 A sequence a of real numbers is a function $a : \mathbb { N } \to \mathbb { R }$
-/

/- NOTATION 3.1.2
   3.1.2 It is customary to denote $a ( k )$ by $a _ { k }$ and the sequence itself by $\left( a _ { k } \right)$ . Also, sometimes $a _ { 0 }$ is omitted, so that the frst term of the sequence is $a _ { 1 }$
-/

/- DEFINITION 3.1.3
   3.1.3 A sequence of real numbers $\left( a _ { k } \right)$ is said to converge to the real number L if, for any $\epsilon > 0$ there is an integer $N _ { a } ( \epsilon ) \ge 0$ such that $| a _ { i } - L | \leq \epsilon$ whenever $i \geq N _ { a } ( \epsilon )$ $L$ is called the limit of the sequence, and we write $( a _ { k } )  L$ ， or $L = \operatorname* { l i m } _ { k \to \infty } ( a _ { k } )$ $N _ { a } ( \epsilon )$ is called a modulus of convergence for $\left( a _ { k } \right)$
-/

/- DEFINITION 3.1.11
   3.1.11 The sequence ( $a _ { k }$ ) is called a Cauchy sequence if, for any $\epsilon > 0$ there is an integer $N _ { a } ( \epsilon ) > 0$ such that $| a _ { i } - a _ { j } | \leq \epsilon$ whenever $i$ and $j \ge N _ { a } ( \epsilon )$ · $N _ { a } ( \epsilon )$ is called a modulus of convergence for the sequence $\left( a _ { k } \right)$
   
   The inequality $| a _ { i } - a _ { j } | < \epsilon$ means $a _ { j } \in \lfloor a _ { i } - \epsilon , a _ { i } + \epsilon \rfloor$ ， so once again we are looking at an interval of width $2 \epsilon$ . This time we have no $L$ to center it around. The Cauchy criterion says that if we slide this interval around, we can eventually cover all but a finite number of terms of the the sequence ( $a _ { k }$ ). The diagram is very much like the previous one for the limit:
   
   ![](images/0b789bb534d71c5890fbb58e54e238cd166c5aab713186e6583f383b0ce5f715.jpg)
-/

/- DEFINITION 3.2.1
   3.2.1 $\begin{array} { r } { \operatorname* { l i m } _ { x \to \infty } f ( x ) = L } \end{array}$ $L$ a real number) means that, given any $\epsilon > 0$ ， there is an integer $M \geq 0$ such that $| f ( x ) - L | < \epsilon$ for all $x > M$
-/

/- DEFINITION 3.2.2
   3.2.2 $\begin{array} { r } { \operatorname* { l i m } _ { x \to \infty } f ( x ) = \infty } \end{array}$ (respectively, $\quad \operatorname* { l i m } _ { x \to \infty } f ( x ) \ = \ - \infty ,$ means that， given an integer $N ~ > ~ 0$ ， there is an integer $M \ > \ 0$ such that $f ( x ) \ > \ N$ (respectively $f ( x ) < - N )$ for all $x > M$
   
   (We can make similar definitions for $\scriptstyle \operatorname* { l i m } _ { x \to - \infty } f ( x )$ -these are left as exercises.)
-/

/- DEFINITION 3.2.5
   3.2.5 Let a and $L$ be real numbers. We say that the limit of $f ( x )$ as $_ { x }$ approaches a is $L$ if for any $\epsilon > 0$ there is a $\delta > 0$ such that $| f ( x ) - L | < \epsilon$ whenever $0 < | x - a | < \delta$ . In this case we write $\operatorname* { l i m } _ { x \to a } f ( x ) = L$
-/

/- DEFINITION 3.3.1
   3.3.1 The partial sums $S _ { n }$ of this sequence are defined by
   
   $$
   \begin{array} { r c l } { { S _ { 0 } } } & { { = } } & { { s _ { 0 } , } } \\ { { S _ { k + 1 } } } & { { = } } & { { S _ { k } + s _ { k + 1 } . } } \end{array}
   $$
   
   We also write $S _ { n } = \sum _ { k = 0 } ^ { n } s _ { k } = s _ { 0 } + s _ { 1 } + \cdot \cdot \cdot + s _ { n }$
   
   $S _ { n }$ $( S _ { n } ) \to L$ $\scriptstyle \sum _ { k = 0 } ^ { \infty } s _ { k }$ $L$
   
   $$
   \sum _ { k = 0 } ^ { \infty } s _ { k } = \operatorname* { l i m } _ { n \to \infty } S _ { n } = L .
   $$
   
   If there is no limit we say the series fails to converge; if the series fails to converge because $\operatorname* { l i m } _ { n \to \infty } S _ { n } = \infty$ or $- \infty$ , then we say the series diverges.
   
   As you might expect，simple combinations of convergent series converge. We state this and leave its proof, a straightforward application of the defnition,as an exercise.
-/

/- DEFINITION 3.3.26
   3.3.26 $\scriptstyle \sum _ { k = 0 } ^ { \infty } s _ { k }$ is said to be absolutely convergent if $\textstyle \sum _ { k = 0 } ^ { \infty } \left| s _ { k } \right|$ converges. If a series converges but is not absolutely convergent, it is called conditionally convergent.
   
   PROPOSITiON 3.3.27 Euery absolutely convergent series is convergent.
   
   Proof. Let $\begin{array} { r } { S _ { n } = \sum _ { k = 0 } ^ { n } s _ { k } } \end{array}$ and $\begin{array} { r } { T _ { n } = \sum _ { k = 0 } ^ { n } \left| s _ { k } \right| } \end{array}$ Since $T _ { n }$ ） converges, it satisfies the Cauchy criterion; we must show that ( $S _ { n }$ ) does as well.
   
   $$
   \begin{array} { r c l } { \displaystyle \left| S _ { n } - S _ { m } \right| } & { = } & { \displaystyle \left| \sum _ { k = m + 1 } ^ { n } s _ { k } \right| } \\ & { \le } & { \displaystyle \sum _ { k = m + 1 } ^ { n } \left| s _ { k } \right| \ : \mathrm { ( b y ~ t h e ~ t r i a n g l e ~ i n e q u a l i t y ) } } \\ & { = } & { \displaystyle \left| T _ { m } - T _ { n } \right| } \end{array}
   $$
   
   Since ( $T _ { n }$ ） is a Cauchy sequence, there is an $N ( \epsilon )$ that makes $| T _ { m } - T _ { n } | < \epsilon$ for all $m , n > N ( \epsilon )$ , so the same $N ( \epsilon )$ works for $| S _ { m } - S _ { n } |$ ■
-/

/- DEFINITION 3.3.31
   3.3.31 The sequence $s _ { k }$ alternates in sign if $s _ { k } s _ { k + 1 } \leq 0$ for all $k \geq 0$ ； in other words, the product of any two consecutive terms is non-positive. In this case, $\scriptstyle \sum _ { k = 0 } ^ { \infty } s _ { k }$ sscalledas
   
   An alternating series looks like $a _ { 0 } - a _ { 1 } + a _ { 2 } - a _ { 3 } + \cdots$ ，where the $a _ { k }$ are nonnegative. It turns out that these converge when the terms $a _ { k }$ eventually decrease to 0—i.e.when $a _ { k } \geq a _ { k + 1 }$ for all sufficiently large $k$ and $\mathrm { l i m } ( a _ { k } ) = 0$ .Here is a diagram of what this looks like ( $S _ { n }$ as usual denotes the $n$ th partial sum):
   
   ![](images/9e64f34f5f04f4d22765dc295fad149276dc0e7331449ec4526cd0e203d1275d.jpg)
   
   You can see that any partial sum $S _ { m }$ lies between any two consecutive previous partial sums. It follows that the distance between any two partial sums is less than the distance between any two consecutive previous partial sums, but this last distance is always $\left| S _ { n - 1 } - S _ { n } \right| = \left| a _ { n } \right|$ . These observations are enough to establish that the partial sums form a Cauchy sequence, so we get convergence.
   
   We now turn to a more precise formulation of these results,one that doesn't depend on a picture. Also,it is annoying to have to deal with the various special cases in alternating series that arise by having to know whether $S _ { n + 1 } = S _ { n } + a _ { n + 1 }$ ， or $S _ { n + 1 } = S _ { n } - a _ { n + 1 }$ (that is,whether $_ { n }$ is even or odd).Fortunately,we have the notion of betweenness introduced in Chapter 1 (Definition 1.5.39) that enables us to deal with both cases at once. However, if you skipped the material on betweenness, Or would rather have a more concrete proof (maybe using the diagram above for guidance),see exercise 8 on page 128.
   
   In what follows, we will assume that we have an alternating series $\scriptstyle \sum _ { k = 0 } ^ { \infty } s _ { k }$ whose terms eventually weakly decrease (that is,do not increase) in size.All these conditions can be summarized as follows.
   
   For some $N$ ， $s _ { k + 1 } = r _ { k + 1 } \cdot s _ { k }$ with $- 1 \leq r _ { k + 1 } \leq 0$ for $k \geq N$
-/

/- DEFINITION 3.3.35
   3.3.35 The alternating harmonic series $A$ is given by
   
   $$
   \sum _ { k = 0 } ^ { \infty } { \frac { ( - 1 ) ^ { k } } { k + 1 } } = 1 - { \frac { 1 } { 2 } } + { \frac { 1 } { 3 } } - { \frac { 1 } { 4 } } + \cdots
   $$
-/

/- DEFINITION 3.3.42
   3.3.42 A rearrangementof q series $\scriptstyle \sum _ { k = 0 } ^ { \infty } s _ { k }$ is q series $\scriptstyle \sum _ { k = 0 } ^ { \infty } t _ { k }$ where each term of the first series appears exactly once in the second, and each term of the second appears exactly once in the first.
   
   A more technical way of saying this is to define a permutation of the natural ience $\sigma : \mathbb { N }  \mathbb { N }$ $o$ $\scriptstyle \sum _ { k = 0 } ^ { \infty } s _ { k }$ $\scriptstyle \sum _ { k = 0 } ^ { \infty } s _ { \sigma ( k ) }$ $O$
-/
