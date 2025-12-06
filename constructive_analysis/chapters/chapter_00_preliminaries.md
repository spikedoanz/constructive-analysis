# 0.1 The Natural Numbers

You have to begin somewhere. We begin with the whole numbers: O,1, 2,...and assume that we know what they are and that they have all the basic properties we know and love. Here are some of them:

1.(Commutative laws) $m + n = n + m$ ， $m \prime n \prime l = n \prime n \prime n$

2. (Associative laws) $k + ( m + n ) = ( k + m ) + n , k ( m n ) = ( k m ) n$

3. (Distributive law) $k \cdot ( m + n ) = k \cdot m + k \cdot n$

4.(Additive identity) $m + 0 = m$

5. (Multiplicative identity) ${ \boldsymbol { m } } \cdot { \boldsymbol { 1 } } = m$

6. (Cancellation)

(a) If $m + k = n + k$ ，then $m = n$ (b）If $m \cdot k = n \cdot k$ and $k \neq 0$ ,then $m = n$

7. (Inequalities)

(a) $m < n$ if and only if there is a non-zero whole number $k$ with $m + k = n$ (b) $m \leq n$ if and only if $m > n$ is false. (c) For any $k$ ， $m + k < n + k$ if and only if $m < n$ (same for $\leq$ ）. (d) For any $k \neq 0$ ， $m \cdot k < n \cdot k$ if and only if $m < n$ (same for $\leq$ ） (e）（Trichotomy）For any $_ { m }$ ， $_ { n }$ ,either $m < n$ ， $n < m$ ，or $m = n$

There are, of course,many more such properties,but we will not attempt to list them all, nor will we try to prove any of them.Attempts have been made to derive the whole numbers and their properties solely from the“laws of logic” or from certain axioms for set theory, but we will not go down that path. In fact, it is not even clear that such an approach is worthwhile,since the existence and properties of whole numbers is arguably as basic and intuitive as the laws of logic or set theory (perhaps even more so).

We will denote the collection or set of whole numbers (including O) by N, standing for natural numbers.

NOTATION O.1.1 n E N means that n is a natural number.

One of the most useful properties of $\mathbb { N }$ is the following,which we have put in a box because of its importance.

# Principle of Mathematical Induction

Suppose that $S$ is a collection or set of natural numbers with the properties:   
(a) $S$ contains the number O,and   
(b）whenever $S$ contains the number $_ n$ it also contains $n + 1$   
Then $S$ is actually all of $\mathbb { N }$

There are several alternative and equivalent versions of this principle; the version you use depends on the nature of the result you want to prove.

Variation 1: Suppose $S$ contains $k$ ，and whenever $S$ contains $_ { n }$ it also contains $n + 1$ ； then $S$ contains all natural numbers $\geq k$

Variation 2: Suppose $S$ contains $0$ , and whenever $S$ contains all the numbers from $0$ through $_ n$ it also contains $n + 1$ ; then $S = \mathbb { N }$

Mathematical induction is often compared to the behavior of dominos. The dominos are stood up on edge close to each other in a long row. When one is knocked over,it hits the next one (analogous to $_ n$ in $S$ implies $n + 1$ in $S$ ),which in turn hits the next,etc.If then we hit the first ( $0$ in $S$ ),then they will all eventually fall ( $S$ is all of N). In Variation 1 above, we start by knocking over the $k$ th domino, so that it and all subsequent ones eventually fall.

Here is an example of how a proof by induction works.

EXAMPLE 0.1.2 Prove that for any $n \geq 1$ , the sum of the first n odd numbers is $n ^ { 2 }$

Proof. We use Variation 1 above with $k = 1$ .We first verify the claim when $n = 1$ : the first odd number is 1 and the first square is $1 ^ { 2 } = 1$ , so the claim holds in this case. Now we make the so-called “induction assumption” (or “induction hypothesis"),namely that the claim is true for some $n \geq 1$ ; so we have

nth odd number

$$
\begin{array} { r l } { 1 + 3 + 5 + \cdots + } & { { } \overbrace { ( 2 n - 1 ) } ^ { } \quad = n ^ { 2 } . } \end{array}
$$

The idea is to use this to prove that the claim is true for the next number, $n + 1$ .So, starting with this equation, let's add the next odd number, $2 n + 1$ , to both sides:

$$
1 + 3 + 5 + \cdot \cdot \cdot + ( 2 n - 1 ) + ( 2 n + 1 ) = n ^ { 2 } + ( 2 n + 1 ) .
$$

The left-hand side is the sum of the first $n + 1$ odd numbers,while the right-hand side is, of course,equal to $( n + 1 ) ^ { 2 }$ . Thus,whenever the claim is true for a natural number $n \geq 1$ it is also true for $n + 1$ . All the dominos starting from $n = 1$ fall,and our proof is complete.■

WARNING: After stating the induction assumption you might be tempted to write $1 + 3 + 5 + \cdot \cdot \cdot + ( 2 n + 1 ) = ( n + 1 ) ^ { 2 }$ , in an attempt to display what it is that must now be proved. DON'T DO IT! You may be tempted to use it to prove itself. Always proceed from what you know, never from what you want to know. If you must work backwards, do it on scrap paper, but not in the final write-up.

A careful derivation of the arithmetic properties of the the natural numbers N, using induction, was done by G. Peano (1858-1932). It is a lot of fun,but we will not pursue any of it here.

Once we have the natural number $\mathbb { N }$ , it is a relatively easy and straightforward step to conceive of, or construct, the integers $\mathbb { Z }$ by adding on the“negatives” of the naturals. This gives us the collection consisting of $0$ ， $\pm 1 , \pm 2 , . . .$ on which we have to define the laws of addition and multiplication,as well as the inequalities $<$ and $\leq$ . There is a clever way of doing this which avoids dealing with a lot of the special cases that the straightforward approach entails. We sketch this in the exercises at the end of the chapter.

NOTATION 0.1.3 $n \in \mathbb { Z }$ means that n is an integer.

So, we can now turn to the fractions.

# 0.2The Rationals

The natural numbers 1, 2,3... are used for counting discrete objects. In fact, the idea of counting is based on an assumption of discreteness. If a quantity to be measured is not a whole number of the units used to measure it, then the unit is subdivided into smaller units (yards into feet into inches into tenth inches etc.) and combinations of units are used (e.g. 2 feet 10 inches plus 3 tenth-inches).It is unclear when the idea that a single number could represent such a measurement was first thought of,although the Babylonians,with their uniquely advanced positional notation,may have achieved this realization. If one magnitude $M _ { 1 }$ was used to measure another $M _ { 2 }$ and the first didn't go into the second evenly, the school of Euclid referred to the relationship not as a number but as a ratio (this term itself being undefined). If a common unit could be chosen that measured each magnitude evenly, say $M _ { 1 } = a$ units and $M _ { 2 } = b$ units, then the ratio of magnitudes would be equal to a ratio of whole numbers, $M _ { 1 } : M _ { 2 } = a : b$ $M _ { 1 }$ and $M _ { 2 }$ were called commensurable in this case. Thus,a ratio of commensurables was basically an ordered pair of whole numbers,and various laws were given for dealing with them; for example, $a d : b d = a : b$ . From Renaissance times this ordered pair $a : b$ has been denoted with a slash: $a / b$ ,and we now refer to it as a fraction or rational number instead of just a ratio. Historically, these ratios of whole numbers were accepted long before even negative whole numbers were used.

DEFINITION O.2.1 (RATIONAL NUMBERs) A rational number is an ordered pair $a / b$ ， where a and b are integers and $b \neq 0$

1. $a / b = c / d$ means $a d = c b$

In the definition above,we used the term“ordered pair.”This can be defined in the context of set theory, but we will not pursue that formality. Basically， an ordered pair of integers—in this case denoted $a / b$ but sometimes by $( a , b )$ is simply a pair of integers where the order makes a difference.In other words, $a / b$ is not necessarily the same as $b / a$ . In fact,in the definition we make an explicit condition for ordered pairs to be equal, namely $a d = c b$ .This is an example of the power we have when we make a definition of something hitherto undefined. Rationals are added,subtracted,multiplied and divided in the usual way. It is not difficult to show that equal rationals produce equal results under these arithmetic operations; for example, $2 / 4 = 1 / 2$ and $2 / 4 + 3 / 7 = 1 / 2 + 3 / 7$

Here is how the proof goes for addition. Suppose $a / b = a ^ { \prime } / b ^ { \prime }$ and $c / d = c ^ { \prime } / d ^ { \prime }$ ，s0 that $a b ^ { \prime } = a ^ { \prime } b$ and $c d ^ { \prime } = c ^ { \prime } d$ . Now, using the familiar rule for adding fractions (which we take as our defnition of rational number addition): $a / b + c / d = ( a d + b c ) / b d$ and $a ^ { \prime } / b ^ { \prime } + c ^ { \prime } / d ^ { \prime } = ( a ^ { \prime } d ^ { \prime } + b ^ { \prime } c ^ { \prime } ) / b ^ { \prime } d ^ { \prime }$ . Are the right-hand sides of these last two equations equal? Check that $( a d + b c ) b ^ { \prime } d ^ { \prime } = ( a ^ { \prime } d ^ { \prime } + b ^ { \prime } c ^ { \prime } ) b d$ by carefully multiplying out and using $a b ^ { \prime } = a ^ { \prime } b$ and $c d ^ { \prime } = c ^ { \prime } d$

In the exercises we invite you to fill in the gaps in this quick exposition of the rational numbers. It is not essential to go through with all these details,but you might find it an enjoyable diversion, especially if you are not used to giving proofs in a non-geometric setting.

NOTATION 0.2.2 $r \in \mathbb { Q }$ means that $r$ is a rational number.

The integers are located or represented or embedded in the rationals by the association: $a  a / 1$ .When we refer to the rational integer $^ { a }$ ,for example,we will mean $a / 1$

A word about ordering: The integers are discrete in the sense that for any integer $_ n$ there is no integer between $_ { n }$ and $n + 1$ .In other words,every integer has a “next” integer. This is not true of the rationals: for any two rationals $r \ : = \ : a / b$ and $s = c / d$ ，the rational $( r + s ) / 2 = \textstyle { \frac { 1 } { 2 } } ( a d + c b ) / b d$ ，for example, lies strictly between $\boldsymbol { r }$ and $s$ . In fact, there are infinitely many others in between $r$ and $s$ as well. However,even though the rationals are infinitely close together, given two rationals it is always possible to tell exactly which of the conditions $r \ < \ s$ ， $r = s$ or $r \_ s$ holds.This is because an order relation on rationals amounts to verifying an order relation between the integers $^ { a d }$ and $c b$ ，and any two integers can be compared in a finite number of steps. The actual (practical) number of steps depends on how these integers are represented. In our base 10 positional notation, for example, two integers of roughly the same size $_ { n }$ require at most about $\log _ { 1 0 } n$ comparisons of the digits $0 , \ldots , 9$ , starting from the left.We summarize this computational fact in the following important result.

THEOREM 0.2.3（TRICHOTOMY FOR THE RATIONALS） For any twO rational numbers $r$ and $s$ ， exactly one of the following conditions can be determined: $r < s , \ r =$ $s , \ r > s$

Suppose that we can rule out the case $r > s$ . By Trichotomy we must have either $r < s$ or $r = s$ . This defines what we might call the “weak” ordering of $r$ and $s$ ,as opposed to the strong ordering $r < s$

DEFINITION 0.2.4 $r \ \leq \ s$ means that $r \ > \ s$ is false, i.e. $r \ \leq \ s$ means that either $r < s$ or $r = s$ . This is also written $s \geq r$

COROLLARY 0.2.5 $a / b \leq c / d \Longleftrightarrow \left\{ { a d \leq c b \quad i f b d > 0 , } \right.$

Sometimes it is difficult to prove that $r \leq s$ but easier to prove that $r$ is less than or equal to any number bigger than $s$ .That this proves $r \leq s$ is often extremely useful,so we state it for rationals here,and will demonstrate it for real numbers later.We have called it the“Wiggle Lemma” because the presence of the $\epsilon$ gives us some “wiggle room,” or leeway, in establishing the inequality.

LEMMA 0.2.6 （WIGGLE LEMMA FOR RATIONALS） If $r$ and s are rationals, and $r \leq$ $s + \epsilon$ for every rational $\epsilon > 0$ ， then $r \leq s$

Proof. Let us assume $r \leq s + \epsilon$ for all rational $\epsilon > 0$ ； we will show that $r \ > \ s$ is impossible.If $r \ > \ s$ ，let $\epsilon = { \frac { r - s } { 2 } } > 0$ We have $r = { \textstyle \frac { 1 } { 2 } } ( r + r ) > { \textstyle \frac { 1 } { 2 } } ( r + s ) =$ $s + \frac { r - s } { 2 } = s + \epsilon$ , which contradicts our assumption. So $r > s$ is false.■

REMARk O.2.7 Although the proof ends by establishing a contradiction, it is not an indirect proof. The statement $r \leq s$ is defined to mean $^ { \ast } r > s ^ { \prime }$ is false-i.e. produces a contradiction.

The following special case occurs frequently in practice.

COROLLARY 0.2.8 Suppose $r$ and s are rationals and $r < s + \epsilon$ for every rational $\epsilon > 0$ . Then $r \leq s$

Finally,we recall that $| r |$ , the absolute value of $r$ , is defined to be $r$ if $r \geq 0$ and $- r$ otherwise.Absolute value has many interesting properties,many of which we will deal with later when we state them for real numbers. One of the most important is the following.

PROPOSITION O.2.9 （TRIANGLE INEQUALITY FOR RATIONALS) $| a + b | \leq | a | + | b |$ (For a proof, see the exercises.)

# Exercises

1.(Project）Here is an outline for constructing the integers $\mathbb { Z }$ from the natural numbers N. The idea is to let an integer be an ordered pair $\langle m , n \rangle$ of natural numbers $_ { m }$ and $_ { n }$ . This is a “formal”or abstract definition,but intuitively you should think of this as the integer $m - n$ (even though subtraction has not actually been defined for natural numbers).Since this is a definition of a new “object”,we are free to define when these objects are to be equal. Intuitively, if $\langle m , n \rangle$ is $m - n$ ,and $\langle m ^ { \prime } , n ^ { \prime } \rangle$ is $m ^ { \prime } { - } n ^ { \prime }$ , then equality would give $m - n = m ^ { \prime } - n ^ { \prime }$ Since we have to build on just what we know for natural numbers,we write this equation as $m + n ^ { \prime } = m ^ { \prime } + n$ and make our definition:

DEFINITION For integers, $\langle m , n \rangle = \langle m ^ { \prime } , n ^ { \prime } \rangle$ means $m + n ^ { \prime } = m ^ { \prime } + n$

We can similarly define addition of integers: $\langle m , n \rangle + \langle m ^ { \prime } , n ^ { \prime } \rangle = \langle m + m ^ { \prime } , n + n ^ { \prime } \rangle$ (since $m - n ) + ( m ^ { \prime } - n ^ { \prime } ) = ( m + m ^ { \prime } ) - ( n + n ^ { \prime } ) )$ .Multiplication is a little trickier: $\left. m , n \right. \cdot \left. m ^ { \prime } , n ^ { \prime } \right. = \left. m m ^ { \prime } + n n ^ { \prime } , m n ^ { \prime } + m ^ { \prime } n \right.$ (can you see why?). Now, if $a = \langle m , n \rangle$ ,define $- a$ to be $\langle n , m \rangle$ . Here are some things to prove:

(a） The commutative and distributive laws for addition and multiplication. (b)If $a$ ， $b$ and $c$ are integers and $a = b$ ,then $a + c = b + c$   
(c） $a + ( - a ) = 0$   
(d) $( - a ) b = a ( - b ) = - a b$   
(e） If $a + c = b + c$ then $a = b$ (hint:add $- c$ to both sides and use some of the results above).   
(f) $- ( - a ) = a$

You may also want to define the inequalities $\leq$ and $<$ and prove some of the properties for inequalities listed in the text for the natural numbers. If you do this, you can also define $| m |$ and prove that $| m | | n | = | m n |$

Note that the usual natural numbers can be considered integers by representing the natural number $_ { m }$ by the integer $\langle m , 0 \rangle$ ; thus, for example, $^ { 1 }$ is represented by $\langle 1 , 0 \rangle$ (which, incidentally, is equal, as an integer, to $\langle 2 , 1 \rangle$ or $\langle 1 2 , 1 1 \rangle$ ,etc.). Now you can show that $1 \cdot a = a$ , for example,by noting that $\langle 1 , 0 \rangle \cdot \langle m , n \rangle =$ $\langle m , n \rangle$

2.(Project) In the text we have defined rational numbers as ordered pairs $a / b$ of integers ( $b \neq 0$ ）with the equality relationship (for rationals) that $a / b = c / d$ means $a d = b c$ .We also defined $a / b < c / d$ (see 0.2.1).

DEFINITION For rationals $r = a / b$ and $s = c / d$ ：

· $( { \mathrm { S u m s ~ a n d ~ N e g a t i v e s } } ) \ r + s = { \frac { a d + b c } { b d } } , - r = { \frac { - a } { b } } = { \frac { a } { - b } } .$ · (Products and Reciprocals) $r s = { \frac { a c } { b d } }$ ac , and if $r \neq 0$ ，then $1 / r = { \frac { b } { a } }$ · (Differences and Quotients) $r - s = r + ( - s )$ ，and if $s \neq 0$ ，then $r / s =$ $r ( 1 / s )$

Here are some things to prove:

(a) The commutative and distributive laws for addition and multiplication.   
(b）If $r$ ， $s$ ，and $t$ are rationals,and $r = s$ ，then $r t = s t$ . (We proved a similar thing for addition of rationals in the text.)   
(c） $r + ( - r ) = 0$ ,and if $r \neq 0$ then $r \left( 1 / r \right) = 1$   
(d) $( - r ) s = r ( - s ) = - r s$   
(e）If $r + t = s + t$ then $r = s$ .If $r t = s t$ and $t \neq 0$ ，then $r = s$   
(f) $- ( - r ) = r$ ,and if $r \neq 0$ ， $1 / ( 1 / r ) = r$   
(g)If $r > s$ and $t > 0$ ，then $r t > r s$ .If $r < 0$ ,then $r t < r s$   
(h） Define $\leq$ for rationals and discuss its properties.Also,define $| r | =$ $| m / n | = | m | / | n |$ . Prove that $| r s | = | r | | s |$

3.Prove the Triangle Inequality, $| a + b | \leq | a | + | b |$ ， for integers. The simplest way is to separate into the cases $^ { a }$ and $b$ both positive,both negative,and one positive, one negative.(You may assume that $m - n \leq m + n$ for natural numbers.)

4. Prove the Triangle Inequality $\left| { \frac { a } { b } } + { \frac { c } { d } } \right| \leq \left| { \frac { a } { b } } \right| + \left| { \frac { c } { d } } \right|$ for rationals by using the fact that it's true for integers (see previous exercise). You may assume that $| r s | = | r | | s |$ for rationals $r$ and $s$ .Hint:Consider multiplying or dividing through by $| b d |$

# The remaining exercises involve mathematical induction.

5. PROPOSITION If $n > 1$ , then $n ^ { 2 } > n + 1$

Here are two proofs of this proposition; one is a good one and the other is bad form.Explain.

Proof #1. This is clearly true for $n = 2$ . Suppose (induction hypothesis) that it's true for some number $n > 1$ . We want to show $( n + 1 ) ^ { 2 } > ( n + 1 ) + 1$ ：

$$
n ^ { 2 } + 2 n + 1 > n + 2
$$

Now subtract $n + 1$ from both sides:

$$
n ^ { 2 } + n > 1 .
$$

This last statement is clearly true since $_ n$ is at least 2.■

Proof $\# 2$ .This is clearly true for $n = 2$ . Suppose (induction hypothesis) that it's true for some number $n > 1$ .We then have

$$
n ^ { 2 } > n + 1 .
$$

Since we want an $( n + 1 ) ^ { 2 }$ ，add $2 n + 1$ to both sides:

$$
n ^ { 2 } + 2 n + 1 > 3 n + 2 .
$$

Since $n > 0$ ， $2 n > 0$ so,adding $n + 2$ to both sides yields $3 n + 2 > n + 2$ Combining this with the above gives

$$
( n + 1 ) ^ { 2 } = n ^ { 2 } + 2 n + 1 > 3 n + 2 > n + 2 = ( n + 1 ) + 1 .
$$

Thus, the statement is true for $n + 1$ and we are done.■

6. Prove:

(a) $1 ^ { 2 } + 2 ^ { 2 } + 3 ^ { 2 } + \cdot \cdot \cdot + n ^ { 2 } = { \frac { n ( n + 1 ) ( 2 n + 1 ) } { 6 } } { \mathrm { ~ w h e n ~ } } n > 0$   
(b）If $n \geq 4$ ， $n ! > 2 ^ { n }$   
(c） $( 1 + x ) ^ { n } \geq 1 + n x$ . (You must make an assumption about $_ { x }$ . What is it?) (d) For $0 \leq u \leq 1$ and integers $n > 0$ ， $( 1 - u ) ^ { n } \leq 1 - u ^ { n }$ . What about $n = 0$ ？ (e) For $0 \leq u$ and integers $n > 0$ ， $1 - u ^ { n } \leq n ( 1 - u )$   
(f）If $n > 4$ ， $2 ^ { n } > n ^ { 2 }$ . (By the way, will $1 0 0 ^ { n }$ eventually be bigger than $n ^ { 1 0 0 \cdot }$ ？）

7. Prove that $x ^ { \pi } - y ^ { \pi }$ is divisible by $x - y$ (as polynomials） (Hint: When looking at $x ^ { k + 1 } - y ^ { k + 1 }$ , subtract and add $y x ^ { k }$ in the middle.） Prove that $x ^ { \pi } + y ^ { \pi }$ is divisible by $x + y$ when $_ { n }$ is odd.

8. The Fibonacci sequence $f _ { 1 } , f _ { 2 } , f _ { 3 } \ldots$ is defined as follows:

$$
f _ { 1 } = 1 , \quad f _ { 2 } = 1 , \quad f _ { n } = f _ { n - 1 } + f _ { n - 2 } \mathrm { ~ f o r ~ } n \geq 3 .
$$

Prove the amazing formula:

$$
f _ { n } = { \frac { \left( { \frac { 1 + { \sqrt { 5 } } } { 2 } } \right) ^ { n } - \left( { \frac { 1 - { \sqrt { 5 } } } { 2 } } \right) ^ { n } } { \sqrt { 5 } } }
$$

(Hint: Let a = 1+5, $\beta = { \textstyle \frac { 1 - { \sqrt { 5 } } } { 2 } }$ .Then it is helpful to notethat $\alpha + 1 = \alpha ^ { 2 }$ and $\beta + 1 = \beta ^ { 2 }$ . Also,use Variation 2 of mathematical induction; i.e. in the induction step,show that if the claim is true for all numbers less than $_ { n }$ ,it is true for $_ { n }$ as well.)

9.In studying the Mandelbrot set, one looks at a certain sequence of numbers $Z _ { 0 } , Z _ { 1 } , Z _ { 2 } , . . .$ which have the following properties:

$$
\begin{array} { r c l } { { Z _ { 0 } } } & { { = } } & { { 0 } } \\ { { | Z _ { 1 } | } } & { { = } } & { { 2 + \varepsilon \mathrm { ~ f o r ~ a ~ c e r t a i n ~ } \varepsilon > 0 } } \\ { { | Z _ { k + 1 } | } } & { { \geq } } & { { | Z _ { k } | ^ { 2 } - | Z _ { 1 } | \mathrm { ~ f o r ~ a l l ~ } k \geq 0 . } } \end{array}
$$

Prove that, for all $N \geq 0$ ， $| Z _ { N + 1 } | \ge 2 + N \cdot \epsilon$

10.Prove by induction that the product of $_ { n }$ consecutive integers is divisible by n!. (Use“double induction” to prove that $k ( k + 1 ) \dots ( k + n - 1 )$ is divisible by $n !$ by induction on $_ { n }$ and $k$ . This is a tricky problem and you must proceed very carefully!)

11.Let's make the ridiculous claim that any $_ { n }$ things are equal. Here is a proof by induction．When $n = 1$ , then it is clearly true, since any thing is equal to itself. Now suppose that it's true for some $_ { n }$ and consider any $n + 1$ things $x _ { 1 } , x _ { 2 } , . . . x _ { n } , x _ { n + 1 }$ .The first $_ { n }$ of these are equal by induction assumption, and so are the last $_ { n }$ ：

$$
\begin{array} { r } { \overbrace { x _ { 1 } , x _ { 2 } , . . . , x _ { n } } ^ { x _ { 1 } , x _ { 2 } , . . . , x _ { n } } } \\ { \underbrace { x _ { 1 } , x _ { 2 } , . . . , x _ { n } , x _ { n + 1 } } _ { \mathrm { e q u a l ~ b y ~ i n d u c t i o n } } } \end{array}
$$

Because of the overlap on the $n - 1$ things $x _ { 2 } , \ldots x _ { n }$ we have $x _ { 1 } = x _ { 2 } = \cdot \cdot \cdot =$ $x _ { n } = x _ { n + 1 }$ ，S0 $n + 1$ things are always equal as well. What's wrong?
