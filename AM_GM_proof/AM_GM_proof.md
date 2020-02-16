Title: A Proof for Arithmetic Mean and Geometric Mean Formula
Date: 2020-02-10
Category: math
Tags: math, AM-GM formula

# Arithmetic Mean and Geometric Mean Formula

## The Statement

Here is the arithmetic and geometric formula

\begin{equation*}
\label{ }
\frac{a_1 + \cdots + a_n}{n} \ge \sqrt[n]{a_1\cdots a_n},
\end{equation*}

where $\forall i \; a_i > 0$ .

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
***Lemma***:
 If $b_1, \cdots, b_{n+1} >0$, $\exists i$ such that $\;b_i \ne 1$ and $b_1 \cdots b_{n+1} = 1$, then

\begin{equation}
\label{AM_GM_normalised}
b_1 + \cdots + b_{n+1} \ge n+1
\end{equation}

Now, by substituting $b_i = \sqrt[n+1]{\frac{\alpha_i}{a_i}}$, it is straightforward to see that

\begin{eqnarray*}
a_1 + \cdots + a_{n+1} & = &  \sqrt[n+1]{a_1\cdots a_{n+1}} \left( \sqrt[n+1]{\frac{\alpha_1}{a_1}} + \cdots + \sqrt[n+1]{\frac{\alpha_{n+1}}{a_{n+1}}}\right) \nonumber \\
                       & \ge &  \sqrt[n+1]{a_1\cdots a_{n+1}} (n + 1 ) \nonumber \\
\end{eqnarray*}

## Proof of the Lemma

***Lemma***:
 If $b_1, \cdots, b_{n+1} >0$, $\exists i$ such that $\;b_i \ne 1$ and $b_1 \cdots b_{n+1} = 1$, then

\begin{equation}
\label{AM_GM_normalised}
b_1 + \cdots + b_{n+1} \ge n+1
\end{equation}

***Proof***:
 Let us prove by induction. Notice that the assumuption that $\exists i$ such that $b_{i} > 1$ implies that $\exists j$ such that $b_{j} < 1$.   
So, for $n=1$, we can assume that $b_1 = 1-c_1$ with $0 < c_1 <1$. Then

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
b_1 + \cdots + b_{n-1} + (b_n + b_{n+1}) \ge b_1 + \cdots b_{n-1} + (b_n b_{n+1} + 1),
\end{equation*}

then the inequality follows. But

\begin{equation*}
\label{ }
b_n + b_{n+1} - (b_n b_{n+1} + 1) = -c_n c_{n+1} > 0.
\end{equation*}

Hence, it follows that 

\begin{equation*}
\label{ }
b_1 + \cdots + b_{n-1} + b_n + b_{n+1} \ge b_1 + \cdots + b_{n-1} + b_n b_{n+1} + 1 \ge n + 1
\end{equation*}
