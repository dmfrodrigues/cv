\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv}[2021/07/31 Template for a CV]

\LoadClass[a4paper, 9pt]{extarticle}

% Font
\RequirePackage[default]{opensans}
\linespread{1.3}

% Margins
\RequirePackage[top=30mm,bottom=0.7in,left=0.7in,right=0.7in]{geometry}

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

% Hide environments
\RequirePackage{comment}

% Subsections
\usepackage{titlesec}
\titleformat{\section}{\bfseries\huge}{\thesection}{}{\scshape}
\titleformat{\subsection}{\Large}{\thesubsection}{}{\scshape}
\titlespacing*{\subsection}{0pt}{10pt}{0.5\baselineskip}

% Commands
%\usepackage{showframe}
\RequirePackage{ifthen}

%% Optional
\newcommand{\optional}[1]{
    \ifdefined\SHOWOPTIONAL
        #1
    \fi
}

%% Itemtime
\newcommand{\itemtime}[2]{
    \begin{minipage}[t]{0.84\textwidth}#1\end{minipage}#2%
}

%% Job
\newenvironment{job}[3][]{
    \begin{minipage}{\linewidth}
        \itemtime{\textbf{#2}}{\textbf{#3}}\\
        }{
        \vspace{3.5mm}
    \end{minipage}%
}

\ifdefined\SHOWOPTIONAL
    \newenvironment{jobopt}[3][]{\begin{job}[#1]{#2}{#3}}{\end{job}}
\else
    \excludecomment{jobopt}
\fi

%% Skills
\newenvironment{skills}[3][]{
    \begin{minipage}{\linewidth}
        \textbf{#2}\\
        }{
        \vspace{3.5mm}
    \end{minipage}%
}

%% Pub
\newcommand{\pub}[3]{
    \begin{minipage}{\linewidth}
        \itemtime{\textit{#1}}{#2}\\
        #3
        \vspace*{3.5mm}
    \end{minipage}%
}

%% Indent
\setlength{\parindent}{0pt}
