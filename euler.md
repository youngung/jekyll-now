---
layout: page
title: Euler
---

- 아래의 스크립트를 사용하여 서로 misoriented된 두 좌표계를 그릴 수 있습니다.

- Use below script to generate two coordinate systems that are misoriented from each other.

```latex
\documentclass{standalone}
\usepackage{tikz}
\usepackage{tikz-3dplot}
\usepackage{pgfplots}

\begin{document}

%% Below is to rotates it based on z-x`-z`` sequence
\tdplotsetmaincoords{50}{230}
\pgfmathsetmacro{\ph}{40}
\pgfmathsetmacro{\ps}{40}
\pgfmathsetmacro{\omega}{25}
\pgfmathsetmacro{\rad}{3}
\pgfmathsetmacro{\rect}{0.5}

\begin{tikzpicture}[tdplot_main_coords]
  %% initial coord
  \draw[ultra thick,->,>=stealth] (0,0,0) -- (0,\rad,0) node[anchor=north east]{$x^s$};
  \draw[ultra thick,->,>=stealth] (0,0,0) -- (-\rad,0,0) node[anchor=north]{$y^s$};
  \draw[ultra thick,->,>=stealth] (0,0,0) -- (0,0,\rad) node[anchor=south]{$z^s$};%{$z^s//$} node[anchor=south,black,xshift=12,yshift=2]{$z^1$};
  \tdplotdrawarc[black,thin, dashed] {(0,0,0)} {\rad}{90}{180+\ph}{}

  %% rotated coord 1
  \tdplotsetrotatedcoords{\ph}{0}{0}
  \draw[thin,densely dotted, black,->,tdplot_rotated_coords] (0,0,0) -- (0,\rad,0) node[anchor=north,black]{};%{$x^1//x^2$};
  \draw[thin,dotted,black,->,tdplot_rotated_coords] (0,0,0) -- (-\rad,0,0) node(y1)[anchor=west,black]{};%{$y^1$};
  \tdplotdrawarc[black,->          ]{(0,0,0)}{\rad/6.}{90} { 90+\ph}{anchor=north,xshift=-5,yshift=3}{$\phi_1$};
  \tdplotdrawarc[black,->          ]{(0,0,0)}{\rad/6.}{180}{180+\ph}{anchor=west,yshift=-2}{$\phi_1$};

  %% rotated coord 2
  \tdplotsetrotatedcoords{\ph}{\ps}{0}
  \draw[dotted,thin,gray,->,tdplot_rotated_coords] (0,0,0) -- (-\rad,0,0) node[anchor=west]{};%{$y^2$};
  \draw[ultra thick,gray,->,>=stealth,tdplot_rotated_coords] (0,0,0) -- (0,0,\rad) node[anchor=east]{$z^c$};
  \tdplotdrawarc[black,dashed,tdplot_rotated_coords]{(0,0,0)}{\rad}{90}{180+\omega}{anchor=south}{};
  %\tdplotdrawarc[gray,thin,tdplot_rotated_coords]{(0,0,0)}{\rad/1.5}{90}{180+\omega}{anchor=south}{};
  \tdplotdrawarc[black,->,tdplot_rotated_coords]{(0,0,0)}{\rad/1.5}{90}{90+\omega}{anchor=south}{$\phi_2$};
  \tdplotdrawarc[black,->,tdplot_rotated_coords]{(0,0,0)}{\rad/1.5}{180}{180+\omega}{anchor=west,yshift=4}{$\phi_2$};

  \tdplotsetthetaplanecoords{\ph}
  \tdplotdrawarc[black,->,tdplot_rotated_coords]{(0,0,0)}{\rad/3}{0}{\ps}{anchor=south}{$\Phi$};
  \draw[black,->,tdplot_rotated_coords] (0,-\rad/3) arc (-90:-90+\ps:\rad/3) node[anchor=west,xshift=4,yshift=-2]{$\Phi$};
  \draw[black, dashed, tdplot_rotated_coords] (0,-\rad) arc (-90:\ps:\rad);

  % %% rotated coord 3
  \tdplotsetrotatedcoords{\ph}{\ps}{\omega};
  \draw[ultra thick,gray,->,>=stealth,tdplot_rotated_coords] (0,0,0) -- (0,\rad,0) node[anchor=north]{$x^c$};
  \draw[ultra thick,gray,->,>=stealth,tdplot_rotated_coords] (0,0,0) -- (-\rad,0,0) node[anchor=west]{$y^c$};
  % \draw[ultra thick,gray,->,tdplot_rotated_coords] (0,0,0) -- (0,0,\rad) node[anchor=north]{$z^c$};
\end{tikzpicture}

\end{document}
```

- 위의 스크립트를 파일에 복사/붙여넣기 한다음에 pdflatex를 이용하여 그래프를 완성하세요.
우선 [LaTeX](https://www.latex-project.org)를 설치하여야 합니다.
그리고 [tikz package](https://www.ctan.org/pkg/pgf?lang=en)가 필요합니다.

- Copy and paste the above snipets to a file and pdflatex it.
Before doing it, you should make sure [LaTeX](https://www.latex-project.org/get/) is available.
 You will also need [tikz package](https://www.ctan.org/pkg/pgf?lang=en).


- 완성된 좌표계입니다.
- Below is an example:

<img src='/images/coord_c.pdf' width='400'>

- 위 스크립트의 ph, ps, omega 값들을 변경하여 다양한 좌표계를 그릴 수 있습니다.
- Another example by changing ph, ps, and omega values in the script:

<img src='/images/coord_c_1.pdf' width='400'>
