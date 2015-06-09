\ProvidesClass{cs-dipl}

\LoadClass[12pt,a4paper]{report}

\usepackage[utf8]{inputenc}
\usepackage{lmodern}
\usepackage[english,czech]{babel}
\usepackage[bookmarks,unicode,hidelinks]{hyperref}

\usepackage[
  backend=biber,
  style=iso-numeric,
  babel=other,
  sortlocale=cs_CZ,
]{biblatex}

\usepackage[nopostdot,nonumberlist,toc]{glossaries}
% Styl pro seznam zakladnich definic.
% 1.5 cm pro symbol.
\newglossarystyle{notationstyle}{%
  \glossarystyle{list}%
  \renewcommand*{\glossaryentryfield}[5]{%
    \item[\rlap{\glsentryitem{##1}\glstarget{##1}{##2}}\hspace{1.5cm}]%
       ##3\glspostdescription\space ##5}%
}
\makeglossaries

\usepackage{url}
\usepackage{subfig}

% Okraje.
\usepackage[top=2.5cm,bottom=2.5cm,left=4cm,right=2.5cm]{geometry}

% Reference.
\usepackage{varioref}

% Obrazky.
\usepackage{graphicx}

\def\thmheadfont{\fontfamily{lmss}\fontseries{sbc}\selectfont}

% Matematika.
\usepackage{amsmath}
\usepackage{amsthm}
\usepackage{amssymb}

\makeatletter

\def\cases{\left\{\def\arraystretch{2}\hskip-\arraycolsep
  \array{l@{\quad}l}}

\renewenvironment{proof}[1][\proofname.]{\par
  \normalfont
  \topsep6\p@\@plus6\p@ \trivlist
  \item[\hskip\labelsep\thmheadfont
    #1]\hfill\break\ignorespaces
}{%
  \qed\endtrivlist
}

\makeatother

% Klicove pojmy.
\newcommand{\keyw}[1]{\emph{#1}}

\newtheoremstyle{sdefinition}%
  {1.5\topsep}%   Space above
  {1.5\topsep}%   Space below
  {}%             Body font
  {}%             Indent amount (empty = no indent, \parindent = para indent)
  {\thmheadfont}% Thm head font
  {.}%            Punctuation after thm head
  { }%            Space after thm head: " " = normal interword space
  {}%             Thm head spec (can be left empty, meaning `normal')

\newtheoremstyle{stheorem}%
  {1.5\topsep}%   Space above
  {1.5\topsep}%   Space below
  {\slshape}%     Body font
  {}%             Indent amount (empty = no indent, \parindent = para indent)
  {\thmheadfont}% Thm head font
  {.}%            Punctuation after thm head
  { }%            Space after thm head: " " = normal interword space
  {}%             Thm head spec (can be left empty, meaning `normal')


\usepackage{sectsty}

\newcommand{\normalfontandsize}{%
  \fontsize{12}{14.5}%
  \fontfamily{\familydefault}%
  \fontseries{\seriesdefault}%
  \fontshape{\shapedefault}%
  \selectfont}

\makeatletter

\def\@makechapterhead#1{%
  \vspace*{50\p@}%
  {\parindent \z@ \raggedright \normalfont
    \ifnum \c@secnumdepth >\m@ne
        \fontfamily{lmss}\fontsize{16}{19.2}\fontseries{m}\selectfont
          {\MakeUppercase{\@chapapp}\hskip1em\thechapter}%
        \par\nobreak
        \vskip 15\p@
    \fi
    \interlinepenalty\@M
    \raggedright \normalfontandsize
    \fontfamily{lmss}\fontsize{30}{36}\fontseries{sbc}\selectfont {#1}\par\nobreak
    \vskip 70\p@
  }}
\def\@makeschapterhead#1{%
  \vspace*{50\p@}%
  {\parindent \z@ \raggedright \normalfont
    \interlinepenalty\@M
    \fontfamily{lmss}\fontsize{30}{36}\fontseries{sbc}\selectfont {#1}\par\nobreak
    \vskip 70\p@
  }}

\makeatother

\sectionfont{\sffamily\fontseries{sbc}\selectfont}
\subsectionfont{\sffamily\fontseries{sbc}\selectfont}
\subsubsectionfont{\sffamily\fontseries{sbc}\selectfont}
