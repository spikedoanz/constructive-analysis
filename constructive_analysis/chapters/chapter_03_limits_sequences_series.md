# 3.1 Sequences and Convergence

In section 1.8 we talked about limiting families and their limits,which are real numbers. In this section we talk about sequences of reals and their limits. This provides a parallel theory which, in a sense to be made precise,is equivalent to that of limiting families.

Intuitively, a sequence is just a list of real numbers; for example,

$$
\begin{array} { l } { { 1 , ~ 2 , ~ 4 , ~ 8 , ~ . ~ . . } } \\ { { 1 , ~ 1 / 2 , ~ 1 / 4 , ~ 1 / 8 , ~ . . . } } \\ { { 2 , ~ \sqrt { 2 } , ~ \sqrt { \sqrt { 2 } } , ~ \sqrt { \sqrt { \sqrt { 2 } } } , ~ . . . } } \end{array}
$$

are all sequences.However,we want to be able to describe the various terms of the sequence precisely. For example,in the last example above, the terms represent a certain number of iterated square-roots of 2. Thus,given some whole number $k$ ，we want a notation for the $k$ th term of the sequence.That is,we want to be able to make an association

$$
k \longrightarrow k \mathrm { t h ~ t e r m ~ o f ~ t h e ~ s e q u e n c e } .
$$

This suggests that a sequence should be a function which associates with each natural number $k$ some real number: the $k$ th term of the sequence.Recall that the the set of non-negative whole numbers is denoted by $\mathbb { N }$ $\mathbb { N } = \{ 0 , 1 , 2 , 3 , \ldots \} )$

DEFINITION 3.1.1 A sequence a of real numbers is a function $a : \mathbb { N } \to \mathbb { R }$

NOTATION 3.1.2 It is customary to denote $a ( k )$ by $a _ { k }$ and the sequence itself by $\left( a _ { k } \right)$ . Also, sometimes $a _ { 0 }$ is omitted, so that the frst term of the sequence is $a _ { 1 }$

DEFINITION 3.1.3 A sequence of real numbers $\left( a _ { k } \right)$ is said to converge to the real number L if, for any $\epsilon > 0$ there is an integer $N _ { a } ( \epsilon ) \ge 0$ such that $| a _ { i } - L | \leq \epsilon$ whenever $i \geq N _ { a } ( \epsilon )$ $L$ is called the limit of the sequence, and we write $( a _ { k } )  L$ ， or $L = \operatorname* { l i m } _ { k \to \infty } ( a _ { k } )$ $N _ { a } ( \epsilon )$ is called a modulus of convergence for $\left( a _ { k } \right)$

REMARK 3.1.4 In the above definition we have used weak inequality: $| a _ { k } - L | \leq \epsilon$ whenever $k \geq N _ { a } ( \epsilon )$ . We might have phrased the definition using strong inequality, that is, $| a _ { k } - L | < \epsilon$ whenever $k \geq N _ { a } ( \epsilon )$ . This would lead to the notion of a strong modulus of convergence. It is harder to be a strong modulus of convergence than a weak one, since

$$
\begin{array} { r } { | a _ { k } - L | < \epsilon \ i m p l i e s \ | a _ { k } - L | \leq \epsilon , } \end{array}
$$

So any strong modulus of convergence is automatically a weak one. On the other hand, suppose $T$ is any real with $0 < r < 1$ .If $N _ { a }$ is a weak modulus of convergence for the sequence $\left( a _ { k } \right)$ ，then $N _ { a } ^ { \prime } ( \epsilon ) = N _ { a } ( r \epsilon )$ is a strong modulus for $\left( a _ { k } \right)$

Here is a simple example. Let $a _ { k } = 1 / k$ ， and suppose $\epsilon = 1 / M$ ，where $M$ is some (large) whole number. Then $( a _ { k } ) \to 0$ ，and $N ( \epsilon ) = M$ is a weak modulus of convergence， since

$$
\vert a _ { M } - 0 \vert = 1 / M = \epsilon .
$$

On the other hand, $\begin{array} { r } { N ^ { \prime } ( \epsilon ) = N \left( \frac { 1 } { 2 } \epsilon \right) = N \left( \frac { 1 } { 2 M } \right) = 2 M } \end{array}$ is a strong modulus of convergence, since

$$
| a _ { 2 M } - 0 | = \frac { 1 } { 2 M } < \frac { 1 } { M } = \epsilon .
$$

Later we will define other moduli of convergence as well as moduli of continuity and differentiability,and this same issue will arise, so keep this remark in mind.

One other point: Often,if we are dealing with just one sequence at a time, we will suppress the subscript $^ { a }$ and simply write $N ( \epsilon )$ for a modulus of convergence. This makes the notation less combersome.

It is important to note, right away, that a sequence may or may not have a limit, or it may be impossble to determine whether it does. Here are some examples.

EXAMPLE 3.1.5 Let $a _ { k } = 1 - 1 / k$ for $k \geq 1$ (we have to start with $k = 1$ here, since $a _ { 0 }$ is undefined). Some terms are $a _ { 1 } = 0$ ， $a _ { 2 } = 1 / 2$ ， $a _ { 3 } = 2 / 3$ ; we might simply write

$$
a = 0 , \ 1 / 2 , \ 2 / 3 , \ 3 / 4 , \ . . . , \ ( k - 1 ) / k , \ . . .
$$

Clearly $( a _ { k } )  1$ and the proof is easy: $| a _ { k } - 1 | = | - 1 / k | = 1 / k$ which can be made less than $\epsilon$ by making $k > 1 / \epsilon$

EXAMPLE 3.1.6 Let $b _ { k } ~ = ~ ( - 1 ) ^ { k }$ ，s0 $b _ { 0 } ~ = ~ 1$ ， $b _ { 1 } ~ = ~ - 1$ ， $b _ { 2 } ~ = ~ 1$ ，etc.Thus $b \ =$ $1 , - 1 , 1 , - 1 , \ldots$ Clearly there can be no limit here, since for any $L$

$$
| b _ { k } - L | = \left\{ \begin{array} { l } { { | 1 - L | \ f o r \ k \ e v e n } } \\ { { | 1 + L | \ f o r \ k \ o d d } } \end{array} \right. ,
$$

and these numbers can't both be arbitrarily small, since $| 1 - L |$ small means that $| 1 + L |$ is close to 2.

EXAMPLE 3.1.7 Let

$$
g _ { k } = \left\{ \begin{array} { l } { { 0 ~ i f ~ 2 k ~ i s ~ a ~ s u m ~ o f ~ t w o ~ p r i m e s } } \\ { { 1 ~ i f ~ 2 k ~ i s ~ n o t ~ a ~ s u m ~ o f ~ t w o ~ p r i m e s } } \end{array} \right. .
$$

For every $k > 1$ that has ever been tested, $g _ { k } = 0$ . Yet we do not know if ( $g _ { k }$ ）hasa limit. If we could show that $\left( g _ { k } \right)$ has a limit, then that limit must be O (why?). The famous Goldbach Conjecture says that $g _ { k } = 0$ for all $k$ (see page 67), but this has never been proved (and maybe never will be).

PROPOSITION 3.1.8 $\operatorname* { l i m } ( a _ { k } )$ , if it exists, is unique.

Proof. Suppose $L$ and $L ^ { \prime }$ are both limits for $s$ ，and let $\epsilon > 0$ be given. Choose $N$ so that $| a _ { k } - L | < \epsilon / 2$ for $k \geq N$ , and choose $N ^ { \prime }$ so that $| a _ { k } - L ^ { \prime } | < \epsilon / 2$ for $k \geq N ^ { \prime }$ Let $M = \operatorname* { m a x } ( N , N ^ { \prime } )$ . Then

$$
| L - L ^ { \prime } | = | L - a _ { M } + a _ { M } - L ^ { \prime } | \leq | L - a _ { M } | + | a _ { M } - L | < \epsilon / 2 + \epsilon / 2 = \epsilon .
$$

Since reals that are arbitrarily close are equal (see Corollary 1.6.6), we have $L = L ^ { \prime }$

As with limiting families, the expected algebraic laws hold for limits of sequences, as stated in the following.

PROPOSITION 3.1.9 Suppose $( a _ { k } )  L$ and $( b _ { k } ) \to M$ . Then $( a _ { k } + b _ { k } )  ( L + M )$ $( a _ { k } - b _ { k } ) \to ( L - M )$ ， $( a _ { k } b _ { k } ) \to L M$ ， $( a _ { k } / b _ { k } ) \to L / M$ (provided $M \in \mathbb { R } ^ { * }$ )，and $| a _ { k } | \to | L |$

Proof. The product is the tricky case, so we prove that. As usual, we add and subtract:

$$
\left| a _ { k } b _ { k } - L M \right| = \left| a _ { k } b _ { k } - L b _ { k } + L b _ { k } - L M \right| \leq \left| b _ { k } \right| \left| a _ { k } - L \right| + \left| L \right| \left| b _ { k } - M \right| .
$$

Clearly, the terms $\vert a _ { k } - L \vert$ and $| b _ { k } - M |$ can be made arbitrarily small; the only part we have to worry about is that the $\left| b _ { k } \right|$ must not get arbitrarily large. But they can't since $b _ { k }$ is eventually within say $^ { 1 }$ of $M$ . Here are the details.

Suppose we are given $\epsilon > 0$ Choose $N$ so that $\begin{array} { r } { | b _ { k } - M | < \operatorname* { m i n } \left( 1 , \frac { \epsilon } { 2 | L | } \right) } \end{array}$ ，and |ak -L丨|<2(1+M） when $k \geq N$ .Note that $\left| b _ { k } \right| = \left| b _ { k } - M + M \right| \leq \left| b _ { k } - M \right| + \left| M \right|$ Then we have

$$
\begin{array} { l l l } { \displaystyle | a _ { k } b _ { k } - L M | } & { \leq } & { \displaystyle | b _ { k } | \big | a _ { k } - L \big | + \big | L \big | \big | b _ { k } - M \big | } \\ & { < } & { \displaystyle ( | b _ { k } - M | + | M | ) \big | a _ { k } - L \big | + \big | L \big | | b _ { k } - M | } \\ & { < } & { \displaystyle ( 1 + | M | ) \bigg ( \displaystyle \frac { \epsilon } { 2 ( 1 + | M | ) } \bigg ) + \big | L \big | ( \displaystyle \frac { \epsilon } { 2 | L | } ) = \displaystyle \frac { \epsilon } { 2 } + \displaystyle \frac { \epsilon } { 2 } = \epsilon } \end{array}
$$

The remaining parts are left as exercises.■

Note that there could be a problem with the sequence $\left( { a } _ { k } / { b } _ { k } \right)$ since some of the $b _ { k }$ might be $0$ ； however, once $k$ is sufficiently large, $b _ { k }$ is very close to $M$ and $M \in \mathbb { R } ^ { * }$ ； thus $b _ { k }$ will be bounded away from O. This is dealt with more carefully in the exercises

Limits also behave reasonably well with respect to inequalities.An important principle is: weak inequalities are preserued in the limit. We show this in the following.

PROPOSITION 3.1.1O（WEAK INEQUALITIES ARE PRESERVED IN THE LIMIT）Suppose $( a _ { k } )  L$ and $( b _ { k } ) \to M$ ，with $a _ { k } \le b _ { k }$ for $k$ sufficiently large. Then $L \leq M$

Proof. Given $\epsilon > 0$ ， choose $N$ large enough that $a _ { k } \ \leq \ b _ { k }$ ， $L  \leq a _ { k } + \epsilon / 2$ ，and $b _ { k } \le M + \epsilon / 2$ when $k > N$ . Then

$$
L \leq a _ { k } + \epsilon / 2 \leq b _ { k } + \epsilon / 2 \leq M + \epsilon .
$$

Since $\epsilon > 0$ was arbitrary, the Wiggle Lemma tells us that $L \leq M$ ■

It is clear that if a sequence converges to a limit, then the terms of the sequence must be getting closer to each other because they are getting closer to the limit. One way of phrasing $L = \operatorname* { l i m } ( a _ { k } )$ is to say that for any $\epsilon > 0$ , the terms of $\left( a _ { k } \right)$ eventually lie in the interval $\left[ L - \epsilon , L + \epsilon \right]$ centered at $L$ ：

![](images/3c55fb5bba339db1143e6d41509956c82d8592537762a0effdb73f5f4e2c38cd.jpg)

Here we see that all of the terms after $a _ { 6 }$ are within $\epsilon$ of $L$

It is reasonable to ask whether a series converges solely on the basis of the terms getting closer together, even if we don't happen to have the number $L$ on hand—that is,can we construct such an $L$ solely from the fact that the terms are getting closer together? The answer is yes, provided we have a strong enough notion of closeness. This was discovered by Augustin-Louis Cauchy (1789-1857).

DEFINITION 3.1.11 The sequence ( $a _ { k }$ ) is called a Cauchy sequence if, for any $\epsilon > 0$ there is an integer $N _ { a } ( \epsilon ) > 0$ such that $| a _ { i } - a _ { j } | \leq \epsilon$ whenever $i$ and $j \ge N _ { a } ( \epsilon )$ · $N _ { a } ( \epsilon )$ is called a modulus of convergence for the sequence $\left( a _ { k } \right)$

The inequality $| a _ { i } - a _ { j } | < \epsilon$ means $a _ { j } \in \lfloor a _ { i } - \epsilon , a _ { i } + \epsilon \rfloor$ ， so once again we are looking at an interval of width $2 \epsilon$ . This time we have no $L$ to center it around. The Cauchy criterion says that if we slide this interval around, we can eventually cover all but a finite number of terms of the the sequence ( $a _ { k }$ ). The diagram is very much like the previous one for the limit:

![](images/0b789bb534d71c5890fbb58e54e238cd166c5aab713186e6583f383b0ce5f715.jpg)

ExAMPLE 3.1.12 Let $s _ { k } = \sum _ { i = 1 } ^ { k } { \frac { 1 } { i ^ { 2 } } }$ $m \geq n > 1$ ,we can write

$$
\begin{array} { r c l } { \displaystyle s _ { m } - s _ { n } = \sum _ { i = n + 1 } ^ { m } \frac { 1 } { i ^ { 2 } } } & { \le } & { \displaystyle \sum _ { i = n + 1 } ^ { m } \frac { 1 } { i ( i - 1 ) } } \\ & { = } & { \displaystyle \sum _ { i = n + 1 } ^ { m } \left( \frac { 1 } { i - 1 } - \frac { 1 } { i } \right) } \\ & { = } & { \displaystyle \frac { 1 } { n } - \frac { 1 } { m } \le \frac { 1 } { n } , } \end{array}
$$

so to make $| s _ { m } - s _ { n } | < \epsilon$ we need only choose $N$ so that $N > 1 / \epsilon$ ； thus ( $s _ { k }$ ）is $a$ Cauchy sequence. I should remark that the limit of this sequence of partial sums has been known since the 18th century: it is $\frac { \pi ^ { 2 } } { 6 }$ (discovered by Euler). The proof is not easy, though (see [Kalman 1993]).

The sequences that have limits are exactly the Cauchy sequences; this is expressed in the following proposition and theorem.

PROPOSITION 3.1.13 If $( a _ { k } )  L$ ，then ( $a _ { k }$ ) is a Cauchy sequence.

The proof is left as an exercise.

The following important result is another way of stating the Completeness Theorem for the reals—perhaps,in fact, the most usual way. For more details,see the exercises. This is one of the most important results in classical real analysis; it is sometimes simply called The Completeness of the Reals.

THEOREM 3.1.14 (CAUCHY COMPLETENESS THEOREM） EUery Cauchy sequence converges to some real number. In other words, if ( $a _ { k }$ ）is a Cauchy sequence, then there exists an L such that $( a _ { k } )  L$

Proof. Using ( $a _ { k }$ ） we will define a consistent and fine family of real intervals and invoke the Completeness Theorem we've already proved to show the existence of $L$

For each integer $k > 0$ , define the interval $I _ { k }$ as follows. Let $N _ { k }$ be an integer such that $| a _ { i } - a _ { j } | < 1 / k$ whenever $i , j \ge N _ { k }$ .(Here we are using the assumption that $\left( a _ { k } \right)$ is a Cauchy sequence.） Let $\begin{array} { r } { I _ { k } \ = \ \left\lfloor a _ { N _ { k } } - \frac { 1 } { k } , a _ { N _ { k } } + \frac { 1 } { k } \right\rfloor } \end{array}$ and $\mathcal { F } = \{ I _ { k } | k =$ $1 , 2 , \ldots \}$ . We note that the length of $I _ { k }$ is $\frac { 2 } { k }$ , so the family $\mathcal { F }$ is clearly fine. To prove consistency, suppose that we have the interval $I _ { k }$ as above and another such interval $\begin{array} { r } { I _ { q } = [ a _ { N _ { q } } - \frac { 1 } { q } , a _ { N _ { q } } + \frac { 1 } { q } ] } \end{array}$ .Either $N _ { k } \le N _ { q }$ or $N _ { q } \le N _ { k }$ ; suppose that $N _ { k } \le N _ { q }$ . Then $\left| a _ { N _ { q } } - a _ { N _ { k } } \right| < 1 / k$ ,or

$$
a _ { N _ { q } } - 1 / k < a _ { N _ { k } } < a _ { N _ { q } } + 1 / k .
$$

The left-hand inequality gives $a _ { N _ { q } } - 1 / q < A _ { N _ { q } } < a _ { N _ { k } } + 1 / k$ ， while the right-hand inequality gives $a _ { N _ { k } } - 1 / k < a _ { N _ { q } } < a _ { N _ { q } } + 1 / q$ . Thus $I _ { k }$ and $I _ { q }$ intersect. The case $N _ { q } \le N _ { k }$ is proved the same way. Since the family $\mathcal { F }$ is fine and consistent, there is a unique real number $L$ common to all of its intervals. This $L$ should work because it is arbitrarily close to each of the $a _ { N _ { k } }$ ,and the $a _ { N _ { k } }$ are arbitrarily close to all $a _ { i }$ for $i$ and $k$ big enough.All that's left is an application of the triangle inequality to formalize this. So, suppose we are given $\epsilon > 0$ . Choose $k$ so large that $1 / k < \epsilon / 2$ ， and suppose that $i \geq N _ { k }$ . Then

$$
\begin{array} { l l l } { \left| a _ { i } - L \right| } & { \leq } & { \left| a _ { i } - a _ { N _ { k } } \right| + \left| a _ { N _ { k } } - L \right| } \\ & { < } & { 1 / k + 1 / k \leq \epsilon . } \end{array}
$$

Not only is Cauchy convergence equivalent to convergence, but any modulus for Cauchy convergence is a modulus of convergence. We give a separate proof of this fact, since it is an instructive example of the use of the Wiggle Lemma and the triangle inequality.

PROPOSITION 3.1.15 Suppose（ $a _ { k }$ ） is Cauchy convergent with modulus $N ( \epsilon )$ . Then $( a _ { k } )$ is convergent with modulus of convergence $N ( \epsilon )$

Proof. We know that $( a _ { k } )  L$ for some $L$ , so suppose $n \geq N$ . Then for any $_ { m }$

$$
\left| a _ { n } - L \right| \leq \left| a _ { n } - a _ { m } \right| + \left| a _ { m } - L \right| \leq \epsilon + \left| a _ { m } - L \right| .
$$

But $( a _ { k } ) \to a$ , so we can make $\left| a _ { m } - L \right|$ arbitrarily small by making $m$ large enough (without changing $_ n$ or $N$ ); thus $| a _ { n } - L | \leq \epsilon$ by the Wiggle Lemma.

A modulus of convergence for $( a _ { n } ) \ \to \ L$ ， however， may not be good enough to establish Cauchy convergence if the sequence oscillates around $L$ .Try to find an example illustrating this.

Finally, we deal with criteria for inequalities of limits. We saw above (Proposition 3.1.10) that if $a _ { k } \le b _ { k }$ for $k$ sufficiently large, then $\operatorname* { l i m } ( a _ { k } ) \leq \operatorname* { l i m } ( b _ { k } )$ . The converse is not true,however: $1 / k$ is never less than or equal to $- 1 / k$ when $k$ is a positive integer， yet $\operatorname* { l i m } ( 1 / k ) \le \operatorname* { l i m } ( - 1 / k )$ . Furthermore,we haven't proved anything yet about strict inequality. We now deal with these issues.

In what follows, $N _ { a } ( \epsilon )$ represents a modulus of convergence for a Cauchy sequence $( a _ { i } )$ . We assume $( a _ { i } ) \to L _ { a }$ and $( b _ { i } ) \to L _ { b }$

PROPOSITiON 3.1.16 The following are equivalent.

1. There exist rationals $\epsilon > 0$ and $\delta > 0$ such that $b _ { j } > a _ { j } + \epsilon + \delta$ for $i \geq N _ { a } ( \epsilon )$ and $j \ge N _ { b } ( \delta )$   
2. $L _ { b } > L _ { a }$

PROPOSITION 3.1.17 Let （ $a _ { i }$ ）and $\left( b _ { i } \right)$ be Cauchy sequences. The following statements are equivalent.

1. For any rationals $\epsilon > 0$ and $\delta > 0$ ， $a _ { i } - b _ { j } \leq \epsilon + \delta$ for $i \geq N _ { a } ( \epsilon )$ and $j \geq N _ { b } ( \delta )$ ·   
2. For any rational $\epsilon > 0$ there is an $M ( \epsilon )$ such that $a _ { i } \leq b _ { i } + \epsilon$ for $i , j \ge M ( \epsilon )$   
3. $L _ { a } \leq L _ { b }$

The proofs are exercises.

# Exercises

1. Discuss the convergence of the following.

(a） The sequence of reciprocals $r _ { N } = 1 / N$ ， $N = 1 , 2 , \ldots$ N+1  
(b） The sequence an = N  
(c)） The sequence UN = 2N  
(d） The sequence $s _ { N } = \sin ( N \pi / 1 0 )$

2. Let $P ( x )$ and $Q ( x )$ be polynomials with $\deg ( P ) < \deg ( Q )$ ,let $d _ { n } = \frac { P ( n ) } { Q ( n ) }$ and letDn $D _ { n } = { \frac { Q ( n ) } { P ( n ) } } $ What can you say about the convergence of the sequences $d _ { n }$ ）and $( D _ { n } )$ ？

3.Prove that for any positive number $^ { a }$ ， $\operatorname* { l i m } _ { n \to \infty } ( a ^ { 1 / n } ) = 1$ . (Hint: One method is to use Lipschitz conditions on $a ^ { x }$ . Another is to separate into cases: $a > 1$ and $a < 1$ . Suppose $a > 1$ ; then $a ^ { 1 / n } > 1$ (why?), so write $a ^ { 1 / n } = 1 + e _ { n }$ and show that $\operatorname* { l i m } _ { n \to \infty } e _ { n } = 0$ by noting that $( 1 + t ) ^ { k } \geq 1 + k t$ . Deal with $a < 1$ by noting that $1 / a > 1$ ）

4. Suppose（ $s _ { N }$ ) is a sequence.Form a new sequence ( $t _ { N }$ ） by throwing away the first 1000 terms of $\left( { { s _ { N } } } \right)$ and renumbering so as to start from O again. Discuss in a paragraph or so the comparative convergence properties of $\left( { { s _ { N } } } \right)$ and $( t _ { N } )$ (See the next exercise for related ideas.)

5.(Subsequences） Let $r : \mathbb { N } \to$ N be an increasing function on the natural numbers; i.e.if $m \ < \ n$ then $f ( m ) \leq f ( n )$ .If( $a _ { k }$ ）is a sequence,then,if we write $b _ { k } = a _ { r ( k ) }$ ，we call ( $b _ { k }$ )a subsequence of ( $a _ { k }$ ). For example, suppose $a _ { k } = 1 / k$ so that $\left( a _ { k } \right)$ consists of the reciprocals of the (positive） integers； let $r ( n ) =$ $2 n - 1$ .Then ( $b _ { k }$ ）consists of the reciprocals of the odd (positive） integers. On the other hand,if $r ( n ) = n + 5$ ，then ( $b _ { k }$ ） consists of the reciprocals of the integers starting at 6. This subsequence is called a shift of $( a _ { k } )$ (see the previous exercise).

(a) Prove that if $( a _ { k } )  L$ and ( $b _ { k }$ ) is a subsequence, then $( b _ { k } )  L$ . Suppose that we know that ( $a _ { k }$ ） converges and that $( b _ { k } ) \to L$ .Does that mean that $( a _ { k } )  L$ ？   
(b） Suppose we know that the subsequence ( $b _ { k }$ )of( $a _ { k }$ ） converges. Does that mean that ( $a _ { k }$ ）converges?(Give a proof or a counterexample.)   
(c） Suppose $( a _ { k } ) \to A$ and the sequence ( $a _ { k } ^ { \prime }$ ）is obtained from ( $a _ { k }$ ） by changing a finite number of terms of ( $a _ { k }$ ). Prove the $( a _ { k } ^ { \prime } ) \to A$   
(d） Suppose that $( a _ { k } ) \to A$ and $A$ is a unit, say with $A > 0$ . Prove that there is some integer $K$ such that $a _ { k } > 0$ whenever $k \geq K$ . Thus, there is a shift of ( $a _ { k }$ ）which converges to $A$ , and all of whose terms are positive.

6. Suppose the sequence ( $a _ { n }$ ） converges to 0. Discuss the convergence of ( $a _ { n } ^ { k }$

7. Prove those parts of Proposition 3.1.9 on the algebra of convergence not proved in the text.

8.In the problems for the section on limiting families you were asked to prove several propositions about limiting families that occur in the text (see page 66). Here are the same propositions rephrased in terms of sequences (assume the limits exist).

(a) PROPOsITION: Suppose that there are constants $S , T$ such that $S \le a _ { k } \le$ $T$ for all $k$ . Then $L \leq \operatorname* { l i m } ( a _ { k } ) \leq U$   
(b) PROPOSITION: SuppOse that $a _ { k } \le b _ { k }$ for all $k$ . Then $\operatorname* { l i m } ( a _ { k } ) \leq \operatorname* { l i m } ( b _ { k } )$ ("weak inequalities are preserved in the limit").   
(c) PROPOSITION: SuppOse that $( a _ { k } ) \to A$ and $( b _ { k } )  B$ . Then · $( a _ { k } + b _ { k } ) \to A + B$ ， $( a _ { k } - b _ { k } )  A - B$ · $( a _ { k } b _ { k } )  A B$ ·if $B$ is a unit, $( a _ { k } / b _ { k } )  A / B$ after suitable renumbering so that $a _ { k } / b _ { k }$ makes sense (see Exercises 4 and 5 above).

Prove these propositions.Note that，in the second proposition，the strict inequality $<$ for the terms of the sequence gets replaced by the weak inequality $\leq$ in the limits. Show by example that even if the terms of one sequence are strictly less than the terms of another sequence, their limits may be equal.

9. Suppose $( a _ { k } ) \to A$ and $a _ { k } > 0$ for all $k$ . Show that $\left( { \sqrt { a _ { k } } } \right) \to { \sqrt { A } }$ . Generalize this.

10.Use the fact that $k ^ { 3 } + 6 k ^ { 2 } + 1 1 k + 5 = ( k + 1 ) ( k + 2 ) ( k + 3 ) - 1$ to find $\operatorname* { l i m } _ { k \to \infty } \left( { \frac { k ^ { 3 } + 6 k ^ { 2 } + 1 1 k + 5 } { ( k + 3 ) ! } } \right)$

11. Prove that if $( a _ { k } )  L$ ，then $\left( a _ { k } \right)$ is a Cauchy sequence. Show by example that a modulus of convergence $N ( \epsilon )$ may not itself work to establish Cauchy convergence (see Proposition 3.1.15).

12.Prove that a Cauchy sequence is always bounded (i.e. there is a number $B$ such that $| a _ { k } | < B$ for all $k$ ).

13. Suppose that $\operatorname* { l i m } _ { n \to \infty } \left| { \frac { a _ { n + 1 } } { a _ { n } } } \right| = r$ for the sequence ( $u _ { n }$ ). Show that

$$
\begin{array} { l } { { \mathrm { I f ~ } r < 1 \mathrm { ~ t h e n ~ } \operatorname* { l i m } _ { n  \infty } ( a _ { n } ) = 0 . } } \\ { { \mathrm { I f ~ } r > 1 \mathrm { ~ t h e n ~ } \operatorname* { l i m } _ { n  \infty } ( a _ { n } ) = \infty . } } \end{array}
$$

14. Guess the limit of this sequence and prove (fairly hard) that it converges:

$$
a _ { n } = { \frac { n + 1 } { 2 ^ { n + 1 } } } \left( { \frac { 2 } { 1 } } + { \frac { 2 ^ { 2 } } { 2 } } + \cdots + { \frac { 2 ^ { n } } { n } } \right) .
$$

15.A Fibonacci-type sequence is defined recursively by $f _ { 1 } = a$ ， $f _ { 2 } = b$ and $f _ { n } =$ $f _ { n - 1 } + f _ { n - 2 }$ for $n > 2$

(a) Show that such a sequence cannot be a Cauchy sequence unless $a = b = 0$ (b） Modify the definition so that $\begin{array} { r } { f _ { n } = \frac { 1 } { 2 } \left( f _ { n - 1 } + f _ { n - 2 } \right) } \end{array}$ . Prove that this new sequence is always a Cauchy sequence.(Hint:Prove that it converges by writing the first few terms as $^ { a }$ ， $a + ( b - a )$ ， ${ \begin{array} { l } { { \frac { 1 } { 2 } } \left( 2 a + ( b - a ) \right) = a + } \end{array} } $ ${ \scriptstyle { \frac { 1 } { 2 } } } ( b - a )$ $\begin{array} { r } { a ) , \ a + \frac { 1 } { 2 } ( b - a ) + \frac { 1 } { 4 } ( b - a ) } \end{array}$ , etc.; you might want to prove this by induction.)

(c) There are a number of variations and generalizations of this averaging idea; for example, prove that if $\operatorname* { l i m } _ { n \to \infty } \left( a _ { n } \right) = a$ ,then

$$
\operatorname* { l i m } _ { n \to \infty } \left( { \frac { a _ { 1 } + a + \cdots + a _ { n } } { n } } \right) = a .
$$

(d) Here's another: Let $a _ { 1 } , a _ { 2 } , \dotsc , a _ { p }$ be positive numbers. Find

$$
\operatorname* { l i m } _ { n \to \infty } \left( { \sqrt [ n ] { \frac { a _ { 1 } ^ { n } + a _ { 2 } ^ { n } + \cdots + a _ { p } ^ { n } } { p } } } \right) .
$$

(Hint: Let $a = \operatorname* { m a x } ( a _ { 1 } , a _ { 2 } , \ldots , a _ { p } )$ and try to find lower and upper bounds for the $n ^ { t h }$ root; also remember that $\operatorname* { l i m } _ { n \to \infty } { \sqrt [ { n } ] { p } } = 1 .$ ）

16.(Project） We have constructed the reals from the rationals by defining a real number to be a fine and consistent family of rational intervals. There are several other ways of constructing the reals; the one that is closest to the approach here is via Cauchy sequences. Here is an outline of some definitions and things to be proved.

(a) Define a real number to be a Cauchy sequence ( $r _ { i }$ ）of rational numbers.   
(b）Define $( a _ { i } )$ to be a null sequence if, for any $\epsilon > 0$ there is an $N$ such that $i > N \Longrightarrow | a _ { i } | < \epsilon$   
(c）Define $( a _ { i } ) = ( b _ { i } )$ (as real numbers） to mean $( a _ { i } - b _ { i } )$ is a null sequence.   
(d) Define addition, subtraction,and multiplication of reals by: $( a _ { i } ) + ( b _ { i } ) =$ $( a _ { i } + b _ { i } )$ ； $( a _ { i } ) - ( b _ { i } ) = ( a _ { i } - b _ { i } )$ ; and $( a _ { i } ) ( b _ { i } ) = ( a _ { i } b _ { i } )$   
(e) Prove that these operations on equal reals yield equal reals.   
(f）Define $( a _ { i } ) < ( b _ { i } )$ to mean that there exist rationals $\epsilon > 0$ and $\delta > 0$ such that $b _ { j } > a _ { i } + \epsilon + \delta$ for $i \geq N _ { a } ( \epsilon )$ and $j \ge N _ { b } ( \delta )$ (see Proposition 3.1.16).   
(g）Define $( a _ { i } ) \leq ( b _ { i } )$ to mean that $\left( b _ { i } \right) < \left( a _ { i } \right)$ is false. Prove that $( a _ { i } ) \leq ( b _ { i } )$ if and only if for any rational $\epsilon > 0$ there is an $M ( \epsilon )$ such that $a _ { i } \leq b _ { i } + \epsilon$ ， for $i , j \ge M ( \epsilon )$ (see Proposition 3.1.10).   
(h） Define division of reals,absolute value,max, min, etc.   
(i) Prove some of the results from the text for real numbers using these new definitions.   
(j） Define what a Cauchy sequence of reals would be using these definitions. Prove a Completeness Theorem which says that any Cauchy sequence of reals (i.e.a Cauchy sequence of Cauchy sequences of rationals) has a limit (a Cauchy sequence of rationals).

# 3.2 Limits of Functions

If a sequence is a function $s : \mathbb { N } \to \mathbb { R }$ and we can define the limit of such a function, we might ask about generalizing this notion for functions $f : \mathbb { R } \to \mathbb { R }$ .In the case of sequences, we are looking at what happens to $s ( k )$ when $k$ gets very large. By analogy,we can make the following definition for $f$

DEFINITION 3.2.1 $\begin{array} { r } { \operatorname* { l i m } _ { x \to \infty } f ( x ) = L } \end{array}$ $L$ a real number) means that, given any $\epsilon > 0$ ， there is an integer $M \geq 0$ such that $| f ( x ) - L | < \epsilon$ for all $x > M$

DEFINITION 3.2.2 $\begin{array} { r } { \operatorname* { l i m } _ { x \to \infty } f ( x ) = \infty } \end{array}$ (respectively, $\quad \operatorname* { l i m } _ { x \to \infty } f ( x ) \ = \ - \infty ,$ means that， given an integer $N ~ > ~ 0$ ， there is an integer $M \ > \ 0$ such that $f ( x ) \ > \ N$ (respectively $f ( x ) < - N )$ for all $x > M$

(We can make similar definitions for $\scriptstyle \operatorname* { l i m } _ { x \to - \infty } f ( x )$ -these are left as exercises.)

EXAMPLE 3.2.3 $\scriptstyle \operatorname* { l i m } _ { x \to \infty } x ^ { 3 } \ = \ \infty$ and $\begin{array} { r } { \operatorname* { l i m } _ { x \to \infty } x ^ { - 3 } = 0 } \end{array}$ . These are easily proved using the Lipschitz condition on nth powers (Corollary 2.2.6).

REMARK 3.2.4 It may happen that for some function $f : \mathbb { R } \to \mathbb { R }$ , the sequence $( f ( n ) )$ may have a limit but $\scriptstyle \operatorname* { l i m } _ { x \to \infty } f ( x )$ may not exist-see the exercises..

Unlike the situation for sequences,however, we have much more flexibility in taking limits of functions from $\mathbb { R }$ to $\mathbb { R }$

DEFINITION 3.2.5 Let a and $L$ be real numbers. We say that the limit of $f ( x )$ as $_ { x }$ approaches a is $L$ if for any $\epsilon > 0$ there is a $\delta > 0$ such that $| f ( x ) - L | < \epsilon$ whenever $0 < | x - a | < \delta$ . In this case we write $\operatorname* { l i m } _ { x \to a } f ( x ) = L$

REMARk 3.2.6 Note that this definition says nothing about what happens when $x =$ $^ { a }$ ; in fact, a may not even be in the domain of $f$ (i.e. $f ( a )$ may not even be defined). The limit of $f$ at a depends only on the values $f ( x )$ for $_ x$ near $a$ (see exercises).

Here is a diagram that shows the conditions for $\operatorname* { l i m } _ { x \to a } f ( x )$ to be $L$ ：

![](images/067e244731db4f0f0a81323cf1b118ee06d8542c8fcba24f426de5feb1e62d44.jpg)

EXAMPLE 3.2.7 $l i m _ { x  2 } x ^ { 3 } = 8$ . To see this, one can manipulate Lipschitz conditions,but it is perhaps simpler to write

$$
\left| x ^ { 3 } - 8 \right| = \left| x - 2 \right| \left| x ^ { 2 } + 2 x + 4 \right| .
$$

Clearly, we can make the $| x - 2 |$ term small by making $_ { x }$ close to 2, but we do have to make sure that the $\left| x ^ { 2 } + 2 x + 4 \right|$ term is bounded. However, if we make $_ { x }$ within say 1 of 2, then $_ x$ won't exceed 3, so $\left| x ^ { 2 } + 2 x + 4 \right| < 1 9$ . Thus， choose $\delta < \mathrm { m i n } ( \epsilon / 1 9 , 1 )$ s0 $\left| x ^ { 3 } - 8 \right| = \left| x - 2 \right| \left| x ^ { 2 } + 2 x + 4 \right| < ( \epsilon / 1 9 ) ( 1 9 ) = \epsilon$

We now can state the usual facts about the algebra of limits; the proofs are straightforward and use ideas we have encountered before.

PROPOSITION 3.2.8 (PROPERTIES OF FINITE LIMITS） SuppOSe that $\operatorname* { l i m } _ { x \to a } f ( x ) =$ $L$ and $\begin{array} { r } { \operatorname* { l i m } _ { x \to a } g ( x ) = M } \end{array}$ . Then $\begin{array} { r } { \operatorname { i m } _ { x  a } ( f ( x ) + g ( x ) ) = L + M } \end{array}$ ， $\begin{array} { r } { \operatorname* { l i m } _ { x \to a } \left( f ( x ) - g ( x ) \right) } \end{array}$ $= L { - } M$ ，and $\begin{array} { r } { \operatorname* { l i m } _ { x \to a } f ( x ) g ( x ) = L M } \end{array}$ .If $M > 0$ or $M < 0$ ,then $\begin{array} { r } { \operatorname* { l i m } _ { x \to a } f ( x ) / g ( x ) = } \end{array}$ $L / M$

(The tricky one is the product; for a model, use the proof given when we were looking at convergence: see Proposition 3.1.9.)

The formulation of similar results for infinite limits is left to the exercises.

Once again, we have the result that weak inequalities are preserved in the limit :

PROPOSITION 3.2.9 （WEAK INEQUALITIES PRESERVED） SuppOSe that $f ( x ) \leq g ( x )$ for $x \in ( a , b )$ ， $c \in ( a , b )$ and $\scriptstyle \operatorname* { l i m } _ { x \to c } f ( x ) = L$ ， $\begin{array} { r } { \operatorname* { l i m } _ { x \to c } g ( x ) = M } \end{array}$ . Then $L \leq M$

Proof. For any $\epsilon > 0$ , choose $\delta$ such that $f ( x )$ and $g \left( x \right)$ are within $\epsilon / 2$ of $L$ and $M$ ， respectively, when $| x - c | < \delta$ . Then L≤. $f ( x ) + \epsilon / 2 \le g ( x ) + \epsilon / 2 \le ( M + \epsilon / 2 ) + \epsilon / 2 =$ $M + \epsilon$ . Since $\epsilon$ was arbitrary, $L \leq M$ ■

This,by the way, is a beautiful example of the usefulness of the Wiggle Lemma. We know that $f ( x ) \leq g ( x )$ ,but $g ( x )$ is merely close to $M$ ; in fact, it may be always larger than $M$ .The Wiggle Lemma gives us the wiggle room to deal with this provided the amount that $g ( x )$ exceeds $M$ is arbitrarily small,which is exactly what we know.

We now state some results about log and exponential functions in the language of limits. The proofs are elementary but a bit technical, so we have placed them in an appendix.

PROPOSITION 3.2.10 If $a > 0$ ，then $a ^ { x } \to 1$ as $x \to 0$ (Equivalently, $a ^ { 1 / x } \to 1$ as$x \to \infty$ ）

(This follows directly from Proposition 2.3.19,the Lipschitz condition for exponential functions.)

PROPOSITION 3.2.11 For $n \in \mathbb N$ $( 1 + 1 / n ) ^ { n } \to e$ as $n \longrightarrow \infty$

PROPOSITION 3.2.12 For all $x > 0$ ， $x / ( 1 + x ) \leq \log ( 1 + x ) \leq x$

PROPOSITION 3.2.13 Given $n \in \mathbb N$ ， $t > 0$ and $\textstyle k \geq 0 , { \frac { ( 1 + t ) ^ { n } } { n ^ { k } } } \to \infty$ ↓8asη→8.

(The case where $k = 1$ can be proved simply using the binomial theorem; here's how it goes: $\begin{array} { r } { ( 1 + t ) ^ { n } \geq 1 + \frac { n ( n - 1 ) } { 2 } t ^ { 2 } } \end{array}$ ,so ${ \frac { ( 1 + t ) ^ { n } } { n } } \geq { \frac { 1 + { \frac { n ( n - 1 ) } { 2 } } t ^ { 2 } } { n } } = { \frac { 1 } { n } } + { \frac { ( n - 1 ) } { 2 } } t ^ { 2 } \to \infty$ $n \longrightarrow \infty$ . This idea can be extended to whole-number powers $k \geq 0$ ，and thence to reals $k \geq 0$ .）

COROLLARY 3.2.14 For x with $| x | < 1$ and any $k \geq 0$ ， $n ^ { k } x ^ { n }  0$

COROLLARY 3.2.15 For any $k \geq 0$ ， $\frac { x ^ { k } } { e ^ { x } }  0$ as $x \to \infty$

COROLLARY 3.2.16 If $n > 0$ then lg→0 asχ→8，x>0.

PROPOSITION 3.2.17 $n ^ { 1 / n } \to 1$ as $n \to \infty$

COROLLARY 3.2.18 For any polynomial $P ( n ) = a _ { 0 } + a _ { 1 } n + \cdot \cdot \cdot + a _ { k } n ^ { k }$ ,with $a _ { k } > 0$ ， $( P ( n ) ) ^ { 1 / n }  1$ as $n \longrightarrow \infty$

For proofs of these last few results,see the appendix at the end of this section.

# Exercises

1. Let $a > 0$ be a real number.

(a) Prove that lim x³ = a3. xa   
(b) Prove that lim x-² = a-². x→a   
(c)Prove that lim x1/2 = a1/2. x→a   
(d) Generalize these by proving that $\operatorname* { l i m } _ { x \to a } x ^ { t } = a ^ { t }$

2.Prove that if $A > 1$ ，then $\begin{array} { r } { \operatorname* { l i m } _ { x \to \infty } A ^ { - x } = 0 } \end{array}$ (Hint:let $A = 1 + t$ and use$( 1 + t ) ^ { k } \geq 1 + k t$ , or use Lipschitz conditions.） Prove $\begin{array} { r } { \operatorname* { l i m } _ { x \to \infty } \log _ { A } x = \infty } \end{array}$

3.Let $\textstyle f ( x ) = { \frac { x ^ { 2 } - 4 } { x - 4 } }$ Find $\operatorname* { l i m } _ { x \to 2 } f ( x )$ (and prove it),even though $f ( 2 )$ is not defined.

4.Find a function $S$ with the property that the sequence $( S ( k ) ) , k = 0 , 1 , \ldots$ has a limit but $\scriptstyle \operatorname* { l i m } _ { x \to \infty } S ( x )$ is undefined. (Hint: Choose, for example, $S$ so that $S \left( 0 \right) = S ( 1 ) = S ( 2 ) = S ( 3 ) = \cdots = k$ ，while $S ( { \textstyle { \frac { 1 } { 2 } } } ) = S ( { \textstyle { \frac { 3 } { 2 } } } ) = S ( { \textstyle { \frac { 5 } { 2 } } } ) = \cdot \cdot \cdot = - k$ ）

$\left( \left( 1 + { \frac { 1 } { k } } \right) ^ { k } \right)$ $e$ (Hint: Start with the inequality $\begin{array} { r } { \frac { e ^ { - x } - 1 } { - x } \leq 1 \leq \frac { e ^ { x } - 1 } { x } } \end{array}$ from Corollary 2.4.12 Deduce that

$$
( 1 + x ) ^ { 1 / x } \leq e \leq \left( 1 + \frac { x } { 1 - x } \right) ^ { 1 / x } ,
$$

using $0 < x < 1$ for the right-hand inequality. Choosing first $x = 1 / n$ and then $x = 1 / ( n + 1 )$ and doing some algebra yields $\begin{array} { r } { e - \frac { e } { n } \le \left( 1 + \frac { 1 } { n } \right) ^ { n } \le e } \end{array}$ ）

6. Suppose $x > 0$ . Prove that $\operatorname* { l i m } _ { n \to \infty } \left( 1 + { \frac { x } { n } } \right) ^ { n } = e ^ { x }$ (see exercise 5). What if we don't know that $x > 0$ ？

7. (Project) The algebra of limits involving forms $\scriptstyle \operatorname* { l i m } _ { x \to \infty } h ( x )$ or $\scriptstyle \operatorname* { l i m } _ { x \to - \infty } h ( x )$ ， or cases where $\operatorname* { l i m } _ { x \to a } h ( x ) = \pm \infty$ needs to be dealt with separately. Formulate and prove results in these cases.

8. Prove that lim_xn = O when $| x | < 1$ (see Corollary 3.2.14).

9. Suppose that $a > 1$ ， $\beta > 0$ ，and $\gamma$ is any real. Prove the following (you may use any results from this section).

$$
\begin{array} { l } { \displaystyle \operatorname* { l i m } _ { x \to \infty } \frac { a ^ { x } } { x ^ { \gamma } } = \infty \ ( \mathrm { e q u i v a l e n t l y , ~ } \underset { x \to \infty } { \operatorname* { l i m } } \frac { x ^ { \gamma } } { a ^ { x } } = 0 ) . } \\ { \displaystyle \operatorname* { l i m } _ { x \to \infty } \frac { \log _ { a } x } { x ^ { \beta } } = 0 . } \\ { \displaystyle \operatorname* { l i m } _ { x \to 0 } \beta ^ { x } = 1 . } \\ { \displaystyle \operatorname* { l i m } _ { x \to 0 } \ln ( 1 + x ) = 0 . } \end{array}
$$

# 3.3Series of Numbers

Perhaps the most common source of sequences in mathematics is the summing of numbers,and this is most interesting when there are infinitely many numbers to sum. One of the earliest examples is Zeno's “Race Course Paradox.” 1. In order for a runner to complete a race,he must run half the prescribed distance, then half the remaining distance, then half of the now remaining distance etc. This amounts to the runner covering the following fractions of the course:

$$
1 / 2 + 1 / 4 + 1 / 8 + 1 / 1 6 + \cdot \cdot \cdot
$$

Zeno (and many who followed him,up through modern times) was concerned about the realization of infinitely many tasks—in this case performance of the infinitely many legs of the journey.

Since we can't literally add infinitely many numbers,we look at the sequence of partial sums obtained when we add increasingly large but finite numbers of terms. In this section,we will try to find criteria for the convergence of this type of sequence. We begin by making our notion of series—an infinite sum—mathematically precise.

Let ( $s _ { k }$ ） be a sequence of numbers for, say, $k = 0 , 1 , 2 , \ldots$

DEFINITION 3.3.1 The partial sums $S _ { n }$ of this sequence are defined by

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

PROPOSITION 3.3.3 Suppose that $\textstyle \sum _ { k = 0 } ^ { \infty } s _ { k } = S$ and $\scriptstyle \sum _ { k = 0 } ^ { \infty } t _ { k } = T$ Then

$$
\sum _ { k = 0 } ^ { \infty } \left( \lambda s _ { k } + \mu t _ { k } \right) = \lambda S + \mu T
$$

for any constants $\lambda$ and $\mu$

(The situation for the product: $\textstyle \left( \sum _ { k = 0 } ^ { \infty } s _ { k } \right) \left( \sum _ { k = 0 } ^ { \infty } t _ { k } \right)$ is more complicated: see the second appendix to this chapter.)

The use of the word “diverge” implies that the partial sums are becoming unboundedly positive or unboundedly negative. This may or may not account for the failure to converge. For example,consider the series

$$
1 - 1 + 1 - \cdot \cdot \cdot \pm 1 \mp \cdot \cdot \cdot = \sum _ { k = 0 } ^ { \infty } ( - 1 ) ^ { k } .
$$

The partial sums here are $1 , 0 , 1 , 0 , \cdots$ so there is no limit,yet they are not unbounded. Some texts call this divergence but that seems misleading; we will say, simply, that this sequence fails to converge. Here are some more examples.

EXAMPLE 3.3.4 $\begin{array} { r } { \sum _ { k = 1 } ^ { \infty } ( - 1 ) ^ { k } i = 1 - 2 + 3 - 4 + \cdot \cdot \cdot } \end{array}$ . The partial sums are

$$
1 , - 1 , 2 , - 2 , 3 , - 3 , 4 , - 4 , . . .
$$

They alternate between $N$ and $- N$ ， so they don't approach either $\infty$ 0r $- \infty$ ;we should say that this series fails to converge.

ExAMPLE 3.3.5 $\begin{array} { r } { S = \sum _ { k = 1 } ^ { \infty } k = 1 + 2 + 3 + \cdots } \end{array}$ and $\begin{array} { r } { T = \sum _ { k = 1 } ^ { \infty } \ln ( 1 / e ^ { k } ) = - 1 - 2 - } \end{array}$ $3 - \cdot \cdot \cdot$ . These series diverge.

ExAMPlE 3.3.6 (ZEN0’s SERIES) $\begin{array} { r } { \sum _ { k = 1 } ^ { \infty } \frac { 1 } { 2 ^ { k } } = \frac { 1 } { 2 } + \frac { 1 } { 4 } + \frac { 1 } { 8 } + \cdot \cdot \cdot } \end{array}$ ， where the partialsums are

$$
{ \begin{array} { l } { { \frac { 1 } { 2 } } , { \frac { 3 } { 4 } } , { \frac { 7 } { 8 } } , \dots , { \frac { 2 ^ { n } - 1 } { 2 ^ { n } } } , \dots . } \end{array} }
$$

This is an example of a geometric series, which we will soon discuss at length. It clearly converges to1. To proe itformall, first proe inductiely that $\begin{array} { r } { S _ { n } = \frac { 2 ^ { n } - 1 } { 2 ^ { n } } = } \end{array}$ $1 - { \textstyle { \frac { 1 } { 2 ^ { n } } } }$ ，so that $\textstyle | S _ { n } - 1 | = { \frac { 1 } { 2 ^ { n } } }$ . We can clearly make this less than $\epsilon$ by making $_ { n }$ large enough.

ExAMPLB 37 $\begin{array} { r } { \sum _ { i = 1 } ^ { \infty } { \frac { 1 } { i ( i + 1 ) } } = \frac { 1 } { 2 } + \frac { 1 } { 6 } + \frac { 1 } { 1 2 } + \frac { 1 } { 2 0 } + \cdots } \end{array}$ is to note that $\begin{array} { r } { \frac { 1 } { i ( i + 1 ) } = \frac { 1 } { i } - \frac { 1 } { i + 1 } } \end{array}$ 1,so that

$$
\begin{array} { r c l } { \displaystyle \sum _ { i = 1 } ^ { n } \frac { 1 } { i ( i + 1 ) } } & { = } & { \displaystyle \sum _ { i = 1 } ^ { n } \frac { 1 } { i } - \frac { 1 } { i + 1 } = \left( 1 - \frac { 1 } { 2 } \right) + \left( \frac { 1 } { 2 } - \frac { 1 } { 3 } \right) + \left( \frac { 1 } { 3 } - \frac { 1 } { 4 } \right) + \dots + \left( \frac { 1 } { n } - \frac { 1 } { n + 1 } \right) } \\ & & { = } & { 1 + \left( - \frac { 1 } { 2 } + \frac { 1 } { 2 } \right) + \left( - \frac { 1 } { 3 } + \frac { 1 } { 3 } \right) + \left( - \frac { 1 } { 4 } + \frac { 1 } { 4 } \right) + \dots + \left( - \frac { 1 } { n } + \frac { 1 } { n } \right) - \frac { 1 } { n + 1 } } \\ & { = } & { 1 - \frac { 1 } { n + 1 } \to 1 , } \end{array}
$$

which approaches $^ { 1 }$ as $n \longrightarrow \infty$ ·

As the last example shows, you may need a trick or some other algebraic manipulation to get at the convergence of a series. Sometimes there is no simple expression for the limit ofa convergent series; in Example 3.1.12 we saw that $\scriptstyle \sum _ { k = 1 } ^ { \infty } { \frac { 1 } { k ^ { 2 } } }$ converges (we'll prove it again later in this section),but it is not at all easy to see that its limit is $\frac { \pi ^ { 2 } } { 6 }$ No one knows a similar expresson for the limit of the related convergent series $\scriptstyle \sum _ { k = 1 } ^ { \infty } { \frac { 1 } { k ^ { 3 } } }$ .General formulasforthesums oflarge classsof seriesarefew,but here is the most basic of them all.

PROPOSITIoN 3.3.8 The nth partial sum of the geometric series $\begin{array} { r } { S _ { n } = \sum _ { k = 0 } ^ { n } a r ^ { k } = } \end{array}$ $a + a r + a r ^ { 2 } + \cdot \cdot \cdot + a r ^ { n }$ is given by

$$
a + a r + a r ^ { 2 } + \cdots + a r ^ { n } = \frac { a ( 1 - r ^ { n + 1 } ) } { 1 - r } .
$$

Proof. By induction on $_ { n }$ , or compute $S _ { n } - r S _ { n }$ and note the cancellations.■

CORLARY39Tfiee $\textstyle \sum _ { k = 0 } ^ { \infty } a r ^ { k } = a + a r + a r ^ { 2 } + \cdots +$ $a r ^ { n } + \cdots$ converges to 1-r， provided |rl <1.

Proof. $\left| { \frac { a ( 1 - r ^ { n + 1 } ) } { 1 - r } } - { \frac { a } { 1 - r } } \right| = \left| { \frac { a r ^ { n + 1 } } { 1 - r } } \right| = \left| { \frac { a } { 1 - r } } \right| \cdot \left| r \right| ^ { n + 1 } \to 0$ as $n \to \infty$ when $| r | < 1$ (see Corollary 3.2.14).

EXAMPLE 3.3.10The feries $\begin{array} { r } { \sum _ { k = 0 } ^ { \infty } { \frac { ( - 1 ) ^ { k } } { 2 ^ { k } } } = 1 - { \frac { 1 } { 2 } } + { \frac { 1 } { 4 } } - { \frac { 1 } { 8 } } + \cdot \cdot \cdot } \end{array}$ converges to $\begin{array} { r } { \frac { 1 } { 1 + \frac { 1 } { 2 } } = \frac { 2 } { 3 } } \end{array}$

The convergence or non-convergence of a series does not depend on what happens over any finite stretch-it's the adding of infinitely many terms that matter. To make this precise, we note that for any $n \geq 0$ an infinite series $\scriptstyle \sum _ { k = 0 } ^ { \infty } s _ { k }$ can be split into a partial sum $S _ { n }$ and a tail:

$$
\begin{array} { l l l } { \displaystyle \sum _ { k = 0 } ^ { \infty } s _ { k } } & { = } & { \displaystyle \sum _ { k = 0 } ^ { n } s _ { k } + \sum _ { k = n + 1 } ^ { \infty } s _ { k } } \\ & { = } & { \displaystyle \sum _ { k = 0 } ^ { n } s _ { k } + \sum _ { k = 0 } ^ { \infty } s _ { n + 1 + k } } \end{array}
$$

The convergence of the original series depends only on the convergence of the tail, as we now see.

PROPOSITION 3.3.11（TAIL CONVERGENCE） For any $n \geq 0$ ，

1. $\scriptstyle \sum _ { k = 0 } ^ { \infty } s _ { k }$ converges if and only f $\scriptstyle \sum _ { k = 0 } ^ { \infty } s _ { n + 1 + k }$ comverges.   
2. When $\scriptstyle \sum _ { k = 0 } ^ { \infty } s _ { k }$ comuerges, $\begin{array} { r } { \sum _ { k = 0 } ^ { \infty } s _ { k } = S _ { n } + \sum _ { k = 0 } ^ { \infty } s _ { n + 1 + k } . } \end{array}$ 18

The proof is a straightforward application of the definition of series convergence and will be left as an exercise.

For a general series, one often verifies convergence by applying the Cauchy criterion (3.1.11) to the partial sums. It is useful to note, then, that for $m \leq n$ ，

$$
S _ { n } - S _ { m } = \sum _ { k = 0 } ^ { n } s _ { k } - \sum _ { k = 0 } ^ { m } s _ { k } = \sum _ { k = m + 1 } ^ { n } s _ { k } ,
$$

where the right-hand sum is taken to be $0$ when $m = n$ . In particular, $S _ { n + 1 } - S _ { n } =$ $s _ { n + 1 }$

PROPOSITION 3.3.12 $\scriptstyle \sum _ { k = 0 } ^ { \infty } s _ { k }$ converges f andonly f, ien $\epsilon > 0$ ,there eaists sn $M = M ( \epsilon )$

$$
\left| \sum _ { k = m + 1 } ^ { n } s _ { i } \right| < \epsilon ~ w h e n e v e r ~ n > m > M .
$$

Proof. This is simply a rephrasing of the Cauchy convergence criterion.

The next result gives us a necessary condition for convergence—namely that the terms of a convergent series must approach O. It is logically equivalent to the statement that if the terms of a series don't go to O, the series can't converge.

PROPOSTION3.3.13ftheies $\scriptstyle \sum _ { k = 0 } ^ { \infty } s _ { k }$ conerges,thententh term $s _ { n } \to 0$ qs $n \longrightarrow \infty$ ； in particular, the terms of a convergent series are bounded.

Proof. If the series converges, the partial sums ( $S _ { n }$ ) form a Cauchy sequence. Given $\epsilon > 0$ , choose $M$ so large that $| S _ { n } - S _ { k } | < \epsilon$ when $n , k \geq M$ .In particular, if $n > M$ then $n - 1 \geq M$ and $| s _ { n } | = | S _ { n } - S _ { n - 1 } | < \epsilon$ ■

COROLLARY 3.3.14 (DIVERGENCE TEST) If the terms of a series don't approach 0, the series can't converge.

ExAMPLE 3.3.15 ∑k=0 3k2+2k+1 diverges. To see this, we compute the limit of the kth term:

$$
\begin{array} { l c l } { \displaystyle \operatorname* { l i m } _ { k \to \infty } \frac { k ^ { 2 } } { 3 k ^ { 2 } + 2 k + 1 } } & { = } & { \displaystyle \operatorname* { l i m } _ { k \to \infty } \frac { k ^ { 2 } / k ^ { 2 } } { 3 k ^ { 2 } / k ^ { 2 } + 2 k / k ^ { 2 } + 1 / k ^ { 2 } } } \\ & { = } & { \displaystyle \operatorname* { l i m } _ { k \to \infty } \frac { 1 } { 3 + 2 / k + 1 / k ^ { 2 } } } \\ & { = } & { \displaystyle \frac { 1 } { 3 } . } \end{array}
$$

Since this limit is not O, the series diverges.

What is crucial to realize is that even if the terms of a series do approach $0$ ,the series still may not converge! Here is the oldest and simplest example; the proof is also a classic.

PROPOSITION 3.3.16 The harmonic series $H = 1 + { \frac { 1 } { 2 } } + { \frac { 1 } { 3 } } + { \frac { 1 } { 4 } } + \cdots = \sum _ { k = 1 } ^ { \infty } { \frac { 1 } { k } }$ diverges to $\infty$ ·

Proof.There are a number of different and interesting proofs that the harmonic series diverges. The most intuitive is based on the simple observation that for any integer $n > 1$ ，

$$
\underbrace { { \frac { 1 } { n + 1 } } + { \frac { 1 } { n + 2 } } + { \frac { 1 } { n + 3 } } + \cdots + { \frac { 1 } { 2 n } } } _ { n { \mathrm { ~ t e r m s } } } > \underbrace { { \frac { 1 } { 2 n } } + \cdots + { \frac { 1 } { 2 n } } } _ { n { \mathrm { ~ t e r m s } } } = { \frac { 1 } { 2 } } .
$$

Thus, for example, we can write the 16th partial sum, $H _ { 1 6 }$ ,as

$$
\begin{array} { r } { H _ { 1 6 } = 1 + \underbrace { \left[ \frac { 1 } { 2 } \right] } _ { = \frac { 1 } { 2 } } + \underbrace { \left[ \frac { 1 } { 3 } + \frac { 1 } { 4 } \right] } _ { > \frac { 1 } { 2 } } + \underbrace { \left[ \frac { 1 } { 5 } + \frac { 1 } { 6 } + \frac { 1 } { 7 } + \frac { 1 } { 8 } \right] } _ { > \frac { 1 } { 2 } } + \underbrace { \left[ \frac { 1 } { 9 } + \frac { 1 } { 1 0 } + \cdots + \frac { 1 } { 1 5 } + \frac { 1 } { 1 6 } \right] } _ { > \frac { 1 } { 2 } } , } \end{array}
$$

s0 $H _ { 1 6 } > 1 + 4 \left( \frac { 1 } { 2 } \right)$ . And, in general, $H _ { 2 ^ { k } } > 1 + k \left( \frac { 1 } { 2 } \right)$ ， so that the partial sums become infinite. $\lfloor$

Thus,although the terms of the harmonic series approach O, their sum (the infinite harmonic series) does not converge.

So how can we tellif a series does converge? This is a topic of such importance and subtlety that mathematicians have developed many tests,some of them quite complicated.We will state and prove a few of the most basic in this section.

We start by assuming that the terms of our series are all positive. In some sense it is harder for such a series to converge, since there can't be any cancellation of positive and negative terms. On the other hand, this also narrows down the problem of divergence to the issue of the terms getting too big. If we already have a series that converges, its terms can’t be getting too big, so any series whose terms are roughly the same in size or smaller should converge. That is the idea of a comparison test; here's the simplest one.

THEOREM 3.3.17 (COMPARISON TEST FOR SERIES） SuppOSe that hot $\scriptstyle \sum _ { k = 0 } ^ { \infty } t _ { k }$ $\textstyle \sum _ { k = 0 } ^ { \infty } s _ { k }$ $| s _ { k } | \le t _ { k }$ for $k$ $s _ { k } \geq | t _ { k } |$ $k$ $\scriptstyle \sum _ { k = 0 } ^ { \infty } t _ { k }$ $\scriptstyle \sum _ { k = 0 } ^ { \infty } s _ { k }$ diverges.

Proof. $\begin{array} { r } { \left| S _ { n } - S _ { m } \right| = \left| \sum _ { k = m + 1 } ^ { n } s _ { k } \right| \leq \sum _ { k = m + 1 } ^ { n } \left| s _ { k } \right| \leq \sum _ { k = m + 1 } ^ { n } t _ { k } } \end{array}$ sayfor $n \geq m > L$ $_ { m }$ ， $_ { n }$ “suficiently large"). Since the series with terms $t _ { k }$ converges (and the $t _ { k }$ are non-negative), there is an $M$ such that this last sum is $< \epsilon$ when $n > m > M$ . Thus, $| S _ { n } - S _ { m } | < \epsilon$ when $n \geq m > \operatorname* { m a x } ( L , M )$ . The divergence is equally straightforward.

As a quick application of the comparison test, we establish again the convergence f $\begin{array} { r } { \sum _ { k = 0 } ^ { \infty } \frac { 1 } { ( k + 1 ) ^ { 2 } } = 1 + \frac { 1 } { 4 } + \frac { 1 } { 9 } + \frac { 1 } { 1 6 } + \cdot \cdot \cdot } \end{array}$ We note that $\begin{array} { r } { \frac { 1 } { ( k + 1 ) ^ { 2 } } < \frac { 1 } { k ( k + 1 ) } } \end{array}$ k(k+1), and we saw above ∑=1 k(k+1) converges. It follows that $\scriptstyle \sum _ { k = 1 } ^ { \infty } { \frac { 1 } { k ^ { p } } }$ converges when $p \geq 2$ It is,in fact, true that this last series converges for all $p > 1$ . This fact is most easily proved using the integral test (see Theorem 5.3.27),but here's a very simple proof illustrating both a comparison with a geometric series and an idea borrowed from the proof of the divergence of the harmonic series.

PROPOSITION 3.3.18（ $p$ -SERIES TEST) $\sum _ { k = 1 } ^ { \infty } { \frac { 1 } { k ^ { p } } }$ converges for $p > 1$ and diverges for $p \leq 1$ ·

Proof.

$$
{ \begin{array} { l c l } { \displaystyle \sum _ { k = 1 } ^ { \infty } { \frac { 1 } { k ^ { p } } } } & { = } & { \displaystyle 1 + { \frac { 1 } { 2 ^ { p } } } + { \frac { 1 } { 3 ^ { p } } } + { \frac { 1 } { 4 ^ { p } } } + \cdots } \\ & { = } & { \displaystyle 1 + \underbrace { \left( { \frac { 1 } { 2 ^ { p } } } + { \frac { 1 } { 3 ^ { p } } } \right) } _ { \mathrm { \normalfont ~ 2 \ n e m s } } + \underbrace { \left( { \frac { 1 } { 4 ^ { p } } } + { \frac { 1 } { 5 ^ { p } } } + { \frac { 1 } { 6 ^ { p } } } + { \frac { 1 } { 7 ^ { p } } } \right) } _ { \mathrm { \normalfont ~ 4 \ n e m s } } + \cdots } \\ & { < } & { \displaystyle 1 + 2 \left( { \frac { 1 } { 2 ^ { p } } } \right) + 4 \left( { \frac { 1 } { 4 ^ { p } } } \right) + 8 \left( { \frac { 1 } { 8 ^ { p } } } \right) + \cdots } \\ & { = } & { \displaystyle 1 + { \frac { 1 } { 2 ^ { p - 1 } } } + \left( { \frac { 1 } { 2 ^ { p - 1 } } } \right) ^ { 2 } + \left( { \frac { 1 } { 2 ^ { p - 1 } } } \right) ^ { 3 } + \cdots } \end{array} }
$$

This last is a geometric series which converges when $2 ^ { p - 1 } > 1$ , i.e. when $p - 1 > 0$ The divergence for $p \leq 1$ follows from comparison with the harmonic series.■

THEOREM 3.3.19（LIMIT COMPARISON TEST） Suppose（ $s _ { k }$ ）and $\left( t _ { k } \right)$ are sequences which are both non-negative for $k$ sufficiently large; also suppose that $\begin{array} { r } { \frac { s _ { k } } { t _ { k } } \longrightarrow L > 0 } \end{array}$ as $k \to \infty$ . Then $\scriptstyle \sum _ { k = 0 } ^ { \infty } s _ { k }$ converges if and ony if $\scriptstyle \sum _ { k = 0 } ^ { \infty } t _ { k }$ comverges. tk

Proof. For $k$ sufficiently large, $s _ { k }$ and $t _ { k }$ are non-negative and $\frac { s _ { k } } { t _ { k } } \le L + \epsilon$ So $s _ { k } \ \leq \ t _ { k } ( L + \epsilon )$ ，and the comparison test shows that convergence of the $t$ series implies convergence of the $s$ series. To prove theconverse,notethat $\frac { t _ { k } } { s _ { k } } \longrightarrow 1 / L$

REMARK 3.3.2Tis proidesaotrht $et { } { _ { k = 1 } ^ { \infty } } \frac { 1 } { k ^ { 2 } }$ comverges, since

$$
\frac { 1 / k ^ { 2 } } { 1 / ( k ( k + 1 ) ) } = \frac { k ^ { 2 } + k } { k ^ { 2 } }  1
$$

as $k  \infty$ . It also shows that if $a > 0$ ，then $et { } { ' } \sum _ { k = 1 } ^ { \infty } \frac { 1 } { a k + b }$ diverges, since we can compare it with the harmonic series.

Since we know exactly when geometric series converge, our next move is to compcvewite $\scriptstyle \sum _ { k = 1 } ^ { \infty } s _ { k }$ with $s _ { k } > 0$ . Define $r _ { k }$ for $k = 1 , 2 , \ldots$ by

$$
r _ { k + 1 } = { \frac { s _ { k + 1 } } { s _ { k } } } ,
$$

s0 $s _ { k + 1 } = r _ { k + 1 } s _ { k }$ .If all the $r _ { k }$ were equal, we would, of course, have a geometric series; nevertheless we can make a comparison.

PROPOSITION 3.3.21 Suppose the terms $s _ { k }$ are eventually non-negative and Sk+1 ≤ Sk $r$ for some $0 \leq r < 1$ and all sufficiently large $k$ . Then

1. $s _ { k } \to 0$ as $k \to \infty$

$\scriptstyle \sum _ { k = 0 } ^ { \infty } s _ { k }$ converges and

$$
\sum _ { k = 0 } ^ { m } s _ { k } \leq \sum _ { k = 0 } ^ { \infty } s _ { k } \leq \left( \sum _ { k = 0 } ^ { m } s _ { k } \right) + \left( { \frac { 1 } { 1 - r } } \right) s _ { m + 1 }
$$

for $m \geq M$

Proof. First we prove claim (1). Let's suppose that for $k \geq M$ ,the terms $s _ { k }$ are non-negative and $\frac { s _ { k + 1 } } { s _ { k } } \leq r < 1$ For $n > m \ge M$ ，

$$
\begin{array} { l c l } { s _ { n } } & { = } & { r _ { n } s _ { n - 1 } } \\ & { = } & { r _ { n } r _ { n - 1 } s _ { n - 2 } } \\ & { = } & { r _ { n } r _ { n - 1 } r _ { n - 2 } s _ { n - 3 } } \\ & { = } & { r _ { n } r _ { n - 1 } \cdot \cdot \cdot r _ { m + 2 } s _ { m } , } \end{array}
$$

or

$$
s _ { n } = s _ { m } \prod _ { k = 1 } ^ { n - m } r _ { m + k } \leq s _ { m } r ^ { n - m } = r ^ { n } \left( { \frac { s _ { m } } { r ^ { m } } } \right) .
$$

So let's fix some $_ { m }$ ，say $m = M$ ，and set $C = { \frac { s _ { M } } { r ^ { M } } }$ Then $0 < s _ { n } \leq C r ^ { n }  0$ as $n \longrightarrow \infty$ since $r < 1$ . This establishes the first claim.

To prove the second, we assume that $n > m \ge M - 1$ and examine the Cauchy condition:

$$
\begin{array} { r l } { 0 < S _ { n } - S _ { m } = } & { \displaystyle \sum _ { k = m + 1 } ^ { n } s _ { k } } \\ & { \leq s _ { m + 1 } \left( \displaystyle \sum _ { k = m + 1 } ^ { n } r ^ { k - ( m + 1 ) } \right) } \\ & { - s _ { m + 1 } \left( \displaystyle \sum _ { k = 0 } ^ { n } r ^ { k } \right) } \\ & { \leq s _ { m + 1 } \left( \displaystyle \sum _ { k = 0 } ^ { \infty } r ^ { k } \right) } \\ & { = \displaystyle \frac { s _ { m + 1 } } { 1 - r } + \sum _ { k = 0 } ^ { n } . } \end{array}
$$

since we know $s _ { m + 1 } \to 0$ .Also,the inequality above shows that for all $n > m \geq$ $M - 1$ ， $\begin{array} { r } { S _ { m } < S _ { n } < S _ { m } + \frac { s _ { m + 1 } } { 1 - r } } \end{array}$ (where $S _ { n }$ and $S _ { m }$ are partial sums). We now hold $_ { m }$ fixed and let $n \longrightarrow \infty$ . Since weak inequalities are preserved in the limit (Corollary 3.1.10),we get the rest of the claim.■

Thus,if our series is (eventually) dominated by a geometric one, then it not only converges, but we get a nice upper error bound when we truncate it at some finite partial sum. If, in addition, our series eventually dominates a geometric one, then we also get a lower error bound, using a similar argument. Combining lower and upper bounds gives us a nice estimate for the difference between the infinite sum and the large partial sums. This difference is sometimes called the truncation error-what you get when you chop off a series after a finite number of terms.

THEOREM 3.3.22(TRUNCATION ESTIMATE） Suppose the same hypotheses as the previous proposition, but also assume that $0 \leq t \leq r _ { k + 1 } \leq r$ for all $k > M$ . Then ∑i=1 Si converges and

$$
\left( \frac { 1 } { 1 - t } \right) s _ { m + 1 } \leq \sum _ { k = 0 } ^ { \infty } s _ { k } - \left( \sum _ { k = 0 } ^ { m } s _ { k } \right) \leq \left( \frac { 1 } { 1 - r } \right) s _ { m + 1 } .
$$

ExAMPLE33.23 s $- \ln ( 1 - x ) = \sum _ { k = 0 } ^ { \infty } { \frac { x ^ { k } } { k } }$ Here ${ \frac { s _ { k + 1 } } { s _ { k } } } = \left( { \frac { k } { k + 1 } } \right) x .$ Supposing that $0 \leq x < 1$ ， we can take $m = 2 0$ ， and we have $\begin{array} { r } { 0 < \frac { 2 0 } { 2 1 } x < \frac { s _ { k + 1 } } { s _ { k } } \le x } \end{array}$

If we want to estimate $\mathrm { I n 4 }$ ， we can take $x = 3 / 4$ and truncate after the 20th term. This gives us $\begin{array} { r } { 0 < \frac { 5 } { 7 } < \frac { s _ { k + 1 } } { s _ { k } } \le \frac { 3 } { 4 } } \end{array}$ ，80

$$
{ \frac { 7 } { 2 } } \left( { \frac { 3 } { 4 } } \right) ^ { 2 1 } { \frac { 1 } { 2 1 } } \leq \ln ( 4 ) - \sum _ { k = 0 } ^ { 2 0 } { \frac { x ^ { k } } { k } } \leq 4 \left( { \frac { 3 } { 4 } } \right) ^ { 2 1 } { \frac { 1 } { 2 1 } }
$$

or

$$
0 . 0 0 0 3 9 6 \leq \ln ( 4 ) - \sum _ { k = 0 } ^ { 2 0 } \frac { x ^ { k } } { k } \leq 0 . 0 0 0 4 5 3 .
$$

In fact, the actual value of the error is about O.000403, so this is a pretty good estimate.

COROLLARY 3.3.24(RATIO TEST) Suppose $s _ { k } \geq 0$ for $k$ suffciently large,and   
$\operatorname* { l i m } _ { k \to \infty } { \frac { s _ { k + 1 } } { s _ { k } } } = r$ = r. Then $\sum _ { k = 0 } ^ { \infty } s _ { k }$ converges if $r < 1$ and $\sum _ { k = 0 } ^ { \infty } s _ { k }$ diverges if $r > 1$ We   
can draw no conclusion if $r = 1$

Note that the ratio test fails to detect the divergence of the harmonic series $\scriptstyle \sum _ { k = 1 } ^ { \infty } 1 / k$ Oor the convergence of $\textstyle \sum _ { k = 1 } ^ { \infty } 1 / k ^ { 2 }$ , which we have established using ad hoc methods. Later,we will be able to use the integral test (Theorem 5.3.27) to deal with series of this type.

PROPOSITION 3.3.25 (RATIO COMPARISON TEST） Suppose for suffciently large $k$ the numbers $s _ { k }$ and $b _ { k }$ are non-negatiueg ad $\frac { s _ { k + 1 } } { s _ { k } } \leq \frac { b _ { k + 1 } } { b _ { k } }$ If the serics $\sum _ { k = 0 } ^ { \infty } b _ { k }$ converges, so does $\sum _ { k = 0 } ^ { \infty } s _ { k } .$

Proof. For $k \geq$ some $N$ ， $\frac { s _ { k + 1 } } { b _ { k + 1 } } \leq \frac { s _ { k } } { b _ { k } }$ so the sequence of ratios $\frac { s _ { k } } { b _ { k } }$ is decreasing. If $\alpha = \frac { s _ { N } } { b _ { N } }$ sN,then $s _ { k } \le \alpha b _ { k }$ for $k > N$ ; s0 $\sum _ { k = 0 } ^ { \infty } s _ { k }$ converges by the Comparison Test.■

So far we have been dealing with series whose terms are either all positive or at least eventually positive. Now we turn our attention to more general series whose terms don't satisfy these conditions.

DEFINITION 3.3.26 $\scriptstyle \sum _ { k = 0 } ^ { \infty } s _ { k }$ is said to be absolutely convergent if $\textstyle \sum _ { k = 0 } ^ { \infty } \left| s _ { k } \right|$ converges. If a series converges but is not absolutely convergent, it is called conditionally convergent.

PROPOSITiON 3.3.27 Euery absolutely convergent series is convergent.

Proof. Let $\begin{array} { r } { S _ { n } = \sum _ { k = 0 } ^ { n } s _ { k } } \end{array}$ and $\begin{array} { r } { T _ { n } = \sum _ { k = 0 } ^ { n } \left| s _ { k } \right| } \end{array}$ Since $T _ { n }$ ） converges, it satisfies the Cauchy criterion; we must show that ( $S _ { n }$ ) does as well.

$$
\begin{array} { r c l } { \displaystyle \left| S _ { n } - S _ { m } \right| } & { = } & { \displaystyle \left| \sum _ { k = m + 1 } ^ { n } s _ { k } \right| } \\ & { \le } & { \displaystyle \sum _ { k = m + 1 } ^ { n } \left| s _ { k } \right| \ : \mathrm { ( b y ~ t h e ~ t r i a n g l e ~ i n e q u a l i t y ) } } \\ & { = } & { \displaystyle \left| T _ { m } - T _ { n } \right| } \end{array}
$$

Since ( $T _ { n }$ ） is a Cauchy sequence, there is an $N ( \epsilon )$ that makes $| T _ { m } - T _ { n } | < \epsilon$ for all $m , n > N ( \epsilon )$ , so the same $N ( \epsilon )$ works for $| S _ { m } - S _ { n } |$ ■

COROLLARY 3.3.28（ABSOLUTE RATIO TEST） SuppOse $\operatorname* { l i m } _ { k \to \infty } \left| { \frac { s _ { k + 1 } } { s _ { k } } } \right| = r < 1$ . Then   
$\sum _ { k = 0 } ^ { \infty } s _ { k }$ is absolutely convergent, so it converges.

EXAMPLE 3.3.29 For the series $\sum _ { k = 0 } ^ { \infty } ( - 1 ) ^ { k } { \frac { 2 ^ { k } x ^ { k } } { k } }$ ，we have

$$
\operatorname* { l i m } _ { k \to \infty } \left| { \frac { s _ { k + 1 } } { s _ { k } } } \right| = \operatorname* { l i m } _ { k \to 0 } { \frac { k } { k + 1 } } \left| 2 x \right| = \left| 2 x \right| .
$$

When $- 1 / 2 < x < 1 / 2$ ， the series converges absolutely. When $x = - 1 / 2$ ，we get the harmonic series, which diverges. When $x = 1 / 2$ we get the alternating harmonic series which converges, as we shall see below. When $| x | > 1 / 2$ ， the series diverges.

PROPOSITION 3.3.30 (NTH ROOT TEST） Suppose $\operatorname* { l i m } _ { k  \infty } | s _ { k } | ^ { 1 / k } = L .$

1.1f $L < 1$ , the series $\scriptstyle \sum _ { k = 0 } ^ { \infty } s _ { k }$ converges absolutely.   
2.If $L > 1$ ， the series diverges.   
3.If $L = 1$ , the test gives no convergence information.

The proof is by comparison with a geometric series and is left as an exercise.

We now return to the general case of a series whose terms may be positive or negative.The simplest such series are called alternating because their terms alternate in sign.Here is the formal definition.

DEFINITION 3.3.31 The sequence $s _ { k }$ alternates in sign if $s _ { k } s _ { k + 1 } \leq 0$ for all $k \geq 0$ ； in other words, the product of any two consecutive terms is non-positive. In this case, $\scriptstyle \sum _ { k = 0 } ^ { \infty } s _ { k }$ sscalledas

An alternating series looks like $a _ { 0 } - a _ { 1 } + a _ { 2 } - a _ { 3 } + \cdots$ ，where the $a _ { k }$ are nonnegative. It turns out that these converge when the terms $a _ { k }$ eventually decrease to 0—i.e.when $a _ { k } \geq a _ { k + 1 }$ for all sufficiently large $k$ and $\mathrm { l i m } ( a _ { k } ) = 0$ .Here is a diagram of what this looks like ( $S _ { n }$ as usual denotes the $n$ th partial sum):

![](images/9e64f34f5f04f4d22765dc295fad149276dc0e7331449ec4526cd0e203d1275d.jpg)

You can see that any partial sum $S _ { m }$ lies between any two consecutive previous partial sums. It follows that the distance between any two partial sums is less than the distance between any two consecutive previous partial sums, but this last distance is always $\left| S _ { n - 1 } - S _ { n } \right| = \left| a _ { n } \right|$ . These observations are enough to establish that the partial sums form a Cauchy sequence, so we get convergence.

We now turn to a more precise formulation of these results,one that doesn't depend on a picture. Also,it is annoying to have to deal with the various special cases in alternating series that arise by having to know whether $S _ { n + 1 } = S _ { n } + a _ { n + 1 }$ ， or $S _ { n + 1 } = S _ { n } - a _ { n + 1 }$ (that is,whether $_ { n }$ is even or odd).Fortunately,we have the notion of betweenness introduced in Chapter 1 (Definition 1.5.39) that enables us to deal with both cases at once. However, if you skipped the material on betweenness, Or would rather have a more concrete proof (maybe using the diagram above for guidance),see exercise 8 on page 128.

In what follows, we will assume that we have an alternating series $\scriptstyle \sum _ { k = 0 } ^ { \infty } s _ { k }$ whose terms eventually weakly decrease (that is,do not increase) in size.All these conditions can be summarized as follows.

For some $N$ ， $s _ { k + 1 } = r _ { k + 1 } \cdot s _ { k }$ with $- 1 \leq r _ { k + 1 } \leq 0$ for $k \geq N$

PROPOSITION 3.3.32 Suppose the sequence ( $s _ { k }$ ） weakly decreases for $k \geq N$ . Then, for $m > n \geq N$ ， the partial sum $S _ { m }$ lies between the sums $S _ { n }$ and $S _ { n + 1 }$

Proof. By a previous result on betweenness (Proposition 1.5.42),it suffices to show that if we take any $k > N$ and consider three consecutive terms $S _ { k }$ ， $S _ { k + 1 }$ and $S _ { k + 2 }$ ， then the third term is between the first two.To prove this,it suffces to show that $| S _ { k + 1 } - S _ { k } | = | S _ { k + 1 } - S _ { k + 2 } | + | S _ { k + 2 } - S _ { k } |$ (by Proposition 1.5.44). Here is the

computation:

$$
\begin{array} { r l } & { | S _ { k + 1 } - S _ { k + 2 } | + | S _ { k + 2 } - S _ { k } | = | - s _ { k + 2 } | + | s _ { k + 2 } + s _ { k + 1 } | } \\ & { \qquad = | r _ { k + 2 } | | s _ { k + 1 } | + | r _ { k + 2 } s _ { k + 1 } + s _ { k + 1 } | } \\ & { \qquad = - r _ { k + 2 } | s _ { k + 1 } | + | r _ { k + 2 } + 1 | | s _ { k + 1 } | } \\ & { \qquad = - r _ { k + 2 } | s _ { k + 1 } | + ( r _ { k + 2 } + 1 ) | s _ { k + 1 } | } \\ & { \qquad = | s _ { k + 1 } | } \\ & { \qquad = | S _ { k + 1 } - S _ { k } | . } \end{array}
$$

(Note that we have used the fact that $- 1 \leq r _ { k + 1 } \leq 0$ several times.）■

COROLLARY 3.3.33（ALTERNATING SERIES TEST） $I f ( s _ { k } )$ is alternating, weakly decreasing for $k > N$ ，and $s _ { k } \to 0$ ，then

1. ( $S _ { k }$ ） converges to a limit $S$ , and for each $n \geq N$ ， $S$ is between $S _ { n }$ and $S _ { n + 1 }$

Proof. We want to show that ( $S _ { n }$ ） is a Cauchy sequence. The betweenness result from the previous proposition tells us that

$$
\left| \sum _ { k = 0 } ^ { n + 1 } s _ { k } - \sum _ { k = 0 } ^ { n } s _ { k } \right| = \left| \sum _ { k = 0 } ^ { n + 1 } s _ { k } - \sum _ { k = 0 } ^ { m } s _ { k } \right| + \left| \sum _ { k = 0 } ^ { m } s _ { k } - \sum _ { k = 0 } ^ { n } s _ { k } \right|
$$

or, performing the subtractions,

$$
\left| s _ { n + 1 } \right| = \left| \sum _ { k = n + 2 } ^ { m } s _ { k } \right| + \left| \sum _ { k = n + 1 } ^ { m } s _ { k } \right| .
$$

The at eqationtl sat $\begin{array} { r } { \left| \sum _ { k = n + 1 } ^ { m } s _ { k } \right| \leq | s _ { n + 1 } | \to 0 } \end{array}$ , independent of $_ { m }$ This makes ( $S _ { n }$ ）a Cauchy sequence, so $( S _ { n } ) \to L$ for some $L$

On the other hand, we can choose $N$ so that for $m > N$ ， $| S _ { m } - L | < \epsilon / 2$ (for any $\epsilon > 0$ ). Then by the triangle inequality we have

$$
\begin{array} { r c l } { | S _ { n + 1 } - L | } & { \leq } & { \left| S _ { n + 1 } - S _ { m } \right| + \left| S _ { m } - L \right| } \\ { \left| L - S _ { n } \right| } & { \leq } & { \left| L - S _ { m } \right| + \left| S _ { m } - S _ { n } \right| , } \end{array}
$$

and adding yields

$$
| S _ { n + 1 } - L | + | L - S _ { n } | \leq | S _ { n + 1 } - S _ { n } | + \epsilon .
$$

Since $\epsilon$ was arbitrary, $| S _ { n + 1 } - L | + | L - S _ { n } | \leq | S _ { n + 1 } - S _ { n } |$ .One can show the reverse inequality similarly, so $| S _ { n + 1 } - L | + | L - S _ { n } | = | S _ { n + 1 } - S _ { n } |$ . This completes the proof.■

Since alternating series are so common, we summarize the results of Corollry 3.3.33 as follows.

SUMMARY 3.3.34 An alternating series whose terms decrease in absolute value to 0 converges, and

1. The limit lies between any two consecutive partial sums.

2. The truncation error is less than the absolute value of the first term dropped.

DEFINITION 3.3.35 The alternating harmonic series $A$ is given by

$$
\sum _ { k = 0 } ^ { \infty } { \frac { ( - 1 ) ^ { k } } { k + 1 } } = 1 - { \frac { 1 } { 2 } } + { \frac { 1 } { 3 } } - { \frac { 1 } { 4 } } + \cdots
$$

COROLLARY 3.3.36 The alternating harmonic series converges but does not converge absolutely (i.e. it is conditionally convergent).

(In fact, the limit of the alternating harmonic series is the number we called $\ln { 2 }$ in exercise 2 on page 42 of Chapter 1. Proving this is an exercise at the end of this section.)

Here are some examples related to the Euler number $^ e$ ,although we don't have the machinery yet to prove this connection (we will when we do power series； see Example 7.3.33).

EXAMPLE 3.3.37 First we look at a series of positive terms, defined as follows:

$$
\begin{array} { r c l } { { e _ { 0 } } } & { { = } } & { { 1 , e _ { k + 1 } = { \cfrac { e _ { k } } { k + 1 } } } } \\ { { } } & { { } } & { { } } \\ { { E _ { n } } } & { { = } } & { { \displaystyle \sum _ { k = 0 } ^ { n } e _ { k } = \sum _ { k = 0 } ^ { n } { \cfrac { 1 } { k ! } } } } \\ { { } } & { { } } & { { } } \\ { { \displaystyle \sum _ { k = 0 } ^ { \infty } e _ { k } } } & { { = } } & { { \displaystyle 1 + { \cfrac { 1 } { 1 ! } } + { \cfrac { 1 } { 2 ! } } + \dots + { \cfrac { 1 } { n ! } } + \dots . } } \end{array}
$$

Note that the quotients $r _ { k + 1 } = { \frac { e _ { k + 1 } } { e _ { k } } } = { \frac { 1 } { k + 1 } } \to 0$ as $k  \infty$ . Thus, the series converges by the ratio test; let the limit be $E$ . In fact, as we will see in section 7.3 on power series, $E$ is actually the Euler numbere already defined (Definition 2.4.7). Since the partial sums are increasing, we have $E _ { n + 1 } \leq E$ for any $_ { n }$ . By the second part of Proposition 3.3.21 we have

$$
{ \begin{array} { l c l } { E _ { n + 1 } } & { \leq } & { E \leq E _ { n } + { \cfrac { 1 } { 1 - r _ { k + 2 } } } e _ { k + 1 } } \\ & { = } & { E _ { n } + { \cfrac { 1 } { 1 - { \cfrac { 1 } { n + 2 } } } } { \cfrac { 1 } { ( n + 1 ) ! } } } \\ & { = } & { E _ { n } + { \cfrac { 1 } { n ! } } { \cfrac { 1 } { \left( n + 1 - { \frac { n + 1 } { n + 2 } } \right) } } } \\ & { \leq } & { E _ { n } + { \cfrac { 1 } { n ! n } } } \end{array} }
$$

Letting $n = 1 , 2 , 3$ gives us the estimates

$$
\begin{array} { c } { { 1 + 1 + 1 / 2 < E < 1 + 1 + 1 } } \\ { { 1 + 1 + 1 / 2 + 1 / 6 < E < 1 + 1 + 1 / 2 + 1 / 4 } } \\ { { 2 + \displaystyle \frac { 5 1 } { 7 2 } < E < 2 + \displaystyle \frac { 5 2 } { 7 2 } , } } \end{array}
$$

or,roughly, $E \approx 2 . 7 2$

Now let's make the preceding into an alternating series by defining $a _ { 0 } = 1$ and $r _ { k + 1 } = - \frac { a _ { k } } { k + 1 }$ -；thus, ，

$$
\sum _ { k = 0 } ^ { \infty } a _ { k } = \sum _ { k = 0 } ^ { \infty } { \frac { ( - 1 ) ^ { k } } { ( k + 1 ) ! } } = 1 - { \frac { 1 } { 1 ! } } + { \frac { 1 } { 2 ! } } - { \frac { 1 } { 3 ! } } + { \frac { 1 } { 4 ! } } - \cdots
$$

The alternating series test tells us that this converges to some number $A$ .For $n = 3$ ， we have the estimate

$$
A = \sum _ { k = 0 } ^ { 3 } { \frac { ( - 1 ) ^ { k } } { ( k + 1 ) ! } } \pm { \frac { 1 } { 5 ! } } ,
$$

or

$$
A = { \frac { 9 } { 2 4 } } \pm { \frac { 1 } { 1 2 0 } }
$$

This give us $0 . 3 6 6 7 < A < 0 . 3 8 3 3$ . As we shall see later, $A = 1 / e \approx 0 . 3 6 7 9$

Although the comparison and ratio tests only tell us when a series is absolutely convergent, there are also useful tests for conditional convergence,due to Dirichlet and Abel.

THEOREM 3.3.38（DIRICHLET's TEST） Suppose $\left( a _ { k } \right)$ and ( $b _ { k }$ ） are sequences that have the following properties:

2. The partial sums $\textstyle B _ { n } = \sum _ { k = 0 } ^ { n } b _ { k }$ are all bounded by some number $B$ (that is, $\left. B _ { n } \right. \leq B$ for all $_ { n }$ ）

Then the series $\scriptstyle \sum _ { k = 0 } ^ { \infty } a _ { k } b _ { k }$ conuerges.

Proof. An outline of the proof is in the exercises.I

EXAMPLE 3.3.39 The series $\scriptstyle \sum _ { k = 1 } ^ { \infty } \left( \sin k x \right) / k$ and $\scriptstyle \sum _ { k = 1 } ^ { \infty } \left( \cos k x \right) / k$ (with $_ x$ not a multiple of $2 \pi$ ） converge. We show the first of these converges. Here we have $a _ { k } =$ $1 / k$ and $b _ { k } = \sin { k x }$ . A standard formula from trigonometry, derived from the formulas for $\sin ( A + B )$ and $\cos ( A { + } B )$ , gives $\cos ( u ) - \cos ( v ) = - 2 \sin \left( { \frac { u + v } { 2 } } \right) \sin \left( { \frac { u - v } { 2 } } \right) .$

Replacing u by $( k + { \frac { 1 } { 2 } } ) x$ and $v$ by $\ ( k - \textstyle { \frac { 1 } { 2 } } ) x$ ， solving for $\mathrm { s i n } ( k x )$ ， and noticing the telescoping (cancellation of almost all terms)， we see that

$$
\begin{array} { r c l } { { { \cal B } _ { n } } } & { { = } } & { { \displaystyle \sum _ { k = 1 } ^ { n } \sin k x } } \\ { { } } & { { = } } & { { \displaystyle \frac { - 1 } { 2 \sin \displaystyle \frac { x } { 2 } } \left[ \cos \left( \displaystyle \frac { 2 n + 1 } { 2 } \right) x - \cos \displaystyle \frac { 1 } { 2 } x \right] } } \\ { { } } & { { = } } & { { \displaystyle \frac { 1 } { \sin \displaystyle \frac { x } { 2 } } \left( \sin \displaystyle \frac { ( n + 1 ) x } { 2 } \sin \displaystyle \frac { n x } { 2 } \right) . } } \end{array}
$$

Thus, $\left| B _ { n } \right| \leq \left| { \frac { 1 } { \sin { \frac { x } { 2 } } } } \right|$ so the $B _ { n }$ when $\sin ( x / 2 ) = 0$ the series is identically O, so converges anyway.)

Note,however， that both of these series converge conditionally - in fact, the series $\sum _ { k = 1 } ^ { \infty } { \left| \frac { \sin k x } { k } \right| } ~ a n d \sum _ { k = 1 } ^ { \infty } { \left| \frac { \cos k x } { k } \right| }$ diverge (see erercises).

COROLLARY 3.3.40 （ABEL's TEST） If $( a _ { k } )$ is a decreasing (or increasing) sequence of non-negativenumbers which conuerges and $\scriptstyle \sum _ { k = 0 } ^ { \infty } b _ { k }$ converges, then $\scriptstyle \sum _ { k = 0 } ^ { \infty } a _ { k } b _ { k }$ converges.

Proof. The partial sums of $\scriptstyle \sum _ { k = 0 } ^ { \infty } b _ { k }$ are bounded. Suppose $( a _ { k } ) \to a$ and apply Dirichlet’s test using the sequence $( a _ { k } - a )$ (or $\left( a - a _ { k } \right)$ when $\left( a _ { k } \right)$ is increasing). $\lfloor$

We conclude by returning to a result we have already proved: if a series converges, its terms go to $0$ . The following proposition shows the equivalence between a sequence going to O and the divergence of a related series. We will use this result later to study binomial series.

PROPOSITION 3.3.41 Let ( ) be a decreasing sequence of positive numbers and define $b _ { k } = 1 - \frac { a _ { k + 1 } } { a _ { k } }$ +1;supposethatb→ask→o.Tenak→ifand onlyif $\scriptstyle \sum _ { k = 0 } ^ { \infty } b _ { k }$ diverges.

of both sides, we have Proof. For ， $a _ { n } = a _ { 1 } ( 1 - b _ { 1 } ) ( 1 - b _ { 2 } ) \cdots ( 1 - b _ { n - 1 } )$ $\begin{array} { r } { \ln a _ { n } \ = \ \sum _ { k = 1 } ^ { n - 1 } \ln ( 1 - b _ { k } ) } \end{array}$ Thus $a _ { n } \ \to \ 0$ .Therefore, taking ln if and only if $\operatorname* { l i m } _ { n  \infty } \sum _ { k = 0 } ^ { n - 1 } - \ln ( 1 - b _ { k } ) = \infty$ Since $b _ { k } \to 0$ $\operatorname* { l i m } _ { k \to \infty } { \frac { - \ln ( 1 - b _ { k } ) } { b _ { k } } } = 1$ -ln(1-6k）=1(say byTHopital's nile,wichwellrveate $\scriptstyle \sum _ { k = 0 } ^ { n - 1 } - \ln ( 1 - b _ { k } )$ divegesif and gnl f $\scriptstyle \sum _ { k = 0 } ^ { \infty } b _ { k }$ diverges,by the limit comparison test (Theorem 3.3.19)，so $a _ { n } \to 0$ if and only if $\scriptstyle \sum _ { k = 0 } ^ { \infty } b _ { k }$ diverges.

# Exercises

1. Prove the following, which was left unproved in the text.

PROPOSITION 3.3.11. For any $n \geq 0$ ，(a) $\scriptstyle \sum _ { k = 0 } ^ { \infty } s _ { k }$ converges fad only f $\scriptstyle \sum _ { k = 0 } ^ { \infty } s _ { n + 1 + k }$ converges.(b） When $\scriptstyle \sum _ { k = 0 } ^ { \infty } s _ { k }$ converges, $\textstyle \sum _ { k = 0 } ^ { \infty } s _ { k } = S _ { n } + \sum _ { k = 0 } ^ { \infty } s _ { n + 1 + k }$

2. We have se at $\sum _ { k = 1 } ^ { \infty } { \frac { 1 } { k ^ { p } } }$ converge for $p > 1$ harmonieseiess $\sum _ { k = 1 } ^ { \infty } { \frac { 1 } { k } }$

(a) Prove that $\scriptstyle \sum _ { k = 1 } ^ { \infty } { \frac { 1 } { k ^ { p } } }$ diverges for $p \leq 1$ (b) Prove that ∑κ=1 s converges absolutely for $p > 1$ and all $_ x$ (c) Does $\scriptstyle \sum _ { k = 1 } ^ { \infty } { \frac { k ^ { 2 } - 1 } { k ^ { 3 } + k + 1 } }$ conerge? Whataboat $\scriptstyle \sum _ { k = 1 } ^ { \infty } { \frac { k ^ { 2 } - 1 } { k ^ { 4 } + k + 1 } } .$ (d) Do either of $\scriptstyle \sum _ { k = 1 } ^ { \infty } \cos ( 1 / k )$ or $\scriptstyle \sum _ { k = 1 } ^ { \infty } \sin ( 1 / k )$ converge?

3.(Ratio test） Discuss the convergence or divergence of

$$
\begin{array} { r l } & { \sum _ { k = 1 } ^ { \infty } \frac { k ! } { k ^ { k } } } \\ & { \sum _ { k = 1 } ^ { \infty } \frac { 2 ^ { k } k ! } { k ^ { k } } } \\ & { \sum _ { k = 1 } ^ { \infty } \frac { 3 ^ { k } k ! } { k ^ { k } } } \\ & { \sum _ { k = 1 } ^ { \infty } \frac { 3 ^ { k } k ! } { k ^ { k } } } \\ & { \sum _ { k = 1 } ^ { \infty } \frac { a ^ { k } k ! } { k ^ { k } } \mathrm { ~ ( W h a t ' s ~ t h e ~ c u t - o f f ~ f o r ~ } a ? ) } \end{array}
$$

4.The harmonic seriesint theonlyone:showthat $\scriptstyle \sum _ { k = 1 } ^ { \infty } \left( { \sqrt { k + 1 } } - { \sqrt { k } } \right)$ diverges even though $\operatorname* { l i m } _ { k  \infty } { ( { \sqrt { k + 1 } } - { \sqrt { k } } ) } = 0$ It wll behelpfhl ise

$$
\left( { \sqrt { k + 1 } } - { \sqrt { k } } \right) \left( { \sqrt { k + 1 } } + { \sqrt { k } } \right) = 1 .
$$

5.Prove thtif $\textstyle \sum _ { k = 1 } ^ { \infty } a _ { k } \to L$ and $\textstyle \sum _ { k = 1 } ^ { \infty } b _ { k } \to M$ ,then $\textstyle \sum _ { k = 1 } ^ { \infty } \left( a _ { k } + b _ { k } \right) \to L + M$ Prove that $\scriptstyle \sum _ { k = 1 } ^ { \infty } a _ { k } b _ { k }$ converges also. Does it converge to $L M$ ？Explain.

6.One of the consequences of the divergence of the harmonic series is that there are infinitely many primes. Here is an outline of a proof from Ivan Niven; rewrite,it filling in all the reasoning.

(a) Let ∑k<n denote the sum of the reciprocals of those numbers $k < n$ which are square-free (i.e. not divisible by the square of a whole number other than 1). Since every number is uniquely a product of a square and a square-free number

$$
\left( \sum _ { k < n } ^ { \prime } { \frac { 1 } { k } } \right) \left( \sum _ { j < n } { \frac { 1 } { j ^ { 2 } } } \right) \geq \sum _ { m < n } { \frac { 1 } { m } } .
$$

This shows that ∑k<n is unbounded (why?).

(b) $e ^ { x } > 1 + x$ (Corollary 2.4.12).

(c） Suppose that $\sum _ { p < n } { \frac { 1 } { p } }$ is bounded by $B$ ，where $p$ runs over primes less than $_ n$ . Then

$$
e ^ { B } > \exp \left( \sum _ { p < n } \frac { 1 } { p } \right) = \prod _ { p < n } \exp ( 1 / p ) > \prod _ { p < n } ( 1 + 1 / p ) \geq \sum _ { k < n } ^ { \prime } \frac { 1 } { k } .
$$

(d) There must be infinitely many primes.

7. The hyperbolic Bessel function $I _ { o } ( x )$ is given by the series

$$
I _ { 0 } ( x ) = \sum _ { k = 0 } ^ { \infty } \frac { x ^ { 2 k } } { 4 ^ { k } ( k ! ) ^ { 2 } } .
$$

(a) Discuss the convergence of this series for particular values of $_ { x }$ (b) Use the truncation estimate of Theorem 3.3.22 to approximate the error when the series for $I _ { 0 } ( 2 )$ is chopped off after 20 terms.

8. (Alternating series without betweenness theory). Let us write an alternating series as

$$
\sum _ { k = 0 } ^ { \infty } ( - 1 ) ^ { k } a _ { k } = a _ { 0 } - a _ { 1 } + a _ { 2 } - a _ { 3 } + \cdots ,
$$

sum where the $\scriptstyle \sum _ { k = 0 } ^ { m } ( - 1 ) ^ { k } a _ { k }$ $a _ { k }$ are non-negative and decreasing to $0$ . Denote by $S _ { n }$ the partial

(a) Prove that $S _ { n - 1 } \leq S _ { n } \leq S _ { n - 2 }$ if $_ { n }$ is even, and $S _ { n - 2 } \leq S _ { n } \leq S _ { n - 1 }$ if $_ n$ is odd.

(b） Use the previous part to show that

$$
| S _ { n } - S _ { m } | + | S _ { m } - S _ { n - 1 } | = | S _ { n } - S _ { n - 1 } |
$$

for $n < m$ . Explain why this gives us Cauchy convergence.

(c) Prove the two parts of the alternating series test (Corollary 3.3.33).

9. Show that the terms of this alternating series are eventually decreasing to $0$ for any $A$ ：

$$
1 - { \frac { A ^ { 2 } } { 2 ! } } + { \frac { A ^ { 4 } } { 4 ! } } - { \frac { A ^ { 6 } } { 6 ! } } + \cdot \cdot \cdot \pm { \frac { A ^ { 2 k } } { ( 2 k ) ! } } \mp \cdot \cdot \cdot
$$

(As far as convergence goes, however, it is actually absolutely convergent.) What will the truncation error be after $_ n$ terms?

10.In Exercise 2 on page 42 the numbers $\ln { 2 }$ and $\pi / 4$ were defined. Using these definitions, prove that

$$
\begin{array} { r l } & { \ln 2 = 1 - \frac { 1 } { 2 } + \frac { 1 } { 3 } - \frac { 1 } { 4 } + \cdot \cdot \cdot = \sum _ { k = 1 } ^ { \infty } ( - 1 ) ^ { k + 1 } \frac { 1 } { k } . } \\ & { \pi / 4 = 1 - \frac { 1 } { 3 } + \frac { 1 } { 5 } - \frac { 1 } { 7 } \cdot \cdot \cdot = \sum _ { k = 1 } ^ { \infty } ( - 1 ) ^ { k + 1 } \frac { 1 } { 2 k - 1 } . } \end{array}
$$

(Prove these statements by showing that the partial sums of these series lie in every one of the intervals defining the numbers $\ln 2$ and $\pi / 4$

11. The following sequence of ideas is borrowed from [Spivak, 1994]. We suppose that $f$ is a function on $\mathbb { R }$ with the property that $| f ( y ) - f ( x ) | \leq c | y - x |$ for all $x , y$ in some interval $I$ ，with $c < 1$ . Such a function is called a contraction map.

(a) Suppose that $\left( a _ { n } \right)$ is a sequence such that $| a _ { n } - a _ { n + 1 } | < c ^ { n }$ where $c < 1$ Prove that ( $u _ { n }$ ) is a Cauchy sequence. (Hint: Sum the series $c ^ { m } + c ^ { m + 1 } +$ $\cdots + c ^ { n }$ .）   
(b) Prove that for any $_ x$ ， the sequence $x , f ( x ) , f ( f ( x ) ) , f ( f ( f ( x ) ) ) , \ldots$ isa Cauchy sequence.   
(c) Use the previous part to show that $f$ has a fixed point (i.e. a number $_ u$ such that $f ( u ) = u$ ）   
(d) Prove that $f$ has only one fixed point.

12.Here is an outline of the proof of Dirichlet's test for conditional convergence (Theorem 3.3.38).

(a) Since $b _ { n } = B _ { n } - B _ { n - 1 }$ we have $\begin{array} { r } { \sum _ { k = 1 } ^ { n } a _ { k } b _ { k } = \sum _ { k = 1 } ^ { n - 1 } B _ { k } ( a _ { k } - a _ { k + 1 } ) + a _ { n } B _ { n } } \end{array}$ (this formula is sometimes called partial or Abel summation.)   
(b) $\begin{array} { r } { \sum _ { k = 1 } ^ { n - 1 } | B _ { k } ( a _ { k } - a _ { k + 1 } ) | \leq \sum _ { k = 1 } ^ { n - 1 } B ( a _ { k } - a _ { k + 1 } ) = \ ? } \end{array}$ S0 $\begin{array} { r } { \sum _ { k = 1 } ^ { n - 1 } B _ { k } ( { a } _ { k } - { a } _ { k + 1 } ) } \end{array}$ is absolutely convergent.   
(c） $a _ { n } B _ { n } \to 0$ ; why?   
(d） $\scriptstyle \sum _ { k = 1 } ^ { \infty } a _ { k } b _ { k }$ converges.

13. Prove that ∑=1 $\sum _ { k = 1 } ^ { \infty } \left( { \frac { k } { k + 1 } } \right) ^ { k ( k + 1 ) } { \mathrm { c o n v e r g e s } } .$

14. Basically, the alternating series test says that if ( to $0$ ，then the series $\scriptstyle \sum _ { k = 0 } ^ { \infty } ( - 1 ) ^ { k } a _ { k }$ converges. $a _ { k }$ ) is a sequence that decreases Show thatthis follows from Dirichlet's test (Theorem 3.3.38).

15. Prove that $\scriptstyle \sum _ { k = 1 } ^ { \infty } \left( \cos k x \right) / k$ converges provided $_ { x }$ is not a multiple of $2 \pi$ (see a similar proof for $\scriptstyle \sum _ { k = 1 } ^ { \infty } \left( \sin k x \right) / k$ in Example 3.3.39).

16. Prove that $\scriptstyle \sum _ { k = 1 } ^ { \infty } | ( \sin k x ) / k |$ diverges when $_ { x }$ is not a multiple of $\pi$ (we already know that it converges without the absolute value signs—see the previous exercise and Example 3.3.39).

(Hint: Use the formula:

$$
{ \frac { 1 } { k } } = { \frac { \cos ^ { 2 } k x - \sin ^ { 2 } k x } { k } } + { \frac { 2 \sin ^ { 2 } k x } { k } } = { \frac { \cos 2 k x } { k } } + { \frac { 2 \sin ^ { 2 } k x } { k } }
$$

and the fact that $\sum _ { k = 1 } ^ { \infty } { \frac { \cos 2 k x } { k } }$ converges to deduce that $\sum _ { k = 1 } ^ { \infty } { \frac { \sin ^ { 2 } k x } { k } }$ diverges.   
But $0 \leq \sin ^ { 2 } k x \leq | \sin k x |$ ）

17. Prove that $\sum _ { k = 1 } ^ { \infty } \left| { \frac { \cos k x } { k } } \right|$ diverges,using the ideas of the previous exercise.

18.Prove that $\sum _ { k = 1 } ^ { \infty } { \frac { \sin k } { k } } \left( 1 + { \frac { 1 } { 2 } } + \cdots + { \frac { 1 } { k } } \right)$ converges. (Hint: See Example 3.3.39 and look at $a _ { k } = { \frac { 1 } { k } } \left( 1 + { \frac { 1 } { 2 } } + \cdots + { \frac { 1 } { k } } \right)$

# Appendix I: Some Properties of Exp and Log

We prove here some properties of the exponential and logarithm function that were stated in Section 3.2.

PROPOSITION 3.2.11 For $n \in \mathbb N$ $( 1 + 1 / n ) ^ { n } \to e$ as $n \to \infty$

Proof. Put $\textit { a } = \textit { e }$ into the inequalities for $L ( a )$ in Remark 2.4.4. Noting that $L ( a ) = \log _ { e } ( a )$ (so $L ( e ) = 1$ ),we get the inequalities (for $0 < x < 1$ ）

$$
\frac { 1 } { e ^ { x } } - 1 \geq - x
$$

or

$$
e ^ { x } \leq { \frac { 1 } { 1 - x } } = 1 + { \frac { x } { 1 - x } }
$$

and

$$
x \leq e ^ { x } - 1
$$

or

$$
1 + x \leq e ^ { x } .
$$

Putting these together and taking $_ { x }$ th roots gives

$$
( 1 + x ) ^ { 1 / x } \leq e \leq \left( 1 + { \frac { x } { 1 - x } } \right) ^ { 1 / x } .
$$

(Note that the restriction $x < 1$ applies only to the right inequality.)

Let $_ { n }$ be an integer greater than 1. Taking $x = 1 / n$ ，we get $( 1 + 1 / n ) ^ { n } \leq e$ Taking $x = 1 / ( n + 1 )$ ， we get $e \leq ( 1 + 1 / n ) ^ { n + 1 }$ .But

$$
\left( 1 + { \frac { 1 } { n } } \right) ^ { n + 1 } = \left( 1 + { \frac { 1 } { n } } \right) ^ { n } + { \frac { 1 } { n } } \left( 1 + { \frac { 1 } { n } } \right) ^ { n } \leq \left( 1 + { \frac { 1 } { n } } \right) ^ { n } + { \frac { e } { n } } .
$$

Therefore

$$
e - { \frac { e } { n } } \leq \left( 1 + { \frac { 1 } { n } } \right) ^ { n } \leq e ,
$$

which shows that $| ( 1 + 1 / n ) ^ { n } - e | \leq e / n < 4 / n$ ■

PROPOSITION 3.2.12 For al $x > 0$ ， $x / ( 1 + x ) \leq \log ( 1 + x ) \leq x$

Proof. Taking logarithms of the two sides of the left inequality in $( * )$ ，we get $( 1 / x ) \log ( 1 + x ) \leq 1$ or $\log ( 1 + x ) \leq x$

By the right inequality in $( * )$ ，we have

$$
e \leq \left( 1 + \frac { t } { 1 - t } \right) ^ { 1 / t }
$$

for $0 < t < 1$ . Now let $x = t / ( 1 - t )$ in the inequality above to get

$$
e \leq ( 1 + x ) ^ { 1 + 1 / x } .
$$

Note that we have $x \in ( 0 , \infty )$ . Taking logarithms of both sides of the inequality above shows that

$$
1 \leq \left( 1 + { \frac { 1 } { x } } \right) \log ( 1 + x )
$$

or

$$
{ \frac { x } { 1 + x } } \leq \log ( 1 + x ) .
$$

As long as $a > 0$ , the exponential function $a ^ { x }$ dominates any power function $x ^ { k }$ That is the content of the following.

PROPOSITION 3.2.13 Giuen $n \in N$ ， $t > 0$ ，and $k \geq 0$ ，

$$
{ \frac { ( 1 + t ) ^ { n } } { n ^ { k } } } \to \infty { \mathrm { ~ a s ~ } } n \to \infty .
$$

Proof. Let $\lambda = \ln ( 1 + t )$ . Then $1 + t = e ^ { \lambda }$ , and therefore

$$
{ \frac { ( 1 + t ) ^ { n } } { n ^ { k } } } = e ^ { \lambda n - k \ln n } .
$$

Let $m = { \sqrt { n } }$ Then $\lambda n - k \ln n = \lambda m ^ { 2 } - 2 k \ln m$ ,and by Proposition 3.2.12, $\ln m \leq$ $m - 1 < m$ . So

$$
\lambda n - k \ln n \geq \lambda m ^ { 2 } - 2 k m = \sqrt { n } ( \lambda \sqrt { n } - 2 k ) .
$$

But

$$
\lambda \sqrt { n } - 2 k \geq 1 \iff n \geq \left( \frac { 1 + 2 k } { \lambda } \right) ^ { 2 } .
$$

Soif $\begin{array} { r } { n \ge \left( \frac { 1 + 2 k } { \lambda } \right) ^ { 2 } = \left( \frac { 1 + 2 k } { \ln ( 1 + t ) } \right) ^ { 2 } } \end{array}$ we hare:

$$
\begin{array} { l c l } { \frac { ( 1 + t ) ^ { n } } { n ^ { k } } } & { = } & { e ^ { \lambda n - k \ln n } } \\ & { \geq } & { e ^ { \sqrt { n } ( \lambda \sqrt { n } - 2 k ) } } \\ & { \geq } & { e ^ { \sqrt { n } } } \\ & { \geq } & { 1 + \sqrt { n } > \sqrt { n }  \infty } \end{array}
$$

COROLLARY 3.2.14 For $_ { x }$ with $| x | < 1$ and any $k \geq 0$ ， $n ^ { k } x ^ { n }  0$

Proof. By $\epsilon$ -trichotomy, we can separate into the cases $| x | > 0$ and $| x |$ within, say, $1 / 2$ of $0$ .For $| x | > 0$ ,let $1 / \left| x \right| = 1 + t$ .Then $t > 0$ ，and

$$
{ \frac { ( 1 + t ) ^ { n } } { n ^ { k } } } \to \infty \quad { \mathrm { i m p l i e s } } \quad { \frac { n ^ { k } } { ( 1 + t ) ^ { n } } } \to 0 ,
$$

so $n ^ { k } x ^ { n }  0$

For $| x |$ near $0$ ,take $\delta = ( 1 - | x | ) / 2$ and let $1 + t = 1 / ( | x | + \delta )$ . Now use the same proof. $\lfloor$

Just as exponential functions dominate powers of $_ x$ , log functions are dominated by powers of $_ { x }$ . More precisely, we have the following.

COROLLARY 3.2.16 If $n > 0$ then,for $x > 0$ ， $\textstyle { \frac { \ln x } { x ^ { n } } } \to 0$ as $x \to \infty$

Proof. Let $y = n \ln x$ ，s0 $x = e ^ { y / n }$ . Then

$$
{ \frac { \ln x } { x ^ { n } } } = { \frac { y / x } { e ^ { y } } } = ( 1 / x ) { \frac { y } { e ^ { y } } } \to 0
$$

by Proposition 3.2.13 above.■

PROPOSITION 3.2.17 $n ^ { 1 / n } \to 1$ as $n \longrightarrow \infty$

Proof. For all $n \in \mathbb N$ ， $n ^ { 1 / n } > 1$ . Therefore,to prove the proposition, we have to show that for each $\epsilon > 0$ ， $n ^ { 1 / n } \leq 1 + \epsilon$ for $n \geq$ some $N ( \epsilon )$ But

$$
n ^ { 1 / n } \leq 1 + \epsilon \iff n \leq ( 1 + \epsilon ) ^ { n } \iff \sqrt { n } \leq \frac { ( 1 + \epsilon ) ^ { n } } { \sqrt { n } } .
$$

From the proof of Proposition 3.2.13 above (taking $k = 1 / 2$ ),this last inequality will hold providing $\begin{array} { r } { n \ge \left( \frac { 2 } { \ln ( 1 + \epsilon ) } \right) ^ { 2 } } \end{array}$

COROLLARY 3.2.18 For any polynomial $P ( n ) = a _ { 0 } + a _ { 1 } n + \cdot \cdot \cdot + a _ { k } n ^ { k }$ with $a _ { k } > 0$ ， $( P ( n ) ) ^ { 1 / n } \to 1$ as $n \longrightarrow \infty$

# Appendix Il: Rearrangements of Series

DEFINITION 3.3.42 A rearrangementof q series $\scriptstyle \sum _ { k = 0 } ^ { \infty } s _ { k }$ is q series $\scriptstyle \sum _ { k = 0 } ^ { \infty } t _ { k }$ where each term of the first series appears exactly once in the second, and each term of the second appears exactly once in the first.

A more technical way of saying this is to define a permutation of the natural ience $\sigma : \mathbb { N }  \mathbb { N }$ $o$ $\scriptstyle \sum _ { k = 0 } ^ { \infty } s _ { k }$ $\scriptstyle \sum _ { k = 0 } ^ { \infty } s _ { \sigma ( k ) }$ $O$

EXAMPLE 3.3.43 Starting with $s _ { 0 } + s _ { 1 } + s _ { 2 } + s _ { 3 } + \cdot \cdot \cdot$ ， we group consecutive even and odd terms:

$$
\underbrace { s _ { 0 } } _ { t _ { 0 } } + \underbrace { s _ { 2 } } _ { t _ { 1 } } + \underbrace { s _ { 1 } } _ { t _ { 2 } } + \underbrace { s _ { 3 } } _ { t _ { 3 } } + \underbrace { s _ { 4 } } _ { t _ { 4 } } + \underbrace { s _ { 6 } } _ { t _ { 5 } } + \underbrace { s _ { 5 } } _ { t _ { 6 } } + \underbrace { s _ { 7 } } _ { t _ { 7 } } + \underbrace { s _ { 7 } } _ { t _ { 7 } } + \cdot \cdot \cdot
$$

This corresponds to the permutation $o$ where

$$
\sigma ( 4 k + r ) = \left\{ \begin{array} { l l } { 4 k + r } & { i f r = 0 \ o r \ 3 } \\ { 4 k + r + 1 } & { i f r = 1 } \\ { 4 k + r - 1 } & { i f r = 2 } \end{array} \right. .
$$

(Note that any natural number $_ { n }$ can be written uniquely at $4 k + r$ where $0 \leq r < 4$ is the remainder when $_ { n }$ is divided by 4).

What happens to convergence when we rearrange? Answer: it's unpredictable. Here's a classic example.

EXAMPLE 3.3.44 We have seen that the alternating harmonic series $1 - \frac { 1 } { 2 } + \frac { 1 } { 3 } -$ ${ \frac { 1 } { 4 } } + \cdots$ converges to some number $L$ . (We will see in a later chapter that $L = \ln 2$ ） Now consider the rearrangement formed when we pair one positive term with two negative ones and add them.

$$
{ \begin{array} { r l } & { \left( 1 - { \frac { 1 } { 2 } } - { \frac { 1 } { 4 } } \right) + \left( { \frac { 1 } { 3 } } - { \frac { 1 } { 6 } } - { \frac { 1 } { 8 } } \right) + \left( { \frac { 1 } { 5 } } - { \frac { 1 } { 1 0 } } - { \frac { 1 } { 1 2 } } \right) + \cdots } \\ { = } & { \left( 1 - { \frac { 1 } { 2 } } \right) - { \frac { 1 } { 4 } } + \left( { \frac { 1 } { 3 } } - { \frac { 1 } { 6 } } \right) - { \frac { 1 } { 8 } } + \left( { \frac { 1 } { 5 } } - { \frac { 1 } { 1 0 } } \right) - { \frac { 1 } { 1 2 } } + \cdots } \\ { = } & { { \frac { 1 } { 2 } } - { \frac { 1 } { 4 } } + { \frac { 1 } { 6 } } - { \frac { 1 } { 8 } } + { \frac { 1 } { 1 0 } } - { \frac { 1 } { 1 2 } } + \cdots } \\ { = } & { { \frac { 1 } { 2 } } \left( 1 - { \frac { 1 } { 2 } } + { \frac { 1 } { 3 } } - { \frac { 1 } { 4 } } + { \frac { 1 } { 5 } } - { \frac { 1 } { 6 } } + \cdots \right) } \\ { = } & { { \frac { 1 } { 2 } } L } \end{array} }
$$

Thus, the rearranged series converges to half the sum of the original (i.e. to $\scriptstyle { \frac { 1 } { 2 } } \ln 2$ ）

This may seem unfair-we are going through negative terms twice as fast as positive one-until you realize the we eventually account for every positive term (the curious nature of infinity).

So we see that a rearrangement of a series may not converge to the same thing as the original. This means that one must be very careful in trying to compute limits of series. The issue arises, for example, in defining the product of two series $\begin{array} { r } { \left( \sum _ { k = 0 } ^ { \infty } s _ { k } \right) \left( \sum _ { k = 0 } ^ { \infty } t _ { k } \right) } \end{array}$ Frttelytrot absolutely.

PROPOSITION 3.3.45 If $\scriptstyle \sum _ { k = 0 } ^ { \infty } s _ { k }$ converges absolutely to $L$ , then any rearrangement $\scriptstyle \sum _ { k = 0 } ^ { \infty } t _ { k }$ also converges absolutely to $L$

Proof. Since $\scriptstyle \sum _ { k = 0 } ^ { \infty } | s _ { k } |$ converges, given any $\epsilon > 0$ , we can find an $M ^ { \prime }$ such that

$$
\sum _ { k = m + 1 } ^ { \infty } \left| s _ { k } \right| = \sum _ { k = 0 } ^ { \infty } \left| s _ { k } \right| - \sum _ { k = 0 } ^ { m } \left| s _ { k } \right| < \epsilon / 2
$$

whenever $m \geq M ^ { \prime }$ . This is a restatement of tail convergence (Proposition 3.3.11).

$\scriptstyle \sum _ { k = 0 } ^ { \infty } s _ { k } = L$ $\epsilon$ $M ^ { \prime \prime }$

$$
\left| \left( \sum _ { k = 0 } ^ { m } s _ { k } \right) - L \right| < \epsilon / 2
$$

whenever $m \geq M ^ { \prime \prime }$ . Now let $M = \operatorname* { m a x } ( M ^ { \prime } , M ^ { \prime \prime } )$

Finally, choose $N$ so large that the terms $s _ { 0 } , \ldots , s _ { M }$ are among the $t _ { 0 } , \ldots , t _ { N }$ (this can be done since $M$ is just a finite number). Suppose $n \geq N$ . If we subtract $\sum _ { k = 0 } ^ { M } s _ { k }$ from $\scriptstyle \sum _ { k = 0 } ^ { \pi } t _ { k }$ , we are left with terms $s _ { i }$ whose subscripts are bigger than $M$ . Thus

$$
\left| \sum _ { k = 0 } ^ { n } t _ { k } - \sum _ { k = 0 } ^ { M } s _ { k } \right| \leq \left| \sum _ { k = M + 1 } ^ { \infty } s _ { k } \right| \leq \sum _ { k = M + 1 } ^ { \infty } \left| s _ { k } \right| < \epsilon / 2 .
$$

Now we have

$$
\left| \left( \sum _ { k = 0 } ^ { n } t _ { k } \right) - L \right| \leq \left| \sum _ { k = 0 } ^ { n } t _ { k } - \sum _ { k = 0 } ^ { M } s _ { k } \right| + \left| \left( \sum _ { k = 0 } ^ { M } s _ { k } \right) - L \right|
$$

Having proved that the rearrangement converges,we deduce that the rearrangement $\scriptstyle \sum _ { k = 0 } ^ { \infty } t _ { k }$ convergesabsolutely bcause $\scriptstyle \sum _ { k = 0 } ^ { \infty } | t _ { k } |$ is a rearrangement of $\scriptstyle \sum _ { k = 0 } ^ { \infty } | s _ { k } |$

In view of this result, there are a number of possibilities for defining the product $\begin{array} { r } { \left( \sum _ { k = 0 } ^ { \infty } s _ { k } \right) \left( \sum _ { k = 0 } ^ { \infty } t _ { k } \right) } \end{array}$ as a series when cach of $\scriptstyle \sum _ { k = 0 } ^ { \infty } s _ { k }$ and $\scriptstyle \sum _ { k = 0 } ^ { \infty } t _ { k }$ converge

absolutely. We just have to find a systematic way of adding allof the products $s _ { i } t _ { j }$ One of the standard ways is to add them on diagonals:

$$
\begin{array} { c c c c c c c c c c c c c c c c c c c c c c } { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & { { } } & \end{array}
$$

If w define $\begin{array} { r } { c _ { n } = \sum _ { i = 0 } ^ { n } s _ { i } t _ { n - i } } \end{array}$ ,then $\textstyle \sum _ { n = 0 } ^ { \infty } c _ { n }$ is a candidate for $\begin{array} { r } { \left( \sum _ { k = 0 } ^ { \infty } s _ { k } \right) \left( \sum _ { k = 0 } ^ { \infty } t _ { k } \right) } \end{array}$ it is called the Cauchy product of the series. When either one or both of the series fails to converge absolutely, the Cauchy product may also fail to converge (see below). On the other hand, we have the following general result.

PROPOSITION 3.3.46 Suppose $\scriptstyle \sum _ { k = 0 } ^ { \infty } s _ { k }$ and $\scriptstyle \sum _ { k = 0 } ^ { \infty } t _ { k }$ converge absolutely to $S$ and $T$ respectively, and suppose the sequence $s _ { i } t _ { j }$ in some order. Then $\scriptstyle \sum _ { k = 0 } ^ { \infty } u _ { k }$ Co $u _ { 0 } , u _ { 1 } , \ldots , u _ { n } , \ldots .$ contains exactly the products to $S T$

Proof. We sketch the proof found in [Spivak, 1994]. If we define

$$
P _ { L } = \sum _ { k = 0 } ^ { L } \left| s _ { k } \right| \sum _ { k = 0 } ^ { L } \left| t _ { k } \right| ,
$$

then the sequence $( P _ { L } )$ converges to $S T$ . This makes ( $P _ { L }$ ） a Cauchy sequence so, for any $\epsilon > 0$ and $L$ and $L ^ { \prime }$ large enough,

$$
\left| \sum _ { k = 0 } ^ { L ^ { \prime } } \left| s _ { k } \right| \sum _ { k = 0 } ^ { L ^ { \prime } } \left| t _ { k } \right| - \sum _ { k = 0 } ^ { L } \left| s _ { k } \right| \sum _ { k = 0 } ^ { L } \left| t _ { k } \right| \right| < \epsilon / 2 .
$$

It follows that.∑_ |sil·Itjl ≤∈/2. Now suppose that $N$ is an integer large $_ i$ or   
enough that the terms $u _ { 0 } , \ u _ { 1 }$ ，..， $u _ { N }$ contain every product $s _ { i } t _ { j }$ for $i , j ~ \leq ~ L$   
Then $\begin{array} { r } { \sum _ { k = 0 } ^ { N } u _ { k } - \sum _ { i = 0 } ^ { L } s _ { i } \sum _ { j = 0 } ^ { L } t _ { j } } \end{array}$ contains only terms $s _ { i } t _ { j }$ where $i > L$ 0r $j > L$   
consequently

$$
\left| \sum _ { k = 0 } ^ { N } u _ { k } - \sum _ { i = 0 } ^ { L } s _ { i } \sum _ { j = 0 } ^ { L } t _ { j } \right| \leq \sum _ { \textit { i } \mathrm { o r } \textit { j } > L } | s _ { i } | \cdot | t _ { j } | \leq \epsilon / 2 .
$$

Also, for $L$ big enough, we have

$$
\left| \sum _ { i = 0 } ^ { \infty } s _ { i } \sum _ { j = 0 } ^ { \infty } t _ { j } - \sum _ { i = 0 } ^ { L } s _ { i } \sum _ { j = 0 } ^ { L } t _ { j } \right| < \epsilon / 2 .
$$

$\begin{array} { r } { \mathrm { W e ~ n o w ~ m a k e } \Big | \sum _ { i = 0 } ^ { \infty } s _ { i } \sum _ { j = 0 } ^ { \infty } t _ { j } - \sum _ { k = 0 } ^ { N } u _ { k } \Big | } \end{array}$ smal y the triage nquality

For more on this, see Exercise 10 on page 252.

# Exercises

1. Let $\begin{array} { r } { \sum _ { k = 0 } ^ { \infty } s _ { k } = \sum _ { k = 0 } ^ { \infty } t _ { k } = \sum _ { k = 0 } ^ { \infty } ( - 1 ) ^ { k } / \sqrt { k } } \end{array}$ Thesetoeriescoee butnot absolutely; show that their Cauchy product does not converge.

2tf $\scriptstyle \sum _ { k = 0 } ^ { \infty } s _ { k }$ terms $s _ { k }$ are rational numbers. If the original series converges conditionally, prove that the sums of the non-negative and non-positive terms each diverge.

3. Suppose that $\scriptstyle \sum _ { k = 0 } ^ { \infty } s _ { k }$ coeel $s _ { k }$ are ratio\~ nal numbers (see the previous exercise). Show that, for any rational number $P$ ,there is somerearrangementof theterms, $\scriptstyle \sum _ { k = 0 } ^ { \infty } t _ { k }$ ,such that

$$
\sum _ { k = 0 } ^ { \infty } t _ { k } = P .
$$

(Hint: Suppose for the sake of argument that $P > 0$ . Since the non-negative terms of ( $s _ { k }$ ） diverge,add them until their sum is greater than $P$ . Now start adding non-positive terms until the sum is $<  { P }$ .Keep doing this. Since $\operatorname* { l i m } _ { k \to \infty } { s _ { k } = 0 }$ , these sums approach $P$ as a limit.)

The reason we have to work with rational numbers here is that we have to make comparisons in size,and that is not always possible with arbitrary reals.

