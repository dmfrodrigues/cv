\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv}[2021/07/31 Template for a CV]

\LoadClass[a4paper, 8pt]{extarticle}

% Font
\RequirePackage[default]{opensans}
\linespread{1.25}

% Margins
\RequirePackage[top=30mm,bottom=18mm,left=18mm,right=18mm]{geometry}

% Hyperreferences
\RequirePackage{hyperref}
\hypersetup{
    colorlinks=true,
    linkcolor=blue,
    filecolor=magenta,      
    urlcolor=blue,
}
\urlstyle{same}

% Headers and footers
\RequirePackage{fancyhdr}
\pagestyle{fancyplain}
\fancyhf{}
\lhead{Diogo Miguel Ferreira Rodrigues}
\rhead{\thepage}

% Subsections
\usepackage{titlesec}
\titleformat{\subsection}{\large}{\thesubsection}{}{\scshape}
\titlespacing*{\subsection}{0pt}{0pt}{0.6\baselineskip}

% Commands
%\usepackage{showframe}

%% Parag
\newcommand{\parag}[1]{
\begin{minipage}{\textwidth} \hfill
\begin{minipage}{\dimexpr\textwidth-0.6cm}
	#1
\end{minipage}
\end{minipage}
}

%% Itemtime
\newcommand{\itemtime}[2]{
#1 \hfill \begin{minipage}[t]{0.190\textwidth}         #2  \end{minipage}
}

%% Job
\newcommand{\job}[3]{\parag{
\itemtime{\textbf{#1}}{\textbf{#2}}\\
#3 \vspace*{9px}}}

%% Skills
\newcommand{\skills}[2]{\parag{
\itemtime{\textbf{#1}}{}\\
#2 \vspace*{9px}}}

%% Pub
\newcommand{\pub}[3]{\parag{
\itemtime{\textit{#1}}{#2}\\
#3 \vspace*{9px}}}

%% Idiom
\newcommand{\idiom}[2]{\textbf{#1} – #2\vspace*{6px}\\}
