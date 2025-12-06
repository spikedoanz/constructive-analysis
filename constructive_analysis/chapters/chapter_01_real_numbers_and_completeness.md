# 1. THE REAL NUMBERS AND COMPLETENESS

# 1.0 Introduction

The real numbers are much more complicated than the integers or the rationals. A popular representation presents them as “infinite”decimals. Those infinite decimals that eventually repeat represent the rationals. Thus, for example, 3787 $\frac { 3 7 8 7 } { 9 9 0 0 }$ is represented as $0 . 3 8 2 5 2 5 2 5 2 5 \ldots = 0 . 3 8 2 5$ ,where the bar over the 25 indicate that it repeats. On the other hand, the infinite decimal representing $\sqrt { 2 }$ ,1.414213562...,. never repeats.Although we can define the collection of reals in this way, there are problems, the biggest one being how to define the arithmetic operations. For example, in order to add two infinite decimals,we have to “start” somewhere—at some decimal place “on the right.”But then we have the problem of carries: some addition of digits to the right of where we start may require a carry that could effect the digits at or to the left of where we start.There is no simple way of dealing with this difficulty: any solution involves more and more complications.Furthermore,we lose the simplicity of rationals since even simple ones such as 3/17 involve complicated, repeating,infinite decimals.

There have been several classical constructions of the reals that avoid these problems,the most famous ones being Dedekind Cuts and Cauchy Sequences, named respectively for the mathematicians Richard Dedekind (1831 - 1916) and Augustine Cauchy (1789 - 1857). We will not discuss these constructions here, but will use a more modern one developed by Gabriel Stolzenberg,based on“interval arithmetic." There are several advantages to this approach. The first is that we deal exclusively with rational numbers and their arithmetic (so we avoid the diffculties inherent in the infinite decimals approach). Secondly, as we discuss below, intervals of rational numbers are very much like scientific measurements,which, because of the fallibility of our instruments,are actually ranges of possible values. Finally, the analogy between interval arithmetic and scientific measurement allows us to apply theoretical results from the former to produce applications to the latter in the study of errors and error propagation.

So we begin with the study of rational intervals: $\lfloor r , s \rfloor$ ，where $r \leq s$ are rational numbers.We define their arithmetic—i.e.how to add, subtract, multiply,and divide them (as well as a few other manipulations).We also define the length of $\lfloor r , s \rfloor$ to be $s - r$ ， providing a measure of the “accuracy” of a measurement represented by this interval. Having done this,we turn to collections or families of rational intervals (representing a sequence or set of measurements). We define similar arithmetic operations on these families and then define two important properties that a family of intervals may have. The first of these, consistency, stipulates that any two intervals in the family intersect. The second, fineness, demands that the family contain intervals of arbitrarily small length. While this is seldom realizable in the real world, such a family can arise mathematically by taking partial sums of approximating series or other convergent numerical procedures. In fact, we will eventually define convergence using this idea.

Our principle definition is that a real number is a fine and consistent family of rational intervals. We will show that such families inherit the standard arithmetic operations (addition,multiplication,absolute value, etc.） from the rationals; indeed, we will prove all the usual properties of real numbers necessary to deal with algebraic equations and inequalities. Finally, we end by proving the central property that distinguishes the reals from the rationals: completeness. This takes the form of proving that any fine and consistent family of real intervals contains a unique real number common to all the intervals. Applications of completeness will be found throughout the following chapters,especially in the constructions of $_ { n }$ th roots,exponential functions and logs, limits of series and functions,and the Riemann integral.

# 1.1 Interval Arithmetic

When a quantity—say a charge or weight, or volume—is measured, the instruments and methods used generally have a known or estimable accuracy. A numerical reading, say 5.647, usually comes with an error estimate, say $\pm 0 . 0 0 5$ . Thus, the quantity being measured lies in the range $5 . 6 4 7 \pm 0 . 0 0 5$ ，so is bounded below by 5.642 and above by 5.652. We can represent this by the interval [5.642,5.652]. Since instruments read out either digitally or by dials and scales, the possible measurements resulting from this experiment are rational numbers lying in this interval. We now make some formal definitions related to this idea.

DEFINITION 1.1.1 $I$ is a rational interval means $I = \lfloor r , s \rfloor$ ,where $\boldsymbol { r }$ and s are rational numbers and $r \leq s$ . The intervals $\lfloor r , s \rfloor$ and $\lfloor u , v \rfloor$ are equal precisely when $r = u$ and $s = v$

DEFINITION 1.1.2 $x \in \left\lfloor r , s \right\rfloor$ means that $_ { x }$ is a rational number and $r \leq x \leq s$

The rational numbers $r$ and $s$ are called the endpoints of the interval $\lfloor r , s \rfloor$ . Please note that these definitions are fairly abstract.An interval is not defined to be a set but simply a symbol $\lfloor r , s \rfloor$ .Unlike set theory,we define the membership relation $\in$ If you don't feel comfortable at this point with this degree of abstraction, that's ok: no harm will result if you think of the interval $\lfloor r , s \rfloor$ as simply the set of rationals bounded by the endpoints $r$ and $s$

EXAMPLE 1.1.3 $\lfloor 2 / 5 , 1 / 2 \rfloor = \lfloor 6 / 1 5 , 2 / 4 \rfloor$ and 7/15 ∈ [2/5,1/2],since $2 / 5 \le 7 / 1 5 \le$ $1 / 2$

We will often use the following notation: $I = \lfloor r , s \rfloor ; J = \lfloor u , v \rfloor$ $K = \left\lfloor p , q \right\rfloor$ where $r \leq s , \ u \leq v$ ,and $p \leq q$ are rational numbers.

DEFINITION 1.1.4（INCLUSION OF INTERVALS） $\left| r , s \right| \subset \left| u , v \right|$ (or $J \supset I$ ）means that $u \leq r$ and $s \leq v$

Note that， since intervals are determined solely in terms of their endpoints, this property has been defined solely in terms of endpoints. It's usually a good idea to draw a picture to see intuitively what some condition means,so here is the picture for inclusion of intervals:

![](images/32b9e2c34adc2d469f5c850078aa585bc647abde8488754287c62ca213e37c58.jpg)

Here is a model for how proofs should go. It is a bit more wordy than it has to be,but that's ok for now.

PROPOSITION 1.1.5 $I \subset J$ and $J \subset K$ implies that $I \subset K$ . (More concisely: $I \subset J$ and $J \subset K \Longrightarrow I \subset K$ ）

Proof. First we write the intervals in term of their endpoints: $I = [ r , s ] , J = [ u , v ]$ ， and $K = \lfloor p , q \rfloor$ .Now we go back to Definition 1.1.4 (and the above diagram） to unravel what our assumptions are saying:

$$
\begin{array} { c c l } { I } & { \subset } & { J \ \mathrm { m e a n s } \ u \leq r \ \mathrm { a n d } \ s \leq v } \\ { J } & { \subset } & { K \ \mathrm { m e a n s } \ p \leq u \ \mathrm { a n d } \ v \leq q . } \end{array}
$$

We must apply the definition now to compare $I$ and $K$ using their endpoints.We can write $p \leq u \leq r$ and $s \leq v \leq q$ . We conclude from these that $p \leq r$ and $s \leq q$ which,according to the definition, means $I \subset K$ . This is what we wanted to prove.

The next two propositions assert that three statements “are equivalent.”This means that when any one of them is true,so are each of the others. Thus,if the three statements are (1),(2),and (3), then we are actually making $s i x$ assertions: $( 1 ) \implies ( 2 )$ ， $( 1 ) \implies ( 3 )$ ， $( 2 ) \implies ( 1 )$ ， $( 2 ) \implies ( 3 )$ ， $( 3 ) \implies ( 1 )$ and (3）= (2). However, you don't have to prove six separate implications, because it sufices to prove only $( 1 ) \Longrightarrow ( 2 )$ ， $( 2 ) \Longrightarrow ( 3 )$ ，and $( 3 ) \Longrightarrow ( 1 )$ . If we know these three, then, for example, $( 2 ) \implies ( 3 ) \implies ( 1 )$ ， so we get $( 2 ) \Longrightarrow$ (1).The full proofs are left as exercises, though we include a piece of one to show what is expected.

PROPOSITiON 1.1.6 The following are equivalent:

1. $I \subset J$   
2. $x \in I \Longrightarrow x \in J$

# 3. J contains the endpoints of $I$

Proof. We will prove just $( 1 ) \implies ( 2 )$ . Suppose, then,that（1） holds,so we are given $I \subset J$ . With our usual notation, this means that $u \leq r$ and $s \leq v$ (see diagram above also). We must use this to prove $x \in I \Longrightarrow x \in J$ ， so assume that $x \in I$ By the definition of $\in$ above,this means that $r \leq x \leq s$ .But,combining this with $u \leq r$ and $s \leq v$ , we can write: $u \leq r \leq x \leq s \leq v$ ，S0 $u \leq x \leq v$ ,which means that $x \in J$

PROPOsITiON 1.1.7 The following are equivalent:

1. $I = J$   
2. $x \in I \Longleftrightarrow x \in J$   
3. $I \subset J$ and $J \subset I$

We now give the definitions of the fundamental arithmetic operations on intervals, also in terms of endpoints. Suppose, then, that $I = \lfloor r , s \rfloor$ and $J = \lfloor u , v \rfloor$

DEFINITION 1.1.8 （ADDITION OF INTERVALS) $I + J$ is the interval $\left[ r + u , s + v \right]$

DEFINITION 1.1.9 （NEGATION OF INTERVALS） $- I$ is the interval $\lfloor - s , - r \rfloor$

DEFINITION 1.1.10 （SUBTRACTION OF INTERVALS） $J - I$ is the interval $\begin{array} { r l } { J + ( - I ) = } \end{array}$ $\left[ u - s , v - r \right]$

NOTATION 1.1.11 （THE O INTERVAL） We will occasionally denote the interval $[ 0 , 0 ]$ simply by 0.

Note that $I - I = [ r , s ] + [ - s , - r ] = [ r - s , s - r ]$ which is not in general equal to the interval O; however,we do have the following result.

PROPOSITION 1.1.12 For all intervals $I$ ， $0 \in I - I$ (Question: for which intervals $I$ is it true that $I - I = [ 0 , 0 ]$ ？)

DEFINITION 1.1.13 （MULTIPLICATION OF INTERVALS） For $I = [ r , s ]$ and $J = \lfloor u , v \rfloor$

$$
\begin{array} { r } { I J = [ \operatorname* { m i n } ( r u , r v , s u , s v ) , \operatorname* { m a x } ( r u , r v , s u , s v ) ] . } \end{array}
$$

When the intervals are “non-negative,” their product is much simpler:

However, with negative endpoints the situation is more complicated. For example,

$$
[ - 3 , 2 ] [ 4 , 5 ] = [ - 1 5 , 1 0 ] .
$$

This definition of the product of two intervals, as you might expect,turns out to be rather difficult to apply when computing successive multiplications of intervals.

Fortunately, there is another way of determining intervals that doesn't depend explicitly on their endpoints,but rather characterizes them in terms of some property $P$ . This kind of definition is very common in abstract mathematics and takes some getting used to.

DEFINITioN 1.1.14 I is the smallest interval having the property $P$ means

1. I has the property $P$ ，and

2.if $J$ also has property $P$ ， then $J \supset I$

What do we mean by a property $P$ ？ $P$ is simply a statement about an interval which may or may not be true. For example, $P$ might be the statement “The interval contains all the rationals between 2 and 3.” This particular statement is true about some intervals—for example, $\lfloor 3 / 2 , 7 / 2 \rfloor$ or [2,3]—and false about others for example, $\lfloor 0 , 1 \rfloor$ (which doesn't contain any rationals between 2 and 3),or $\lfloor 5 / 2 , 9 / 2 \rfloor$ (which doesn't contain all rationals between 2 and 3).

For $I$ to be“smallest” for a property $P$ ， not only does $P$ have to hold for the interval $I$ ,but any interval for which $P$ also holds must contain $I$ .Thus, [2,3] is actually the smallest interval containing all the rationals between 2 and 3; i.e., it's smallest for this particular property. Here's a proof of this fact in somewhat more generality. It shows how this kind of argument works.

PROPOSITION 1.1.15 $\lfloor r , s \rfloor$ is the smallest interval containing all rationals between $r$ and $s$

Proof. We must verify two things: that $\lfloor r , s \rfloor$ actually has this property—i.e. that it contains all rationals between $r$ and $s$ —and that any other interval containing these rationals actually contains $\lfloor r , s \rfloor$

So, let's show that $\lfloor r , s \rfloor$ has the property. Suppose $_ x$ is a rational between $r$ and $s$ ; this means that $r \leq x \leq s$ . By Definition 1.1.2, this means that $x \in \left\lfloor r , s \right\rfloor$ . Thus, $\lfloor r , s \rfloor$ does actually contain all these rationals.

Now, suppose that $K$ is any other interval containing al rationals between $r$ and $s$ .Since both $r$ and $s$ are themselves rationals between $r$ and $s$ , it follows that $K$ contains the endpoints $r$ and $s$ . By Proposition 1.1.6, $I \subset K$ and we are done. □

We should note that， for a given property $P$ , there may not be any rational interval which is smallest for $P$ . (For example, let $P$ be the property “The interval contains all $_ { x }$ with $x ^ { 3 } > 2$ .").However, if there is a smallest,it is unique in the following sense.

PROPOSITION 1.1.16 If $I$ and $J$ are both smallest intervals with the property $P$ ， then $I = J$

(This is left as an exercise. Hint: prove this using Proposition 1.1.7 which characterizes equality of intervals.）

We now apply this “smallest interval” idea to give alternative characterizations for the various operations on rational intervals.

# PROPOSITION 1.1.17

1. $I + J$ is the smallest interval containing all $x + y$ ，with $x \in I$ and $y \in J$

2. $- I$ is the smallest interval containing all $- x$ with $x \in I$

3. IJ is the smallest interval containing all xy with $x \in I$ and $y \in J$

Proof. We will just prove part (3)，which is the trickiest. The property here is “contains all $x y$ with $x \in  { I }$ and $y ~ \in ~ J$ .”We must first show that $I J$ has this property,i.e. that it contains all these $x y$ .Suppose then that $x \in I$ ，S0 $r \leq x \leq s$ Hence, if $y \geq 0$ ,then $r y \le x y \le s y$ and if $y < 0$ ，then $s y \leq x y \leq r y$ . So in either case, $x y$ lies between $r y$ and $s y$ . By the same reasoning,when $u \leq y \leq v$ ，we have that $r y$ must be between $r u$ and $r v$ ,and $s y$ between $s u$ and $s v$

Therefore in all cases $x y$ is between the minimum and the maximum of the four products $r u , r v , s u , s v$ ．By definition, then $x y$ isin $I J$ .This proves the first half of what we need. Now suppose that some other interval (we could call it $K$ ）also contains all of these $x y$ .We must show that $I J \subset K$ .From the definition of the product $I J$ ，we see that both endpoints of $I J$ are of the form $x y$ with $x \in I$ and $y \in J$ （ $_ x$ is either $r$ or $s$ ，and $_ y$ is either $_ u$ or $\boldsymbol { v }$ ).Hence any interval $K$ that contains all such products must contain these endpoints and therefore the entire interval $I J$ (see Proposition 1.1.6).

The two remaining parts of this proposition are left for the exercises at the end of this section.■

Now we turn to the “strict” inequality of intervals.

DEFINITION 1.1.18 （STRICT INEQUALITY FOR INTERVALS) $I < J$ (also written $J >$ $I$ ）means that $s < u$ ：

Here is a simple picture of this.

$$
{ \operatorname { \underbrace { \stackrel { \mathrm { r } } { \longleftrightarrow } \quad \quad } } { \operatorname { \longrightarrow } \quad \quad } } \operatorname { \mathrm { g a p } } _ { \mathrm { ( s < u ) } } ^ { \mathrm { u } } { \frac { \mathrm { v } } { \longleftrightarrow \quad } }
$$

Intuitively, if the intervals represent scientific measurements of quantities $P$ and $Q$ , and if the intervals overlap (so there is no gap),we could not conclude anything about the relative sizes of $P$ and $Q$ .For example, if [1,3] measures a quantity $P$ and [2,5] measures $Q$ ，then $P < Q , Q < P$ and $P = Q$ are all possible.Of course, we haven't yet defined any “objects” other than rationals,nor relations such as $<$ ， $>$ ， or = between anything other than rationals—this is just a suggestion for why we make this definition instead of one based on the length of the intervals or based on the $\subset$ relation.

PROPOSITION 1.1.19 $I < J$ if and only if $0 < J - I$

As long as we keep away from zero, we can define reciprocals, and from them, division.

DEFINITION 1.1.20 （RECIPROCAL） For $I > 0$ or $I < 0$ ， $1 / I$ is the interval $\lfloor 1 / s , 1 / r \rfloor$

Note that this makes sense because if either $0 < r \le s$ ，or $r \leq s < 0$ ，then $1 / s \le 1 / r$ S0 $\lfloor 1 / s , 1 / r \rfloor$ is actually an interval,which it wouldn't be if $\lfloor r , s \rfloor$ contained $0$ (check $\lfloor - 2 / 3 , 1 \rfloor$ for example).

PROPOSITION 1.1.21 For any $I > 0$ or $I < 0$ ， $1 / I$ is the smallest interval containing all $1 / x$ for $x \in I$

If we think of a rational interval as the result of a scientific measurement, then the length of the interval is an indication of how good (accurate) the measurement is.

DEFINITION 1.1.22 (LENGTH) $\ell ( I ) = s - r$ is the length of $\lfloor r , s \rfloor$

PROPOSITION 1.1.23 $\ell ( I + J ) = \ell ( I ) + \ell ( J )$

PROPOSITION 1.1.24 $\ell ( - I ) = \ell ( I )$

There is no very simple formula for the lengths of products or reciprocals of interval in terms of the lengths of the intervals themselves； however,we can get some inequalitites which will be useful later. We deal with reciprocals first. We must keep away from zero!

PROPOSITION 1.1.25 Suppose $I = \lfloor r , s \rfloor$ and $c$ is a any number such that $0 < c \leq r$ ： then $\ell ( 1 / I ) \leq \ell ( I ) / c ^ { 2 }$

Proof. $\ell ( 1 / I ) = 1 / r - 1 / s = ( s - r ) / r s = \ell ( I ) / r s$ . A fraction is biggest when its denominator is smallest,and $c \leq r \leq s$ tells us that $r s$ is never smaller than $c ^ { 2 }$ Therefore $\ell ( 1 / I ) \leq \ell ( I ) / c ^ { 2 }$ ■

When $r \geq c$ and $c > 0$ ，we sometimes say that‘ $_ c$ bounds $I$ away from 0.” A shorthand way of writing the condition is $I \subset \lfloor c , \infty )$ with $c > 0$ . We can also bound an interval away from O in the negative direction and get a similar result (left as an exercise):

PROPOSITION 1.1.26 Suppose $I \subset ( - \infty , d )$ where $d < 0$ . Then $\ell ( 1 / I ) \leq \ell ( I ) / d ^ { 2 }$

Now we turn to multiplication.

PROPOSITION 1.1.27 Let $A$ and $B$ be positive rationals such that $I \subset \lfloor - A , A \rfloor$ and $J \subset [ - B , B ]$ . Then $\ell ( I J ) \leq B \ell ( I ) + A \ell ( J )$

Proof. By definition $I J = \left\lfloor a b , c d \right\rfloor$ where $^ { a }$ and $c$ are endpoints of $I = \lfloor r , s \rfloor$ (in some order）and $b$ and $d$ are endpoints of $J = \lfloor u , v \rfloor$ . Therefore

$$
\begin{array} { l c l } { { \ell ( I J ) } } & { { = } } & { { c d - a b = c d - a d + a d - a b } } \\ { { } } & { { } } & { { } } \\ { { } } & { { = } } & { { d ( c - a ) + a ( d - b ) } } \end{array}
$$

with $\vert d \vert \le B$ ， $| a | \le A$ ， $| c - a | \leq \ell ( I )$ and $| d - b | \leq \ell ( J )$ . Here is our first of many applications of the Triangle Inequality 0.2.9:

$$
\begin{array} { r c l } { \ell ( I J ) } & { = } & { | \ell ( I J ) | \ \mathrm { ( s i n c e ~ t h e y ~ a r e ~ b o t h ~ p o s i t i v e ) } } \\ & { = } & { | d ( c - a ) + a ( d - b ) | } \\ & { \leq } & { | d ( c - a ) | + | a ( d - b ) | \ \mathrm { ( T r i a n g l e ~ I n e q u a l i t y ! ) } } \\ & { = } & { | d | \left| c - a \right| + | a | \left| d - b \right| \ \mathrm { ( p r o p e r t i e s ~ o f ~ o r d i n a r y ~ a b s . ~ v a l . ) } } \\ & { \leq } & { B \ell ( I ) + A \ell ( J ) . } \end{array}
$$

Note that $\lfloor r , s \rfloor \subset \lfloor - A , A \rfloor$ is simply saying that $0 \leq | r | \leq A$ and $0 \leq | s | \leq A$ .The inequality $\ell ( I J ) \leq B \ell ( I ) + A \ell ( J )$ looks a little like the product rule from calculus. In fact,the trick of adding and subtracting the term $^ { a d }$ in the first part of the proof is also used in proving the product rule. You will see this adding and subtracting trick several times later on. (It has already been used in exercise 7 on page 8.)

DEFINITION 1.1.28（ABSOLUTE VALUE FOR INTERVALS） SuppoSe $I = \lfloor r , s \rfloor$ ; then

$$
| I | = \left\{ \begin{array} { c l } { I } & { w h e n ~ r > 0 ~ ( i . e . ~ w h e n ~ I > 0 ) } \\ { - I } & { w h e n ~ s < 0 ~ ( i . e . ~ w h e n ~ I < 0 ) } \\ { { [ 0 , \operatorname* { m a x } ( - r , s ) ] } } & { w h e n ~ r \leq 0 \leq s ~ ( i . e . ~ w h e n ~ 0 \in I ) } \end{array} \right.
$$

PROPOSITION 1.1.29 $\mid I \mid$ is the smallest interval containing all $\left| x \right|$ for $x \in I$

PROPOSITION 1.1.30 $\ell ( | I | ) \leq \ell ( I )$

(Proof: show that for each $I$ ,either $| I | \subset I$ or $| I | \subset - I .$ ）

DEFINITION 1.1.31 (MAX AND MIN FOR INTERVALS)

$$
\begin{array} { r } { \operatorname* { m a x } ( I , J ) = [ \operatorname* { m a x } ( r , u ) , \operatorname* { m a x } ( s , v ) ] } \\ { \operatorname* { m i n } ( I , J ) = [ \operatorname* { m i n } ( r , u ) , \operatorname* { m i n } ( s , v ) ] . } \end{array}
$$

Here is a diagram showing max and min for two intervals $\lfloor r , s \rfloor$ and $\lfloor u , v \rfloor$

![](images/deb05c726f95058ff6f8a31ca926d2d882f392ecdf28babf5a835854dae6c64c.jpg)

PROPOSITION 1.1.32 $K < \operatorname* { m a x } ( I , J )$ if and only if $K < I$ or $K < J ; K > \operatorname* { m a x } ( I , J )$ if and only if $K > I$ and $K > J$

(A similar result holds for min.)

PROPOSITION 1.1.33 The interval $\operatorname* { m a x } ( I , J )$ is the smallest interval containing all $\operatorname* { m a x } ( x , y )$ for $x \in I$ and $y \in J$ . Also $\operatorname* { m i n } ( I , J )$ is the smallest interval containing all $\operatorname* { m i n } ( x , y )$ for $x \in I$ and $y \in J$

PROPOSITION 1.1.34 $\ell ( \operatorname* { m a x } ( I , J ) ) \leq \operatorname* { m a x } ( \ell ( I ) , \ell ( J ) ) ;$ $\ell ( \operatorname* { m i n } ( I , J ) ) \leq \operatorname* { m a x } ( \ell ( I ) , \ell ( J ) ) .$

If this seems strange,look at $I = [ 0 , 1 0 0 0 ]$ and $J = [ 9 9 9 , 1 0 0 0 ]$ for example.)

More generally, given finitely many intervals $I _ { i } = \lfloor r _ { i } , s _ { i } \rfloor$ ， $i = 1 , \ldots , n$ ， we make similar definitions:

DEFINITION 1.1.35 $\begin{array} { r l } & { \operatorname* { m a x } ( I _ { 1 } , \ldots , I _ { n } ) = [ \operatorname* { m a x } ( r _ { 1 } , \ldots , r _ { n } ) , \operatorname* { m a x } ( s _ { 1 } , \ldots , s _ { n } ) ] ; } \\ & { \operatorname* { m i n } ( I _ { 1 } , \ldots , I _ { n } ) = [ \operatorname* { m i n } ( r _ { 1 } , \ldots , r _ { n } ) , \operatorname* { m i n } ( s _ { 1 } , \ldots , s _ { n } ) ] . } \end{array}$

These can also be phrased “recursively” as follows:

$$
\begin{array} { r } { \operatorname* { m a x } ( I _ { 1 } , \ldots , I _ { n } ) = \operatorname* { m a x } ( \operatorname* { m a x } ( I _ { 1 } , \ldots , I _ { n - 1 } ) , I _ { n } ) } \\ { \operatorname* { m i n } ( I _ { 1 } , \ldots , I _ { n } ) = \operatorname* { m i n } ( \operatorname* { m i n } ( I _ { 1 } , \ldots , I _ { n - 1 } ) , I _ { n } ) . } \end{array}
$$

PROPOSITION 1.1.36 The interval $\operatorname* { m a x } ( I _ { 1 } , \ldots , I _ { n } )$ is the smallest interval that contains all $\operatorname* { m a x } ( x _ { 1 } , \ldots , x _ { n } )$ for $x _ { i } \in I _ { i }$ ， $i = 1 , \ldots , n$ ， $A l s o \operatorname* { m i n } ( I _ { 1 } , \ldots , I _ { n } )$ is the smallest interval that contains all $\operatorname* { m i n } ( x _ { 1 } , \ldots , x _ { n } )$ for $x _ { i } \in I _ { i } , i = 1 , \ldots , n .$

EXAMPLE 1.1.37 Use the definition above to show that an equivalent formulation of the definition of $| I | \ i s \ | \ I | \ = \operatorname* { m a x } ( I , - I , 0 )$

PROPOSITION 1.1.38 $\ell ( \operatorname* { m a x } ( I _ { 1 } , \dots , I _ { n } ) ) \leq \operatorname* { m a x } ( \ell ( I _ { 1 } ) , \dots , \ell ( I _ { n } ) ) ;$ $\ell ( \operatorname* { m i n } ( I _ { 1 } , \dots , I _ { n } ) ) \leq \operatorname* { m a x } ( \ell ( I _ { 1 } ) , \dots , \ell ( I _ { n } ) )$

# Exercises

1. Let $I = \left\lfloor - 2 , 7 \right\rfloor$ ， $J = \left\lfloor - 3 , 8 \right\rfloor$ ， $K = \lfloor 4 , 7 \rfloor$

(a) Compute the following intervals: $I + J$ ， $I - J$ ， $J - K$ ， $I J$ ， $I K$ ， $J K$ ， $1 / K$ ， $J ( 1 / K )$   
(b） Compute $\operatorname* { m a x } ( I , J )$ and $\operatorname* { m i n } ( I , J )$ . Draw a diagram showing $I$ ， $J$ ，and the max and min.   
(c）Is $( I - J ) + ( J - K )$ equal to $I - K$ ？   
(d) Discuss $1 / I$ ， $1 / J$ ， $1 / K$ and $1 / ( - K )$

2. Compare $[ - 4 , - 2 ] ^ { 2 }$ and $[ 2 , 4 ] ^ { 2 }$ . Do you have a generalization?

3. Show by example that $\ell ( I ^ { n } ) = [ \ell ( I ) ] ^ { n }$ does not always hold. Is it ever true?

4. Prove that $I < J$ if and only if $x < y$ for every $x \in I$ and $y \in J$ 5. When the endpoints of an interval are all non-negative,multiplication of the intervals is much simplified.

(a） Suppose $r \geq 0$ and $u \geq 0$ . Prove that $\vert r , s \vert \cdot \vert u , v \vert = \vert r u , s v \vert$   
(b) Again assuming that $r \geq 0$ and $u \geq 0$ ， give a simplified proof that $\left\lfloor r , s \right\rfloor \cdot$ $\left\lfloor u , v \right\rfloor$ is the smallest interval containing all the products $x y$ where $x \in \left\lfloor r , s \right\rfloor$ and $y \in \left\lfloor u , v \right\rfloor$

6.Suppose intervals $I$ and $J$ have an element in common (i.e. there is an $_ { x }$ with $x \in I$ and $x \in J$ ).Is it always true that for any interval $K$ ， $I + K$ and $J + K$ have an element in common? What about $I K$ and $J K$ ？

7. Suppose $I < J$ . Prove that $\operatorname* { m a x } ( I , J ) = J$ . What about $\operatorname* { m i n } ( I , J )$ ？

The next exercises ask you to prove some propositions left unproved in the text.In what follows,we will use O to denote the interval $[ 0 , 0 ]$ its meaning will be clear from context.For example, $[ r , s ] > 0$ will mean $[ r , s ] > [ 0 , 0 ]$ ；i.e. $r > 0$

8. Prove that the following are equivalent:

(a) $I \subset J$   
(b） $x \in I \Longrightarrow x \in J$   
(c） $J$ contains the endpoints of $I$

9. Prove that the following are equivalent:

(a) $I = J$ (b） $x \in I \Longleftrightarrow x \in J$ (c） $I \subset J$ and $J \subset I$

10.Prove that, for all intervals $I$ ， $0 \in I - I$

11.Prove that, if $I$ and $J$ are both smallest intervals with the property $P$ ，then $I = J$

12. Prove:

(a) $I + J$ is the smallest interval containing all $x + y$ ,for $x \in I$ and $y \in J$ (b） $- I$ is the smallest interval containing all $- x$ for $x \in I$ (c) For any $I > 0$ or $I < 0$ ， $1 / I$ is the smallest interval containing all $1 / x$ for $x \in I$

(d) $\mid I \mid$ is the smallest interval containing all $\mid x \mid$ for $x \in I$ . (You must deal with each case of $| \ |$ separately.)

Note that in each case you must prove two things: (1) the interval actually has the property and (2) it is contained in any other interval that has the property.

13. Prove that $I < J$ if and only if $0 < J - I$

14. Prove:

(a)If $I \subset J$ ,then $\ell ( I ) \leq \ell ( J )$   
(b) $\ell ( I + J ) = \ell ( I ) + \ell ( J )$   
（c） $\ell ( - I ) = \ell ( I )$   
(d）For $I \subset ( - \infty , d ]$ with $d < 0$ ， $\ell ( 1 / I ) \leq \ell ( I ) / d ^ { 2 }$ $\mathbf { \chi } ( | r , s | \subset ( - \infty , d ]$ simply means $s < d$   
(e) $\ell ( \left| \textbf { } I \right| ) \leq \ell ( I )$

15.Investigate the inclusion $( \subset )$ relations,if any,among $I$ ， $J$ ， $\operatorname* { m i n } ( I , J )$ and $\operatorname* { m a x } ( I , J )$ .What if $I \subset J$ ？

16.Here are some basic properties of the rational numbers:

(f) $| a b | = | a | | b |$

(g） $a > 0$ if and only if $- a < 0$ (h）If $a > 0$ and $b > 0$ ,then $a + b > 0$ (i)If $a > 0$ and $b > 0$ ,then $a b > 0$ (j） If $a b > 0$ , then either $a > 0$ and $b > 0$ or $a < 0$ and $b < 0$ (k）If $a _ { 1 } + \cdots + a _ { n } > b$ , then,for at least one value of $i , ~ i = 1 , \ldots , n$ ， we have $a _ { i } > b / n$

Verify that all of these properties still hold when we replace the rational numbers $a , b , c , \ a _ { 1 } , \ldots , a _ { n }$ ，by intervals: $I , J , K , I _ { 1 } , \ldots , I _ { n }$ .(Hint: Several of the proofs-notably those involving more than two intervals-will be much easier if you use the “smallest interval” characterization of the various operations on intervals-see Proposition 1.1.14 and subsequent applications.)

(l)Here is another basic property of the rationals (the “distributive law"): $a ( b + c ) = a b + a c$ . Verify that, for intervals $I , J , K$ we always have

$$
I ( J + K ) \subset I J + I K .
$$

However, make up an example for which $I ( J + K ) \neq I J + I K$ . (Note that $I ( J + K ) \subset I J + I K$ is actually an equality when all the intervals are positive—you may want to try to prove this. Thus,your example must involve at least one negative endpoint—nearly any will work!).

# 1.2Families of Intersecting Intervals

Although it many never happen, two experimenters measuring the same quantity might,in fact,obtain the exact same measurement (rational number） for it with their instruments. If their experiments are represented by the rational intervals $I$ and $J$ ,then this common measurement must belong to both of these intervals.We make this formal by the following definition.

DEFINITION 1.2.1 We say the interuals $I$ and $J$ intersect, or meet, if there is $a$ rational number x which belongs to both $I$ and $J$ (i.e. $x \in I$ and $x \in J$ ）

Here is the very important characterization of intersection in terms of endpoints.

PROPOSITION 1.2.2 $I = \lfloor r , s \rfloor$ and $J = \lfloor u , v \rfloor$ intersect $\iff r \leq v$ and $u \leq s$

Proof. ( $\Rightarrow$ ): If $_ { x }$ belongs to both, then $r \leq x \leq s$ and $u \leq x \leq v$ Thus $r \leq x \leq v$ S0 $r \leq v$ . Similarly $u \leq s$

$\Leftarrow$ ): If $r \leq v$ and $u \leq s$ , then $\operatorname* { m a x } ( r , u ) \leq \operatorname* { m i n } ( s , v )$ . We also have $r \leq \operatorname* { m a x } ( r , u )$ ， $u \leq \operatorname* { m a x } ( r , u )$ ; similarly, $\operatorname* { m i n } ( s , v ) \leq s$ and $\operatorname* { m i n } ( s , v ) \leq v$ . Thus,the entire interval $\left| \operatorname* { m a x } ( r , u ) , \operatorname* { m i n } ( s , v ) \right|$ is contained in both $I$ and $J$ $\mid$

NOTATION 1.2.3 If $I$ and $J$ intersect, their intersection is an interval given by

$$
I \cap J = [ \operatorname* { m a x } ( r , u ) , \operatorname* { m i n } ( s , v ) ] .
$$

(The intersection of finitely many intervals can be characterized as a smallest intervalsee the Exercise 9 at the end of this section.)

There are several ways intervals can intersect. It may be that $\left| r , s \right| \subset \left| u , v \right|$ ,in which case the intersection is all of $\lfloor r , s \rfloor$ ：

![](images/8e867280804d26f8ead58af055ae82c5e985d8ecb53355f4df032e9277e71822.jpg)

or it may be that only parts of the intervals meet ( $u < r < v < s$ ， making the intersection $\lfloor r , v \rfloor$ )：

![](images/69a3d8b5fe982718f88a11f1854f05905c9361aa0986db5654cc56c3ba7f5fed.jpg)

or they may just have an endpoint in common ( $r < s = u < v$ ,making the intersection $\left\lfloor s , s \right\rfloor = \left\lfloor u , u \right\rfloor$ )：

![](images/8c42c22979decb0eeccabd04c61a832c742d000455082bcba48b28bf707ef8fc.jpg)

We should point out that the symbol $\cap$ is not a verb!It is a common mistake to read“ $I \cap J ^ { \mathrm { v } }$ as $^ { \circ } I$ intersects $J ^ {  } \colon I \cap J$ is either undefined (when $I$ and $J$ don't meet),or it is an interval (when they do). $I \cap J$ is not a statement or assertion,it is a thing or a noun.

From this it should be clear that $I$ and $J$ intersect if an only if neither lies to the right or left of the other; i.e. $I$ and $J$ intersect $\Longleftrightarrow I < J$ and $J < I$ are both false. (The proof of this is an exercise.)

PROPOSITiON 1.2.4 Given a finite collection of intervals with ${ { I } _ { k } } \mathrm { ~ = ~ } { { \left[ { { r } _ { i } } , { { s } _ { i } } \right] } }$ ， $k =$ $1 , \ldots , n$ , if each pair of them intersect, then all of them do. In fact,any number in $\left| \operatorname* { m a x } ( r _ { 1 } , \ldots , r _ { n } ) , \operatorname* { m i n } ( s _ { 1 } , \ldots , s _ { n } ) \right|$ belongs to all the intervals $I _ { k }$ ·

NOTATION 1.2.5 For interuals $I _ { k } = \lfloor r _ { i } , s _ { i } \rfloor$ that intersect,

$$
\bigcap _ { k = 1 } ^ { n } I _ { i } = [ \operatorname* { m a x } ( r _ { 1 } , \ldots , r _ { n } ) , \operatorname* { m i n } ( s _ { 1 } , \ldots , s _ { n } ) ] .
$$

REMARk 1.2.6 Another way of saying this is that, given a finite number of intervals, their common intersection is equal to the intersection of any one whose left endpoint is farthest to the right with any one whose right endpoint is farthest to the left.

We now move from dealing with individual intervals to dealing with families of intervals. Science advances by considering experiments done by many, and the numerical nature of a quantity emerges from a multiplicity of measurements, expressed as a family of intervals. Now if $I$ and $J$ are intervals resulting from experiments to measure the same quantity,and $I$ lies wholly to the left or wholly to the right of $J$ , then we can be sure that at least one of the experiments is incorrect. Such measurements might be described as inconsistent.

EXAMPLE 1.2.7 In the mid 1990s,astronomers obtained two measurements for the age of the universe. Using data from the Hubble space telescope and the theory of the expanding universe, they came up with the time of creation lying in the interval $\lfloor - 1 6 , - 1 4 \rfloor$ (billion years ago). On the other hand,astronomers studying stellar chemistry and the life-cycle of stars concluded, from the ages of the oldest stars, that this creation occurred in the interval $\lfloor - 1 2 , - 8 \rfloor$ . These intervals don't intersect! Fortunately, errors were detected within a year or so, and new computations produced intersecting intervals.

DEFINITION 1.2.8 $\mathcal { F }$ is a consistent family of intervals means that for every pair of intervals $I$ and $J$ in $\mathcal { F }$ ， $I$ and $J$ intersect.

Thus,in the Hubble example above, the family $\{ \lfloor - 1 6 , - 1 4 \rfloor , \lfloor - 1 2 , - 8 \rfloor \}$ is not consistent. On the other hand, $\{ \vert - 1 , 4 \vert , \vert 1 , 7 \vert , \vert 3 / 2 , 3 \vert \}$ is consistent—any two intervals contain 2, or $5 / 2$ ,or 3,etc., so there are numbers that are common to all of the intervals in this family. Using Proposition 1.2.4 above,we can easily prove the following.

PROPOSITION 1.2.9 If $\mathcal { F }$ is a consistent family having only a finite number of intervals, then there is at least one rational number which is in every one of the intervals of $\mathcal { F }$

You may find it surprising that this fact about finite families is not necessarily true for infinite families. As we shallsee in the next section (see Exercise 10 on page 38), the family

$$
\mathcal { C } 2 = \{ [ a , b ] | a ^ { 3 } \leq 2 \leq b ^ { 3 } \}
$$

is consistent (any two intervals intersect), but there is no rational number common to all of its intervals.

If a valid experiment produces an interval $\lfloor r , s \rfloor$ in measuring a physical quantity $Q$ ,and another such experiment produces $\lfloor u , v \rfloor$ , then we would deduce that the intersection of these intervals, $\left| \operatorname* { m a x } ( r , u ) , \operatorname* { m i n } ( s , t ) \right|$ ,might also be a valid measurement for $Q$ . For example,experiment A may determine a lower bound $r$ for $Q$ only, so $s$ might be an arbitrarily large number. Similarly, experiment B may determine an upper bound $v$ ，so that $^ u$ is arbitrarily small. Then $\left\lfloor r , v \right\rfloor$ could be deduced as a bounding interval for $Q$ .1 The idea of taking intersections of intervals can be applied to any consistant family of intervals,and consistency will be preserved; that is the content of the following proposition.(We will not actually be doing this kind of construction here,so we just state it for the record.)

PROPOSITION 1.2.10 If $\mathcal { F }$ is a consistent family of intervals, so is the family of all finite intersections of members of $\mathcal { F }$ ， and it contains $\mathcal { F }$ as a subfamily.

Just as we defined algebraic operations on rational intervals based on those for rational numbers, we now define algebraic operations on families of rational intervals based on the ones we defined for intervals.

NOTATION 1.2.11 If $\mathcal { F }$ is a family of rational intervals, then $I \in { \mathcal { F } }$ means that $I$ is an interval of $\mathcal { F }$ .

DEFINITION 1.2.12 Given $\mathcal { F }$ and $\mathcal { G }$ families of intervals, $\mathcal { F } + \mathcal { G }$ is the family $\{ I + J \mid I \in { \mathcal { F } } , J \in { \mathcal { G } } \}$ $- \mathcal { F }$ is the family $\{ - I \mid I \in { \mathcal { F } } \}$ $\mathcal { F G }$ is the family $\{ I J \mid I \in { \mathcal { F } } , J \in { \mathcal { G } } \}$ $| \mathcal F |$ is the family $\{ | I | \mid I \in { \mathcal { F } } \}$

If at least one interval of $\mathcal { F }$ doesn't contain O, then $1 / \mathcal { F }$ is the family

$$
\left\{ 1 / I \mid I \in { \mathcal { F } } \ a n d 0 \not \in I \right\} .
$$

$\operatorname* { m a x } ( \mathcal { F } , \mathcal { G } )$ is the family $\{ \operatorname* { m a x } ( I , J ) \mid I \in \mathcal { F } , J \in \mathcal { G } \}$ $\operatorname* { m i n } ( \mathcal { F } , \mathcal { G } )$ is the family $\{ \operatorname* { m i n } ( I , J ) \mid I \in \mathcal { F } , J \in \mathcal { G } \}$ $\mathcal { F } - \mathcal { G }$ is the family $\mathcal { F } + ( - \mathcal { G } )$

PROPOSITION 1.2.13 If both $\mathcal { F }$ and $\mathcal { G }$ are consistent families, so are $\mathcal { F } + \mathcal { G } , \ - \mathcal { F }$ ， FG,1/F, $| \mathcal F |$ ， $\operatorname* { m a x } ( \mathcal { F } , \mathcal { G } )$ ，and $\operatorname* { m i n } ( \mathcal { F } , \mathcal { G } )$

Proof. Since $\mathcal { F }$ and $\mathcal { G }$ are both consistent, given $I , I ^ { \prime } \in { \mathcal { F } }$ and $J , J ^ { \prime } \in \mathcal { G }$ , there is an $x \in I \cap I ^ { \prime }$ and a $y \in J \cap J ^ { \prime }$ . Hence $x + y$ is in both $I + J$ and $I ^ { \prime } + J ^ { \prime }$ ， $- x$ is in both $- I$ and $- I ^ { \prime }$ ， $x y$ is in both $^ { \textit { \textbf { I J } } }$ and $I ^ { \prime } J ^ { \prime }$ ， $| x |$ is in both $| I |$ and $\left| I ^ { \prime } \right|$ ， $\operatorname* { m a x } ( x , y )$ is in both $\operatorname* { m a x } ( I , J )$ and $\operatorname* { m a x } ( I ^ { \prime } , J ^ { \prime } )$ ，and $\operatorname* { m i n } ( x , y )$ is in both $\operatorname* { m i n } ( I , J )$ and $\operatorname* { m i n } ( I ^ { \prime } , J ^ { \prime } )$ So $\mathcal { F } + \mathcal { G } , - \mathcal { F } , \mathcal { F } \mathcal { G } , | \mathcal { F } |$ ， $\operatorname* { m a x } ( \mathcal { F } , \mathcal { G } )$ and $\operatorname* { m i n } ( \mathcal { F } , \mathcal { G } )$ are consistent families of intervals.

Finally, suppose $I$ and $I ^ { \prime }$ are in $\mathcal { F }$ and neither contains O. Since $\mathcal { F }$ is consistent, there is an $_ { x }$ lying in both intervals; of course $_ { x }$ is non-zero．Then $1 / x$ lies in both $1 / I$ and $1 / I ^ { \prime }$ ■

Sometimes two quantities thought to be different are actually the same. One indication that this may be the case is that families of measurements fail to distinguish them; i.e., any measurement of one meets or overlaps any measurement of the other. (Of course,the bigger and more “accurate” the families the more likely it is that the quantities are the same,but we will deal with this idea later.)

DEFINITION 1.2.14 (CONSISTENT FAMILIEs) Given two families of intervals $\mathcal { F }$ and $\mathcal { G }$ ，we say $\mathcal { F }$ is consistent with $\mathcal { G }$ if each interval from the family $\mathcal { F }$ intersects each interval from the family $\mathcal { G }$ . This relation is denoted $\mathcal { F } \sim \mathcal { G }$

EXAMPLE 1.2.15 Let $\mathcal { F } = \{ \vert 1 , 3 \vert , \vert 4 , 9 \vert \}$ ; then $\mathcal { F }$ isn't even consistent with itself ( $\mathcal { F }$ is inconsistent).On the other hand,if $\mathcal { G } = \{ [ 1 . 2 , 1 . 7 ]$ ,[1.3,1.5],[1.4,1.5]} and $\mathcal { H } =$ {[1.25,1.5],[1.4,1.45]}, then it is not difficult to check that $\mathcal { G }$ and $\mathcal { H }$ are consistent: the number 1.4l4, for example, belongs to every interval in these families.

With this definition,a consistent family of intervals is one that is consistent with itself. Thus, $\mathcal { F }$ is consistent if and only if $\mathcal { F } \sim \mathcal { F }$

PROPOSITION 1.2.16 Given $\mathcal { F }$ and $\mathcal { G }$ consistent families of intervals, ${ \mathcal { F } } \sim { \mathcal { G } }$ if and only if ${ \mathcal { F } } \cup { \mathcal { G } }$ is a consistent family (where $\mathcal { F } \cup \mathcal { G }$ consists of all intervals that are in either $\mathcal { F }$ or $\mathcal { G }$ ）

Once again,mathematicians like to see how relations between objects (such as consistency）behave when we perform arithmetic operations on the objects. For example,in number theory we know that if $M \equiv M ^ { \prime } { \bmod { ( } } K )$ （ $M$ is congruent to $M ^ { \prime }$ mod $K$ ）and $N \equiv N ^ { \prime } { \bmod { ( } } K )$ ，then $M + N \equiv M ^ { \prime } + N ^ { \prime } { \bmod { ( } } K )$ (and similarly for subtraction and multiplication). The next result shows that consistency works similarly.

PROPOSITION 1.2.17 Suppose that $\mathcal { F } \sim \mathcal { F } ^ { \prime }$ and $\mathcal { G } \sim \mathcal { G } ^ { \prime }$ . Then we also have:

1. $\mathcal { F } + \mathcal { G } \sim \mathcal { F } ^ { \prime } { + } \mathcal { G } ^ { \prime }$   
2. $- \mathcal { F } \sim - \mathcal { F } ^ { \prime }$   
3. $\mathcal { F } \mathcal { G } \sim \mathcal { F } ^ { \prime } \mathcal { G } ^ { \prime }$   
4 $1 / \mathcal { F } \sim 1 / \mathcal { F } ^ { \prime }$ (when defined)   
5. $| \mathcal { F } | \sim | \mathcal { F } ^ { \prime } |$   
6. $\operatorname* { m a x } ( \mathcal { F } , \mathcal { G } ) \sim \operatorname* { m a x } ( \mathcal { F } ^ { \prime } , \mathcal { G } ^ { \prime } )$   
7. $\operatorname* { m i n } ( \mathcal { F } , \mathcal { G } ) \sim \operatorname* { m i n } ( \mathcal { F } ^ { \prime } , \mathcal { G } ^ { \prime } )$

(A trivial modification of the proof of Proposition 1.2.13 (preservation of consistency) proves this proposition as well; simply take $I \in { \mathcal { F } }$ ， $I ^ { \prime } \in \mathcal { F } ^ { \prime }$ ， $J \in { \mathcal { G } }$ and $J ^ { \prime } \in \mathcal { G } ^ { \prime }$ .）

PROPOSITION 1.2.18 Suppose the families $\mathcal { F }$ ， $\mathcal { G }$ ，and $\mathcal { H }$ are consistent. Then

1. $\mathcal { F } ( \mathcal { G } \mathcal { H } ) \sim ( \mathcal { F } \mathcal { G } ) \mathcal { H }$   
2. $\mathcal { F } ( \mathcal { G } + \mathcal { H } ) \sim \mathcal { F } \mathcal { G } + \mathcal { F } \mathcal { H }$   
3. $\mathcal { F } + ( \mathcal { G } + \mathcal { H } ) \sim ( \mathcal { F } + \mathcal { G } ) + \mathcal { H }$   
4 $| { \mathcal { F G } } | \sim | { \mathcal { F } } | | { \mathcal { G } } |$

Proof. We will just prove (1) since the others work similarly. We must show that every interval of the left-hand family meets every interval of the right-hand family. By definition,a typical interval on the left looks like $I ( J K )$ ,while one on the right looks like $( I ^ { \prime } J ^ { \prime } ) K ^ { \prime }$ ，where $I , I ^ { \prime } \in { \mathcal { F } }$ ， $J , J ^ { \prime } \in \mathcal { G }$ ，and $K , K ^ { \prime } \in \mathcal { H }$ . By consistency, we can find numbers $x \in I \cap I ^ { \prime }$ ， $y \in J \cap J ^ { \prime }$ ，and $z \in K \cap K ^ { \prime }$ . It is now clear that the element $x ( y z ) = ( x y ) z$ lies in both triple products,so that $I ( J K )$ and $( I J ) K$ meet.

Suppose we make measurements of two physical constants, $C$ and $D$ ,and find that $C$ is between 1.88 and 1.92,while $D$ is between 1.85 and 1.90. This shows that $C$ and $D$ do not differ by more than .O7.But it does not reveal whether $C$ and $D$ are distinct or not. However, suppose we make a second set of measurements and find also that $C$ lies between 1.894 and 1.913,and $D$ is between 1.889 and 1.891. This does enable us to conclude that $C$ and $D$ are distinct,because it reveals that $D$ is at least .Oo3 less than $C$ ：

$$
1 . 8 8 9 , \ldots , \overbrace { 1 . 8 9 1 } < \overline { { 1 . 8 9 4 } } , \ldots , 1 . 9 1 3
$$

In this case, the families of measurements for $C$ and $D$ are not consistent: they can distinguish between $C$ and $D$ by telling us explicitly that $D < C$ . In other words, it takes only one valid pair of measurements $\lfloor r , s \rfloor$ and $\lfloor u , v \rfloor$ of the two quantities $D$ and $C$ respectively,with $s < u$ ,to tell us that $D < C$ . This suggests that we make the following definition.

DEFINITION 1.2.19 (STRICT INEQUALITY FOR FAMILIES） GiUen twO families of intervals $\mathcal { F }$ and $\mathcal { G }$ ， $\mathcal { F } < \mathcal { G }$ means that we can find at least one $I$ in $\mathcal { F }$ and one $J$ in $\mathcal { G }$ ， with $I < J$

Could it be that both $\mathcal { F } < \mathcal { G }$ and $\mathcal { G } < \mathcal { F }$ are true? It is not hard to construct a simple example to show that the answer is yes (try it). But the following proposition tells us that this undesirable situation will not happen if both $\mathcal { F }$ and $\mathcal { G }$ are consistent families of intervals.

PROPOSITION 1.2.20 If $\mathcal { F }$ and $\mathcal { G }$ are consistent families with $\mathcal { F } < \mathcal { G }$ ， then $\mathcal { G } \not \prec \mathcal { F }$ (that is, $\mathcal { G } < \mathcal { F }$ is false).

Proof. Note first that for any two intervals $X$ and $Y$ ,if $X < Y$ ,then $x < y$ for all $x \in X$ and $y \in Y$ (prove this for yourself if necessary). We are given that $\mathcal { F } < \mathcal { G }$ ， so we can find $I$ in $\mathcal { F }$ and $J$ in $\mathcal { G }$ with $I \ < \ J$ .We must show that $\mathcal { G } < \mathcal { F }$ leads to a contradiction,so suppose it's true. Then we can find $I ^ { \prime } \in \mathcal { G }$ and $J ^ { \prime } \in { \mathcal { F } }$ with $I ^ { \prime } < J ^ { \prime }$ . Now we use consistency. Choose any $x \in I \cap I ^ { \prime }$ and $y \in J \cap J ^ { \prime }$ . Since $I < J$ ， $x \ < y$ ； since $J ^ { \prime } < I ^ { \prime }$ ， $y < x$ .But $x < y$ and $y < x$ can't both be true:this is our contradiction. It follows that $\mathcal { G } \not \prec \mathcal { F }$ ■

PROPOSITIoN 1.2.21 Given families of intervals $\mathcal { F }$ ， $\mathcal { G }$ and $\mathcal { H }$ ，f $\mathcal { F } < \mathcal { G } < \mathcal { H }$ and $\mathcal { G }$ is consistent, then $\mathcal { F } < \mathcal { H }$

The proof is left as an exercise.

EXERCISE 1.2.22 Give eramples of · A family $\mathcal { F }$ such that $\mathcal { F } < \mathcal { F }$ · Families $\mathcal { F }$ ， $\mathcal { G }$ ,and $\mathcal { H }$ such that $\mathcal { F } < \mathcal { G }$ and $\mathcal { G } < \mathcal { H }$ but $\mathcal { F } \not \prec \mathcal { H }$

The last two propositions show that strong inequality, $<$ ,behaves as we would expect. It is also useful to have a notion of weak inequality,usually denoted $\leq$ . For rational numbers, to say that $r \leq s$ is to say that $\boldsymbol { r }$ does not exceed $s$ ，i.e. $r \not \to s$ .We will adopt this meaning for families as well.

DEFINITION 1.2.23（WEAK INEQUALITY: FAMILIES） $\mathcal { F } \leq \mathcal { G }$ means $\mathcal { F } > \mathcal { G }$ is false; i.e., no interval of $\mathcal { F }$ lies wholly to the right of any interval in $\mathcal { G }$ . This is also written $\mathcal { G } \geq \mathcal { F }$

EXAMPLE 1.2.24 Let $\mathcal { P } = \{  { | 1 , 5 | } ,  { | 3 / 2 } , 2  { | } \}$ and $\mathcal { Q } = \{ \vert 4 , 8 \vert , \vert 2 , 3 \vert \}$ . Then $\mathcal { P } \leq \mathcal { Q }$ since no interval of $\mathcal { Q }$ is strictly less than any interval of $\mathcal { P }$

Please note to say that $\mathcal { F } \leq \mathcal { G }$ is to say that no interval in $\mathcal { F }$ lies to the right of any interval in $\mathcal { G }$ . It does not say that some interval in $\mathcal { F }$ lies to the left of some interval in $\mathcal { G }$ （ $\mathcal { F } < \mathcal { G }$ ） nor that every interval in $\mathcal { F }$ meets every interval in $\mathcal { G }$ （ ${ \mathcal { F } } \sim { \mathcal { G } } .$ ）， nor that the families might be equal. It is not an “or” statement at all. In trying to verify that $\mathcal { F } \leq \mathcal { G }$ ,then,one must show that $J < I$ never happens for any intervals $J \in { \mathcal { G } }$ and $I \in { \mathcal { F } }$

In view of this remark, it is probably best to read “ $\mathcal { F } \leq \mathcal { G }$ ”as“ $\mathcal { F }$ does not exceed $\mathcal { G }$ ”, even though it is hard to avoid saying“less than or equal,” given the use of the symbol $\leq$

Weak inequality can be characterized easily in terms of the endpoints of the intervals in the families. To say that $I = \lfloor r , s \rfloor$ does not lie to the right of $J = \lfloor u , v \rfloor$ is to say that $r \leq v$

DEFINITION 1.2.25 If $\lfloor r , s \rfloor$ is an interval of the family $\mathcal { F }$ ， then $r$ is called a lower bound of $\mathcal { F }$ and $s$ is called an upper bound of $F$

(If you look ahead to Proposition 1.3.12 in the next section, you can see why these are called bounds for $\mathcal { F }$ ）

The following gives a very useful way to characterize inequality and consistency of families in terms of upper and lower bounds; it really makes giving proofs of these relationships much less confusing.

# PROPOSITION 1.2.26

1. $\mathcal { F } < \mathcal { G }$ if and only if some upper bound of $\mathcal { F }$ is less than some lower bound of $\mathcal { G }$   
2. $\mathcal { F } \leq \mathcal { G }$ if and only if every lower bound of $\mathcal { F }$ is less than or equal to every upper bound of $\mathcal { G }$ ·   
3. $\mathcal { F } \sim \mathcal { G }$ if and only if every lower bound of either family is less than or equal to every upper bound of the other.

COROLLARY 1.2.27 Given two families of intervals $\mathcal { F }$ and $\mathcal { G }$ ， $\mathcal { F } \sim \mathcal { G }$ if and only if $\mathcal { F } \leq \mathcal { G }$ and $\mathcal { G } \leq \mathcal { F }$

Proofs of these results are left as exercises.

ExERCIsE 1.2.28 Is it true in general (no assumptions on the families) that $\mathcal { F } \leq \mathcal { G }$ and $\mathcal { G } \leq \mathcal { H }$ implies that $\mathcal { F } \leq \mathcal { H }$ ？

# Writing Proofs

Before proceding to the exercises involving families, it might be a good idea to discuss the general method of finding proofs and writing them up. As an example,we'll develop a proof of the following fact about families of intervals (stated as Corollary 1.2.27 in the text).

PROPOSITION Given two families of intervals $F$ and $G$ ， $F \sim G$ if and only if $G \leq F$ and $F \leq G$

# How to begin finding a proof

First,you must know exactly what each word and phrase in the statement of the proposition means:“ $\mathcal { F } \sim \mathcal { G } ^ { \ast }$ means that every interval in $\mathcal { F }$ intersects every interval in $\mathcal { G }$

For families,the weak inequality $\mathcal { F } \leq \mathcal { G }$ is defined as the negation of the strong inequality $\mathcal { G } < \mathcal { F }$ ： $\mathcal { F } \leq \mathcal { G }$ means that there is no interval of $\mathcal { G }$ that lies wholly to the left of any interval of $\mathcal { F }$ . (Another way to say this is that for any $I \in { \mathcal { F } }$ and $J \in { \mathcal { G } }$ ， it is never true that $J < I$ .）Similarly,the relation $\mathcal { G } \leq \mathcal { F }$ means that there is no interval in $\mathcal { F }$ which lies strictly to the left of an interval in $\mathcal { G }$

Ok. So you know what the terms mean. Now, note that you have to prove an “if and only if” statement. That always means you have two things to do. First, prove that the left-hand side implies the right,and secondly, that the right-hand side implies the left. So let's start from left to right.

You are given that ${ \mathcal { F } } \sim { \mathcal { G } }$ . You must show, first, that no interval in $\mathcal { F }$ is to the left of an interval in $\mathcal { G }$ . So take any interval $I$ in $\mathcal { F }$ and any interval $J$ in $\mathcal { G }$ . You must show that $I$ can't lie to the left of $J$ . What can you use to prove this? You clearly must use the assumption that $\mathcal { F } \sim \mathcal { G }$ .What does this assumption tell us about $I$ and $J$ ? It tells us that they must intersect.

Can one interval lie strictly to the left of another if they intersect? From this picture you can immediately see that the answer is no.

r S u u · No Intersection ·

However,you might want to prove this without having to use a picture； you therefore have to go back to using endpoints and inequalities. $\lfloor r , s \rfloor$ intersects $\left\lfloor u , v \right\rfloor$ is equivalent to $r \leq v$ and $u \leq s$ . On the other hand, $\lfloor r , s \rfloor < \lfloor u , v \rfloor$ means that $s < u$ (this is the definition of $<$ ). If they intersect,then this can't happen since $u \leq s$ .In this way you can prove formally what your picture suggested.

Thus,no interval in $\mathcal { F }$ can lie to the left of an interval in $\mathcal { G }$ and,by a similar argument, no interval in $\mathcal { G }$ can lie to the left of an interval in $\mathcal { F }$ . This completes the proof that the left-hand side implies the right.

Now you must show that the right-hand side implies the left. You are given $\mathcal { F } \leq \mathcal { G }$ and $\mathcal { G } \leq \mathcal { F }$ and you must prove that $\mathcal { F } \sim \mathcal { G }$ . So take any $I$ in $\mathcal { F }$ and any $J$ in $\mathcal { G }$ . You have to show that they intersect —i.e. that $r \leq v$ and $u \leq s$ . But you know that $I$ can't lie to the left of $J$ , nor can $J$ lie to the left of $I$ (why?). Interpreting this in terms of endpoints,you see that it is false that $s < u$ and it is false that $v < r$ Thus, $u \leq s$ and $r \leq v$ ,and you are done.

Most of the proofs you will have to do involve just this sort of argument: knowing the definitions of the terms involved,and using them and some pictures to see how to proceed. Of course,knowing exactly what each item means is one of the most important steps in constructing any proof.

Now it's time to write up the proof. Although pictures are sometimes helpful in understanding or motivating an argument, a formal proof generally doesn't use pictures. Therefore,you'll have to include the proof, using endpoints,of the fact that if two intervals intersect,one can't be to the left of the other. Since this is a helpful fact rather than the main result,it is a good idea to single it out and call it a lemma.

Below is a sample write-up. Note the use of $\mid$ to denote the end of a proof. This is the modern typeset replacement for $Q . E . D .$ ，from classical geometry( $Q . E . D$ stands for Quod Erat Demonstrandum,“that which was to be shown"). You could use the“#” sign in handwritten or typed proofs.

LEMMA If $I$ and $J$ intersect, then $I \not \prec J$ and $J \not \prec I$

Proof. By definition of intervals intersecting,we have $r ~ \leq ~ v$ and $u \ \leq \ s$ But $J < I \iff v < r$ ，and $I < J \iff s < u$ . Thus, if $I$ and $J$ intersect,neither can be to the left of the other.■

PROPOSITION Given two families of intervals $\mathcal { F }$ and $\mathcal { G }$ ， $\mathcal { F } \sim \mathcal { G }$ if and only if $\mathcal { F } \leq \mathcal { G }$ and $\mathcal { G } \leq \mathcal { F }$

Proof. ( $\Rightarrow$ ):Let $I$ be any interval in $\mathcal { F }$ and $J$ be any interval in $\mathcal { G }$ . Since ${ \mathcal { F } } \sim { \mathcal { G } }$ ， $I$ and $J$ intersect.By the Lemma, $I \not \prec J$ and $J \not \prec I$ . By definition of $<$ for families, neither $\mathcal { F } < \mathcal { G }$ nor $\mathcal { G } < \mathcal { F }$ can hold, so $\mathcal { G } \leq \mathcal { F }$ and $\mathcal { F } \leq \mathcal { G }$

$( \Leftarrow )$ ：Let $I = \lfloor r , s \rfloor$ be any interval in $\mathcal { F }$ and $J = \lfloor u , v \rfloor$ any interval in $\mathcal { G }$ . Since ${ \mathcal { F } } \not \prec { \mathcal { G } }$ ， $s < u$ must be false, so $u \leq s$ . Similarly, since $\mathcal { G } \not \prec \mathcal { F }$ ， $v < r$ is false, so $r \leq v$ We know these inequalities mean that $I$ and $J$ intersect.■

(This proof can be further improved by making the lemma itself into an “if and only if’ statement.)

# Exercises

1. Let $A = \{ [ - 2 , 5 ] , [ 1 / 2 , 2 ] \}$ and $B = \{ \vert 1 , 7 \vert , \vert 1 / 4 , 3 \vert \}$ .Calculate the families $A + B$ ， $A - B$ ， $\boldsymbol { A B }$ ， $1 / B$ ， $| { \cal A } |$ and $\operatorname* { m a x } ( A , B )$ .Verify that all families are consistent.

2.Find the interval consisting of all numbers common to the intervals in the family $\{ | - 2 , 7 / 2 | , | - 3 / 2 , 3 | , | - 4 / 3 , 5 / 3 | , | - 5 / 3 , 2 | \}$

3.Find a consistent family $\mathcal { H }$ having at least 3 intervals such that each interval is contained in $\lfloor - 1 , 1 \rfloor$ .Find family of subintervals of $\lfloor - 1 , 1 \rfloor$ which is not consistent.

4. The family $\mathcal { L } = \{ \lfloor - 2 , 0 \rfloor , \lfloor 1 , 3 \rfloor \}$ is not consistent—why? Is it possible to add intervals to $\mathcal { L }$ to make it consistent? Explain.

5.Let $\mathcal { M }$ be the family of all intervals $[ 1 / N ^ { 2 } , 1 / N ]$ ， $N = 1 , 2 , 3 , \ldots$ Show that $\mathcal { M }$ is not consistent.

6.Let $\mathcal { N }$ be the family $\left\lfloor { \frac { N } { N + 1 } } , { \frac { N + 2 } { N + 1 } } \right\rfloor$ $N = 0 , 1 , 2 , \ldots$ Is $\mathcal { N }$ cosistent

7. The family $\mathit { c 2 }$ consists of all the intervals $[ a , b ]$ with the property that $a ^ { 3 } \leq 2$ and $2 \leq b ^ { 3 }$ .Prove that $\mathit { c 2 }$ is a consistent family. (Hint:Suppose $\lfloor a , b \rfloor$ and $\lfloor c , d \rfloor$ are in $\mathit { c 2 }$ but they don't intersect; for example, $[ a , b ] < [ c , d ]$ . Show that this leads to a contradiction.

8.For intervals $I$ and $J$ , prove that either $I < J$ ， $J < I$ ,or $I$ and $J$ intersect (the only three possibilities).

9.Assuming that $I$ and $J$ intersect,prove that $I \cap J$ is the smallest interval which contains all $_ x$ such that $x \in I$ and $x \in J$

10.Find families $\mathcal { F }$ ， $\mathcal { G }$ ，and $\mathcal { H }$ such that $\mathcal { F } < \mathcal { G }$ and $\mathcal { G } < \mathcal { H }$ ，but $\mathcal { F } < \mathcal { H }$ is false (see the next exercise also).

11.Prove that if families $\mathcal { F }$ ， $\mathcal { G }$ ，and $\mathcal { H }$ satisfy $\mathcal { F } < \mathcal { G } < \mathcal { H }$ ,and if $\mathcal { G }$ is consistent, then $\mathcal { F } < \mathcal { H }$

(Outline: By definition, $\mathcal { F } < \mathcal { G }$ means you can find intervals $I$ in $\mathcal { F }$ and $J$ in $\mathcal { G }$ such that $I \ < \ J$ Also, $\mathcal { G } < \mathcal { H }$ gives us intervals $J ^ { \prime }$ and $K$ with $J ^ { \prime } < K$ (Note that you must be careful and not assume that $J = J ^ { \prime }$ .）Write $K = \left\lfloor p , q \right\rfloor$ What must you prove about endpoints to deduce $F < K$ ？ How can you use the consistency of $\mathcal { G }$ ? Write some inequalities with the endpoints of these intervals and an element in an intersection.)

12.Find consistent families $\mathcal { F }$ ， $\mathcal { G }$ ,and $\mathcal { H }$ such that $\mathcal { F } \leq \mathcal { G }$ and $\mathcal { G } < \mathcal { H }$ ,but $\mathcal { F } \not \prec \mathcal { H }$ (Hint: Start with $\mathcal { G } < \mathcal { H }$ and then find $\mathcal { F }$

13. The text has the following proposition, with a proof of only the first statement. Prove the remaining ones.

PROPOSITION 1.2.18 Suppose the families ${ \mathcal { F } } , { \mathcal { G } }$ ,and $\mathcal { H }$ are consistent; then

(a) $\mathcal { F } ( \mathcal { G } \mathcal { H } ) \sim ( \mathcal { F } \mathcal { G } ) \mathcal { H }$ (b) $\mathcal { F } ( \mathcal { G } + \mathcal { H } ) \sim \mathcal { F } \mathcal { G } + \mathcal { F } \mathcal { H }$ (c） $\mathcal { F } + ( \mathcal { G } + \mathcal { H } ) \sim ( \mathcal { F } + \mathcal { G } ) + \mathcal { H }$ (d) $| { \mathcal { F G } } | \sim | { \mathcal { F } } | \ | { \mathcal { G } } |$

14. Show by example that $\mathcal { F } \leq \mathcal { G }$ and $\mathcal { G } \leq \mathcal { H }$ need not imply $\mathcal { F } \leq \mathcal { H }$

15.(Project） Define, for intervals $I$ and $J$ ， the relation $I \ \leq \ J$ to mean either$I < J$ or $I$ and $J$ meet (intersect).

(a） Prove that the following are equivalent.

i. $I \leq J$ ii. The left-hand endpoint of $I$ is $\leq$ the right-hand endpoint of $J$ ii. There exist numbers $x \in I$ ， $y \in J$ such that $x \leq y$

(b） Try to prove results about $\leq$ that are similar to the results proved in the text about $<$ . For example, is it true that $I \leq J$ and $J \le K$ imply $I \leq K$ ？ Is it true that $I \geq 0$ and $J \geq 0$ imply $I J \geq 0$ ？

(c） Prove that for families $\mathcal { F }$ and $\mathcal { G }$ ， $\mathcal { F } \leq \mathcal { G }$ if and only if $I \leq J$ for every pair of intervals $I \in { \mathcal { F } }$ and $J \in { \mathcal { G } }$ . (You may find Proposition 1.2.26 useful.)

# 1.3Fine Families

So far,in discussing consistency,we have been concerned about whether the intervals in a family seem to be measuring the same thing. However,there is another issue: accuracy or fineness of measurement. If an experiment produces an interval of possible values for a quantity, then the length of that interval is a measure of how well the experiment has determined that quantity. Certainly the interval [3.1415,3.1416] is a better estimate of a certain well-known constant than the interval [3.14,3.15].

By the way, the actual size of the endpoints of an interval has nothing to do with the accuracy of the measurement it represents. Thus, the interval [10oo,10o0.01] has length 0.O1, so represents a more accurate measurement than the interval [0.1,0.2].

Of course,in the case of actual physical experiments, there can be limits to the accuracy of a measurement (for example, limits inherent in the laws of quantum mechanics). In the case of mathematics, however, many constructions have no such limits. The calculation of various roots,or of $\boldsymbol { \mathcal { U } }$ , or of values of functions, can result in arbitrarily fine accuracy. We now consider families representing these kinds of measurements or constructions.

DEFINITION 1.3.1 The family $\mathcal { F }$ is fine when, for each positive rational e, there is an interval in $\mathcal { F }$ that has length less than $\epsilon$

Perhaps it would be more accurate to refer to a family as being“arbitrarily” fine, but we have opted for the shorter form,which is easier to say and read. For clarity we will sometimes refer to fine families as families having arbitrarily fine intervals.

Note also that the rationals $\epsilon$ are positive. We don't expect to find intervals of length O, since these would give absolutely accurate estimates. For example, measuring $\sqrt { 2 }$ by an interval of length O would give an estimate $\lfloor r , r \rfloor$ ，which would be saying that $\sqrt { 2 }$ is $r$ ,a rational number. However, it has been known for more than 2000 years that $\sqrt { 2 }$ can not be rational. Thus,for fineness we only demand that intervals can be found of length less than $\epsilon$ for each $\epsilon > 0$

The Greek letter $\epsilon$ , called “epsilon,”has long been used by scientists and mathematicians to denote a small number. It doesn't have to be small, but that's the tradition.

Finally, this definition could be rephrased by substituting the word “any”or “every” for“each.”When mathematicians say they can do something for any positive number, they really mean for each or euery positive number. The words “any,” “every,” and “each” are usually used synonymously in this context. For example, mathematicians say “The number $N$ is square-free if, for any prime $p$ dividing $N$ ， $p ^ { 2 }$ does not divide $N$ .”“Any” means “each” or “every” in this sentence. We chose “each” in the definition of fine family above to avoid giving the impression,upon first reading, that finding an interval of length less than $\epsilon$ for just any (one) value of $\epsilon$ was good enough. Now that this is explained, we will use “any”，“every”,and “each” interchangeably when it is appropriate.

EXAMPLE 1.3.2 Let $\mathcal { F }$ be the family of all intervals $\lfloor 1 / n ^ { 2 } , 3 / n \rfloor , n = 1 , 2 , . . .$ Suppose some (any) $\epsilon > 0$ is given. How can we produce an interval of length less than ∈ ? The length of the nth interval is $3 / n \mathrm { ~ - ~ } 1 / n ^ { 2 } < 3 / n$ . Thus, if we make $3 / n < \epsilon$ ， the length of the interval wil $b e < \epsilon$ as well. All we need then (solving the inequality for $_ { n }$ ） is to have $n > 3 / \epsilon$ . So this tells us that, for any $\epsilon > 0$ ， if we choose n so that $n > 3 / \epsilon$ ， the interval $[ 1 / n ^ { 2 } , 3 / n ]$ ， will have length $< \epsilon$ . As a specifc example, had ∈ actually been，say $1 / 1 5 0 0$ ，we would need $n > 3 / ( 1 / 1 5 0 0 ) = 4 5 0 0$ . Thus,the interval $[ 1 / 4 5 0 1 ^ { 2 } , 3 / 4 5 0 1 ]$ would meet the challenge.

We have seen previously that $\mathcal { F } < \mathcal { G } < \mathcal { H }$ need not imply that $\mathcal { F } < \mathcal { H }$ ; however, when $\mathcal { G }$ is consistent,the implication does hold. The next few results show that similar familiar properties of inequalities,which may be false in general — even for consistent families — are true with a fineness assumption. These propositions also demonstrate how the fineness assumption is used in proofs.

PROPOSITION 1.3.3 Suppose that $\mathcal { F }$ is fine. If $\mathcal { F } \leq \mathcal { G }$ and $\mathcal { G } < \mathcal { H }$ ， then $\mathcal { F } < \mathcal { H }$

Proof. Since $\mathcal { G } < \mathcal { H }$ , we can find intervals $J = \lfloor u , v \rfloor$ in $\mathcal { G }$ and $K = \left\lfloor p , q \right\rfloor$ in $\mathcal { H }$ with $v < p$ Since $\mathcal { G } \not \prec \mathcal { F }$ , for any interval $I = \lfloor r , s \rfloor$ in $\mathcal { F }$ , we must have $v \not \prec r$ ，s0 $r \leq v$ We have the following diagram

![](images/51a2a45e09177be433e7fbeac31c4f716f63cfe636610ebf0fac2475b347c774.jpg)

From this picture,we see that we can make sure that $s$ lies to the left of $p$ by making the length of $\lfloor r , s \rfloor$ smaller than the gap,which is $p - v$ .Because $\mathcal { F }$ is fine and $p - v > 0$ ,we can find an interval $I = \lfloor r , s \rfloor$ in $\mathcal { F }$ with $s - r < p - v$ . Adding this inequality to the previous one gives $s < p$ ，s0 $I < K$ ,and hence $\mathcal { F } < \mathcal { H }$ ■

REMARk 1.3.4 You can find a simple example to show that, without the fineness assumption, this result may be false, even for consistent families.

PROPOSITION 1.3.5 Suppose that $\mathcal { F }$ is fine. If ${ \mathcal { F } } \geq { \mathcal { G } }$ and $\mathcal { G } > \mathcal { H }$ ， then $\mathcal { F } > \mathcal { H }$

The proof, similar to that of the previous proposition, is left as an exercise.

The next proposition not only uses fineness,but is our first application of the Wiggle Lemma (0.2.6),which says that if $r < q + \epsilon$ for all $\epsilon > 0$ then we must have $r \leq q$

PROPOSITION 1.3.6 Suppose that $\mathcal { G }$ is fine. If $\mathcal { F } \leq \mathcal { G }$ and $\mathcal { G } \leq \mathcal { H }$ ，then $\mathcal { F } \leq \mathcal { H }$

Proof. Choose any $I = \lfloor r , s \rfloor$ in $\mathcal { F }$ and $K = \left\lfloor p , q \right\rfloor$ in $\mathcal { H }$ . By the characterization of inequalities in terms of upper and lower bounds (1.2.26),we must show that $r \leq q$ Let $\epsilon > 0$ be any rational number; we will show that $r \leq q + \epsilon$ . Since $\mathcal { G }$ is fine, we can choose an interval $J = \lfloor u , v \rfloor$ in $\mathcal { G }$ such that $\ell ( J ) < \epsilon$ . Since $\mathcal { F } \leq \mathcal { G }$ and $\mathcal { G } \leq \mathcal { H }$ the same characterization of weak inequality for families implies that $r \leq v$ and $u \leq q$ We now have $r \leq v = u + ( v - u ) \leq q + ( v - u ) < q + \epsilon$ Since $\epsilon > 0$ was arbitrary, the Wiggle Lemma gives us $r \leq q$ ： $\vartriangle$

REMARK 1.3.7 This proof has some interesting ideas. Does drawing a diagram help understand it? Try closing the book and reproducing the proof on your own.

COROLLARY 1.3.8 Suppose that $\mathcal { G }$ is fine. If $\mathcal { F } \sim \mathcal { G }$ and $\mathcal { G } \sim \mathcal { H }$ ， then $\mathcal { F } \sim \mathcal { H }$

Proof.In Proposition 1.2.27 we proved that if $\mathcal { F } \sim \mathcal { G }$ and $\mathcal { G } \sim \mathcal { H }$ ,then $\mathcal { F } \leq \mathcal { G }$ and $\mathcal { G } \leq \mathcal { H }$ . Therefore,by the previous proposition, $\mathcal { F } \leq \mathcal { H }$ .Using similar reasoning, $\mathcal { H } \leq \mathcal { F }$ because $\mathcal { H } \sim \mathcal { G }$ and $\mathcal { G } \sim \mathcal { F }$ . By combining these two conclusions,a final use of the characterization of $\sim$ in terms of $\leq$ gives the desired result: $\mathcal { F } \sim \mathcal { H }$ ■

COROLLARY 1.3.9 If $\mathcal { F }$ is consistent with a family that is fine, then $\mathcal { F }$ is a consistent family.

Proof. Take $\mathcal { G }$ to be the fine family and let $\mathcal { H } = \mathcal { F }$ in the previous proposition. I

NOTATION 1.3.10 For each rational number $c$ ， we will, if there is no danger of confusion, also use c to denote the family of intervals whose sole member is $\displaystyle { \lfloor c , c \rfloor }$ that is, c will also denote $\{ \vert c , c \vert \}$

REMARK 1.3.11 For each $c$ , the associated family $\{ \vert c , c \vert \}$ is obviously consistent and fine, since it has only the one interval of zero length.

According to the notation just introduced, if $\mathcal { F }$ is any family of intervals,and $c$ and $d$ are rational numbers, then “ $\mathcal { F } < d ^ { \mathfrak { s } }$ is a paraphrase for “there is at least one interval in $\mathcal { F }$ ，say $I = \lfloor r , s \rfloor$ ，with $s < d ^ { \prime }$ ，or equivalently，“ $d$ is bigger than some upper bound of $\mathcal { F }$ ’. Similarly，“ $c < \mathcal { F }$ can be rephrased as“ $_ c$ is smaller than some lower bound of $\mathcal { F }$ .”After similar unravelling, the weak inequality $\mathcal { F } \leq b$ amounts to saying that $b$ is greater than or equal to every lower bound of $\mathcal { F }$ . A somewhat more general case has already been discussed in Proposition 1.2.26.

The next result is very important and will be used many times in what follows.

PROPOSITION 1.3.12 Let $\mathcal { F }$ be any family of intervals, and $\lfloor a , b \rfloor$ a rational interval. Then $a \leq \mathcal { F } \leq b$ if and only if $\lfloor a , b \rfloor$ intersects each interval of $\mathcal { F }$

The proof is left as an exercise in “unravelling” that everyone should do.

Since any interval from a consistent family meets every other interval in that family, we immediately deduce the following consequence.

COROLLARY 1.3.13 If $\mathcal { F }$ is a consistent family of intervals and $I = \lfloor r , s \rfloor$ belongs to $\mathcal { F }$ ，then $r \leq \mathcal { F } \leq s$

This corollary also explains,at least for consistent families,why we call $r$ and $s$ lower and upper bounds of $\mathcal { F }$ when $\lfloor r , s \rfloor$ belongs to $\mathcal { F }$ see Definition 1.2.25.

COROLLARY 1.3.14 If $\mathcal { F }$ is consistent and fine, and $[ a , b ]$ and $\lfloor c , d \rfloor$ both meet every interval of $\mathcal { F }$ ，then $\lfloor a , b \rfloor$ and $\lfloor c , d \rfloor$ meet each other.

Proof. Observe that $\{ | a , a | \} \leq \{ | d , d | \}$ and $\{ | c , c | \} \leq \{ | b , b | \}$ by applying Proposition 1.3.6 as well as 1.3.12.

If a family is not consistent,adding more intervals cannot help. However, if it is consistent and fine, then we can construct a maximal consistent family containing it. The proposition we just proved and its corollaries tell us exactly what this family must be.

DEFINITION 1.3.15 If $\mathcal { F }$ is a fine and consistent family, define ${ \mathcal { F } } ^ { * }$ to be the family of all $[ a , b ]$ that intersect every member of $\mathcal { F }$ (or, equivalently， all $\lfloor a , b \rfloor$ such that $a \leq \mathcal { F } \leq b$ ）

That $\mathcal { F }$ is consistent follows directly from the second corollary above. Note that since ${ \mathcal { F } } ^ { * }$ contains every interval of $\mathcal { F }$ ， ${ \mathcal { F } } ^ { * }$ will be fine since $\mathcal { F }$ is assumed to be. ${ \mathcal { F } } ^ { * }$ is maximal in the sense that if $\kappa$ is consistent and contain all the intervals of $\mathcal { F }$ ， then $\kappa$ is contained in ${ \mathcal { F } } ^ { * }$ .(Verification of this is left as an exercise.） The family ${ \mathcal { F } } ^ { * }$ will be used later to standardize the definitions of certain numbers.Note also that $\mathcal { F } \sim \mathcal { F } ^ { \ast }$ ，and $\mathcal { F } \sim \mathcal { G }$ if and only if $\mathcal { F } ^ { * } { \sim } \mathcal { G } ^ { * }$ .See the exercises for these and other properties of ${ \mathcal { F } } ^ { * }$

ExAMPLE 1.3.16 Let $\mathit { C 2 }$ be the family of all $[ a , b ]$ such that $a ^ { 3 } \leq 2 \leq b ^ { 3 }$ . Then $\mathit { c 2 }$ (which stands for “cube root of ${ \boldsymbol { \mathit { \omega } } } _ { \mathcal { Z } }$ "） is a fine and consistent family. Furthermore, $C 2 = C 2 ^ { \ast }$ . For details, see the exercises for this section.

Next we check how fineness behaves when we do arithemetic on families. We will now see the importance of the computations we made for the lengths of sums, products,etc. of intervals done at the beginning of this chapter.

PROPOSITION 1.3.17 If both $\mathcal { F }$ and $\mathcal { G }$ are fine families of intervals, then so are the families $\mathcal { F } + \mathcal { G }$ ， $- \mathcal { F }$ ， $| \mathcal F |$ ， $\operatorname* { m a x } ( \mathcal { F } , \mathcal { G } ) , a n d \operatorname* { m i n } ( \mathcal { F } , \mathcal { G } )$

Proof. For $- \mathcal { F }$ ， $| \mathcal F |$ ， $\operatorname* { m a x } ( \mathcal { F } , \mathcal { G } )$ ，and $\operatorname* { m i n } ( \mathcal { F } , \mathcal { G } )$ , the result is a direct consequence of the length estimates (for intervals） computed for $- I$ (1.1.24), $\left| I \right|$ (1.1.30),and $\operatorname* { m a x } ( I , J )$ and $\operatorname* { m i n } ( I , J )$ (1.1.34) . It remains to consider $\mathcal { F } + \mathcal { G }$

Let $\epsilon$ be any positive rational, and let $a$ and $b$ be any positive rationals whose sum is 1 (e.g., take both $^ { a }$ and $b$ tobe $1 / 2$ ). Then we have $a \epsilon + b \epsilon = \epsilon$

To get an interval in $\mathcal { F } + \mathcal { G }$ of length $< \epsilon$ , take any $I \in { \mathcal { F } }$ and $J \in { \mathcal { G } }$ such that $\ell ( I ) < a \epsilon$ and $\ell ( J ) < b \epsilon$ . Then,by the length formula for $I + J$ (1.1.23), $I + J$ is an interval in $\mathcal { F } + \mathcal { G }$ whose length is $a \epsilon + b \epsilon = \epsilon$ ■

It is not too difficult to find examples of fine families whose product and reciprocals are not fine (see exercises at the end of this section). In these examples the missing property is consistency. To see this,we first establish the following somewhat technical results.

PROPOSITION 1.3.18 Suppose $\mathcal { F }$ contains arbitrarily small subintervals of a single interval $X$ and $\mathcal { G }$ contains arbitrarily small subinteruals of some interval $Y$ .Then $\mathcal { F } \mathcal { G }$ contains arbitrarily small subintervals of $X Y$

PROPOSITION 1.3.19 Suppose $\mathcal { F }$ contains arbitrarily small subintervals of $X$ ，and either $X > 0$ or $X < 0$ . Then $1 / \mathcal { F }$ contains arbitrarily small subintervals of $1 / X$

Here are the proofs of these propositions.

Proof. We do products first. Take symmetric intervals $\lfloor - S , S \rfloor$ containing $X$ ，and $\lfloor - T , T \rfloor$ containing $Y$ (e.g.， for $X ~ = ~ \lfloor a , b \rfloor$ ，set $S = \operatorname* { m a x } ( b , - a ) )$ .Then take any positive rationals $p$ and $q$ with $p + q = 1$ .For each positive rational $\epsilon$ we then have $p \epsilon + q \epsilon = \epsilon$ . By the length estimate for $I J$ (1.1.27), for any $I \in { \mathcal { F } }$ with $I \subset X$ and any $J \in { \mathcal { G } }$ with $J \subset Y$ ，we have

$$
\ell ( I J ) \leq T \ell ( I ) + S \ell ( J ) .
$$

So if we take such $I$ and $J$ with $\ell ( I ) < p \epsilon / T$ and $\ell ( J ) < q \epsilon / S$ , then $I J$ is a subinterval of $X Y$ that belongs to $\mathcal { F } \mathcal { G }$ and

$$
\ell ( I J ) < T { \frac { p \epsilon } { T } } + S { \frac { q \epsilon } { S } } = \epsilon .
$$

Now we look at reciprocals. Suppose $X = \left\lfloor a , b \right\rfloor > 0$ . By the length estimate for $1 / I$ (1.1.25), if $I$ is contained in $X$ ,then

$$
\ell \left( { \frac { 1 } { I } } \right) \leq { \frac { \ell ( I ) } { a ^ { 2 } } } .
$$

Therefore given any positive rational $\epsilon$ , if we take any $I \in { \mathcal { F } }$ that is a subinterval of $X$ with

$$
\ell ( I ) < a ^ { 2 } \epsilon ,
$$

then $1 / I$ is an interval in $1 / \mathcal { F }$ that is a subinterval of $1 / X$ with $\ell ( 1 / I ) < \epsilon$ .The case where $X < 0$ involves just a simple modification of this argument.

The intervals $X$ and $Y$ required in these propositions can always be found when the families are both fine and consistent,as shown by this lemma.

LEMMA 1.3.20 Let $\mathcal { H }$ be any fine and consistent family. Then, for each $I = \lfloor r , s \rfloor$ in $\mathcal { H }$ and any positive rational $c$ ， the family $\mathcal { H }$ contains arbitrarily small intervals that are subintervals of $Z = \lfloor r - c , s + c \rfloor$ . When $\mathcal { H } > 0$ we can choose $Z > 0$ ; when $\mathcal { H } < 0$ we can choose $Z < 0$

Proof. Because $\mathcal { H }$ is consistent, every $J \in { \mathcal { H } }$ intersects $I$ . Hence, if the length of $J$ is less than $c$ ， $J$ must be contained in $Z$ .（Check this.）■

Combining what we now know, we see that the basic arithmetic operations behave well on families that are both consistent and fine.In summary, then,we state the following.

PROPOSITION 1.3.21 Suppose that both $\mathcal { F }$ and $\mathcal { G }$ are fine and consistent families. Then so are the families $\mathcal { F } + \mathcal { G }$ ， $- \mathcal { F }$ ， $\mathcal { F G }$ ， $| \mathcal F |$ ， $\operatorname* { m a x } ( \mathcal { F } , \mathcal { G } )$ ， $\operatorname* { m i n } ( \mathcal { F } , \mathcal { G } )$ ，and $1 / \mathcal { F }$ (provided either $\mathcal { F } > 0$ or $\mathcal { F } < 0$ ).

# Exercises

1. Let $s$ be the family of all intervals $\begin{array} { r } { \left[ \frac { 1 } { 3 n + 1 } , \frac { 1 } { n + 1 } \right] } \end{array}$ $n = 1 , 2 , \ldots$ Show that $\boldsymbol { S }$ is fine.Is it consistent?

2. Let $\boldsymbol { \mathcal { T } }$ be the familyof alintervals $\textstyle \left[ { \frac { 1 } { n } } , { \frac { n + 2 } { n + 1 } } \right]$ $n = 1 , 2 , \ldots$ Is $\boldsymbol { \tau }$ fine? Consistent?

3.Here are some examples to show that the product and reciprocal of fine families needn't be fine.

(a) Let $\mathcal { M }$ be the family of all intervals $[ N , N + 1 / N ] , N = 1 , 2 , 3 , . . .$ Show that $\mathcal { M }$ is fine but $\mathcal { M } \cdot \mathcal { M }$ is not.Note that $\mathcal { M }$ is not consistent.   
(b）Let $_ { \mathcal { R } }$ be the family of allintervals of the form $\lfloor 1 / N , 2 / N \rfloor$ ， $N = 1 , 2 , 3 , \ldots$ Show that $_ { \mathcal { R } }$ is fine but $1 / \mathcal { R }$ is not. Note that $_ { \mathcal { R } }$ is not consistent.

4. Suppose that the family $\mathcal { W }$ has only a finite number of intervals, each having positive (non-zero） length. Can $\mathcal { W }$ be fine? Explain.

5. (See previous exercise) Suppose $\mathcal { F }$ is a fine family with only finitely many intervals. What can you conclude about $\mathcal { F }$ ？

6.Given families $\mathcal { F }$ ， $\mathcal { G }$ ， $\mathcal { H }$ with ${ \mathcal { F } } \geq { \mathcal { G } }$ ， $\mathcal { G } > \mathcal { H }$ and $\mathcal { F }$ fine,prove that $\mathcal { F } > \mathcal { H }$ (Hint: the proof is exactly the same idea as the proof of Proposition 1.3.3).

7.Recall that when $\mathcal { F }$ is fine and consistent,we define ${ \mathcal { F } } ^ { * }$ to be the family of all intervals which intersect every member of $\mathcal { F }$ , that is ${ \mathcal { F } } ^ { * } = \{ K \vert K $ intersects every $I \in { \mathcal { F } } \}$

(a) Prove that ${ \mathcal { F } } ^ { * }$ is itself fine and consistent.   
(b） Prove that $\mathcal { F } \sim \mathcal { F } ^ { \ast }$   
(c） Prove that $\mathcal { F } \sim \mathcal { G } \Longrightarrow \mathcal { F } ^ { * } \sim \mathcal { G } ^ { * }$   
(d） Show that ${ \mathcal { F } } ^ { * }$ is maximal in the sense that if $\kappa$ is any other consistent family which contains all the intervals of $\mathcal { F }$ , then every interval of $\kappa$ is an interval of ${ \mathcal { F } } ^ { * }$ .

8.The following is an important proposition left unproved in the text; prove it. PROPOSITION． Let $\mathcal { F }$ be any family of intervals,and $\lfloor a , b \rfloor$ a rational interval. Then $a \leq \mathcal { F } \leq b$ if and only if $\lfloor a , b \rfloor$ intersects each interual of $\mathcal { F }$

9.Use the proposition of the previous exercise to show that ${ \mathcal { F } } ^ { * }$ is the family of all $\lfloor a , b \rfloor$ such that $a \leq \mathcal { F } \leq b$ (when $\mathcal { F }$ is fine and consistent).

10.Let $\mathit { c 2 }$ be the family of all $[ a , b ]$ such that $a ^ { 3 } \leq 2 \leq b ^ { 3 }$

(a）Prove that $\mathit { c 2 }$ is consistent.   
(b）Prove that $\mathit { c 2 }$ fine.(Outline: To prove that there are arbitrarily small intervals in $\mathit { C 2 }$ ,first check that [1,2] belongs to $\mathit { c 2 }$ ,and then show that if $\lfloor a , b \rfloor$ isin $\mathit { C 2 }$ and $m = ( a + b ) / 2$ (i.e. $_ { m }$ is the midpoint of $\lfloor a , b \rfloor$ ）， then either $\lfloor a , m \rfloor$ or $\lfloor m , b \rfloor$ also belongs to $\mathit { c 2 }$ . Each of the intervals $\lfloor a , m \rfloor$ and $\lfloor m , b \rfloor$ is half the length of the original interval $\lfloor a , b \rfloor$ . We can repeat this process over and over,getting intervals each having half the length of the previous one. We call this process a bisection method for getting arbitrarily small intervals in the family $\mathit { c 2 }$ .）   
(c) Prove that if $r$ is a rational number which belongs to every interval in $\mathit { c 2 }$ ， then $r ^ { 3 } = 2$ . (Hint:First note that $r ^ { 3 }$ and 2 lie in every interval $[ a ^ { 3 } , b ^ { 3 } ]$ Next, show that $\mathit { c 2 }$ contains intervals $\lfloor a , b \rfloor$ such that $b ^ { 3 } - a ^ { 3 }$ is arbitrarily small, using $b ^ { 3 } - a ^ { 3 } = ( b - a ) ( b ^ { 2 } + a b + a ^ { 2 } )$ ; you may assume $\lfloor a , b \rfloor \subset \lfloor 1 , 2 \rfloor$ Conclude that for any $\epsilon > 0$ ， $r ^ { 3 } \leq 2 + \epsilon$ and $2 \leq r ^ { 3 } + \epsilon$ ）   
(d) In the previous exercise,we proved that 2 lies in every interval $[ a ^ { 3 } , b ^ { 3 } ]$ where $\lfloor a , b \rfloor \in { \mathcal { C } } 2$ .These intervals $[ a ^ { 3 } , b ^ { 3 } ]$ lie in $( { \mathcal { C } } 2 ) ( { \mathcal { C } } 2 ) ( { \mathcal { C } } 2 ) = ( { \mathcal { C } } 2 ) ^ { 3 }$ However,a typical interval in $\left( \mathcal { C } 2 \right) ^ { 3 }$ looks like $I J K$ where $I , J , K$ are intervals in $\mathit { C 2 }$ .Show that 2 lies in all of these as well. (Hint: If these intervals are all $> 0$ then $I J K = \lfloor r u p , s v q \rfloor$ （ $I = \lfloor r , s \rfloor$ etc). Show that $2 \in I J K$ by using $a = \operatorname* { m a x } ( r , u , p )$ and $b = \operatorname* { m i n } ( s , v , q )$ . When $I , J , K$ are not all $> 0$ , use the following: LEMMA.If $I = \lfloor r , s \rfloor$ is in $\mathit { c 2 }$ and $r \leq 0$ ,then $I \supset I ^ { \prime } = \left\lfloor 1 , s \right\rfloor$ and $I ^ { \prime }$ is in C2.)   
(e) Prove that no rational number $r$ can satisfy $r ^ { 3 } = 2$ .(Hint: This is a simple modification of the classical proof that $\sqrt { 2 }$ is irrational; look it up if you haven't seen it.） Deduce that there is no rational number common to all of the intervals in $\mathit { c 2 }$   
(f） Work out some sample intervals. Start with $\lfloor 1 , 2 \rfloor$ and apply bisection several times to find an interval [a,b] ∈C2 with l([a,b]) < 100

11.There is a better method for finding square roots than bisection. There is evidence that this method, called “Divide-and-Average,” was known to the ancient Babylonians.Let $q > 0$ be a rational number.First,we observe $x \ > \ 0$ $x ^ { 2 } \ \leq \ q \ { \mathrm { t h e n } } \Bigl ( { \frac { q } { x } } \Bigr ) ^ { 2 } \ \geq \ q$ $I _ { k } = \left\lfloor x , { \frac { q } { x } } \right\rfloor$ $q / x$ $_ x$ $y = { \frac { 1 } { 2 } } \left( x + { \frac { q } { x } } \right)$ $I _ { k + 1 } = [ \operatorname* { m i n } ( y , q / y ) , \operatorname* { m a x } ( y , q / y ) ] = \left\lfloor x ^ { ' } , { \frac { q } { x ^ { \prime } } } \right\rfloor$ $q$ $_ { x }$ where $x ^ { \prime }$ is either $_ y$ or $q / y$ . Starting with $x = 1$ ， we get a family of rational intervals $D _ { k }$ . This family is consistent and fine. Prove consistency by observing that $x ^ { 2 } \leq q \leq ( q / x ) ^ { 2 }$ . To prove fineness, show that if $L = \ell ( D _ { k } ) = | x - q / x |$ ,then $\ell ( D _ { k + 1 } ) = | y - q / y | \leq \frac { 1 } { 2 } L ^ { 2 }$ . Thus, once these lengths are less than, say $1 / 2$ ， they get small very quickly: they are less than $1 / 2$ ， $1 / 4$ ,1/16,1/256,1/65536, etc. This is sometimes called quadratic convergence.

# 1.4Definition of the Reals

We wish to capture the idea that real numbers are measured by rationals. For any particular real number, these measurements must be consistent (we don't want to be measuring two different things)；also, they must be arbitrarily fine,or we don't have enough information to determine the real number uniquely. But what are we measuring? Since all we have at our disposal are the rational numbers,we must actually create the object of measurement from the measurements themselves. This is captured in the following fundamental definition.

DEFINITION 1.4.1 (REAL NUMBER) A real number is a fine and consistent family of rational intervals. We use the symbol $\mathbb { R }$ to denote the reals， and the expression $A \in \mathbb R$ means that $A$ is a real number.

The fineness assumption in this definition tells us that we have as much accuracy as possible. Then, if two real numbers $A$ and $B$ cannot be distinguished from each other by a pair of measurements $I \ < \ J$ or $J \ < \ I$ (where $I$ and $J$ are intervals in $A$ and $B$ respectively),then they cannot be distinguished.But rejecting these inequalities means saying $A \geq B$ and $B \geq A$ ,i.e. $A \sim B$

DEFINITION 1.4.2（EQUALITY OF REALS） $A = B$ as real numbers means $A \sim B$ as families of intervals.

In order to avoid confusion,for a while we will denote real numbers using capital letters $A$ ， $B$ ， $C$ ,and will continue to employ the notations $A < B$ ， $A > B$ ， $A \le B$ and $B \leq A$ in the way that was defined for families of intervals (these relations for reals are defned to be exactly the same relations for the reals when considered as families of rational intervals). The following properties of equality and order follow directly from propositions in the previous section about the relations $\sim$ ， $<$ ,and $\leq$

PROPOSITION 1.4.3 Suppose $A$ ， $B$ ， $C$ and $D$ are real numbers. Then

1. $A = A$ ("Reflexivity").  
2. $A = B$ if and only if $B = A$ (“Symmetry").  
3.If $A = B$ and $B = C$ ，then $A = C$ ("Transitivity").  
4 $A = B$ if and only if $A \leq B$ and $B \leq A$   
5.If $A < B$ ，then $A \leq B$ (i.e. $A \ne B$ ）  
6.If $A < B < C$ ，then $A < C$   
7.If $A \leq B$ and $B < C$ ，then $A < C$   
8.If $A \geq B$ and $B > C$ ，then $A > C$   
9.If $A \le B$ and $B \leq C$ ，then $A \leq C$ .  
10.If $A = B < C = D$ ，then $A < D$   
11.If $A = B \geq C = D$ ， then $A \geq D$

(Note that the last two parts follow from the preceding parts.)

EXERCIsE 1.4.4 For each of the above properties, state the property for families, already proved, which implies it.

Those reals $A$ for which the reciprocal $1 / A$ exists are those for which $A > 0$ or $A < 0$ (see Definition 1.2.12). We have a special notation for these.

DEFINITION 1.4.5 $A \in \mathbb { R } ^ { * }$ means that $A \in \mathbb R$ and either $A < 0$ or $A > 0$

Just as we were able to consider the integers $\mathbb { Z }$ as part of the rationals $\mathbb { Q }$ by the association $N  N / 1$ ，we can consider the rationals $\mathbb { Q }$ as part of the reals $\mathbb { R }$ To see how,consider the operation that associates to each rational $c$ the simple family consisting of the single interval $\displaystyle \lfloor c , c \rfloor$ .As we have observed, this family is clearly consistent and fine,and the association $c  \{ \vert c , c \vert \}$ enables us to consider the rationals as real numbers. On the other hand,we could also identify $_ c$ with the maximal family $c ^ { * }$ ,which in this case turns out to be simply the family of all rational intervals containing $c$ . It is easy to see, however, that these two identifications, or embeddings,produce equal real numbers since $c \sim c ^ { * }$ .We can also think of these identifications as functions mapping $\mathbb { Q }$ into $\mathbb { R }$

Suppose that $A$ is a real number and that the (rational) interval $\lfloor r , s \rfloor$ belongs to $A$ . Then, since real numbers are consistent families,Proposition 1.3.12 tells us that $r \leq A \leq s$ . Thus,the left-hand endpoints of intervals in the family $A$ are really lower bounds for $A$ ,and the right-hand endpoints are upper bounds. Conversely, suppose that $\lfloor r , s \rfloor$ is a rational interval with endpoints $r$ and $s$ satisfying this inequality. Then $\lfloor r , s \rfloor$ intersects every interval in $A$ by the same proposition. Now $\lfloor r , s \rfloor$ may not belong to $A$ ,but we can enlarge $A$ by adding $\lfloor r , s \rfloor$ ,without changing $A$ as a real number (since the new family will be consistent with $A$ ); that is,the new family will be a real number equal to $A$ and containing $\lfloor r , s \rfloor$ . We can continue enlarging $A$ in this way to form $A ^ { * }$ , the family of all rational intervals which meet every interval of $A$ .By Corollary 1.3.14 we know that $A ^ { * }$ is consistent,and it is also fine since it contains $A$ (which is fine). In fact, $A \sim A ^ { * }$ as families,so $A = A ^ { * }$ as real numbers. (For more about $A ^ { * }$ see the exercises on page 38.） For any bounds $r \leq A \leq s$ ，the interval $\lfloor r , s \rfloor$ may not be in $A$ but it is in $A ^ { * }$

In the previous section (see 1.3.16) we constructed the family $\mathit { c 2 }$ (cube root of 2):

C2 = family of all rational intervals $\lfloor a , b \rfloor$ such that $a ^ { 3 } \leq 2 \leq b ^ { 3 }$

In fact, the following properties of $\mathit { c 2 }$ appear as exercise 7 on page 38.

· $\mathit { c 2 }$ is fine and consistent. · 2 belongs to every interval of $\left( \mathcal { C } 2 \right) ^ { 3 } = \left( \mathcal { C } 2 \right) \left( \mathcal { C } 2 \right) \left( \mathcal { C } 2 \right)$

The first property tells us that $\mathit { c 2 }$ is a real number,and the second tells us that [2,2] meets every interval of $\left( \mathcal { C } 2 \right) ^ { 3 }$ ，thus $\left( \mathcal { C } 2 \right) ^ { 3 } \sim \{ [ 2 , 2 ] \}$ . So, as real numbers, $\left( \mathcal { C } 2 \right) ^ { 3 } = 2$ , and we are justified in writing $\mathscr { C } 2 = \sqrt [ 3 ] { 2 }$ . We have constructed a number we didn't have before, since there is no rational whose cube is 2. (The exercises for this section contain several other examples of “new” real numbers.)

It is clear that we could mimic this construction and compute various roots of rational numbers.For example,we could construct $\sqrt [ 6 ] { 1 9 }$ by looking at all rational intervals $\lfloor a , b \rfloor$ with the properties that $a > 0$ and $a ^ { 6 } \leq 1 9 \leq b ^ { 6 }$ .(We need $a \mathrm { ~ > ~ }$ $0$ to make sure we are getting the positive root； without it, the family wouldn't be consistent either, since we would be looking at the positive and negative root simultaneously.） What we are doing is constructing inverses,one value at a time, for functions of the form $x ^ { N }$ . In the next chapter we will see a much better way of constructing inverses for functions.

# Exercises

1. Let us represent the real number 2 by the family $\{ \vert 2 , 2 \vert \}$ and 3 by $\{ | 3 , 3 | \}$

(a) Show that $2 < 3$ and $2 \leq 3$   
(b）Let $\boldsymbol { \tau }$ be the family of intervals $\displaystyle \lvert 2 - 1 / N , 2 + 1 / N \rvert$ for $N = 1 , 2 , \ldots$ Show that $\boldsymbol { \mathcal { T } }$ is a real number and,as a real number, $T = 2$ . Similarly,look at the family $\mathcal { H }$ of intervals $\displaystyle | 3 - 1 / N , 3 + 1 / N |$ . Prove that $\tau < \mathcal { H }$   
(c) Write down some of the intervals in the family $\mathcal { T } / \mathcal { H }$ ， and prove that $\{ | 2 / 3 , 2 / 3 | \} \sim T / \mathcal { H }$ ， so that $\tau / \mathcal { H } = 2 / 3$ as real numbers.

2.(Project） The following famous formula is often derived in calculus courses:

$$
\ln 2 = 1 - { \frac { 1 } { 2 } } + { \frac { 1 } { 3 } } - { \frac { 1 } { 4 } } + \cdots = \sum _ { k = 1 } ^ { \infty } ( - 1 ) ^ { k + 1 } { \frac { 1 } { k } } .
$$

In fact,proving this is not at all trivial, as we will see later when we take up infinite series. However,with this formula as motivation,let's define the following sequence of partial sums:

$$
\begin{array} { l l l } { { s _ { 0 } } } & { { = } } & { { 0 } } \\ { { } } & { { } } & { { } } \\ { { s _ { 1 } } } & { { = } } & { { 1 } } \\ { { s _ { 2 } } } & { { = } } & { { 1 - { \displaystyle \frac { 1 } { 2 } } } } \\ { { } } & { { } } & { { } } \\ { { } } & { { } } & { { \vdots } } \\ { { s _ { k } } } & { { = } } & { { \displaystyle 1 - { \displaystyle \frac { 1 } { 2 } } + { \displaystyle \frac { 1 } { 3 } } \cdots ( - 1 ) ^ { 1 + k } { \displaystyle \frac { 1 } { k } } } } \end{array}
$$

and in general ( $n \geq 1$ ），

$$
\begin{array} { r c l } { { s _ { 2 n } } } & { { = } } & { { s _ { 2 n - 1 } - { \cfrac { 1 } { 2 n } } } } \\ { { } } & { { } } & { { } } \\ { { s _ { 2 n + 1 } } } & { { = } } & { { s _ { 2 n } + { \cfrac { 1 } { 2 n + 1 } } . } } \end{array}
$$

It is clear from the last of these equations that, for each $k \geq 0$ ， $s _ { 2 k } \leq s _ { 2 k + 1 }$ We can therefore define, for $k = 0 , 1 , \ldots$ , the intervals

$$
{ \cal I } _ { k } = [ s _ { 2 k } , ~ s _ { 2 k + 1 } ] .
$$

(a) Write down some of these intervals explicitly. Also, sketch some of these intervals on a single line representing the rational numbers.   
(b） Show that, for each $k$ ， $I _ { k + 1 } \subset I _ { k }$ and $\begin{array} { r } { \ell ( I _ { k } ) = \frac { 1 } { 2 k + 1 } } \end{array}$   
(c)Let $\mathcal { L }$ be the family of all the intervals $I _ { k }$ ， $k = 0 , 1 , 2 , \ldots$ .Given $\epsilon > 0$ ， show how to find $k$ so that $\ell ( I _ { k } ) < \epsilon$ .Show that $\mathcal { L }$ is a real number. (Note: for consistency, you have to show that $I _ { k }$ and $I _ { n }$ intersect.What, exactly, will be their intersection?） We might want to call $\mathcal { L }$ $\ln { 2 }$ ”

(d) Similarly from calculus, $\begin{array} { r } { \frac { \pi } { 4 } = 1 - \frac { 1 } { 3 } + \frac { 1 } { 5 } - \frac { 1 } { 7 } \cdot \cdot \cdot = \sum _ { k = 1 } ^ { \infty } ( - 1 ) ^ { k + 1 } \frac { 1 } { 2 k - 1 } } \end{array}$ With this formula as motivation,we follow the same idea as above and define $t _ { 0 } = 0 , \ t _ { 1 } = 1$ and $\begin{array} { r } { t _ { 2 n } = t _ { 2 n - 1 } - \frac { 1 } { 4 n - 1 } } \end{array}$ ， $\begin{array} { r } { t _ { 2 n + 1 } = t _ { 2 n } + \frac { 1 } { 4 n + 1 } } \end{array}$ 4n+1:Also, define the intervals $J _ { k } = \left\lfloor t _ { 2 k } , t _ { 2 k + 1 } \right\rfloor$ . Show that $J _ { k + 1 } \subset J _ { k }$ ,and find $\ell ( J _ { k } )$ .Let $\mathcal { P }$ be the family of all the intervals $J _ { k }$ ， $k = 0 , 1 , 2 , \ldots$ Given $\epsilon > 0$ ，show how to find $k$ so that $\ell ( J _ { k } ) < \epsilon$ $\mathcal { P }$ is a real number that we might call $\textstyle { \frac { \pi } { 4 } }$ (e） The real number $\ln 2 \cdot { \frac { \pi } { 4 } }$ is the product family $\mathcal { L } \cdot \mathcal { P }$ . Find any interval in L .P that has length less than 1000 (that is, find $_ { m }$ and $_ { n }$ so that $I _ { m } \cdot J _ { n }$ has length 1000，and prove it.) Show how to find one of length less than $\epsilon$ .(Hint:Explain why all of these intervals are contained in $[ 0 , 1 ]$ and then use Proposition 1.1.27, the estimate for $\ell ( I \cdot J )$ .）

(f）Prove,using the criterion for strict inequality of reals, that $\ln 2 < \pi / 4$ This means you must find $_ { m }$ and $_ { n }$ such that $I _ { m } < J _ { n }$ . (Note: you should not use decimals, though it may be handy to use a calculator to determine which rational intervals to compare. The Maple package will do fractional arithmetic verynicely.)

(g) There are a few cranks who have printed up (at their own expense) papers attempting to show that $\pi = { \sqrt { 1 0 } }$ . Show that,with the definition above of $\textstyle { \frac { n } { 4 } }$ ,that $\pi ^ { 2 } < 1 0 $ (i.e. $\begin{array} { r } { \left( { \frac { \pi } { 4 } } \right) ^ { 2 } < \frac { 5 } { 8 } } \end{array}$ ). This, of course, does not refute the cranks, since their definition of $\pi$ is geometric,but it may be fun anyways.

(h）（Generalization） Suppose $a _ { 1 } , \ a _ { 2 }$ ， $a _ { 3 } , \ldots .$ are positive rationals.Let $L _ { n } =$ $\left\lfloor s _ { 2 n } , s _ { 2 n + 1 } \right\rfloor$ where $s _ { 0 } = 0$ ， $s _ { 1 } = a _ { 1 }$ ,and, for $\ i \geq 1 , \ s _ { 2 n } = a _ { 1 } - a _ { 2 } + \cdot \cdot \cdot - a _ { 2 n }$ and $s _ { 2 n + 1 } = a _ { 1 } - a _ { 2 } + \cdots - a _ { 2 n } + a _ { 2 n + 1 }$ .What sort of condition will guarantee that $L _ { k } \supset L _ { k + 1 }$ for all $k$ ? This will make the family of intervals consistent (explain why). What sort of condition on the $a$ 's will guarantee that the family is fine?

3.(Project） Using the family $\mathit { c 2 }$ , which we now call $\sqrt [ 3 ] { 2 }$ (see page 41), as a model, show how you can construct $N$ th roots ( $N = 2 , 3 , \ldots$ ）of any positive rational number $r$ . Note that you have to be careful with even roots to make the family positive.

4.Show that the family $D _ { k }$ obtained by “Divide-and-Average” (see exercise 11 on page 39） has $\sqrt { q }$ as its limit. Write down some of the Divide-and-Average family for calculating $\sqrt { 5 }$ . Divide-and-Average is a special case of Newton's Method, which,when it works,exhibits the same quadratic convergence.

# 1.5Real Number Arithmetic

By “arithmetic,” mathematicians usually mean basic operations such as addition, multiplication, taking absolute value,etc. Different collctions of mathematical objects have different arithmetics. So, for example,we may talk about the arithmetic of numbers,the arithmetic of vectors or the arithmetic of matrices. In this chapter we will see that the arithmetic of real numbers is very similar to that of the rationals in the sense that similar laws hold (e.g. associativity, commutativity, etc.） This is not too surprising, since the reals inherit their basic arithmetic (a-rith-met $'$ -ic)operations from those defined on families of rational intervals.The arithmetic of rational intervals,as we have already seen, is derived from that of the rationals. There are some differences,however,mostly stemming from that fact that we can always tell when a rational has a reciprocal since we can always tell when a rational is “not zero.”This is not true for reals,where,in order to find the reciprocal of $A$ we have to determine,explicitly, that $A > 0$ or $A < 0$ ,that is,whether $A \in \mathbb { R } ^ { * }$ .Except in certain specific examples,this requires proving a theorem (see the appendix to this chapter on “The Goldbach Number").

Suppose that $A$ and $B$ are reals. Since $A$ and $B$ are fine and consistent families, so are $A + B$ ， $A B$ ， $- A$ ， $| A |$ ， $\operatorname* { m a x } ( A , B )$ ，and $\operatorname* { m i n } ( A , B )$ . Thus, $A + B$ ， $A B$ ， $- A$ ， $| A |$ ， $\operatorname* { m a x } ( A , B )$ ，and $\operatorname* { m i n } ( A , B )$ are also real numbers. When $A \in \mathbb { R } ^ { * }$ (i.e. $A > 0$ or $A < 0$ ),then $1 / A$ is also a real number.

DEFINITioN 1.5.1 The following operations on real numbers are performed by considering the real numbers as families: $A + B$ ， $A B$ ， $- A$ ， $| A |$ ， $\operatorname* { m a x } ( A , B )$ ， $\operatorname* { m i n } ( A , B )$ ， and $1 / A$

A real number can be represented in many ways by different families that are consistent with each other.For example, the real number $2 = \{ | 2 , 2 | \}$ is also representedby the family $T = \left\{ \left[ 2 - { \frac { 1 } { n } } , 2 + { \frac { 1 } { n } } \right] , n = 1 , 2 , \ldots \right\}$ It isasorepresented by the maximal family consisting of all $[ r , s ]$ containing the rational number 2. Does $3 + 2 = 3 + \mathcal { T }$ as real numbers—i.e.is it true that $\{ | 3 , 3 | \} + \{ | 2 , 2 | \} \sim \{ | 2 , 2 | \} + \mathcal { T }$ as families? Similarly,is $1 / 2 = 1 / T = 1 / 2 ^ { * }$ ？It is clearly important to know that arithmetic operations performed on equal reals yield equal results. Put another way, if we perform an arithmetic operation on families $\mathcal { F }$ and $\mathcal { G }$ ,and then perform the same operation,replacing $\mathcal { F }$ and $\mathcal { G }$ by families ${ \mathcal { F } } ^ { \prime }$ and $\mathcal { G } ^ { \prime }$ consistent with them,do we get consistent answers? Fortunately we do; indeed, this is a fact we have already proved in Proposition (1.2.17). However, we will now rephrase it in the language of reals.

PROPOSITION 1.5.2 If $A = A ^ { \prime }$ and $B = B ^ { \prime }$ ，then

1. $A + B = A ^ { \prime } + B ^ { \prime }$ (in particular, $A = A ^ { \prime }$ implies $A + B = A ^ { \prime } + B ,$

2. $A B = A ^ { \prime } B ^ { \prime }$ (in particular, $A = A ^ { \prime }$ implies $A B = A ^ { \prime } B$ ）

3. When $A \in \mathbb { R } ^ { * } s o$ is $A ^ { \prime }$ ，and $1 / A = 1 / A ^ { \prime }$

4 $| { \cal { A } } | = | { \cal { A } } ^ { \prime } |$   
5. $\operatorname* { m a x } ( A , B ) = \operatorname* { m a x } ( A ^ { \prime } , B ^ { \prime } )$   
6. $\operatorname* { m i n } ( A , B ) = \operatorname* { m i n } ( A ^ { \prime } , B ^ { \prime } )$

(For specific examples, see the exercises.)

DEFINITION 1.5.3（SUBTRACTION AND DIVISION） $A - B$ means $A + \left( - B \right)$ and, for $B \in \mathbb { R } ^ { * }$ ， $A / B$ means $A ( 1 / B )$

PROPOsITiON 1.5.4 The following laws of arithmetic hold.

1. $A + B = B + A$   
2. $A + ( B + C ) = ( A + B ) + C$   
3. $A + 0 = A$   
4 $A - A = 0$   
5. $A B = B A$   
6. $A ( B C ) = ( A B ) C$   
7. $1 \cdot B = B$   
8.If $A \in \mathbb { R } ^ { * }$ ，then $A / A = 1$   
9. $A ( B + C ) = A B + A C$

Proof. These are proved by working on the interval level and using consistency; details are left for the exercises. □

COROLLARY 1.5.5 (ADDITiVE LAws) The following additional laws of arithmetic hold.

10.If $A + C = B + C$ ， then $A = B$ ("Cancellation for Addition").

11. $A = B$ if and only if $0 = B - A$

12. $- ( A + C ) = ( - A ) + ( - C )$

13. $- ( - A ) = A$

COROLLARY 1.5.6 (MULTIPLICATIVE LAWs） The following additional laws of arithmetic hold.

14.If $C \in \mathbb { R } ^ { * }$ and $C A = C B$ ，then $A = B$ . ("Cancellation for Multiplication").

15.For $A \in \mathbb { R } ^ { * }$ ， $A = B$ if and only if $B / A = 1$

16.If $A B \in \mathbb { R } ^ { * }$ ， then $A \in \mathbb { R } ^ { * }$ and $B \in \mathbb { R } ^ { * }$ ，and $1 / ( A B ) = ( 1 / A ) ( 1 / B )$

17.For $A \in \mathbb { R } ^ { * }$ ， $1 / ( 1 / A ) = A$

Proof of both corollaries. These are consequences of the previous proposition, and need not be proved using intervals; details are left as exercises.

Before moving on,we should note that the two Cancellation properties listed in the corollaries above are extremely useful in proving that certain numbers are equal. For example, the cancellation rule for addition says that if two numbers become equal when the same third number is added to them,they were equal to begin with. This can be used to show that $- ( A + B )$ equals $- A - B$ ， since these two numbers become equal (to $0$ ）when we add $C = A + B$ to them.

We now turn our attention to inequalities and how they behave with respect to arithmetic operations. The following proposition is the key to relating inequalities of reals to these operations, since it enables us to put all the quantities involved on one side. It is most easily proved by going back to intervals and using the definitions of $<$ and $\leq$ ; once again, the proof is left as a (straightforward) exercise.

PROPOSITION 1.5.7 $A < B$ if and only if $0 < B - A$ ，and $A \le B$ if and only if $0 \leq B - A$

(If you are careful, you can deduce the equivalence of the weak inequalities from the equivalence of the strict ones; however, it may be easier to deduce it directly from the definition of $\leq$ .）

# COROLLARY 1.5.8

1. $A < 0$ if and only if $0 < - A$   
2. $A > 0$ if and only if $0 > - A$   
3. $A + C < B + C$ if and only if $A < B$   
4 $B < 0$ if and only if $B + C < C$   
5. $B > 0$ if and only if $B + C > C$   
6. $B \leq 0$ if and only if $B + C \leq C$   
7. $B \geq 0$ if and only if $B + C \geq C$

PROPOSITION 1.5.9 If $B \geq 0$ and $C > 0$ ，then $B + C > 0$

Proof. By the previous proposition $B + C \ \geq \ C$ But $C ~ > ~ 0$ .Therefore,by proposition 1.5.2, $B + C > 0$ ■

PROPOSITION 1.5.10 If $A < C$ and $B \leq D$ ，then $A + B < C + D$

Proof. $( C + D ) - ( A + B ) = ( C - A ) + ( D - B )$ .Because $C - A > 0$ and $D - B \geq 0$ ， the result follows from the previous proposition.

PROPOSITION 1.5.11 If $A + B > 0$ ，then $A > 0$ or $B > 0$

Proof. If $A + B > 0$ , we have intervals $\lfloor r , s \rfloor$ in $A$ and $\left\lfloor u , v \right\rfloor$ in $B$ such that $r + u > 0$ Then either $r > 0$ or $u > 0$ .If $r > 0$ ， $A > 0$ .If $u > 0$ ， $B > 0$ ■

COROLLARY 1.5.12If $A + B < C + D$ ，then $A < C$ or $B < D$ If $A \geq C$ and $B \geq D$ then $A + B \geq C + D$ .

PROPOSITION 1.5.13 If $\lfloor r , s \rfloor$ is in $A$ and $\lfloor u , v \rfloor$ is in $B$ ， then $r + u \le A + B \le s + v$

Proof. This proposition follows from the previous one if we make use of Corollry 1.3.13,which tells us that $r \leq A \leq s$ and also that $u \leq B \leq v$ .However, this proposition is also is an immediate consequence of the corollary itself, because we know that if $\lfloor r , s \rfloor$ belongs to $A$ and $\left\lfloor u , v \right\rfloor$ belongs to $B$ ,then $\left[ r + u , s + v \right]$ belongs to the consistent family $A + B$ ■

PROPOSITION 1.5.14 $0 < A B$ if and only if $0 < A$ and $0 < B$ or $A < 0$ and $B < 0$

Proof. This is a consequence of the fact that for intervals,we have $I J > 0$ if and only if $I > 0$ and $J > 0$ or $I < 0$ and $J < 0$ .(For an interval $K$ ，we have either $K > 0$ or $K < 0$ or $K$ contains 0.）■

COROLLARY 1.5.15 $C A < C B$ if and only if $0 < C$ and $A \ < \ B$ or $C ~ < ~ 0$ and $B < A$

Proof. $C A < C B$ if and only if $0 < C B - C A = C ( B - A )$ and we can apply the previous proposition.

Recall that $\mathbb { R } ^ { * }$ stands for the real numbers $X$ which are either positive ( $X > 0$ ） or negative ( $X < 0$ ）

LEMMA 1.5.16 If $A B = 1$ ，then $A > 0$ or $A < 0$ and $B = 1 / A$

Proof. If $A B = 1$ ,then $A B > 0$ . As we have just seen,this means that either $A > 0$ or $A < 0$ .In either case, $1 / A$ is defined,and multiplying both sides of the equation $A B = 1$ by it gives us that $B = 1 / A$ ■

DEFINITI0N 1.5.17（UNIT) $A$ is a unit means that $A B = 1$ for some $B$

This next proposition, listing elementary properties of units, follows directly from previous results in this section; its proof is left as an exercise.

PROPOSITION 1.5.18 Suppose that $A$ and $B$ are real numbers. Then

1. A is a unit if and only if $A \in \mathbb { R } ^ { * }$

2.AB is α unit if and only if both $A$ and $B$ are units.

3.If $A + B$ is a unit, then $A$ is a unit or $B$ is a unit.

We now establish some formal properties of max, min and absolute value. (See 1.1.32 to review max and min.） Some of these properties are useful in deriving properties of absolute value. Their proofs tend to be a bit technical and one can skim them without too much guilt.

PROPOSITION 1.5.19 $C > \operatorname* { m a x } ( A , B ) \Longleftrightarrow C > A$ and $C > B$

Proof. ( $\Rightarrow$ ）Suppose $C > \operatorname* { m a x } ( A , B )$ . Then we have $I$ in $A$ ， $J$ in $B$ and $K$ in $C$ such that $K > \operatorname* { m a x } ( I , J )$ ．This implies that $K > I$ and $K > J$ ，S0 $C > A$ and $C > B$

（ $\Leftarrow$ If $C > A$ and $C > B$ ，we have $I$ in $A$ ， $J$ in $B$ ，and $K ^ { \prime }$ and $K ^ { \prime \prime }$ in $C$ with $K ^ { \prime } > I$ and $K ^ { \prime \prime } > J$ .Let $K$ be either $K ^ { \prime }$ or $K ^ { \prime \prime }$ , whichever has the greater left endpoint.In either case, $K$ is in $C$ and we have $K > I$ and $K > J$ ,s0 $K > \operatorname* { m a x } ( I , J )$ Thus $C > \operatorname* { m a x } ( A , B )$ . Here is a picture for the case where $K ^ { \prime }$ has the greatest left endpoint:

![](images/a913000f3e38d2ec0d8b6a4ef384c0abf7fed041539db3c6404ddde9c9a10037.jpg)

(Note that we used neither consistency nor fineness in this proof, so the proposition actually holds for arbitrary families.）■

PROPOSITION 1.5.20 $C < \operatorname* { m a x } ( A , B ) \Longleftrightarrow C < A$ or $C < B$

Proof. Straightforward.

The next proposition is useful in converting a proof about max into one about min,and vice versa.

PROPOSITION 1.5.21 $\operatorname* { m i n } ( A , B ) = - \operatorname* { m a x } ( - A , - B ) .$

PROPOSITION 1.5.22

1. $C < \operatorname* { m i n } ( A , B )$ if and only if $C < A$ and $C < B$   
2. $C > \operatorname* { m i n } ( A , B )$ if and only if $C > A$ or $C > B$   
3. $\operatorname* { m i n } ( A , B ) \leq A \leq \operatorname* { m a x } ( A , B )$

PROPOSITION $1 . 5 . 2 3 \operatorname* { m a x } ( A , B ) = B$ if and only if $A \le B$

Proof. ( $\Rightarrow$ ） By part (3) of the preceding proposition, if $\operatorname* { m a x } ( A , B ) \ = \ B$ ，then $A \le B$

（ $\Leftarrow$ ）Suppose that $A \le B$ .Since $B \leq \operatorname* { m a x } ( A , B )$ ，we only have to show that $B \geq \operatorname* { m a x } ( A , B )$ .This follows from proposition 1.5.20 because $B \not \prec B$ and we are assuming that $B \not \prec A$ (i.e. $A \le B$ )■

COROLLARY 1.5.24 m $\mathrm { i n } ( A , B ) = A$ if and only if $A \le B$ (This is a good example of the use of Proposition 1.5.21 in converting min's to max's.)

Now we turn to absolute value. Its properties are quite important for what follows in later chapters.

PROPOSITION 1.5.25 $| A | = \operatorname* { m a x } ( A , - A )$ (To prove this, recall that $| I | = \operatorname* { m a x } ( I , - I , 0 )$ for intervals.)

PROPOSITION 1.5.26

1. $| A | < B$ if and only if $- B < A < B$ (and similarly for $\leq$ ）   
2. $C < | A |$ if and only if $C < A$ or $C < - A$ (and similarly for $\leq$ ）

Proof.For part(1） notice that $- A < B$ if and only if $- B < A$ ， so we have to show that $\operatorname* { m a x } ( A , - A ) < B$ if and only if $A < B$ and $- A < B$ . This is a direct consequence of Proposition 1.5.19. The proof of (2） is similar，using Proposition 1.5.20 with $B = - A$ ■

COROLLARY 1.5.27 If $A \leq X \leq B$ and $A \leq Y \leq B$ ,then $| X - Y | \leq B - A$

Proof. Add the inequalities $A \leq Y \leq B$ and $- B \leq - X \leq - A$ ■

The following form of part (1) of the previous proposition is most often used in doing limits and other analysis constructions; it will be used many times throughout the remainder of the book.

COROLLARY 1.5.28 $| X - A | < E$ if and only if $A - E < X < A + E$ ， (and similarlyfor $\leq$ ）

COROLLARY 1.5.29

1. $| { \cal A } | > 0$ if and only if $A > 0$ or $A < 0$

2. $| { \cal A } | \geq 0$

3. $| { \cal A } | = 0$ if and only if $A = 0$

PROPOSITION 1.5.30

1.If $A \geq 0$ ，then $| A | = A$ .If $A \leq 0$ ，then $| A | = - A$   
2. $A \leq | A |$ and $- A \leq | A |$ ·

Proof. (1): If $A \geq 0$ ,then $A \geq - A$ .If $A \le 0$ , then $- A \geq A$ . The result now follows from Propositions 1.5.23 and 1.5.25. Part (2) is similar and uses 1.5.22 and 1.5.25.

COROLLARY 1.5.31 If $A < C < B$ then $| C | < \operatorname* { m a x } ( | A | , | B | )$ ； similarly for weak inequality $\leq$

The next result, though not diffcult to prove, is extremely important, so we rate it a“Theorem”.

THEOREM 1.5.32（TRIANGLE INEQUALITY） $| A + B | \leq | A | + | B |$

Proof.From the previous proposition and Corollary 1.5.12, we get both

$$
A + B \leq | A | + | B |
$$

and

$$
- ( A + B ) = - A + ( - B ) \leq | A | + | B | .
$$

Therefore, it follows from Proposition 1.5.20 that

$$
\operatorname* { m a x } \{ ( A + B ) , - ( A + B ) \} \leq | A | + | B | .
$$

But by Proposition 1.5.25,

$$
| A + B | = \operatorname* { m a x } \{ ( A + B ) , - ( A + B ) \} .
$$

So we are done.■

We next turn to the formula $| B - A | = \operatorname* { m a x } ( A , B ) - \operatorname* { m i n } ( A , B )$ .If we knew which was bigger, $A$ or $B$ (or whether they were equal) then the proof would be straightforward. Thus,we would like to separate this into cases. What gives us the right to do this? Although we don't have trichotomy for reals (though we do have a version of it—see Proposition 1.6.9 in the next section)，we do know that $A < B$ ， $A > B$ and $A = B$ can't all be false (see lemma below).Here is an alternate terminology:

DEFINITION 1.5.33(RULING OUT） To say that statements $P _ { 1 } , P _ { 2 } , \dots , P _ { N }$ can't all be ruled out is to say that they can't all be false; in other words, if they are all false it leads to a contradiction.

LEMMA 1.5.34 For real numbers, the statements $A < B$ ， $A > B$ and $A = B$ can't all be ruled out.

Proof.Suppose these statements are all false; then $B \leq A$ (since $A < B$ is false) and $A \le B$ (since $A > B$ is false). But then $A = B$ by Proposition 1.4.3,which contradicts the assumed falsity of $A = B$ ■

Let's see how to apply this in proving that

$$
\underbrace { | B - A | = \operatorname* { m a x } ( A , B ) - \operatorname* { m i n } ( A , B ) } _ { \mathrm { S t a t e m e n t ~ } Q } .
$$

Suppose we know that it is true in each of the cases

$$
\underbrace { A < B } _ { P _ { 1 } } , \underbrace { A > B } _ { P 2 } , \mathrm { a n d } \underbrace { A = B } _ { P _ { 3 } } .
$$

That is, suppose that $P _ { 1 } \implies Q$ ， $P _ { 2 } \implies Q$ ，and $P _ { 3 } \implies Q$ .Suppose now that $| B - A | < \operatorname* { m a x } ( A , B ) - \operatorname* { m i n } ( A , B )$ ； then $Q$ is false, so each of $P _ { 1 }$ ， $P _ { 2 }$ ，and $P _ { 3 }$ is false,which is impossible (since they can not all be ruled out). Thus, $| B - A | <$ $\operatorname* { m a x } ( A , B ) - \operatorname* { m i n } ( A , B )$ is impossible, so $| B - A | \geq \operatorname* { m a x } ( A , B ) - \operatorname* { m i n } ( A , B )$ . In a similar way, $| B - A | > \operatorname* { m a x } ( A , B ) - \operatorname* { m i n } ( A , B )$ is impossible, so $| B - A | \leq \operatorname* { m a x } ( A , B ) -$ $\operatorname* { m i n } ( A , B )$ . Thus, since we have $\leq$ and $\geq$ , we get equality, and we have proved the following.

REMARk 1.5.36 This idea can be extended to proving weak inequalities as well as equalities. For example, suppose we know that $a \leq b \Longrightarrow U \leq V$ and $b \leq a \implies$ $U \leq V$ . Then, if $U > V$ ， we deduce that $a \leq b$ and $b \leq a$ must both be false. But this cannot happen, since $a \leq b$ false means $a \ < \ b$ must be false. Thus, $b \leq a$ Im other words, $a \leq b$ and $b \leq a$ can't both be ruled out. Thus, $U > V$ can't happen, so $U \leq V$

LEMMA 1.5.37 $C + \operatorname* { m a x } ( A , B ) = \operatorname* { m a x } ( C + A , C + B ) .$

Note that it is easy to extend this,by induction, to

$$
C + \operatorname* { m a x } ( A _ { 1 } , \ldots , A _ { n } ) = \operatorname* { m a x } ( C + A _ { 1 } , \ldots , C + A _ { n } ) .
$$

An application of the lemma above provides an alternative proof for Proposition 1.5.35:

$$
\begin{array} { r l } { \operatorname* { m a x } ( A , B ) - \operatorname* { m i n } ( A , B ) = \operatorname* { m a x } ( A , B ) + \operatorname* { m a x } ( - A , - B ) } & { } \\ & { = \operatorname* { m a x } \{ \operatorname* { m a x } ( A , B ) - A , \operatorname* { m a x } ( A , B ) - B \} } \\ & { = \operatorname* { m a x } \{ \operatorname* { m a x } ( 0 , B - A ) , \operatorname* { m a x } ( A - B , 0 ) \} } \\ & { = \operatorname* { m a x } ( 0 , B - A , A - B ) } \\ & { = \operatorname* { m a x } ( 0 , | B - A | ) } \\ & { = | B - A | . } \end{array}
$$

This suggests the following generalization of Proposition 1.5.35.

PROPOSITION 1.5.38 $\operatorname* { m a x } ( A _ { 1 } , \dots , A _ { n } ) - \operatorname* { m i n } ( A _ { 1 } , \dots , A _ { n } ) = \operatorname* { m a x } ( A _ { i } - A _ { j } )$ for $i , j =$ $1 , \ldots , n$

Proof. Exercise. I

We conclude this section with the definition and some results on betweenness. The reason why we take such formal care with this concept is that there are many cases where we want to say that $A$ is between $B$ and $C$ without specifying which of $B$ or $C$ is to the right of $A$ ； in fact, sometimes it is either irrelevent or unknown. In some sense,betweenness is a partial substitute for trichotomy, or at least a way of sidestepping the issue. (By the way, like “bookkeeper,”“betweenness” is one of those rare words with three sets of double letters!)

DEFINITION 1.5.39 （BETWEENNESS） A is between $B$ and $C$ means $\operatorname* { m i n } ( B , C ) \leq$ $A \leq m a x ( B , C )$

PROPOSITION 1.5.40 If $A$ and $B$ are between $C$ and $D$ ,then $| B - A | \leq | D - C |$

PROPOSITION 1.5.41 If $A$ is between $B$ and $C$ ，and $B$ and $C$ are between $D$ and $E$ ， then Ais between $D$ and $E$

PROPOsITiON 1.5.42 Given finitely many real numbers, $A _ { 1 } , \ldots , A _ { n }$ ， such that for any three taken in succession, the third is between the first two, then $A _ { n }$ is between $A _ { 1 }$ and $A _ { 2 }$ .

PROPOSITION 1.5.43 A is between $B$ and $C$ if and only if the following two conditions are satisfied:

1.If $B \leq C$ ，then $B \leq A \leq C$ and  
2.If $C \le B$ ， then $C \le A \le B$

PROPOSITION 1.5.44 A is between $B$ and $C$ if and only if $| C - B | = | C - A | +$ $\left| A - B \right|$

COROLLARY 1.5.45 If $A$ is between $B$ and $C$ ， then for all $D$ ， $D A$ is between $D B$ and $D C$

(Prove this by simply multiplying the equation in the preceding proposition by $| D |$ ）

PROPOSITION 1.5.46 For any $A$ ， $B$ ，and $X$ the following statements can't all be ruled out:

1. $X \leq \operatorname* { m i n } ( A , B )$

2. $\operatorname* { m a x } \left( A , B \right) \leq X$

3. $X$ is between $A$ and $B$ .

Proof. That $X \leq \operatorname* { m i n } ( A , B )$ is false implies $X < \operatorname* { m i n } ( A , B )$ is false,which implies $\operatorname* { m i n } ( A , B ) \leq X$

That $\operatorname* { m a x } ( A , B ) \leq X$ is false implies $\operatorname* { m a x } ( A , B ) \ < \ X$ is false,which implies $X \leq \operatorname* { m a x } ( A , B )$

So both statements being false contradicts the falsity of $\operatorname* { m i n } ( A , B ) \ \leq \ X \ \leq$ $\operatorname* { m a x } ( A , B )$ ■

REMARK 1.5.47 The statements $X \leq \operatorname* { m i n } ( A , B )$ and $\operatorname* { m a x } \left( A , B \right) \leq X$ together can be interpreted as saying “A and $B$ lie on the same side of $X$ .” Thus, the previous proposition says that we can not rule out both of the statements:“ $A$ and $B$ lie on the same side of $X$ ” and"X lies between $A$ and $B$ .”

# Exercises

1.Let us identify the rational numbers 3 and 4 with the families $\{ | 3 , 3 | \}$ and $\{ \left\lfloor 4 , 4 \right\rfloor \}$ Let $F = \{ | 4 - 1 / N , 4 + 1 / N | : N = 1 , 2 , \ldots \}$ .Compute the family $3 + F$ and prove directly that $3 + 4 = 3 + F = \{ \lvert 7 , 7 \rvert \}$ (as real numbers). You’ll have to show that the underlying families are consistent with each other. Give a similar proof that $3 { \cal F } = \{ | 1 2 , 1 2 | \}$ ．Note that Proposition 1.5.2,based on Proposition 1.2.17,proves that these kinds of equalities are true in general.

2.Thinking of 2 as the real number $\{ \vert 2 , 2 \vert \}$ ,3 as $\{ | 3 , 3 | \}$ , etc.,prove directly that $2 + 3 = 5$ and $2 \cdot 3 = 6$ . Now think of $2$ as the real number $2 ^ { * }$ , the family of all $\lfloor r , s \rfloor$ such that $r \leq 2 \leq s$ . Similarly identify 3 with $3 ^ { * }$ etc. Prove the same arithmetic formulas: $2 + 3 = 5$ and $2 \cdot 3 = 6$ . Note that Proposition 1.5.2, based on Proposition 1.2.17 proves that these kinds of equalities are true in general.

3. Prove the following properties of the reals. (You will have to use intervals and consistency.)

(a) $A ( B + C ) = A B + A C$   
(b） $A + 0 = A$   
(c） $A - A = 0$   
(d) $1 \cdot B = B$   
(e)If $A \in \mathbb { R } ^ { * }$ then $A / A = 1$

4.Prove the following properties of the reals. You shouldn't have to go back to intervals and families of intervals,but use the properties already established in the previous exercise.

(a)If $A + C = B + C$ ，then $A = B$ (Cancellation for Addition） (Hint: add $- C$ to both sides,using Proposition 1.5.2.)   
(b） $A = B$ if and only if $0 = B - A$   
(c） $- ( A + B ) = ( - A ) + ( - B )$ (Hint: Cancellation says that you can test whether two real numbers $X$ and $Y$ are equal by seeing if you can find a third number $Z$ such that they become equal when you add $Z$ to them (that is, $X + Z = Y + Z \implies X = Y$ )．Apply this to test whether $X = - ( A + B )$ equals $Y = - A + ( - B )$ ; you'll have to figure out what to chose for $Z$ .）   
(d) $- ( - A ) = A$ (Hint: Similar in idea to the preceding.)   
(e)If $C \in \mathbb { R } ^ { * }$ and $C A = C B$ ,then $A = B$ . (Cancellation for Multiplication)   
(f) For $A \in \mathbb { R } ^ { * }$ ， $A = B$ if and only if $B / A = 1$   
(g）For $A \in \mathbb { R } ^ { * }$ ， $1 / ( 1 / A ) = A$ . (Hint: Similar to the idea of previous hints involving addition,but this is multiplication.)

5. Using intervals, prove the following proposition from the text.

PROPOSITION.For real $A$ and $B$ ， (a) $A < B$ if and only if $0 < B - A$ (b) $A \le B$ if and only if $0 \leq B - A$

(If you argue carefully, you can deduce the $\leq$ part from the $<$ part,but it's probably not worth it unless you see right away how to proceed.)

6.Prove the following corollary from the text. You should not have to use intervals at all: its parts follow from the proposition proved in the previous exercise.

COROLLARY. For reals $A$ ， $B$ ,and $C$ ， (a) $A < 0$ if and only if $0 < - A$ (b） $A > 0$ if and only if $0 > - A$ （c） $A + C < B + C$ if and only if $A < B$ (d) $B < 0$ if and only if $B + C < C$ （e） $B > 0$ if and only if $B + C > C$ (f) $B \leq 0$ if and only if $B + C \leq C$ (g） $B \geq 0$ if and only if $B + C \geq C$

7. Suppose that $A$ and $B$ are real numbers. Prove the following.

(a) $A$ is a unit if and only $A \in \mathbb { R } ^ { * }$ .(Hint:if $A X = 1$ then $A X > 0$ ; show that $A > 0$ or $A < 0$ ）   
(b) $A B$ is a unit if and only if both $A$ and $B$ are units.   
(c） If $A B$ is a unit, then $1 / ( A B ) = ( 1 / A ) ( 1 / B )$ (Hint: Use 1 and 2).   
(d) If $A + B$ is a unit, then $A$ is a unit or $B$ is a unit. (Hint: It was already proved in the text that if the sum of two numbers is positive,one of them must be positive.)

8.Prove the very useful Corollary 1.5.28. which says that $| A - X | < E$ if and only if $X - E < A < X + E$ (and similarly for $\leq$ ）

9. Suppose $A \geq 0$ ， $B \geq 0$ . Prove the following.

(a)If $A B \geq 1$ and $B < 1$ ,then $A > 1$ (b)If $A B > 1$ then $A > 1$ or $B > 1$

10. Here are some further useful inequalities.

(a)If $A _ { 1 } , A _ { 2 } , \ldots A _ { n }$ are non-negative and $A _ { 1 } A _ { 2 } \cdot \cdot \cdot A _ { n } > 1$ , then some $A _ { k } > 1$   
(b)If $\textstyle \sum _ { i = 1 } ^ { n } A _ { i } < n$ where each $A _ { i } > 0$ , then some $A _ { k } < 1$   
(c) Suppose ceed byinduction on $\textstyle \prod _ { i = 1 } ^ { n } A _ { i } = 1$ , where each $_ n$ Ifitstre for sme Then $_ n$ but $\textstyle \sum _ { i = 1 } ^ { n } A _ { i } \geq n$ $\textstyle \sum _ { i = 1 } ^ { n + 1 } A _ { i } < n + 1$ . (Hint: pro- then by part (b) some $A$ ,say $A _ { 1 }$ is $< 1$ . But now the product of the remaining $A$ 's must be bigger than 1, so by part (a) one of these, say $A _ { n + 1 }$ ,is $> 1$ Now use the induction hypothesis, the grouping $( A _ { 2 } ) . . . ( A _ { n } ) ( A _ { 1 } A _ { n + 1 } )$ ， and $- A _ { 1 } A _ { n + 1 } + A _ { 1 } + A _ { n + 1 } = ( A _ { n + 1 } - 1 ) ( 1 - A _ { 1 } ) + 1 > 1$ to get a contradiction.)

11. Suppose $a \leq b \Longrightarrow U = V$ and $b \leq a \Longrightarrow U = V$ . Prove that $U = V$ . (Hint: see Remark 1.5.36.)

12.Use the previous exercise to show that

$$
{ \frac { | A | + A } { 2 } } = \operatorname* { m a x } ( A , 0 )
$$

and

$$
{ \frac { | A | - A } { 2 } } = \operatorname* { m a x } ( - A , 0 ) .
$$

# 1.6Rational Approximations

The rationals,as we have seen, sit inside the reals—mathematicians say they are embedded in the reals. This association is $r  \{ \vert r , r \vert \}$ . Because real numbers are fine families,it is clear that for any real $A$ and any rational $\epsilon > 0$ ，we can find rationals $r$ and $s$ such that $r < A < s$ and $s - r < \epsilon$ : simply take an interval $[ r ^ { \prime } , s ^ { \prime } ]$ from $A$ of length smaller than $\epsilon$ ， say $\epsilon / 2$ ，and choose $r$ slightly smaller than $r ^ { \prime }$ (say $r = r ^ { \prime } - \epsilon / 4$ ）and $s$ slightly larger than $s ^ { \prime }$ (say $s = s ^ { \prime } + \epsilon / 4$ ).(We had to make these adjustments because all we know about $[ r ^ { \prime } , s ^ { \prime } ]$ is that $r ^ { \prime } \leq A \leq s ^ { \prime }$ and we want strict inequality $<$ ）We summarize this in the following proposition.

PROPOSITION 1.6.1 For any real number $A$ and rational $\epsilon > 0$ ， there are rationals $r$ and s such that

$$
r < A < s \ a n d \ s - r < \epsilon .
$$

PROPOSITION 1.6.2 If $A > B$ ， there are rationals c such that $A > c > B$

Proof. If $A > B$ , there are rationals $r$ and $v$ with $A \geq r > v \geq B$ . (We have an interval $\lfloor r , s \rfloor$ in $A$ and an interval $\left\lfloor u , v \right\rfloor$ in $B$ with $r > v$ , and we know by Corollary 1.3.13 that $A \geq r$ and $v \geq B$ .）Any $c$ such that $r > c > v$ has the required property, for example, $c = ( r + v ) / 2$ ■

COROLLARY 1.6.3 If $A > 0$ , there are positive rationals $\epsilon$ such that $A > \epsilon$

COROLLARY 1.6.4 $A < B$ or $A > B$ if and only if $| B - A | > \epsilon$ for some rational $\epsilon > 0$

This follows from the preceding proposition, because we know that $A < B$ or $A > B$ if and only if $| B - A | > 0$ (see Corollary 1.5.29).

REMARK 1.6.5 It also follows that $A < B$ or $A > B$ if and only if $| B - A | > C$ for some $C ~ > ~ 0$ .(Given the latter condition， for example, we can apply either Proposition 1.6.2 to get $| B - A | > \epsilon > C$ with $\epsilon$ rational, or apply Corollary 1.6.3 to get $C > \epsilon > 0$ ， again with $\epsilon$ rational.)

COROLLARY 1.6.6 $A = B$ if and only if $| B - A | \leq \epsilon$ for all positive rationals $\epsilon$ ：

The following tells us we can adjust the family that defines a given real so that the lower and upper bounds fall within certain limits.

PROPOSITION 1.6.7 Let $A$ be an real number such that $r _ { 0 } \le A \le s _ { 0 }$ for rational numbers $r _ { 0 }$ and $s _ { 0 }$ .Let $I _ { 0 } = | r _ { 0 } , s _ { 0 } |$ and let $A \cap I _ { 0 }$ be the family of all $I \cap I _ { 0 }$ with $I \in A$ . Then

1. $A \cap I _ { 0 }$ is consistent and fine.

2. $A \cap I _ { 0 } \sim A$ ， so that $A \cap I _ { 0 } = A$ as real numbers.

3. All lower and upper bounds for $A \cap I _ { 0 }$ lie between $r _ { 0 }$ and $s _ { 0 }$

Recall the Wiggle Lemma for rationals (Lemma 0.2.6), which says that if $r \leq s + \epsilon$ for all $\epsilon > 0$ ,then $r \leq s$ . Here is the version for real numbers.

LEMMA 1.6.8（WIGGLE LEMMA FOR REALS） Let $X$ and $Y$ be real numbers.

1.If $X \leq Y + \epsilon$ for every real $\epsilon > 0$ ，then $X \le Y$

2.If $X \leq Y + \epsilon$ for every rational $\epsilon > 0$ ， then $X \le Y$ (The proof is left as an exercise: it follows from the Wiggle Lemma for rational numbers.)

To conclude this section,we take another look at Trichotomy. For any two rationals $r$ and $s$ ，we can determine exactly which of the relations $r \ < \ s$ ， $r \geq s$ ，and $r = s$ holds.As we have seen,given two reals $A$ and $B$ ,we can not exclude all three conditions: $A < B$ ， $A > B$ ， $A = B$ .Nevertheless it may be impossible,without proving a theorem,to determine which one holds for given $A$ and $B$ (see the appendix on “The Goldbach Number"). The following result expresses what we can say in general.

PROPOSITION 1.6.9（ $\epsilon$ -TRICHOTOMY）If $A$ and $B$ are real numbers, then for each rational $\epsilon > 0$ ，either $A < B$ ， $B < A$ ，or $A$ and $B$ are within E of each other.

Proof. It is important to emphasize that the words “either...or” here mean that one can actually, constructively, determine which of the three alternatives hold. The proof should reflect this. The idea is to choose intervals $I$ and $J$ from $A$ and $B$ Since rationals satisfy trichotomy, one can determine if $I < J$ (so $A < B$ )，or $J < I$ (so $B < A$ ). If neither,than $I$ and $J$ meet.By choosing $I$ and $J$ of sufficiently small length,this third case will imply that $A$ and $B$ are within $\epsilon$ .We leave the details for the exercises.■

Here are several very useful applications of $\epsilon$ -Trichotomy. The proofs are discussed in the exercises.

LEMMA 1.6.10 If $A < B$ then, for any $P$ ，either $P > A$ or $P < B$

LEMMA 1.6.11 Let $I _ { k } = [ a _ { k } , b _ { k } ]$ ， $k = 0 , 1 , \ldots , N$ , be a family of intervals such that

1. $a _ { k } < b _ { k }$ for $k = 0 , 1 , \ldots , N$ and f $x \in [ a _ { 0 } , b _ { N } ]$ , then we can find some $K$ such that $x \in { \cal I } _ { K }$

LEMMA 1.6.12 Let $A = x _ { 0 } < x _ { 1 } < \dots < x _ { N } = B$ be a partition of the interval $[ A , B ]$ such that $x _ { i } - x _ { i - 1 } < \delta$ for $i = 1 , \ldots , N$ . Then for each $x \in [ A , B ]$ ， there is some $j$ such that $| x - x _ { j } | \ < \delta$

LEMMA 1.6.13 Given reals $F _ { 0 }$ ， $F _ { 1 } , \ldots , F _ { N }$ and $\epsilon > 0$ ， there are indices $K$ and $L$ such that, for all $j = 0 , \ldots , N$ ， $F _ { K } < F _ { j } + \epsilon$ and $F _ { L } > F _ { j } - \epsilon$

(What is this last lemma saying? Hint: It might be nicknamed ‘ $\dot { \epsilon } { - } \operatorname* { m a x } \big / \operatorname* { m i n }$ ”)

# Exercises

1. Let $A$ and $B$ be any reals with $A \le B$ .For any $\epsilon > 0$ ， show how to find rationals $r \leq s$ such that

$$
r \leq A \leq B \leq s \quad { \mathrm { ~ a n d ~ } } \quad s - r < ( B - A ) + \epsilon .
$$

2.Use bisection (see exercises on page 38) to find rationals $r$ and $s$ such that $r \leq \sqrt { 2 } \leq s$ and $0 < s - r < 1 / 5 0$

3. Use Divide-and-Average (see exercises on page 39) to make the same estimate as in the previous exercise.

4.Apply $\epsilon$ -Trichotomy to O and the Goldbach number (see the appendix to this chapter).

5.Prove the Wiggle Lemma (Lemma 1.6.8)，which says that if $X \leq Y + \epsilon$ for every rational $\epsilon > 0$ ，then $X \leq Y$

(Hint: Use the fact that we know it is true when $X$ and $Y$ are rationals (0.2.6). Let $\lfloor r , s \rfloor$ and $\lfloor u , v \rfloor$ be arbitrary rational intervals of $X$ and $Y$ respectively. Interpret $X \leq Y + \epsilon$ in terms of intervals and use it to show $r \leq v$ .）

6. Prove $\epsilon$ -Trichotomy (Proposition 1.6.9),which says: If $A$ and $B$ are real numbers, then for each rational $\epsilon > 0$ ,either $A < B$ ， $B < A$ ,or $A$ and $B$ are within $\epsilon$ of each other. The text gives an outline.

7. Prove the following three lemmas,stated in the text (Hint: $\epsilon$ -Trichotomy will come in handy).

LEMMA 1.6.10 If $A < B$ then, for any $P$ ,either $P > A$ or $P < B$

LEMMA 1.6.12 Let $A = x _ { 0 } < x _ { 1 } < \dots < x _ { N } = B$ be a partition of the interval $\lfloor A , B \rfloor$ such that $x _ { i } - x _ { i - 1 } < \delta$ for $i = 1 , \ldots , N$ . Then for each $x \in \left[ A , B \right]$ ,there is some $j$ such that $| x - x _ { j } | < \delta$

LEMMA 1.6.13（ $^ { 6 6 } { \epsilon } { - } \operatorname* { m a x } \mathrm { / \operatorname* { m i n } } ^ { \mathrm { , } }$ ）Given reals $F _ { 0 }$ ， $F _ { 1 } , \ldots , F _ { N }$ and $\epsilon > 0$ , there are indices $K$ and $L$ such that, for all $j = 0 , \ldots , N$ ， $F _ { K } < F _ { j } + \epsilon$ and $F _ { L } > F _ { j } - \epsilon$

8. Prove the following from the text (use Lemma 1.6.10):

LEMMA 1.6.11 Let $I _ { k } = [ a _ { k } , b _ { k } ]$ ， $k = 0 , 1 , \ldots , N$ , be a family of intervals such that

(a) $a _ { k } < b _ { k }$ for $k = 0 , 1 , \ldots , N$ and (b） $a _ { k + 1 } < b _ { k }$ for $k = 0 , 1 , \ldots , N - 1$ f $x \in \left\lfloor a _ { 0 } , b _ { N } \right\rfloor$ , then we can find some $K$ such that $x \in I _ { K }$ (Hint:Here is an algorithm which will produce $K$ ：

(i） We know that $a _ { 0 } \leq x$   
(ii) Since $a _ { 1 } ~ < ~ b _ { 0 }$ ，either $x \textless b _ { 0 }$ or $x \ > \ a _ { 1 }$ If $x \textless b _ { 0 }$ ，then $x \in \lfloor a _ { 0 } , b _ { 0 } \rfloor$ Otherwise, $a _ { 1 } < x$   
(ii) Since $a _ { 2 } ~ < ~ b _ { 1 }$ ，either $x \textless b _ { 1 }$ ，or $x \ > \ a _ { 2 }$ If $x < b _ { 1 }$ ，then $x \in \lfloor a _ { 1 } , b _ { 1 } \rfloor$ Otherwise, $a _ { 2 } < x$   
(iv) Continuing in the way, we have the pattern: $x \in \left\lfloor a _ { k } , b _ { k } \right\rfloor$ or $a _ { k + 1 } < x$

This must terminate either with $_ { x }$ in some $I _ { k }$ for $k < N$ ，or $a _ { N } < x$ .But in this case, $x \in \lfloor a _ { N } , b _ { N } \rfloor$ since $x \leq b _ { N }$ .）

# 1.7Real Intervals and Completeness

Recall that in Example 1.3.16 we looked at the family $\mathit { c 2 }$ of all (rational) $\lfloor a , b \rfloor$ such that $a ^ { 3 } \leq 2 \leq b ^ { 3 }$ . It is not difficult to show, by bisection (see exercise 10 on page

38),that this family is consistent and fine,so that it is a real number—we now call it $\sqrt [ 3 ] { 2 }$ . This notation is justified because it is possible to show that $\left( { \sqrt [ { 3 } ] { 2 } } \right) ^ { 3 } = 2$ ,as real numbers (this is discussed on page 41). Thus,although there is no rational number whose cube is 2, there is a real number with this property. Put another way, the equation $x ^ { 3 } = 2$ had no solution when all we had was the rationals, but we now can construct a solution that is a real number. Thinking of a rational interval, as we have done before,as a measurement,one might be tempted to say that this real number is “the collection of all attempts to measure a cube root of 2 with rationals.” Technically this is circular, since the cube root of 2 was not actually a “thing” that could be “measured,”when all we had was the rationals; nevertheless,it describes the process of construction rather nicely.

As you have probably already realized, this kind of construction can be applied to many other kinds of problems,including,clearly, $_ { n }$ th roots of rationals,and even solutions of more general algebraic equations. The exercises at the end of this chapter give some examples,and we will see others, such as Newton's Method, in later chapters.So let us take a closer look at the method.

We started with a consistent fine family of rational intervals ( $\mathit { c 2 }$ ，or $\sqrt [ 3 ] { 2 }$ ).Since this is already a real number,we didn't have to do anything further to get our answer. It is important to note, however, that the real number $\sqrt [ 3 ] { 2 }$ does not lie in any of the intervals of this family, since it is not itself rational. On the other hand,if $\lfloor r , s \rfloor$ is a rational interval in the family $\sqrt [ 3 ] { 2 }$ then we know that $r \leq \sqrt [ 3 ] { 2 } \leq s$ as families (by Proposition 1.3.12),or as real numbers. If we allowed $\lfloor r , s \rfloor$ to contain real numbers, then we would have $\sqrt [ 3 ] { 2 } \in [ r , s ]$ for any interval in $\sqrt [ 3 ] { 2 }$

To pursue this idea further,we need to look at real intervals.

DEFINITION 1.7.1（REAL INTERVAL） $\lfloor A , B \rfloor$ is a real interval when $A$ and $B$ are real numbers and $A \le B$ .If $X$ is a real number, then $X \in \lfloor A , B \rfloor$ means $A \leq X \leq B$ .

Of course, this definition leads to an obvious problem. Since rationals like $1 / 2$ and $3 / 4$ are real numbers,how do we know whether the interval denoted $\lfloor 1 / 2 , 3 / 4 \rfloor$ is to be considered a real interval (containing non-rational reals as well as rationals) Or a rational interval (containing only rational members)? Well, we could have done something fancy, like notating real intervals with double brackets: $\left\lfloor \left\lfloor 1 / 2 , 3 / 4 \right\rfloor \right\rfloor$ .But instead we will simply assume that from now on, all intervals $[ a , b ]$ are real intervals unless otherwise specifed. In other words,without further comment, $\lfloor 1 / 2 , 3 / 4 \rfloor$ will mean a real interval. Thus, for example, $\textstyle { \frac { \sqrt { 2 } } { 2 } } \in [ 1 / 2 , 3 / 4 ]$

As we did for rational intervals, we define $\vert A , B \vert < \vert C , D \vert$ to mean $B < C$

Now,if you look back over the properties of rational intervals and the proofs of those properties,you'll see that nearly all of them depend only on elementary properties of inequalities and their algebraic manipulation. Since the same rules for manipulating inequalities hold for reals as do for rationals, most of these properties of rational intervals continue to be true for real intervals.Here are two examples.

PROPOSITION 1.7.2 $\lfloor A , B \rfloor$ intersects $| C , D |$ (i.e. there is a real x in both intervals) if and only if $A \leq D$ and $C \le B$

Proof. The argument used for Proposition 1.2.2 works here too. It gives us the result that $_ { x }$ is in the intersection of $\lfloor A , B \rfloor$ and $| C , D |$ if and only if it is in $\left| \operatorname* { m a x } ( A , C ) , \operatorname* { m i n } ( B , D ) \right|$ ■

PROPOSITION 1.7.3 For real numbers $A$ and $B$ and a family of real intervals $s$ ， $A \leq S \leq B$ if and only if $\lfloor A , B \rfloor$ meets every interval of $\boldsymbol { S }$

Of course, $A \leq S \leq B$ really means $\{ | A , A | \} \leq S \leq \{ | B , B | \}$ . The proof of this is exactly the same as the proof of its rational interval version,Proposition 1.3.12.

REMARK 1.7.4 Suppose that $\lfloor a , b \rfloor$ and $\lfloor c , d \rfloor$ are real intervals with rational endpoints $^ { a }$ ， $b$ ， $c$ ，and $^ d$ . Suppose also that they intersect,in other words, have a real number in common.By Proposition 1.7.2 above, this means that $a \leq d$ and $c \leq b$ .But this tells us that there is a rational number common to both, since they now intersect as rational intervals. Thus, if two real intervals with rational endpoints intersect, they contain a common rational. Of course, having rational endpoints is critical here: for example, $[ 1 , { \sqrt { 2 } } ]$ and $[ \sqrt { 2 } , 2 ]$ have a common real but no common rational.

DEFINITiON 1.7.5 For any family of real intervals $\boldsymbol { S }$ ，

1. $\boldsymbol { S }$ is consistent means that every pair of intervals in $s$ intersect.

2. $\boldsymbol { S }$ is fine means that, for each $\epsilon > 0$ there in an interval $I$ in $\boldsymbol { S }$ with $\ell ( I ) < \epsilon$

REMARk 1.7.6 Note that in part (2) of this definition, it suffces to check the existence of intervals of length less than E for all positive rational $\epsilon$

Let's look at our example involving $\sqrt [ 3 ] { 2 }$ more carefully.

Here is the original family of rational intervals:

$$
\mathcal { C } 2 = \mathrm { A l l ~ r a t i o n a l ~ i n t e r v a l s ~ } [ r , s ] \mathrm { ~ w i t h ~ } r ^ { 3 } \le 2 \le s ^ { 3 } .
$$

As we have seen, there can be no single rational number common to all the intervals in this family.

Here is the corresponding family of real intervals:

$$
\mathcal { C } = \mathrm { A l l ~ r e a l ~ i n t e r v a l s ~ } [ A , B ] \mathrm { ~ w i t h ~ } A ^ { 3 } \leq 2 \leq B ^ { 3 }
$$

All intervals inthis family have the real number $\sqrt [ 3 ] { 2 }$ in common.

In the second of these families, the family of real intervals, is there any real other than $\sqrt [ 3 ] { 2 }$ common to all the intervals? Fortunately no, as the following proposition tells us.

PROPOSITION 1.7.7 Suppose $\boldsymbol { S }$ is a fine family of real intervals. If $P$ and $Q$ are real numbers that belong to each interval in $\boldsymbol { S }$ ，then $P = Q$

Proof. Given an arbitrary $\epsilon > 0$ ,let $\lfloor A , B \rfloor$ be an interval in $\boldsymbol { S }$ of length $< \epsilon$ .Then $P$ and $Q$ are in $\lfloor A , B \rfloor$ and $| P - Q | = \operatorname* { m a x } ( P , Q ) - \operatorname* { m i n } ( P , Q ) \leq B - A < \epsilon$ .Since $\epsilon$ was arbitrary, $0 \leq | P - Q | \leq 0$ by the Wiggle Lemma, so $P = Q$ ■

So let us try to generalize the construction of $\sqrt [ 3 ] { 2 }$ to families of real intervals $\boldsymbol { S }$ When will the intersection of all the intervals in $\boldsymbol { S }$ have one and only one element in it? For the uniqueness of this element,we will surely want $\boldsymbol { S }$ to be fine in view of the proposition we just proved. We will also want $\boldsymbol { S }$ to be consistent,since otherwise $\boldsymbol { S }$ might not determine any real number. So,suppose that $\boldsymbol { S }$ is both fine and consistent. Since real numbers are defined by rational measurements,we may ask,“What sort of rational measurements would measure a real number determined by $\boldsymbol { S }$ ？”

Suppose $\lfloor A , B \rfloor$ is an interval in $\boldsymbol { S }$ .Since the reals $A$ and $B$ can，unless they are rational, only be approximated by rationals, the measurement $\lfloor A , B \rfloor$ will be approximated by some rational interval $\lfloor r , s \rfloor$ which, to be conservative, we will assume both underestimates and overestimates, i.e. $r \leq A \leq B \leq s$ . Note that we can't say that the rational interval $\lfloor r , s \rfloor$ contains $\lfloor A , B \rfloor$ since membership in $\lfloor r , s \rfloor$ has been restricted to rationals; of course, if we replace $\lfloor r , s \rfloor$ by a real interval that happens to have rational endpoints $r$ and $s$ ，then this new interval would contain $\lfloor A , B \rfloor$ Instead, let's just be more careful and introduce the following terminology.

DEFINITION 1.7.8 (OvERSPREADs) The rational interval $\lfloor r , s \rfloor$ overspreads the real interval $\lfloor A , B \rfloor$ means $r \leq A \leq B \leq s$

We can't just choose any rational intervals that overspread the intervals in $\boldsymbol { S }$ ， because the family of rational intervals we get may not be fine. Instead, we look at all rational intervals which overspread at least one interval in $\boldsymbol { S }$

DEFINITION 1.7.9 ( $\operatorname* { l i m } \left( S \right) ,$ ）For a consistent and fine family $\boldsymbol { S }$ of real intervals, $\operatorname* { l i m } ( S )$ is the family of all rational intervals that overspread at least one interval of $S$

To paraphrase this definition slightly, the rational interval $\lfloor r , s \rfloor$ is in $\operatorname* { l i m } ( S )$ if and only if we can find some interval $\lfloor A , B \rfloor$ in $\boldsymbol { S }$ such that $r \leq A \leq B \leq s$ . Note that the interval $\lfloor A , B \rfloor$ will depend on $\lfloor r , s \rfloor$ ,and there will, in general, be many intervals in $\boldsymbol { S }$ that are overspread by $\lfloor r , s \rfloor$

For example, suppose that the real interval $R = [ \sqrt { 2 } , \sqrt { 3 } ]$ happens to lie in $\boldsymbol { S }$ Then the rational interval [1,2] overspreads $R$ since $1 \leq { \sqrt { 2 } } \leq { \sqrt { 3 } } \leq 2$ ； hence $\lfloor 1 , 2 \rfloor$ lies in $\operatorname* { l i m } ( S )$ . Similarly,[1.4,1.75] also lies in $\operatorname* { l i m } ( S )$ , since $1 . 4 \le \sqrt { 2 } \le \sqrt { 3 } \le 1 . 7 5$

The family $\operatorname* { l i m } ( S )$ is very large. It is consistent. To see this, suppose $I = \lfloor r , s \rfloor$ and $J = \lfloor u , v \rfloor$ are any two (rational) intervals in $\operatorname* { l i m } ( S )$ . By the definition of $\operatorname* { l i m } ( S )$ ， they overspread intervals of $\boldsymbol { S }$ , so we can write

$$
\begin{array} { r c l } { r } & { \leq } & { A \leq B \leq s } \\ { u } & { \leq } & { C \leq D \leq v } \end{array}
$$

for intervals $\lfloor A , B \rfloor$ and $| C , D |$ in $s$ . Since $\boldsymbol { S }$ is consistent, $A \le D$ and $C \le B$ It follows that $r \leq v$ and $u \leq s$ ； thus, $\lfloor r , s \rfloor$ and $\left\lfloor u , v \right\rfloor$ intersect.

What about fineness? If $\lfloor A , B \rfloor$ is in $\boldsymbol { S }$ ，we can find rationals $r \leq A$ and $s \geq B$ with $A - r$ and $s - B$ as small as we choose. In fact，given any $\epsilon > 0$ ，we can make use of Proposition 1.6.1 to find rationals $r$ and $s ^ { \prime }$ such that $r \ \leq \ A \ \leq \ s ^ { \prime }$ and $A - r \le s ^ { \prime } - r < \epsilon / 3$ .Similarly,we can find rationals $r ^ { \prime }$ and $s$ such that $s - B \le s - r ^ { \prime } < \epsilon / 3$ . Thus, $\ell ( \lfloor r , s \rfloor ) = ( s - B ) + ( B - A ) + A - r < \epsilon / 3 + \ell ( A , B ) + \epsilon / 3$ This is illustrated in the following diagram.

![](images/1b251e991f868a15a4c9c0a883d9e3e25be7943620fdd71866d2994b0cdc5aa3.jpg)

Because there are arbitrarily smallintervals $\lfloor A , B \rfloor$ in $\boldsymbol { S }$ (of length less than $\epsilon / 3$ ）， we also have arbitrarily small intervals $\lfloor r , s \rfloor$ in $\operatorname* { l i m } ( S )$

We now come to the fundamental property of the real number system, expressed by the following theorem, sometimes called “The Completeness of the Reals."

THEOREM 1.7.10（COMPLETENESS） If $s$ is any consistent and fine family of real intervals, then there is a real number, $\operatorname* { l i m } ( S )$ ， that belongs to every interval of $\boldsymbol { S }$ Furthermore, it is the only real number that lies in every interval of $s$

Proof. We have already verified that $\operatorname* { l i m } ( S )$ is consistent and fine,so $\operatorname* { l i m } ( S )$ is a real number. We must prove that it belongs to every interval in $\boldsymbol { S }$ .But every interval in $\boldsymbol { S }$ intersects every interval in $\operatorname* { l i m } ( S )$ (because every interval in $\operatorname* { l i m } ( S )$ overspreads an interval of $\boldsymbol { S }$ and the family $s$ is consistent).It follows immediately from Proposition 1.7.3 that for every $| C , D |$ in $\boldsymbol { S }$ ， we have $C \leq \operatorname* { l i m } ( S ) \leq D$ . Thus, $\operatorname* { l i m } ( S )$ does indeed belong to every interval in $\boldsymbol { S }$

The fact that there are no other real numbers lying in each interval of $\boldsymbol { S }$ isa direct consequence of Proposition 1.7.7.■

The Completeness Theorem may seem somewhat formal and unremarkable. This is due,in part,to the fact that most of the hard work in proving it was done in the propositions preceding it. Nevertheless,as you will soon see,it is a very powerful result because it guarantees (by construction） the existence of a real number with certain properties. It will enable us to prove convergence of sequences and series, and to define derivatives and integrals and show when they exist. It will simply be a matter of choosing the proper family $\boldsymbol { S }$ in each application.

# Exercises

1. Let

$$
{ \begin{array} { r l } & { { \sqrt { 2 } } = \left\{ \left[ r , s \right] \mid r > 0 { \mathrm { ~ a n d ~ } } r ^ { 2 } < 2 < s ^ { 2 } \right\} } \\ & { { \sqrt { 3 } } = \left\{ \left[ r , s \right] \mid r > 0 { \mathrm { ~ a n d ~ } } r ^ { 2 } < 3 < s ^ { 2 } \right\} , } \end{array} }
$$

where these are families of rational intervals. Find any rational interval that overspreads $[ { \sqrt { 2 } } , { \sqrt { 3 } } ]$ . Find one whose length is less than 1.

2.Let ${ \sqrt { 2 } } = \{ [ r , s ] \vert r > 0$ and $r ^ { 2 } < 2 < s ^ { 2 } \}$ (as a family of rational intervals). Find an interval that overspreads $[ \sqrt { 2 } - 1 , \sqrt { 2 } + 1 ]$ and whose length is less than 2.O1. Can you find one whose length is less than 2?

3. Let $\lfloor A , B \rfloor$ be a real interval. Given any $\epsilon > 0$ ，show how to find a rational interval $I$ which overspreads $\lfloor A , B \rfloor$ and whose length is less than $( B - A ) + \epsilon$

4. Let $s$ be the family of real intervals $\left\{ \left[ A , B \right] \mid A ^ { 3 } \leq 2 \leq B ^ { 3 } \right\}$ .Explain why $\boldsymbol { S }$ is fine and consistent.Why is there a single real number contained in each of the intervals of $\boldsymbol { S }$ ? What is this real number?

5.To generalize the previous exercise, suppose $C$ is a real number (so $C$ isa fine and consistent family of rational intervals). Suppose we form the family $\mathcal { C }$ of real intervals,obtained by considering each rational interval of $C$ as a real interval with the same endpoints. What is $\operatorname* { l i m } ( \bar { \mathcal { C } } )$ ？

6.Every real number $A$ is the limit of some fine and consistent family of real intervals. Why?

7. Make sense out of this seemingly paradoxical statement about the real number $A$ and rational numbers $r$ and $s$

$$
[ r , s ] \in A \Longrightarrow A \in [ r , s ] .
$$

Is there any sort of converse to this?

# 1.8 Limits and Limiting Families

The data for taking a limit is a family $\boldsymbol { S }$ of real intervals that is fine and consistent.   
The limit of such a family is a real number contained in every interval of that family.   
Since we willbe taking a lot of limits, we abstract this idea in the following definition.

DEFINITiON 1.8.1 A limiting family $s$ is a fine and consistent family of real intervals. The limit of such a family is the real number $\operatorname* { l i m } ( S )$ contained in each interval of $\boldsymbol { S }$

NOTATION 1.8.2 $S \to X$ means $\boldsymbol { S }$ is a limiting family and $X = \operatorname* { l i m } ( S )$

Note first that the existence and uniqueness of $\operatorname* { l i m } ( S )$ is guaranteed by the Completeness Theorem. Since $\operatorname* { l i m } ( S )$ is in each interval of $s$ ，we must have

$$
A \leq \operatorname* { l i m } ( S ) \leq B \quad { \mathrm { ~ f o r ~ e a c h ~ } } [ A , B ] \in S .
$$

To say this in another way, we extend Definition (1.2.25),originally made for families of rational intervals,to real intervals.

DEFINITION 1.8.3 If $\lfloor A , B \rfloor$ is an interval of the family $\boldsymbol { S }$ ，then $A$ is called a lower bound for $\boldsymbol { S }$ and $B$ is called an upper bound for $\boldsymbol { S }$

It is now very easy to show that the result characterizing inequalities for rational families (Proposition 1.2.26)also holds for real families.In particular, $\boldsymbol { S } \le \boldsymbol { S } ^ { \prime }$ if and only if every lower bound of $\boldsymbol { S }$ is less than or equal to every upper bound of $S ^ { \prime }$

PROPOSITION 1.8.4 Let $s$ be a limiting family，and let $L$ and $U$ be any lower and upper bounds for $\boldsymbol { S }$ . Then

$$
L \leq \operatorname* { l i m } ( S ) \leq U .
$$

The proof is an exercise.

We have seen previously in the The Wiggle Lemma (Lemma 1.6.8) that if $X \leq$ $Y + \epsilon$ for all $\epsilon > 0$ ，then $X \leq Y$ . The first assertion of the following proposition is the version for limiting families.

PROPOSITION 1.8.5 Let $s$ and $\boldsymbol { \tau }$ be limiting families. Then

Proof. First we assume $S \leq \mathcal { T }$ . Suppose that $S  X$ and $\tau \to Y$ Let $\epsilon > 0$ be given; we will show $X < Y + \epsilon$ . Choose intervals $\vert A , B \vert \in { \mathcal { S } }$ and $[ C , D ] \in \mathcal { T }$ each of length less than $\epsilon / 2$ . Since $S \leq \tau$ we must have $A \leq D$ and so $B - A < \epsilon / 2$ and $A - Y \le D - Y \le D - C < \epsilon / 2$ ：Adding these, we get $B - Y < \epsilon$ S0 $X \leq B < Y + \epsilon$ Since $X < Y + \epsilon$ for any $\epsilon > 0$ ， we can invoke Proposition 1.8.4 above to conclude that $X \leq Y$

Conversely, suppose that $X \le Y$ $X$ is in every interval $\lfloor A , B \rfloor$ of $\boldsymbol { S }$ ，and $Y$ is in every interval $| C , D |$ of $\boldsymbol { \mathcal { T } }$ ， so we have $A \leq X \leq Y \leq D$ . Thus $s \leq \tau$

The proof of the second part, for strict inequality, is left as an exercise. I

COROLLARY 1.8.6 If $S \sim T$ (i.e. every interval of $\boldsymbol { S }$ meets every interval of $\boldsymbol { \mathcal { T } }$ ），then $\operatorname* { l i m } ( S ) = \operatorname* { l i m } ( T )$

The following lemma will be used later in establishing a fundamental inequality for exponential functions (see Proposition 2.3.17 in the next chapter). It shows that if we want to test whether $\mathcal { F } \leq \mathcal { G }$ ,we don't have to test all the intervals of $\mathcal { F }$ against all the intervals of $\mathcal { G }$ , but just look at arbitrarily fine ones.

LEMMA 1.8.7 Let $\mathcal { F }$ and $\mathcal { G }$ be fine and consistent families. Suppose that for each rational $\epsilon > 0$ we can find intervals $\lfloor r , s \rfloor$ in $\mathcal { F }$ and $\lfloor u , v \rfloor$ im $\mathcal { G }$ ， each of length $< \epsilon$ ， such that $r \leq v$ . Then $\mathcal { F } \leq \mathcal { G }$

Note that we did not specify whether the families are families of real or rational intervals. The lemma is true in either case,and we leave the proof for the exercises.

COROLLARY 1.8.8（EUDOXUS’METHOD OF EXHAUSTION） Let $\mathcal { F }$ and $\mathcal { G }$ be limiting families. Suppose that for each rational $\epsilon > 0$ we can find intervals $\lfloor r , s \rfloor$ in $\mathcal { F }$ and $\left\lfloor u , v \right\rfloor$ in $\mathcal { G }$ ，each of length $< \epsilon$ ，such that $r \leq v$ . Then $\operatorname* { l i m } { \mathcal { F } } > \operatorname* { l i m } { \mathcal { G } }$ is false.

Eudoxus (408-355 B.C.E） was a contemporary of Euclid,and many of his ideas were incorporated into Euclid's Geometry. The Method of Exhaustion was devised by Eudoxus to cope with relations such as equalities and inequalities between “quantities”whose ratios aren't rational. The Method was later used by Archimedes (287- 212 B.C.E.） to provide elegant and rigorous proofs of various geometric formulas. It seems clear that Eudoxus and Archimedes were among the first to understand clearly the nature of real numbers and their relation to the rationals.

As you probably have suspected for some time, limiting families share many of the properties we have proved for consistent and fine families of rational intervals. In particular, the sum,difference,product and quotient (with denominator $> 0$ or $< 0$ ） of limiting families is once again a limiting family (the same proof as for rational intervals works here as well). We summarize below some of the main algebraic facts.

PROPOSITION 1.8.9 Suppose $S \to X$ and $T  Y$ . Then $S + T  X + Y$ ， $S - T $ $X - Y$ ， $S T  X Y$ and,if $Y$ is a unit, ${ \cal S } / { \cal T }  X / Y$

Proof. We prove the proposition only for products,leaving the other parts as exercises.A typical interval of $s T$ is $U V$ ，where $U$ is an interval of $s$ and $V$ is an interval of $\boldsymbol { \tau }$ . As in the case of rational intervals, $U V$ contains all reals of the form $x y$ ，where $x \in U$ $y \in V$ . Thus, $X Y \in U V$ ,a typical interval of $s T$ , so it lies in all intervals of $s T$ . Thus, $X Y = \operatorname* { l i m } S T$ ■

Suppose we have a real number $A$ , given as a consistent and fine family of rational intervals $\lfloor r , s \rfloor$ . Consider each of these intervals as a real interval,having the same endpoints; let's call it $\lfloor r , s \rfloor _ { \mathbb { R } }$ . The family of all $\scriptstyle { \lfloor r , s \rfloor _ { \mathbb { R } } }$ for $[ r , s ] \in A$ we will be denoted $A _ { \mathbb { R } }$

# PROPOSITION 1.8.10 $A _ { \mathbb { R } } \to A$

Proof. $A _ { \mathbb { R } }$ is consistent and fine because these properties depend only on the endpoints of the intervals,and the family $A$ is consistent and fine. If $[ r , s ] \in A$ , then we have already observed (Proposition 1.3.12) that $r \leq A \leq s$ ，s0 $A \in \lfloor r , s \rfloor _ { \mathbb { R } }$ for each $\lfloor r , s \rfloor$ .Thus $A = \operatorname* { l i m } A _ { \mathbb { R } }$ ■

One way of expressing this last proposition is that any real number is the limit of its own family of rational intervals when viewed as real intervals.

# Exercises

1. Prove the following, stated in the text:

PROPOSITION 1.8.4 Let $S$ be a limiting family， and let $L$ and $U$ be any lower and upper bounds for $S$ . Then $L \leq \operatorname* { l i m } ( S ) \leq U$ . (See Proposition 1.7.2.)

2. Prove COROLLARY 1.8.6 If $S \sim T$ then $\operatorname* { l i m } ( S ) = \operatorname* { l i m } ( T )$

3.Prove the following,stated in the text:

PROPOSITION 1.8.5 If $S$ and $T$ are limiting families, then $S < T \Longleftrightarrow \operatorname { l i m } ( S ) <$ $\operatorname { l i m } ( T )$

(Hint: $\Longrightarrow$ is straightforward. Suppose then that $\operatorname { l i m } ( S ) < \operatorname { l i m } ( T )$ . Use fineness to choose $\vert A , B \vert \in S$ and $| C , D | \in T$ , each with length $< ( Y - X ) / 2$ . Use this to show that $\vert A , B \vert < \vert C , D \vert$ ）

4.Prove the following, stated in the text:

PROPOSITION 1.8.9 Suppose $S  X$ and $T  Y$ . Then $S + T  X + Y$ ， $S - T  X - Y$ ， $S T  X Y$ and,if $Y$ is a unit, $S / T \to X / Y$

# Appendix: The Goldbach Number and Trichotomy

In 1742, in a letter to Euler, Christian Goldbach made the following guess,based on a lot of computations:

THE GOLDBACH CoNJECTURE: Euery even number greater than 2 is the sum of two primes.

Although deep partial results have been obtained since that time, no proof of this conjecture is known at this time. It has been tested by computer over vast stretches of integers and no counterexample has been found.

Several elementary observations can be made about the conjecture itself. The first is that it is verifiable for any particular even number $N$ : simply check the sums, two by two,of the finite number of primes less than $N$ . This may not be the most efficient test，but it is conceptually clear that it works.From this it follows that the Goldbach conjecture cannot be formally undecidable and false.In fact,if $N$ is an even number that is not the sum of two primes, then a search will discover $N$ after (at most) $N$ steps,and the test just mentioned will verify (prove) than $N$ isa counterexample.

Suppose first that $P$ is a computable boolean (true- or false-valued） function, with domain the positive integers. We will use the example

$$
P ( n ) = ( n { \mathrm { ~ i s ~ c o n g r u e n t ~ t o ~ } } 3 { \bmod { 4 } } ) .
$$

Now we define the function $g$ on positive integers by

$$
g ( n ) = { \left\{ \begin{array} { l l l } { 0 } & { { \mathrm { i f } } } & { n = 1 { \mathrm { ~ o r ~ } } 2 n { \mathrm { ~ i s ~ a ~ s u m ~ o f ~ } } 2 { \mathrm { ~ p r i m e s } } } \\ { 1 } & { { \mathrm { i f } } } & { 2 n { \mathrm { ~ i s ~ n o t ~ a ~ s u m ~ o f ~ } } 2 { \mathrm { ~ p r i m e s ~ a n d ~ } } P ( n ) { \mathrm { ~ i s ~ t r u e } } } \\ { - 1 } & { { \mathrm { i f } } } & { 2 n { \mathrm { ~ i s ~ n o t ~ a ~ s u m ~ o f ~ } } 2 { \mathrm { ~ p r i m e s ~ a n d ~ } } P ( n ) { \mathrm { ~ i s ~ f a l s e } } } \end{array} \right. } .
$$

Next, we define

$$
G _ { N } = \sum _ { k = 1 } ^ { N } \frac { g ( k ) } { 2 ^ { k } }
$$

and observe that

$$
\sum _ { k = M } ^ { N } { \frac { g ( k ) } { 2 ^ { k } } } \leq \sum _ { k = M } ^ { N } { \frac { 1 } { 2 ^ { k } } } = { \frac { 1 } { 2 ^ { M - 1 } } } - { \frac { 1 } { 2 ^ { N } } } .
$$

Finally,we define the following family of rational intervals.

DEFINITION 1.8.11

$$
G = \left\{ \left[ G _ { N } - \frac { 1 } { 2 ^ { N - 1 } } , G _ { N } + \frac { 1 } { 2 ^ { N - 1 } } \right] , \ N = 1 , 2 , . . . \right\}
$$

It is not hard to see that this is a fine and consistent family (see exercises below), So $G$ is a real number.We will call it the Goldbach number.(We could also define $\begin{array} { r } { G = \sum _ { k = 1 } ^ { \infty } g ( k ) \cdot 2 ^ { - k } } \end{array}$ ,but we havenot yetstudied infinitesries carefully.We wil return to $G$ in a later chapter-see page 163.)

The idea of constructing $G$ in this way has appeared in various places,and may have originated with von Neumann (cf. his essay “The formalist foundations of mathematics”(1931) reprinted in [Benacerraf-Putnam,1984]). Von Neumann does not use the boolean $P$ (equivalently, he chooses $P ( k )$ to be the statement“ $k = k ^ { \ast }$ ）， which makes his example somewhat less effective.

Since $g ( k )$ is computable for any $k$ , it is clear that the partial sums $G _ { N }$ are computable to any desired degree of accuracy. Thus $G$ is a well defined real number. This in spite of the fact that the Goldbach Conjecture has not been established. On the other hand,because the Goldbach Conjecture has not been established,we cannot tell whether $G$ is zero,positive,or negative.At this point,all we definitely know is that $G$ is very small in absolute value.

It may be that Goldbach's Conjecture will never be resolved! What then will be the truth value of the conjecture? If one takes the (Platonic) viewpoint that truth is independent of our knowledge, then one might assert strong trichotomy to say that the Goldbach number is definitely either zero or positive or negative.On the other hand,the constructivist viewpoint (to which your author subscribes) asserts that a statement has a truth value only when it has been proved or disproved. Thus, from this position, only $\epsilon$ -Trichotomy holds for $G$

Maybe,by the time you read this,Goldbach's Conjecture will have been resolved, either proved or refuted. Then the particular question about whether $G$ is positive, negative or zero will have been settled. But as long as there are unproved theorems in number theory—which is,safe to say, forever—there will be other numbers constructed in a similar way for which these issues apply.

One final note about $G$ ： $| G |$ is computable since $G$ is. Consider the product

$$
( G - | G | ) \cdot ( G + | G | ) = G ^ { 2 } - | G | ^ { 2 } = 0 .
$$

We thus have the product of two numbers equal to $0$ ， yet we can not determine which number is $0$ . (Thanks to John Frampton for this idea.)

# Exercises

1. Prove that the family $G$ is fine and consistent.

2. Prove that the Goldbach Conjecture is true if and only if $G = 0$

3.For any real number $A$ ， $( A - | A | ) \cdot ( A + | A | ) = A ^ { 2 } - | A | ^ { 2 } = 0$ . Is it always true that this leads to a product being $0$ ,but we can't determine which factor is O? Explain.

