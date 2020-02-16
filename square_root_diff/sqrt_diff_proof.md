# The Statement

Prove the following statetment:
\(\forall n, k (>0) \in \mathbb{N}, \exists N \in \mathbb{N}\) such that

\begin{equation}
  \label{eq:main}
  (\sqrt{n+1} - \sqrt{n})^k = \sqrt{N+1} -\sqrt{N}
\end{equation}

**Proof**

First, let us rephrase the statement in a more tactible way. Take logarithm of the L.H.S.

Then, with \(x = \sqrt{n}\), the logarithm at the last line is equal to \(\sinh^{-1}{x}\). So, let us denote \(\phi = - \sinh^{-1}{x}\).
Now, the statement reads that, for \(\phi\) such that \(\sinh^2 \phi\) is a natural number, prove that \(\sinh^2 k \phi\) is also a natural number.
In fact, \(\sinh k \phi\) can be expressed as a polynomial in terms of \(\sinh{\phi} = \sqrt{n}\) and \(\cosh{\phi} = \sqrt{n + 1}\) with integer coefficients. 
But in order for \(\sinh^2 k \phi\) to be natural, \(\sinh k \phi\) must factorize into a natural factor and an irrational factor such as \(\sinh{\phi}\), \(\cosh{\phi}\) or \(\sinh{\phi}\cosh{\phi}\)
The trigonometric-hyperbolic conversion rule:

This leads to
