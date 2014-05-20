\ProvidesClass{application}[2014/03/04 v1.0 Simple application class]
\LoadClass{article}

\RequirePackage[T1]{fontenc}
\RequirePackage{lmodern}
\renewcommand*\familydefault{\sfdefault}
\RequirePackage{sfmath}
\RequirePackage{microtype}
\RequirePackage[utf8]{inputenc}
\usepackage{cfr-lm}

\RequirePackage{listings}
\lstset{language=java}

\RequirePackage[ngerman]{babel}
\RequirePackage[margin=2cm,a4paper]{geometry}

\RequirePackage{graphicx}
\graphicspath{{./}{../}{images/}}

\RequirePackage[pdftex,
	unicode=true,
	breaklinks=true,
	colorlinks=true,
	linkcolor=black,
	citecolor=black,
	urlcolor=black]{hyperref}

\renewcommand{\baselinestretch}{1.1}
\setlength{\parindent}{0pt}
\setlength{\parskip}{5pt}

\newcommand{\titleabstand}{\hspace{3cm}}
\newcommand{\RNum}[1]{\uppercase\expandafter{\romannumeral #1\relax}}

\renewcommand{\maketitle}{
\begin{titlepage}
	\thispagestyle{empty}
 \begin{minipage}{\textwidth}
  \begin{minipage}[t]{1.0\textwidth}
	\includegraphics[scale=0.70]{images/mi.png}
	\hfill
	\includegraphics[scale=0.17]{images/uulm.pdf}
  \end{minipage}

  \ \\
  \vspace{1.5cm}

  \hspace{-2cm}\includegraphics[scale=1.00]{images/image.pdf}

  \vspace{-2.9cm}
  \begin{flushright}
	\Huge{\color{white}The Sixth Sense -- Lorem Ipsum dolor sit}
  \end{flushright}

  \vspace{-0.3cm}
  \begin{flushright}
	\Large{Sabine Wieluch, Leo Hnatek, Michael M\"uller}
  \end{flushright}

  \vspace{2cm}
  \begin{minipage}[t]{0.49\textwidth}
	  \ \\
  \end{minipage}
  \begin{minipage}[t]{0.49\textwidth}
  	\begin{flushright}
  	%\Large{Projektdocumentation}\\
	\Huge Mobile and Ubiquitous Computing \RNum{1} -- Projekt\\
	\Large{ss 2014}
  	\end{flushright}
    \end{minipage}
  %\hspace{1.8cm}
\end{minipage}


\hspace{3cm}
\linebreak
\linebreak
\linebreak
\linebreak
\linebreak
\linebreak
\linebreak

\Large
\begin{flushright}
Supervisor\\
Prof. Dr. Michael Weber\\
\titleabstand

Advisors\\
Dipl.-Inf. Bastian Könings\\
Dipl.-Inf. Björn Wiedersheim

%Sabine Wieluch\\
%sabine.wieluch@uni-ulm.de\\
%\titleabstand

%Leo Hnatek\\
%leo.hnatek@uni-ulm.de\\
%\titleabstand

%Michael M\"uller\\
%michael-4.mueller@uni-ulm.de 
\end{flushright}

\end{titlepage}
}
