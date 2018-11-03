
# Note-taking style guide

1. *Use [semantic linebreaks](https://rhodesmill.org/brandon/2012/one-sentence-per-line/).*
    Since LaTeX doesn't care where newlines are in a block of text,
    you can use linebreaks to separate *ideas*.  
    This makes subsequent editing easier.

2. *Don't use manual linebreaks.* Let LaTeX decide how to space things.
    You should never have to write `\\ ` at the end of a line, 
    unless it's in a multi-line math environment or the like.

3. *Use [`macros.tex`](macros.tex).*
    Some commonly-used macros (like `\P` for $\P$) are there.
    If you want to define further ones, put them at the top of your file.

4. *Math environments.*
    To make things work when converting to pdf and html,
    for obscure reasons, please use
    ```
    $$\begin{aligned}
      ... (math here) ...
    \end{aligned}$$
    ```
    for display-mode math.  (not `\[` or `\begin{align}`...)
