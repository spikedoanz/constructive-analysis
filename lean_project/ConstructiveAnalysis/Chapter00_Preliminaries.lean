/-!
# Chapter 0: Preliminaries

Definitions extracted from Bridger's 'Real Analysis: A Constructive Approach'
-/

-- We only need natural numbers as a foundation

/- NOTATION O.1.1
   O.1.1 n E N means that n is a natural number.
   
   One of the most useful properties of $\mathbb { N }$ is the following,which we have put in a box because of its importance.
-/

/- NOTATION 0.1.3
   0.1.3 $n \in \mathbb { Z }$ means that n is an integer.
   
   So, we can now turn to the fractions.
-/

/- DEFINITION O.2.1
   O.2.1 (RATIONAL NUMBERs) A rational number is an ordered pair $a / b$ ， where a and b are integers and $b \neq 0$
   
   1. $a / b = c / d$ means $a d = c b$
   
   In the definition above,we used the term“ordered pair.”This can be defined in the context of set theory, but we will not pursue that formality. Basically， an ordered pair of integers—in this case denoted $a / b$ but sometimes by $( a , b )$ is simply a pair of integers where the order makes a difference.In other words, $a / b$ is not necessarily the same as $b / a$ . In fact,in the definition we make an explicit condition for ordered pairs to be equal, namely $a d = c b$ .This is an example of the power we have when we make a definition of something hitherto undefined. Rationals are added,subtracted,multiplied and divided in the usual way. It is not difficult to show that equal rationals produce equal results under these arithmetic operations; for example, $2 / 4 = 1 / 2$ and $2 / 4 + 3 / 7 = 1 / 2 + 3 / 7$
   
   Here is how the proof goes for addition. Suppose $a / b = a ^ { \prime } / b ^ { \prime }$ and $c / d = c ^ { \prime } / d ^ { \prime }$ ，s0 that $a b ^ { \prime } = a ^ { \prime } b$ and $c d ^ { \prime } = c ^ { \prime } d$ . Now, using the familiar rule for adding fractions (which we take as our defnition of rational number addition): $a / b + c / d = ( a d + b c ) / b d$ and $a ^ { \prime } / b ^ { \prime } + c ^ { \prime } / d ^ { \prime } = ( a ^ { \prime } d ^ { \prime } + b ^ { \prime } c ^ { \prime } ) / b ^ { \prime } d ^ { \prime }$ . Are the right-hand sides of these last two equations equal? Check that $( a d + b c ) b ^ { \prime } d ^ { \prime } = ( a ^ { \prime } d ^ { \prime } + b ^ { \prime } c ^ { \prime } ) b d$ by carefully multiplying out and using $a b ^ { \prime } = a ^ { \prime } b$ and $c d ^ { \prime } = c ^ { \prime } d$
   
   In the exercises we invite you to fill in the gaps in this quick exposition of the rational numbers. It is not essential to go through with all these details,but you might find it an enjoyable diversion, especially if you are not used to giving proofs in a non-geometric setting.
-/

/- NOTATION 0.2.2
   0.2.2 $r \in \mathbb { Q }$ means that $r$ is a rational number.
   
   The integers are located or represented or embedded in the rationals by the association: $a  a / 1$ .When we refer to the rational integer $^ { a }$ ,for example,we will mean $a / 1$
   
   A word about ordering: The integers are discrete in the sense that for any integer $_ n$ there is no integer between $_ { n }$ and $n + 1$ .In other words,every integer has a “next” integer. This is not true of the rationals: for any two rationals $r \ : = \ : a / b$ and $s = c / d$ ，the rational $( r + s ) / 2 = \textstyle { \frac { 1 } { 2 } } ( a d + c b ) / b d$ ，for example, lies strictly between $\boldsymbol { r }$ and $s$ . In fact, there are infinitely many others in between $r$ and $s$ as well. However,even though the rationals are infinitely close together, given two rationals it is always possible to tell exactly which of the conditions $r \ < \ s$ ， $r = s$ or $r \_ s$ holds.This is because an order relation on rationals amounts to verifying an order relation between the integers $^ { a d }$ and $c b$ ，and any two integers can be compared in a finite number of steps. The actual (practical) number of steps depends on how these integers are represented. In our base 10 positional notation, for example, two integers of roughly the same size $_ { n }$ require at most about $\log _ { 1 0 } n$ comparisons of the digits $0 , \ldots , 9$ , starting from the left.We summarize this computational fact in the following important result.
-/

/- DEFINITION 0.2.4
   0.2.4 $r \ \leq \ s$ means that $r \ > \ s$ is false, i.e. $r \ \leq \ s$ means that either $r < s$ or $r = s$ . This is also written $s \geq r$
-/

/- DEFINITION unlabeled
   For integers, $\langle m , n \rangle = \langle m ^ { \prime } , n ^ { \prime } \rangle$ means $m + n ^ { \prime } = m ^ { \prime } + n$
   
   We can similarly define addition of integers: $\langle m , n \rangle + \langle m ^ { \prime } , n ^ { \prime } \rangle = \langle m + m ^ { \prime } , n + n ^ { \prime } \rangle$ (since $m - n ) + ( m ^ { \prime } - n ^ { \prime } ) = ( m + m ^ { \prime } ) - ( n + n ^ { \prime } ) )$ .Multiplication is a little trickier: $\left. m , n \right. \cdot \left. m ^ { \prime } , n ^ { \prime } \right. = \left. m m ^ { \prime } + n n ^ { \prime } , m n ^ { \prime } + m ^ { \prime } n \right.$ (can you see why?). Now, if $a = \langle m , n \rangle$ ,define $- a$ to be $\langle n , m \rangle$ . Here are some things to prove:
   
   (a） The commutative and distributive laws for addition and multiplication. (b)If $a$ ， $b$ and $c$ are integers and $a = b$ ,then $a + c = b + c$   
   (c） $a + ( - a ) = 0$   
   (d) $( - a ) b = a ( - b ) = - a b$   
   (e） If $a + c = b + c$ then $a = b$ (hint:add $- c$ to both sides and use some of the results above).   
   (f) $- ( - a ) = a$
   
   You may also want to define the inequalities $\leq$ and $<$ and prove some of the properties for inequalities listed in the text for the natural numbers. If you do this, you can also define $| m |$ and prove that $| m | | n | = | m n |$
   
   Note that the usual natural numbers can be considered integers by representing the natural number $_ { m }$ by the integer $\langle m , 0 \rangle$ ; thus, for example, $^ { 1 }$ is represented by $\langle 1 , 0 \rangle$ (which, incidentally, is equal, as an integer, to $\langle 2 , 1 \rangle$ or $\langle 1 2 , 1 1 \rangle$ ,etc.). Now you can show that $1 \cdot a = a$ , for example,by noting that $\langle 1 , 0 \rangle \cdot \langle m , n \rangle =$ $\langle m , n \rangle$
-/

/- DEFINITION unlabeled
   For rationals $r = a / b$ and $s = c / d$ ：
   
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
-/
