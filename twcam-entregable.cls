% Plantilla para la entrega de trabajos del Máster en Tecnologías Web,
% Computación en la Nube y Aplicaciones Móviles (http://www.uv.es/twcam)
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{twcam-entregable}[2019/04/15 Plantilla para entregas del Master TWCAM]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions
\LoadClass{article}

\newcommand{\@asignatura}{\ClassError{twcam-entregable}{Falta especificar
\string\asignatura{}}
 {Usa el comando \string\asignatura{} en el preambulo para especificar
\MessageBreak la asignatura}}
\newcommand{\asignatura}[1]{\gdef\@asignatura{#1}}

\RequirePackage[T1]{fontenc}
\RequirePackage[spanish,activeacute]{babel}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{fancyhdr}
\RequirePackage{listings}
\RequirePackage{hyperref}
\RequirePackage[pdftex]{graphicx}
\RequirePackage{tikz}
\RequirePackage{framed}
\RequirePackage{geometry}
\RequirePackage{soul}
\RequirePackage{bold-extra}

\usepackage[utf8]{inputenc} %Codificacion de entrada
\usepackage{url}

% Ruta donde buscar las figuras
\graphicspath{{figs/}}
\DeclareGraphicsExtensions{.pdf,.jpg,.png}


 \geometry{
  a4paper,
  total={160mm,255mm},
  left=25mm,
  right=25mm,
  top=25mm,
  bottom=20mm
 }

\newlength{\ancho}
\setlength{\ancho}{16cm}


\hypersetup{bookmarks=true,%
bookmarksnumbered=true,%
colorlinks,%
citecolor=red,%
filecolor=blue,%
linkcolor=blue,%
urlcolor=blue,%
pdfstartview=FitH,%
pdffitwindow=true,%
pdfauthor=\@author}

\setlength{\parskip}{5pt}

\newcommand{\master}{
  {\scshape \large Máster Universitario en Tecnologías Web,}\\[3mm]
  {\scshape \large Computación en la Nube y}\\[3mm]
   {\scshape \large  Aplicaciones Móviles}
}

\newcommand{\encabezado}{
     \begin{center}
     \includegraphics[width=0.5\ancho]{figs/ETSE.png}
   \end{center}

   \vspace*{2\baselineskip} % White space

  \makeatletter

      \begin{center}
          \vspace*{1\baselineskip} % White space
          \bfseries \master
        \end{center}

   \vspace*{\baselineskip} % White space

   \begin{center}
     \Large
     \capsdef{T1/ppl/m/n/5-15}{\scshape}{.16em}{.6em}{.2em}
     \scshape Asignatura:

     \vspace*{0.3\baselineskip} % White space

     \scshape \@asignatura

     \vspace*{0.4\baselineskip} % White space

     {\large \scshape \@date}

   \end{center}

   \vspace*{\baselineskip} % White space

   \vfill

	% ------------------------------------------------
	%	Title
	% ------------------------------------------------
   \begin{center}
	\rule{\ancho}{1.6pt}\vspace*{-\baselineskip}\vspace*{2pt} % Thick horizontal rule
	\rule{\ancho}{0.4pt} % Thin horizontal rule
   \end{center}

 	\vspace{0.75\baselineskip} % Whitespace above the title

   \begin{minipage}[h]{\ancho}
     \begin{center}
       \LARGE
       \bfseries
     \capsdef{T1/ppl/m/n/5-15}{\scshape}{.16em}{.6em}{.2em}
     \scshape \@title
     \end{center}
   \end{minipage}

	\vspace{0.75\baselineskip} % Whitespace below the title

   \begin{center}
	\rule{\ancho}{0.4pt}\vspace*{-\baselineskip}\vspace{3.2pt} % Thin horizontal rule
	\rule{\ancho}{1.6pt} % Thick horizontal rule
   \end{center}

  	\vspace{0.75\baselineskip} % Whitespace below the title

   \begin{center}
   {\large\bfseries{\scshape \@author}}
   \end{center}

   \makeatother
 }

\lstdefinestyle{nonumbers} {numbers=none}
\lstset{basicstyle=\scriptsize\ttfamily}
\renewcommand{\UrlFont}{\small}

% Formato de los listados de código
\lstset{
  basicstyle=\ttfamily\small,
  columns=flexible,
  keywordstyle=\color{blue}\bf,
  commentstyle=\color{gray},
  stringstyle=\color{green},
  breaklines=true,inputencoding=utf8,
  frame=single,showstringspaces=false,
  style=nonumbers,extendedchars=true,
  literate={á}{{\'a}}1 {é}{{\'e}}1 {í}{{\'i}}1 {ó}{{\'o}}1 {ú}{{\'u}}1 {Á}{{\'A}}1 {É}{{\'E}}1 {Í}{{\'I}}1 {Ó}{{\'O}}1 {Ú}{{\'U}}1 {ñ}{{\~n}}1 {Ñ}{{\~N}}1,
}

\definecolor{enlaces}{rgb}{0.3,0.3,0.5}
\definecolor{colurl}{rgb}{0.34,0.36,0.60}

\hypersetup{
    colorlinks = true,
    linkcolor = enlaces,
    citecolor = enlaces,
    filecolor = enlaces,
    urlcolor = enlaces
}

\renewcommand{\lstlistingname}{Listado}
\renewcommand{\lstlistlistingname}{Indice de listados de codigo}

\lstloadlanguages{html,java,sql,c,xml,tex,matlab}
\lstdefinestyle{numbers} {numbers=left, stepnumber=1, numberstyle=\tiny, numbersep=10pt}
\lstdefinestyle{nonumbers} {numbers=none}


%% Para acentos en listings con UTF8
\lstset{
    inputencoding=utf8,
    extendedchars=true,
    literate={á}{{\'a}}1 {é}{{\'e}}1 {í}{{\'i}}1 {ó}{{\'o}}1 {ú}{{\'u}}1 {Á}{{\'A}}1 {É}{{\'E}}1 {Í}{{\'I}}1 {Ó}{{\'O}}1 {Ú}{{\'U}}1 {ñ}{{\~n}}1 {Ñ}{{\~N}}1
}


%%%%%%%
%%%%%%%   DEFINICION DE UN CODIGO SIN KEYWORDS
%%%%%%%
\lstdefinelanguage{plain}
   {morekeywords={},
   sensitive=false,
}



% ESTILOS DE PÁGINA
\fancypagestyle{twcam}{%
 \fancyhead[LE,RO]{\small \textit{Máster en Tecnologías Web, Computación en la Nube \\y Aplicaciones Móviles}}
 \fancyhead[RE,LO]{\thepage}
 \renewcommand{\headrulewidth}{1pt}
 \fancyfoot{}
}

\fancypagestyle{plain}{
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
}

\let\tableofcontentsORIG\tableofcontents
\renewcommand{\tableofcontents}{\tableofcontentsORIG
\begin{center}
\vspace{0.75\baselineskip} % Whitespace above the title
\rule{\textwidth}{1.6pt}\vspace*{-\baselineskip}\vspace*{2pt} % Thick horizontal rule
\vspace{0.75\baselineskip} % Whitespace above the title
\end{center}}

\renewcommand{\maketitle}{{\pagestyle{plain}\encabezado\clearpage}}

\pagestyle{twcam}
