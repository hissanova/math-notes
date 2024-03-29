<div id="table-of-contents">
<h2>Table of Contents</h2>
<div id="text-table-of-contents">
<ul>
<li><a href="#sec-1">1. About this note</a></li>
<li><a href="#sec-2">2. Jargons</a></li>
<li><a href="#sec-3">3. The Product Of Three Reflections (\(\S\text{3.1}\) p35)</a>
<ul>
<li><a href="#sec-3-1">3.1. 2D case in terms of complex numbers \(\mathbb{C}\)</a>
<ul>
<li><a href="#sec-3-1-1">3.1.1. Reflections with invariant lines through the origin</a></li>
<li><a href="#sec-3-1-2">3.1.2. General reflections</a></li>
</ul>
</li>
</ul>
</li>
</ul>
</div>
</div>


# About this note<a id="sec-1" name="sec-1"></a>

This note contains some interpretations, visualisations, comments, etc, from reading "Regular Polytopes, H.S.M. Coxeter"

# Jargons<a id="sec-2" name="sec-2"></a>

> *congruent*:Two figures are said to be ***congruent*** if the distances between any corresponding pairs of points are equal. Likewise, angles between corresponding pairs of lines are equal. 
> For example, two dihdra (or trihdral solid angles) are congruent if the three face-angles of one are equal to respective face-angles of the other. 
> Two such trihedra are said to be *directly* (or "superposable") congruent if they have the same sense (right- or left-handed), but *enantiomorphous* if they have opposite senses. 
> The same distinction can be applied to figures of any kind, byth following device. (To be continued,,,)

# The Product Of Three Reflections (\(\S\text{3.1}\) p35)<a id="sec-3" name="sec-3"></a>

I will prove the following statement in a way more understandable to myself than in the book:

> In the product of three reflections, we can always arrange that one of the reflecting lines shall be perpendicular to both the others.

Coxeter's proof goes like this:

> The following is perhaps not the simplest proof, but it is one that generalizes easily to any number of dimensions.
>  If we regard a congruent transformation as operating on pencils of parallel rays (instead of operating on points), we can say that a translation has no effect: it leaves every pencil invariant.
>  Since each pencil can be represented by that one of its rays which passes through a fixed point \(O\),
>  any congruent transformation operating on the rays that emanate from \(O\): congruent because of the preservation of angles.
> 
> If the given transformation is opposite, so is the induced transformation.
>  But the latter, leaving \(O\) invariant, can only be a reflection, say a reflection in \(OQ\).
>  This leaves  \(O\) and \(Q\) invariant; therefore the given transformation leaves the *direction* \(OQ\) invariant.
>  Consider the product of the given transformation with the reflection in any line, \(p\), perpendicular to \(OQ\).
>  This is a direct transformation which reverses the direction \(OQ\); i.e., it is a half-turn with the reflection in \(p\).
>  But the half-turn is the product of reflectios in two perpendicular lines, which may be chosen perpendicular and parallel to \(p\).
>  Thus we have altogether three reflections , of which the last two can be combined to form a translation.
>  The general opposite transformation is now reduced to the product of a reflection and a translation which commutes, the reflecting line being in the direction of translation.
>  This is kind of transformation called  a *glide-reflection*.

OK. I think it would be more comprehensive if we add a little bit more explanations to some logical steps hidden between the lines in a modern style. 
I started to re-prove the theorem in 2 dimension by using a bra and ket vector notation, because it is useful for writing inner products like \(\langle a|b \rangle\), 
and the "outer" products like \(|a \rangle \langle b|\). A reflection in any dimensions about a plane orthoganal to a normal vector \(|\hat{a}\rangle\) can be expressed using this bra-ket notation as

\begin{equation}
|x' \rangle = |x \rangle - 2 |\hat{a} \rangle \langle \hat{a} |x \rangle = \left( \mathbb{1} - 2 |\hat{a} \rangle \langle \hat{a}  |\, \right) |x \rangle
\end{equation}

## 2D case in terms of complex numbers \(\mathbb{C}\)<a id="sec-3-1" name="sec-3-1"></a>

A line \(\mathcal{L}(\alpha, d) \subset \mathbb{C}\), is defined by a pair of reals, \(0 \le \alpha \le 2\pi\), and \(d \ge 0\), parametrically as follows:

\begin{equation}
\mathcal{L}(\alpha, d) := \{ e^{i\alpha}t + i \, d e^{i\alpha} \mid t \in \mathbb{R} \}
\end{equation}

\(\alpha\) is the direction of the line and \(d\) is the perpendicular distance from the origin to the line. So the point \(i d e^{\alpha}\) is the vertical projection of the origin onto \(\mathcal{L}(\alpha, d)\).

### Reflections with invariant lines through the origin<a id="sec-3-1-1" name="sec-3-1-1"></a>

First, a reflection \(\rho_{\alpha}:\mathbb{C} \rightarrow \mathbb{C}\) with a line passing through the origin, \(\mathcal{L}(\alpha, 0)\), as the invariant line is

\begin{equation}
w = \rho_{\alpha} (z) = e^{i\alpha} \overline{e^{-i\alpha} z} = e^{i2\alpha} \bar{z}
\end{equation}

Then, the product of **two** such reflections, say \(\rho_{\alpha_{2}}\) and \(\rho_{\alpha_{1}}\) is, (writing \(\rho_{i} = \rho_{\alpha_{i}}\) for my brevity)

\begin{equation}
w = \rho_{2} \circ \rho_{1} (z) = e^{i2\alpha_{2}} \overline{e^{i2\alpha_{1}} \bar{z}} = e^{i2(\alpha_{2} - \alpha_{1})} z,
\end{equation}

which is just a rotation. Now, the product of **three** reflections is

\begin{equation}
w = \rho_{3} \circ \rho_{2} \circ \rho_{1} (z) = e^{i2\alpha_{3}} \overline{e^{i2(\alpha_{2} - \alpha_{1})} z} = e^{i2(\alpha_{3} - \alpha_{2} + \alpha_{1})} \bar{z} = e^{i2\theta} \bar{z},
\end{equation}

which is **another reflection** in the line \(\mathcal{L}(\alpha, 0)\) where \(\theta = \alpha_{3} - \alpha_{2} + \alpha_{1}\).  

### General reflections<a id="sec-3-1-2" name="sec-3-1-2"></a>

A more general reflection \(\rho_{\alpha,d}:\mathbb{C} \rightarrow \mathbb{C}\) with the invariant line not passing through the origin \(\mathcal{L}(\alpha, d)\) can be constructed as follows:
1.  Apply a rotation \(e^{-i\alpha}\)
2.  Translate \(-id\)
3.  Appply reflection in real axis, i.e. take conjugate \(z \mapsto \bar{z}\)
4.  Translate back \(id\)
5.  Rotate back \(e^{i\alpha}\).

Applying all the transformations, we have, for a general reflection in \(\mathcal{L}(\alpha, d)\), as

\begin{equation}
w = \rho_{\alpha,d} (z) = e^{i\alpha}\{ \overline{e^{-i\alpha} z - i\,d} + i\,d \} = e^{i2\alpha} \bar{z} + 2i \, de^{i\alpha}.
\end{equation}

The product of **two** such reflections is,

\begin{eqnarray}
w = \rho_{\alpha_{2}, d_{2}} \circ \rho_{\alpha_{1},d_{1}} (z) &=& e^{i2(\alpha_{2} - \alpha_{1})} z - 2i \, ( d_{1} e^{i2\alpha_{2} - \alpha_{1}} - d_{2} e^{i\alpha_{2}})  \nonumber \\
&=& e^{i2\theta} z - 2i \, e^{i\alpha}( d_{1} e^{i\alpha_{2}} - d_{2} e^{i\alpha_{1}}),
\end{eqnarray}

where \(\theta = \alpha_{2} - \alpha_{1}\). Now let's look for a fixed point \(c\) of this transformation. Then it must satisfy

\begin{eqnarray}
c &=&  \rho_{\alpha_{2}, d_{2}} \circ \rho_{\alpha_{1},d_{1}} (c) \nonumber \\
(e^{i2\theta} - 1)c &=&  2i \, e^{i\theta}( d_{1} e^{i\alpha_{2}} - d_{2} e^{i\alpha_{1}}) \nonumber  \\
(e^{i\theta} - 1)(e^{i\theta} + 1)c &=&  2i \, e^{i\alpha}( d_{1} e^{i\alpha_{2}} - d_{2} e^{i\alpha_{1}}) \nonumber 
\end{eqnarray}

For \(c\) to have a definite value, \(e^{i\theta} \ne 1\)  and \(e^{i\theta} \ne -1\) have to hold. And those cases are when \(\theta = 0\) or \(\pi\), which means the two reflection lines are parallel.  
Hence, when \(\alpha = 0\) or \(\pi\), the fixed point of the transformation (the centre of the rotation) is

\begin{equation}
c =  2i \, e^{i\theta}\frac{( d_{1} e^{i\alpha_{2}} - d_{2} e^{i\alpha_{1}}) }{(e^{i\theta} - 1)(e^{i\theta} + 1)} \nonumber 
\end{equation}

In the case \(\alpha = 0, \pi\), we have translations: noticing that \(\alpha_{2} = \alpha_{1} = \alpha\) or \(\alpha_{2} = \alpha_{1} + \pi = \alpha\),

\begin{equation}
w = z \mp 2i \, e^{i\alpha}( d_{1} \mp d_{2}).
\end{equation}

We can see the direction of the resultant translation is perpendicular to the reflection lines.  
Next, weproceed to the product of **three** general reflections. Let the three reflections be \(\rho_{\alpha_{1}, d_{1}}\), \(\rho_{\alpha_{2},d_{2}}\) and \(\rho_{\alpha_{3},d_{3}}\).
The composition of them is (again, writing \(\rho_{i} = \rho_{\alpha_{i}, d_{i}}\) for my brevity)

\begin{eqnarray}
w &=& \rho_{3} \circ \rho_{2} \circ \rho_{1} (z) \nonumber \\
  &=& e^{i2(\alpha_{3} - \alpha_{2} + \alpha_{1})} \bar{z} + 2i \, ( d_{1} e^{i(2\alpha_{3} - 2\alpha_{2} + \alpha_{1})} - d_{2} e^{i(2\alpha_{3} - \alpha_{2})} + d_{3} e^{i\alpha_{3}})  \nonumber \\
  &=& e^{i2\theta} \bar{z} + 2i \, e^{i\theta}( d_{1} e^{i\theta_{23}} - d_{2} e^{i\theta_{13}} + d_{3} e^{i\theta_{12}}),
\end{eqnarray}

where \(\theta = \alpha_{3} - \alpha_{2} + \alpha_{1}\) and \(\theta_{ij} = \alpha_{j} - \alpha_{i}\).  
According to Coxeter's proof, the product of three reflections is a glide-reflection. So, let us calculate the length by which the gliding occurs.
The gliding occurs in the same direction as the reflection, which is \(e^{i2\theta}\) appeared in the above equation.

If a point \(z \in \mathbb{C}\) is on the reflection line, it will be fixed by the reflection and only displaced by the translation. 
Therefore, its image will be of the form \(z + l e^{i\theta}\) for some \(l \in \mathbb{R}\).
Equating this with the image \(\rho_{3} \circ \rho_{2} \circ \rho_{1} (z)\) yields

\begin{eqnarray}
z + l e^{i\theta}  &=& e^{i2\theta} \bar{z} + 2i \, e^{i\theta}( d_{1} e^{i\theta_{23}} - d_{2} e^{i\theta_{13}} + d_{3} e^{i\theta_{12}}) \nonumber \\
e^{-i\theta} z - e^{i\theta} z  &=& -l + 2i\,( d_{1} e^{i\theta_{23}} - d_{2} e^{i\theta_{13}} + d_{3} e^{i\theta_{12}}). 
\end{eqnarray}

The L.H.S. of the last equation is a pure imaginary number, so the real part of the R.H.S. must be \(0\). 
This fixes the value of \(l\) as

\begin{equation}
l = - 2 \{ d_{1} \sin{\theta_{23}} - d_{2} \sin{\theta_{13}} + d_{3} \sin{\theta_{12}}\}.
\end{equation}

The meaning of \(l\) is actually the magnitude of the translation (or the gliding part of the glide-reflection).
Also, remembering the expression of a reflection is \(w = \rho_{\alpha,d} (z) = e^{i2\alpha} \bar{z} + 2i \, de^{i\alpha}\) with \(d\) being real, 
we see that the real part of \(( d_{1} e^{i\theta_{23}} - d_{2} e^{i\theta_{13}} + d_{3} e^{i\theta_{12}})\) is the vertical distance from the origin to the reflection line, namely

\begin{equation}
d = d_{1} \cos{\theta_{23}} - d_{2} \cos{\theta_{13}} + d_{3} \cos{\theta_{12}}.
\end{equation}
