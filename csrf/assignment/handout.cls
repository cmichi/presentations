\ProvidesClass{assignment}[2009/10/28 v1.1 Assignment document class]
\LoadClass{article}

\RequirePackage[T1]{fontenc}
\RequirePackage{lmodern}
\renewcommand*\familydefault{\sfdefault}
\RequirePackage{sfmath}
\RequirePackage{microtype}
\RequirePackage[utf8]{inputenc}

\usepackage{cfr-lm}
\usepackage{graphicx}
\usepackage{xcolor}


\RequirePackage{listings}
\lstset{language=java}

% \RequirePackage{tikz}

%\RequirePackage[ngerman]{babel}
\RequirePackage[english]{babel}
\selectlanguage{english}

\RequirePackage[margin=2cm,a4paper]{geometry}

\RequirePackage{graphicx}
\graphicspath{{./}{../}{images/}}

%\RequirePackage[pdftex,
	%unicode=true,
	%breaklinks=true,
	%colorlinks=true,
	%linkcolor=black,
	%citecolor=black,
	%urlcolor=black]{hyperref}
%\RequirePackage{hyperref}

\renewcommand{\baselinestretch}{1.1}
\setlength{\parindent}{0pt}
\setlength{\parskip}{5pt}

\newcommand{\assignmentno}[1]{\def\theassignmentno{#1}}

\newcounter{task}
\newcounter{subtask}[task]

\renewcommand{\maketitle}{
%\begin{titlepage}
	\thispagestyle{empty}
	\vspace{-3cm}
 \begin{minipage}{\textwidth}
  \begin{minipage}[t]{1.0\textwidth}
	\includegraphics[scale=0.17]{uulm-logo}
  \end{minipage}
  \begin{minipage}[t]{1.0\textwidth}
	%\includegraphics[scale=0.17]{uulm-logo}
	\vspace{-1.7cm}
	\hfill
	\includegraphics[scale=0.25]{vs-logo-color-en}
  \end{minipage}

  \ \\
  \vspace{-0.1cm}

  \hspace{-2cm}\includegraphics[scale=1.00]{images/bar.pdf}

  \vspace{-2.6cm}
  \begin{flushright}
	\Huge{\color{white}Cross Site Request Forgery}
  \end{flushright}

  \vspace{-0.3cm}
  \begin{flushright}
	{Michael M\"uller | Practical IT-Security | ss 2014}
  \end{flushright}
  \end{minipage}

  \vspace{1cm}
%\end{titlepage}
}

\newcommand{\task}[2]{
\refstepcounter{task} % Hier default-inkrement, damit labels im ToC richtig
                      % springen und subtask counter resetted werden.
\addpenalty{\@secpenalty}%
\addvspace{25pt}
{\Large \textbf{Exercise \arabic{task}: #1}}\hfill{\normalsize ca. #2 minutes}%
\addcontentsline{toc}{section}{A\arabic{task}: #1}
\par
\addvspace{5pt}
}

\newenvironment{subtask} % Teilaufgabe
{\addtocounter{subtask}{1} % Hier manuelles Inkrement, damit keine komischen
                           % Seitenumbrüche passieren.
\begin{minipage}[t]{0.03\textwidth}
\alph{subtask})
\end{minipage}
\begin{minipage}[t]{0.97\textwidth}
\setlength{\parskip}{10pt}} % Am Anfang des Environments
{\end{minipage}} % Am Ende des Environments
