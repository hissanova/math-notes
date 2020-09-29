Title: A Proof of AM-GM Inequality
Date: 2020-02-10
Category: math
Tags: math

# Inequality of Arithmetic and Geometric Mean

## Introduction

This is a proof of the famous AM-GM inequality that the author came up with some time ago.
I saw somebody used the theorem in a solution to a math olympiad problem, which I don't remember the details of.
Although I must have seen it somewhere during my undergrad-math education, I couldn't immediately think of any good proof of it.
So, I started proving it by myself.
I knew I had to make use of induction, and was vaguely hoping to make the argument as "symmetric" as possible.
Here, I mean symmetric by treating all the terms in the arithmetic sum in the same manner.
I think I have done my best to make it so.
And the surprise was the method of my proof is actually quite similar to the one on [Wikipedia](https://en.wikipedia.org/wiki/Inequality_of_arithmetic_and_geometric_means#Proof_by_induction_#2).
The difference is the progression of the argument is in the opposite direction.
They start with the *Lemma1*, which is stated below, whereas I started directly from the arithmetic mean to reach at *Lemma1*.
Well, anyway, it turns out that my proof wasn't that original as I expected at the first place&#x2026;
Never mind. Cheer up (for myself) and let's keep up the good mathematical energy and motivation. :)

## The Statement

Here is the arithmetic and geometric formula

\begin{equation*}
\label{ }
\frac{a_1 + \cdots + a_n}{n} \ge \sqrt[n]{a_1\cdots a_n},
\end{equation*}

where $\forall i \; a_i > 0$.

## Proof of the Statement

OK for $n=1$. Equality holds. Suppose that the inequality holds for all natural numbers up to $n$, then

\begin{eqnarray*}
a_1 + \cdots + a_{n+1} & = & \frac{a_2 + a_3 \cdots + a_{n+1}}{n} + \frac{a_1 + a_3 + \cdots + a_{n+1}}{n} + \cdots  \nonumber \\
                       &  &  + \frac{a_1 + a_2 + \overset{i}{\breve{\cdots} } + a_{n+1}}{n} + \cdots + \frac{a_1 + \cdots + a_{n}}{n}\nonumber\\
                       & = &  \sqrt[n]{a_2\cdots a_{n+1}} + \cdots + \sqrt[n]{a_1\cdots a_n} \nonumber \\
                       & = &  \sqrt[n+1]{a_1\cdots a_{n+1}} \left( \frac{\sqrt[n]{a_2\cdots a_{n+1}}}{\sqrt[n+1]{a_1\cdots a_{n+1}}} + \cdots + \frac{\sqrt[n]{a_1\cdots a_n}}{\sqrt[n+1]{a_1\cdots a_{n+1}}} \right) \nonumber \\
                       & = &  \sqrt[n+1]{a_1\cdots a_{n+1}} \left( \sqrt[n+1]{\frac{\sqrt[n]{a_2\cdots a_{n+1}}}{a_1}} + \cdots + \sqrt[n+1]{\frac{\sqrt[n]{a_1\cdots a_{n}}}{a_{n+1}}}\right) \nonumber \\
                       & = &  \sqrt[n+1]{a_1\cdots a_{n+1}} \left( \sqrt[n+1]{\frac{\alpha_1}{a_1}} + \cdots + \sqrt[n+1]{\frac{\alpha_{n+1}}{a_{n+1}}}\right) 
\end{eqnarray*}

where $\alpha_i=\sqrt[n]{a_1\overset{i}{\breve{\cdots}} a_{n+1}}$ (Here, $\overset{i}{\breve{\cdots}}$ means omitting the i-th term in the sum or the product). It is easy to see that

\begin{equation*}
\label{ }
\sqrt[n+1]{\frac{\alpha_1}{a_1}}  \cdots  \sqrt[n+1]{\frac{\alpha_{n+1}}{a_{n+1}}} = 1.
\end{equation*}

So, if we can show the following proposition, we are done.  
***Lemma1***:

> If $b_1, \cdots, b_{n+1} >0$ and $b_1 \cdots b_{n+1} = 1$, then
> 
> \begin{equation}
> \label{AM_GM_normalised}
> b_1 + \cdots + b_{n+1} \ge n+1
> \end{equation}

Now, by substituting $b_i = \sqrt[n+1]{\frac{\alpha_i}{a_i}}$, it is straightforward to see that

\begin{eqnarray*}
a_1 + \cdots + a_{n+1} & = &  \sqrt[n+1]{a_1\cdots a_{n+1}} \left( \sqrt[n+1]{\frac{\alpha_1}{a_1}} + \cdots + \sqrt[n+1]{\frac{\alpha_{n+1}}{a_{n+1}}}\right) \nonumber \\
                       & \ge &  \sqrt[n+1]{a_1\cdots a_{n+1}} (n + 1 ) \nonumber \\
\end{eqnarray*}

## Proof of the Lemma1

***Lemma1***:

> If $b_1, \cdots, b_{n+1} >0$ and $b_1 \cdots b_{n+1} = 1$, then
> 
> \begin{equation}
> \label{AM_GM_normalised}
> b_1 + \cdots + b_{n+1} \ge n+1
> \end{equation}

***Proof***:
 First, if $b_1 = \cdots = b_{n+1} =1$, then the equality holds.
We notice that $\exists i$ such that $b_{i} > 1$ implies that $\exists j$ such that $b_{j} < 1$.
So, let us assume the condition and proceed to prove the statement by induction. 
For $n=1$, we can assume that $b_1 = 1-c_1$ with $0 < c_1 <1$. Then

\begin{equation*}
\label{ }
b_1 + b_2 = b_1 + \frac{1}{b_1} = 1 - c_1 + \frac{1}{1-c_1} \ge 1-c_1 + 1 + c_1 = 2.
\end{equation*}

Now, let us suppose that (\ref{AM_GM_normalised}) holds true for all the natural numbers up to n. Regarding the fact mentioned above, let us suppose that $b_n = 1 + c_n$ and $b_{n+1} = 1+c_{n+1}$ with $c_n < 0$ and $c_{n+1} > 0$. Then, by the assumption, 

\begin{equation*}
\label{ }
(b_1 \cdots b_{n-1})(b_n b_{n+1}) = 1 \quad \text{implies} \quad b_1 + \cdots + b_{n-1} + b_n b_{n+1} \ge n.
\end{equation*}

If we can say

\begin{equation*}
\label{ }
b_1 + \cdots + b_{n-1} + (b_n + b_{n+1}) \ge \text{or} > b_1 + \cdots b_{n-1} + (b_n b_{n+1} + 1),
\end{equation*}

then the inequality follows. But

\begin{equation*}
\label{ }
b_n + b_{n+1} - (b_n b_{n+1} + 1) = -c_n c_{n+1} > 0.
\end{equation*}

Hence, it follows that 

\begin{equation*}
\label{ }
b_1 + \cdots + b_{n-1} + b_n + b_{n+1} > b_1 + \cdots + b_{n-1} + b_n b_{n+1} + 1 \ge n + 1
\end{equation*}
