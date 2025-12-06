/-!
# Chapter 1: The Real Numbers and Completeness

Definitions extracted from Bridger's 'Real Analysis: A Constructive Approach'
-/

-- We only need natural numbers as a foundation

/- DEFINITION 1.1.1
   1.1.1 $I$ is a rational interval means $I = \lfloor r , s \rfloor$ ,where $\boldsymbol { r }$ and s are rational numbers and $r \leq s$ . The intervals $\lfloor r , s \rfloor$ and $\lfloor u , v \rfloor$ are equal precisely when $r = u$ and $s = v$
-/

/- DEFINITION 1.1.2
   1.1.2 $x \in \left\lfloor r , s \right\rfloor$ means that $_ { x }$ is a rational number and $r \leq x \leq s$
   
   The rational numbers $r$ and $s$ are called the endpoints of the interval $\lfloor r , s \rfloor$ . Please note that these definitions are fairly abstract.An interval is not defined to be a set but simply a symbol $\lfloor r , s \rfloor$ .Unlike set theory,we define the membership relation $\in$ If you don't feel comfortable at this point with this degree of abstraction, that's ok: no harm will result if you think of the interval $\lfloor r , s \rfloor$ as simply the set of rationals bounded by the endpoints $r$ and $s$
-/

/- DEFINITION 1.1.4
   1.1.4（INCLUSION OF INTERVALS） $\left| r , s \right| \subset \left| u , v \right|$ (or $J \supset I$ ）means that $u \leq r$ and $s \leq v$
   
   Note that， since intervals are determined solely in terms of their endpoints, this property has been defined solely in terms of endpoints. It's usually a good idea to draw a picture to see intuitively what some condition means,so here is the picture for inclusion of intervals:
   
   ![](images/32b9e2c34adc2d469f5c850078aa585bc647abde8488754287c62ca213e37c58.jpg)
   
   Here is a model for how proofs should go. It is a bit more wordy than it has to be,but that's ok for now.
-/

/- DEFINITION 1.1.8
   1.1.8 （ADDITION OF INTERVALS) $I + J$ is the interval $\left[ r + u , s + v \right]$
-/

/- DEFINITION 1.1.9
   1.1.9 （NEGATION OF INTERVALS） $- I$ is the interval $\lfloor - s , - r \rfloor$
-/

/- DEFINITION 1.1.10
   1.1.10 （SUBTRACTION OF INTERVALS） $J - I$ is the interval $\begin{array} { r l } { J + ( - I ) = } \end{array}$ $\left[ u - s , v - r \right]$
-/

/- NOTATION 1.1.11
   1.1.11 （THE O INTERVAL） We will occasionally denote the interval $[ 0 , 0 ]$ simply by 0.
   
   Note that $I - I = [ r , s ] + [ - s , - r ] = [ r - s , s - r ]$ which is not in general equal to the interval O; however,we do have the following result.
-/

/- DEFINITION 1.1.13
   1.1.13 （MULTIPLICATION OF INTERVALS） For $I = [ r , s ]$ and $J = \lfloor u , v \rfloor$
   
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
-/

/- DEFINITION 1.1.18
   1.1.18 （STRICT INEQUALITY FOR INTERVALS) $I < J$ (also written $J >$ $I$ ）means that $s < u$ ：
   
   Here is a simple picture of this.
   
   $$
   { \operatorname { \underbrace { \stackrel { \mathrm { r } } { \longleftrightarrow } \quad \quad } } { \operatorname { \longrightarrow } \quad \quad } } \operatorname { \mathrm { g a p } } _ { \mathrm { ( s < u ) } } ^ { \mathrm { u } } { \frac { \mathrm { v } } { \longleftrightarrow \quad } }
   $$
   
   Intuitively, if the intervals represent scientific measurements of quantities $P$ and $Q$ , and if the intervals overlap (so there is no gap),we could not conclude anything about the relative sizes of $P$ and $Q$ .For example, if [1,3] measures a quantity $P$ and [2,5] measures $Q$ ，then $P < Q , Q < P$ and $P = Q$ are all possible.Of course, we haven't yet defined any “objects” other than rationals,nor relations such as $<$ ， $>$ ， or = between anything other than rationals—this is just a suggestion for why we make this definition instead of one based on the length of the intervals or based on the $\subset$ relation.
-/

/- DEFINITION 1.1.20
   1.1.20 （RECIPROCAL） For $I > 0$ or $I < 0$ ， $1 / I$ is the interval $\lfloor 1 / s , 1 / r \rfloor$
   
   Note that this makes sense because if either $0 < r \le s$ ，or $r \leq s < 0$ ，then $1 / s \le 1 / r$ S0 $\lfloor 1 / s , 1 / r \rfloor$ is actually an interval,which it wouldn't be if $\lfloor r , s \rfloor$ contained $0$ (check $\lfloor - 2 / 3 , 1 \rfloor$ for example).
-/

/- DEFINITION 1.1.22
   1.1.22 (LENGTH) $\ell ( I ) = s - r$ is the length of $\lfloor r , s \rfloor$
-/

/- DEFINITION 1.1.28
   1.1.28（ABSOLUTE VALUE FOR INTERVALS） SuppoSe $I = \lfloor r , s \rfloor$ ; then
   
   $$
   | I | = \left\{ \begin{array} { c l } { I } & { w h e n ~ r > 0 ~ ( i . e . ~ w h e n ~ I > 0 ) } \\ { - I } & { w h e n ~ s < 0 ~ ( i . e . ~ w h e n ~ I < 0 ) } \\ { { [ 0 , \operatorname* { m a x } ( - r , s ) ] } } & { w h e n ~ r \leq 0 \leq s ~ ( i . e . ~ w h e n ~ 0 \in I ) } \end{array} \right.
   $$
-/

/- DEFINITION 1.1.31
   1.1.31 (MAX AND MIN FOR INTERVALS)
   
   $$
   \begin{array} { r } { \operatorname* { m a x } ( I , J ) = [ \operatorname* { m a x } ( r , u ) , \operatorname* { m a x } ( s , v ) ] } \\ { \operatorname* { m i n } ( I , J ) = [ \operatorname* { m i n } ( r , u ) , \operatorname* { m i n } ( s , v ) ] . } \end{array}
   $$
   
   Here is a diagram showing max and min for two intervals $\lfloor r , s \rfloor$ and $\lfloor u , v \rfloor$
   
   ![](images/deb05c726f95058ff6f8a31ca926d2d882f392ecdf28babf5a835854dae6c64c.jpg)
-/

/- DEFINITION 1.1.35
   1.1.35 $\begin{array} { r l } & { \operatorname* { m a x } ( I _ { 1 } , \ldots , I _ { n } ) = [ \operatorname* { m a x } ( r _ { 1 } , \ldots , r _ { n } ) , \operatorname* { m a x } ( s _ { 1 } , \ldots , s _ { n } ) ] ; } \\ & { \operatorname* { m i n } ( I _ { 1 } , \ldots , I _ { n } ) = [ \operatorname* { m i n } ( r _ { 1 } , \ldots , r _ { n } ) , \operatorname* { m i n } ( s _ { 1 } , \ldots , s _ { n } ) ] . } \end{array}$
   
   These can also be phrased “recursively” as follows:
   
   $$
   \begin{array} { r } { \operatorname* { m a x } ( I _ { 1 } , \ldots , I _ { n } ) = \operatorname* { m a x } ( \operatorname* { m a x } ( I _ { 1 } , \ldots , I _ { n - 1 } ) , I _ { n } ) } \\ { \operatorname* { m i n } ( I _ { 1 } , \ldots , I _ { n } ) = \operatorname* { m i n } ( \operatorname* { m i n } ( I _ { 1 } , \ldots , I _ { n - 1 } ) , I _ { n } ) . } \end{array}
   $$
-/

/- DEFINITION 1.2.1
   1.2.1 We say the interuals $I$ and $J$ intersect, or meet, if there is $a$ rational number x which belongs to both $I$ and $J$ (i.e. $x \in I$ and $x \in J$ ）
   
   Here is the very important characterization of intersection in terms of endpoints.
-/

/- NOTATION 1.2.3
   1.2.3 If $I$ and $J$ intersect, their intersection is an interval given by
   
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
-/

/- NOTATION 1.2.5
   1.2.5 For interuals $I _ { k } = \lfloor r _ { i } , s _ { i } \rfloor$ that intersect,
   
   $$
   \bigcap _ { k = 1 } ^ { n } I _ { i } = [ \operatorname* { m a x } ( r _ { 1 } , \ldots , r _ { n } ) , \operatorname* { m i n } ( s _ { 1 } , \ldots , s _ { n } ) ] .
   $$
-/

/- DEFINITION 1.2.8
   1.2.8 $\mathcal { F }$ is a consistent family of intervals means that for every pair of intervals $I$ and $J$ in $\mathcal { F }$ ， $I$ and $J$ intersect.
   
   Thus,in the Hubble example above, the family $\{ \lfloor - 1 6 , - 1 4 \rfloor , \lfloor - 1 2 , - 8 \rfloor \}$ is not consistent. On the other hand, $\{ \vert - 1 , 4 \vert , \vert 1 , 7 \vert , \vert 3 / 2 , 3 \vert \}$ is consistent—any two intervals contain 2, or $5 / 2$ ,or 3,etc., so there are numbers that are common to all of the intervals in this family. Using Proposition 1.2.4 above,we can easily prove the following.
-/

/- NOTATION 1.2.11
   1.2.11 If $\mathcal { F }$ is a family of rational intervals, then $I \in { \mathcal { F } }$ means that $I$ is an interval of $\mathcal { F }$ .
-/

/- DEFINITION 1.2.12
   1.2.12 Given $\mathcal { F }$ and $\mathcal { G }$ families of intervals, $\mathcal { F } + \mathcal { G }$ is the family $\{ I + J \mid I \in { \mathcal { F } } , J \in { \mathcal { G } } \}$ $- \mathcal { F }$ is the family $\{ - I \mid I \in { \mathcal { F } } \}$ $\mathcal { F G }$ is the family $\{ I J \mid I \in { \mathcal { F } } , J \in { \mathcal { G } } \}$ $| \mathcal F |$ is the family $\{ | I | \mid I \in { \mathcal { F } } \}$
   
   If at least one interval of $\mathcal { F }$ doesn't contain O, then $1 / \mathcal { F }$ is the family
   
   $$
   \left\{ 1 / I \mid I \in { \mathcal { F } } \ a n d 0 \not \in I \right\} .
   $$
   
   $\operatorname* { m a x } ( \mathcal { F } , \mathcal { G } )$ is the family $\{ \operatorname* { m a x } ( I , J ) \mid I \in \mathcal { F } , J \in \mathcal { G } \}$ $\operatorname* { m i n } ( \mathcal { F } , \mathcal { G } )$ is the family $\{ \operatorname* { m i n } ( I , J ) \mid I \in \mathcal { F } , J \in \mathcal { G } \}$ $\mathcal { F } - \mathcal { G }$ is the family $\mathcal { F } + ( - \mathcal { G } )$
-/

/- DEFINITION 1.2.14
   1.2.14 (CONSISTENT FAMILIEs) Given two families of intervals $\mathcal { F }$ and $\mathcal { G }$ ，we say $\mathcal { F }$ is consistent with $\mathcal { G }$ if each interval from the family $\mathcal { F }$ intersects each interval from the family $\mathcal { G }$ . This relation is denoted $\mathcal { F } \sim \mathcal { G }$
-/

/- DEFINITION 1.2.19
   1.2.19 (STRICT INEQUALITY FOR FAMILIES） GiUen twO families of intervals $\mathcal { F }$ and $\mathcal { G }$ ， $\mathcal { F } < \mathcal { G }$ means that we can find at least one $I$ in $\mathcal { F }$ and one $J$ in $\mathcal { G }$ ， with $I < J$
   
   Could it be that both $\mathcal { F } < \mathcal { G }$ and $\mathcal { G } < \mathcal { F }$ are true? It is not hard to construct a simple example to show that the answer is yes (try it). But the following proposition tells us that this undesirable situation will not happen if both $\mathcal { F }$ and $\mathcal { G }$ are consistent families of intervals.
-/

/- DEFINITION 1.2.23
   1.2.23（WEAK INEQUALITY: FAMILIES） $\mathcal { F } \leq \mathcal { G }$ means $\mathcal { F } > \mathcal { G }$ is false; i.e., no interval of $\mathcal { F }$ lies wholly to the right of any interval in $\mathcal { G }$ . This is also written $\mathcal { G } \geq \mathcal { F }$
-/

/- DEFINITION 1.2.25
   1.2.25 If $\lfloor r , s \rfloor$ is an interval of the family $\mathcal { F }$ ， then $r$ is called a lower bound of $\mathcal { F }$ and $s$ is called an upper bound of $F$
   
   (If you look ahead to Proposition 1.3.12 in the next section, you can see why these are called bounds for $\mathcal { F }$ ）
   
   The following gives a very useful way to characterize inequality and consistency of families in terms of upper and lower bounds; it really makes giving proofs of these relationships much less confusing.
-/

/- DEFINITION 1.3.1
   1.3.1 The family $\mathcal { F }$ is fine when, for each positive rational e, there is an interval in $\mathcal { F }$ that has length less than $\epsilon$
   
   Perhaps it would be more accurate to refer to a family as being“arbitrarily” fine, but we have opted for the shorter form,which is easier to say and read. For clarity we will sometimes refer to fine families as families having arbitrarily fine intervals.
   
   Note also that the rationals $\epsilon$ are positive. We don't expect to find intervals of length O, since these would give absolutely accurate estimates. For example, measuring $\sqrt { 2 }$ by an interval of length O would give an estimate $\lfloor r , r \rfloor$ ，which would be saying that $\sqrt { 2 }$ is $r$ ,a rational number. However, it has been known for more than 2000 years that $\sqrt { 2 }$ can not be rational. Thus,for fineness we only demand that intervals can be found of length less than $\epsilon$ for each $\epsilon > 0$
   
   The Greek letter $\epsilon$ , called “epsilon,”has long been used by scientists and mathematicians to denote a small number. It doesn't have to be small, but that's the tradition.
   
   Finally, this definition could be rephrased by substituting the word “any”or “every” for“each.”When mathematicians say they can do something for any positive number, they really mean for each or euery positive number. The words “any,” “every,” and “each” are usually used synonymously in this context. For example, mathematicians say “The number $N$ is square-free if, for any prime $p$ dividing $N$ ， $p ^ { 2 }$ does not divide $N$ .”“Any” means “each” or “every” in this sentence. We chose “each” in the definition of fine family above to avoid giving the impression,upon first reading, that finding an interval of length less than $\epsilon$ for just any (one) value of $\epsilon$ was good enough. Now that this is explained, we will use “any”，“every”,and “each” interchangeably when it is appropriate.
-/

/- NOTATION 1.3.10
   1.3.10 For each rational number $c$ ， we will, if there is no danger of confusion, also use c to denote the family of intervals whose sole member is $\displaystyle { \lfloor c , c \rfloor }$ that is, c will also denote $\{ \vert c , c \vert \}$
-/

/- DEFINITION 1.3.15
   1.3.15 If $\mathcal { F }$ is a fine and consistent family, define ${ \mathcal { F } } ^ { * }$ to be the family of all $[ a , b ]$ that intersect every member of $\mathcal { F }$ (or, equivalently， all $\lfloor a , b \rfloor$ such that $a \leq \mathcal { F } \leq b$ ）
   
   That $\mathcal { F }$ is consistent follows directly from the second corollary above. Note that since ${ \mathcal { F } } ^ { * }$ contains every interval of $\mathcal { F }$ ， ${ \mathcal { F } } ^ { * }$ will be fine since $\mathcal { F }$ is assumed to be. ${ \mathcal { F } } ^ { * }$ is maximal in the sense that if $\kappa$ is consistent and contain all the intervals of $\mathcal { F }$ ， then $\kappa$ is contained in ${ \mathcal { F } } ^ { * }$ .(Verification of this is left as an exercise.） The family ${ \mathcal { F } } ^ { * }$ will be used later to standardize the definitions of certain numbers.Note also that $\mathcal { F } \sim \mathcal { F } ^ { \ast }$ ，and $\mathcal { F } \sim \mathcal { G }$ if and only if $\mathcal { F } ^ { * } { \sim } \mathcal { G } ^ { * }$ .See the exercises for these and other properties of ${ \mathcal { F } } ^ { * }$
-/

/- DEFINITION 1.4.1
   1.4.1 (REAL NUMBER) A real number is a fine and consistent family of rational intervals. We use the symbol $\mathbb { R }$ to denote the reals， and the expression $A \in \mathbb R$ means that $A$ is a real number.
   
   The fineness assumption in this definition tells us that we have as much accuracy as possible. Then, if two real numbers $A$ and $B$ cannot be distinguished from each other by a pair of measurements $I \ < \ J$ or $J \ < \ I$ (where $I$ and $J$ are intervals in $A$ and $B$ respectively),then they cannot be distinguished.But rejecting these inequalities means saying $A \geq B$ and $B \geq A$ ,i.e. $A \sim B$
-/

/- DEFINITION 1.4.2
   1.4.2（EQUALITY OF REALS） $A = B$ as real numbers means $A \sim B$ as families of intervals.
   
   In order to avoid confusion,for a while we will denote real numbers using capital letters $A$ ， $B$ ， $C$ ,and will continue to employ the notations $A < B$ ， $A > B$ ， $A \le B$ and $B \leq A$ in the way that was defined for families of intervals (these relations for reals are defned to be exactly the same relations for the reals when considered as families of rational intervals). The following properties of equality and order follow directly from propositions in the previous section about the relations $\sim$ ， $<$ ,and $\leq$
-/

/- DEFINITION 1.4.5
   1.4.5 $A \in \mathbb { R } ^ { * }$ means that $A \in \mathbb R$ and either $A < 0$ or $A > 0$
   
   Just as we were able to consider the integers $\mathbb { Z }$ as part of the rationals $\mathbb { Q }$ by the association $N  N / 1$ ，we can consider the rationals $\mathbb { Q }$ as part of the reals $\mathbb { R }$ To see how,consider the operation that associates to each rational $c$ the simple family consisting of the single interval $\displaystyle \lfloor c , c \rfloor$ .As we have observed, this family is clearly consistent and fine,and the association $c  \{ \vert c , c \vert \}$ enables us to consider the rationals as real numbers. On the other hand,we could also identify $_ c$ with the maximal family $c ^ { * }$ ,which in this case turns out to be simply the family of all rational intervals containing $c$ . It is easy to see, however, that these two identifications, or embeddings,produce equal real numbers since $c \sim c ^ { * }$ .We can also think of these identifications as functions mapping $\mathbb { Q }$ into $\mathbb { R }$
   
   Suppose that $A$ is a real number and that the (rational) interval $\lfloor r , s \rfloor$ belongs to $A$ . Then, since real numbers are consistent families,Proposition 1.3.12 tells us that $r \leq A \leq s$ . Thus,the left-hand endpoints of intervals in the family $A$ are really lower bounds for $A$ ,and the right-hand endpoints are upper bounds. Conversely, suppose that $\lfloor r , s \rfloor$ is a rational interval with endpoints $r$ and $s$ satisfying this inequality. Then $\lfloor r , s \rfloor$ intersects every interval in $A$ by the same proposition. Now $\lfloor r , s \rfloor$ may not belong to $A$ ,but we can enlarge $A$ by adding $\lfloor r , s \rfloor$ ,without changing $A$ as a real number (since the new family will be consistent with $A$ ); that is,the new family will be a real number equal to $A$ and containing $\lfloor r , s \rfloor$ . We can continue enlarging $A$ in this way to form $A ^ { * }$ , the family of all rational intervals which meet every interval of $A$ .By Corollary 1.3.14 we know that $A ^ { * }$ is consistent,and it is also fine since it contains $A$ (which is fine). In fact, $A \sim A ^ { * }$ as families,so $A = A ^ { * }$ as real numbers. (For more about $A ^ { * }$ see the exercises on page 38.） For any bounds $r \leq A \leq s$ ，the interval $\lfloor r , s \rfloor$ may not be in $A$ but it is in $A ^ { * }$
   
   In the previous section (see 1.3.16) we constructed the family $\mathit { c 2 }$ (cube root of 2):
   
   C2 = family of all rational intervals $\lfloor a , b \rfloor$ such that $a ^ { 3 } \leq 2 \leq b ^ { 3 }$
   
   In fact, the following properties of $\mathit { c 2 }$ appear as exercise 7 on page 38.
   
   · $\mathit { c 2 }$ is fine and consistent. · 2 belongs to every interval of $\left( \mathcal { C } 2 \right) ^ { 3 } = \left( \mathcal { C } 2 \right) \left( \mathcal { C } 2 \right) \left( \mathcal { C } 2 \right)$
   
   The first property tells us that $\mathit { c 2 }$ is a real number,and the second tells us that [2,2] meets every interval of $\left( \mathcal { C } 2 \right) ^ { 3 }$ ，thus $\left( \mathcal { C } 2 \right) ^ { 3 } \sim \{ [ 2 , 2 ] \}$ . So, as real numbers, $\left( \mathcal { C } 2 \right) ^ { 3 } = 2$ , and we are justified in writing $\mathscr { C } 2 = \sqrt [ 3 ] { 2 }$ . We have constructed a number we didn't have before, since there is no rational whose cube is 2. (The exercises for this section contain several other examples of “new” real numbers.)
   
   It is clear that we could mimic this construction and compute various roots of rational numbers.For example,we could construct $\sqrt [ 6 ] { 1 9 }$ by looking at all rational intervals $\lfloor a , b \rfloor$ with the properties that $a > 0$ and $a ^ { 6 } \leq 1 9 \leq b ^ { 6 }$ .(We need $a \mathrm { ~ > ~ }$ $0$ to make sure we are getting the positive root； without it, the family wouldn't be consistent either, since we would be looking at the positive and negative root simultaneously.） What we are doing is constructing inverses,one value at a time, for functions of the form $x ^ { N }$ . In the next chapter we will see a much better way of constructing inverses for functions.
-/

/- DEFINITION 1.5.3
   1.5.3（SUBTRACTION AND DIVISION） $A - B$ means $A + \left( - B \right)$ and, for $B \in \mathbb { R } ^ { * }$ ， $A / B$ means $A ( 1 / B )$
   
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
-/

/- DEFINITION 1.5.33
   1.5.33(RULING OUT） To say that statements $P _ { 1 } , P _ { 2 } , \dots , P _ { N }$ can't all be ruled out is to say that they can't all be false; in other words, if they are all false it leads to a contradiction.
-/

/- DEFINITION 1.5.39
   1.5.39 （BETWEENNESS） A is between $B$ and $C$ means $\operatorname* { m i n } ( B , C ) \leq$ $A \leq m a x ( B , C )$
-/

/- DEFINITION 1.7.1
   1.7.1（REAL INTERVAL） $\lfloor A , B \rfloor$ is a real interval when $A$ and $B$ are real numbers and $A \le B$ .If $X$ is a real number, then $X \in \lfloor A , B \rfloor$ means $A \leq X \leq B$ .
   
   Of course, this definition leads to an obvious problem. Since rationals like $1 / 2$ and $3 / 4$ are real numbers,how do we know whether the interval denoted $\lfloor 1 / 2 , 3 / 4 \rfloor$ is to be considered a real interval (containing non-rational reals as well as rationals) Or a rational interval (containing only rational members)? Well, we could have done something fancy, like notating real intervals with double brackets: $\left\lfloor \left\lfloor 1 / 2 , 3 / 4 \right\rfloor \right\rfloor$ .But instead we will simply assume that from now on, all intervals $[ a , b ]$ are real intervals unless otherwise specifed. In other words,without further comment, $\lfloor 1 / 2 , 3 / 4 \rfloor$ will mean a real interval. Thus, for example, $\textstyle { \frac { \sqrt { 2 } } { 2 } } \in [ 1 / 2 , 3 / 4 ]$
   
   As we did for rational intervals, we define $\vert A , B \vert < \vert C , D \vert$ to mean $B < C$
   
   Now,if you look back over the properties of rational intervals and the proofs of those properties,you'll see that nearly all of them depend only on elementary properties of inequalities and their algebraic manipulation. Since the same rules for manipulating inequalities hold for reals as do for rationals, most of these properties of rational intervals continue to be true for real intervals.Here are two examples.
-/

/- DEFINITION 1.7.5
   1.7.5 For any family of real intervals $\boldsymbol { S }$ ，
   
   1. $\boldsymbol { S }$ is consistent means that every pair of intervals in $s$ intersect.
   
   2. $\boldsymbol { S }$ is fine means that, for each $\epsilon > 0$ there in an interval $I$ in $\boldsymbol { S }$ with $\ell ( I ) < \epsilon$
-/

/- DEFINITION 1.7.8
   1.7.8 (OvERSPREADs) The rational interval $\lfloor r , s \rfloor$ overspreads the real interval $\lfloor A , B \rfloor$ means $r \leq A \leq B \leq s$
   
   We can't just choose any rational intervals that overspread the intervals in $\boldsymbol { S }$ ， because the family of rational intervals we get may not be fine. Instead, we look at all rational intervals which overspread at least one interval in $\boldsymbol { S }$
-/

/- DEFINITION 1.7.9
   1.7.9 ( $\operatorname* { l i m } \left( S \right) ,$ ）For a consistent and fine family $\boldsymbol { S }$ of real intervals, $\operatorname* { l i m } ( S )$ is the family of all rational intervals that overspread at least one interval of $S$
   
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
-/

/- DEFINITION 1.8.1
   1.8.1 A limiting family $s$ is a fine and consistent family of real intervals. The limit of such a family is the real number $\operatorname* { l i m } ( S )$ contained in each interval of $\boldsymbol { S }$
-/

/- NOTATION 1.8.2
   1.8.2 $S \to X$ means $\boldsymbol { S }$ is a limiting family and $X = \operatorname* { l i m } ( S )$
   
   Note first that the existence and uniqueness of $\operatorname* { l i m } ( S )$ is guaranteed by the Completeness Theorem. Since $\operatorname* { l i m } ( S )$ is in each interval of $s$ ，we must have
   
   $$
   A \leq \operatorname* { l i m } ( S ) \leq B \quad { \mathrm { ~ f o r ~ e a c h ~ } } [ A , B ] \in S .
   $$
   
   To say this in another way, we extend Definition (1.2.25),originally made for families of rational intervals,to real intervals.
-/

/- DEFINITION 1.8.3
   1.8.3 If $\lfloor A , B \rfloor$ is an interval of the family $\boldsymbol { S }$ ，then $A$ is called a lower bound for $\boldsymbol { S }$ and $B$ is called an upper bound for $\boldsymbol { S }$
   
   It is now very easy to show that the result characterizing inequalities for rational families (Proposition 1.2.26)also holds for real families.In particular, $\boldsymbol { S } \le \boldsymbol { S } ^ { \prime }$ if and only if every lower bound of $\boldsymbol { S }$ is less than or equal to every upper bound of $S ^ { \prime }$
-/

/- DEFINITION 1.8.11
   1.8.11
   
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
-/
