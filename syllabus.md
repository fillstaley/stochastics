---
title:  "Syllabus :: Applied Stochastic Processes :: Math 607, Fall 2018"
author: "Peter Ralph"
date: "24 September 2018"
...


-  **Class:** 10-11, MWF.
-  **Office Hours:** TBD
-  **Instructor:** Peter Ralph (plr@uoregon.edu)
-  **Office:** 6 Deady Hall and/or 270 Onyx (email to arrange)


This course is an introduction to the mathematical theory
of stochastic processes from a "user's" perspective.
The goals are to become familiar with properties of and techniques for 
a range of commonly encountered stochastic processes,
from an advanced mathematical perspective.
The topics we will cover are chosen to be widely useful in modeling
in a wide range of fields: we aim to cover the standard toolbox for stochastic modeling and analysis,
from biology to mathematics to physics.
We will emphasize commonalities across the various mathematical structures,
in particular emphasizing the use of generators (and associated semigroups).

For instance: suppose that a random height function begins at zero and takes independent,
random steps either up or down. 
You probably know that the height at some distance away is approximately Gaussian,
but did you know that the set of height differentials between each pair of points on the path
form a basis for an isometry of $L^2(\mathbb{R_+})$ and a linear space of square-integrable random variables?
We'll see how to use this fact to model much more general random processes,
why $e^{t \frac{d^2}{dx^2}}$ is convolution with $\frac{1}{\sqrt{2\pi}} e^{-x^2/2}$,
how to generalize this fact, and why it is useful.


*Prerequisites:* Students should have a good understanding of linear algebra
and either probability or analysis. We won't be assuming knowledge of measure theory,
but will be making somewhat informal use of function spaces (e.g., $L^2(\mathbb{R})$).

*Winter 2019:* This course is designed to complement a subsequent course,
taught by Yashar Ahmadian, which will cover aspects of dynamical systems,
bifurcation theory, diffusions and stochastic differential equations, point processes,
and random matrix theory.


## Course work and assessment

Every student will be responsible for writing up, in LaTeX,
notes for one section of class (two or three days worth on a topic).
In addition, students will be expected to turn in the solution to one problem,
chosen from a selection throughout the course.

## Accessibility

I take seriously my responsibility to create inclusive learning environments.
Please notify me if there are aspects of the instruction or design of this
course that result in barriers to your participation! You are also encouraged
to contact the Accessible Education Center in 164 Oregon Hall at 541-346-1155
or uoaec@uoregon.edu.

## Course schedule

The following is tentative, and subject to adjustment based on class interest.
In general, I've listed the mathematical tools and topics covered,
but not the associated motivating applications.

Weeks 1 and 2 (*9/24*)

: **Gaussian processes and random fields:** characterization and convergence of
    discrete systems, rotational invariance, spectral decomposition, Gaussian
    fields as isometries, continuity and Markovianness. The Laplacian as the
    generator of a Gaussian Markov process, and connection to harmonic
    functions. Examples: Brownian motion, Ornstein-Uhlenbeck processes,
    Gaussian process regression, others.

    - [Abrahamsen](https://www.nr.no/directdownload/2437/Abrahamsen_-_A_Review_of_Gaussian_random_fields_and_correlation.pdf), *A Review of Gaussian random fields and correlation*
    - for more formal detail, see [Jansen](https://alliance-primo.hosted.exlibrisgroup.com/primo-explore/fulldisplay?docid=CP7195946260001451&context=L&vid=UO&search_scope=everything&tab=default_tab&lang=en_US), *Gaussian Hilbert Spaces*



Weeks 3 and 4 (*10/8*)

: **Poisson point processes:** characterization and convergence, coupling,
    tranformations (coloring, thinning, additivity), moments, Palm measures.
    Examples: raindrops, random graphs, Poisson counting processes, sawtooth processes.
    Generators of counting processes and transition probabilities.

    - [Kingman](https://books.google.com/books?hl=en&lr=&id=VEiM-OtwDHkC), *Poisson processes*

Week 5 (*10/22*)

: **Generators and Semigroups of Markov Processes:** General theory, starting with Dynkin's formula,
    spectral decompositions, generalized harmonic functions.

Weeks 6 and 7 (*10/29*)

: **Continuous time Markov chains:** 

    - [Aldous](https://www.stat.berkeley.edu/users/aldous/RWG/book.html), *Reversible Markov Chains and Random Walks on Graphs*.
    - [Kemeny & Snell](https://catalog.hathitrust.org/Record/000578136), *Finite Markov Chains*.


Weeks 8 and 9 (*11/12*)

: **Lévy processes:** infinite divisibility and independent increments, general classification. Limits of Poisson jump processes. Transition probabilities by Fourier inversion. 
    Stable processes, and stable subordinators.

    - [Kyprianou](http://www.maths.bath.ac.uk/~ak257/LCSB/part1.pdf), *Lévy Processes and Infinite Divisibility*.
    - [Bertoin](http://paestel.fr/sites/default/files/Mat_les_ressources/M2/Cours/J.%20Bertoin_508.pdf), *Subordinators: Examples and Applications*.


Week 10 (*11/26*)

: **Further topics:** an interesting application or two that brings in tools from the rest of the course.


## Readings and reference material

There is no textbook for the course.
Some other books that may be useful for additional exposition and proofs 
(although most only cover a subset of the material) are:

- Liggett, [Continuous Time Markov Processes](https://www.ams.org/bookpages/gsm-113)

- Karlin & Taylor, [A First Course](https://books.google.com/books?id=dr_iBQAAQBAJ) and [A Second Course](https://books.google.com/books?id=nGy0nAxwOI0C) in Stochastic Processes

- Kallenberg, [Foundations of Modern Probability](https://books.google.com/books?id=2ZYOswEACAAJ)

- Çinlar, [Introduction to Stochastic Processes](https://books.google.com/books?id=GJnUwEBTki0C)

- Durret, [Essentials of Stochastic Processes](https://books.google.com/books?id=ced0DQAAQBAJ)

- Grimmett & Stirzaker, [Probability and Random Processes](https://books.google.com/books?id=G3ig-0M4wSIC)

However, these are optional: the references given along with each topic in the schedule
will be sufficient.


