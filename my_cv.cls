\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{my_cv}[2017/11/05 Christoph Sitter CV class]
\LoadClass{article}
\RequirePackage[a4paper,left=0.5in, right=0.5in, top=0.5in, bottom=0.5in]{geometry}
\RequirePackage{tabularx}


\newcommand{\cvroad}[1]{\renewcommand{\givencvroad}{#1}}
\newcommand{\cvpostcode}[1]{\renewcommand{\givencvpostcode}{#1}}
\newcommand{\cvname}[1]{\renewcommand{\givencvname}{#1}}
\newcommand{\cvphone}[1]{\renewcommand{\givencvphone}{#1}}
\newcommand{\cvemail}[1]{\renewcommand{\givencvemail}{#1}}
\newcommand{\givencvroad}{REQUIRED!}
\newcommand{\givencvpostcode}{REQUIRED!}
\newcommand{\givencvname}{REQUIRED!}
\newcommand{\givencvphone}{REQUIRED!}
\newcommand{\givencvemail}{REQUIRED!}

\newenvironment{cvheader}{}{
    \noindent
    \begin{minipage}[c]{0.33333\textwidth}
        \raggedright
        \givencvroad \par \givencvpostcode
    \end{minipage}
    \begin{minipage}[c]{0.33333\textwidth}
        {\Huge\givencvname}
    \end{minipage}
    \begin{minipage}[c]{0.33333\textwidth}
        \raggedleft
        \givencvphone \par \givencvemail
    \end{minipage}}

\newcommand{\namecontact}[3]{ 
    {\small\begin{tabular}[c]{l} #2 \end{tabular}}\hfill
    {\Huge\begin{tabular}[c]{c}  #1 \end{tabular}}\hfill
    {\small\begin{tabular}[c]{r} #3 \end{tabular}}
}

\newcommand{\workitems}[3]{
    \begin{itemize}
    \item #1
    \item #2
    \item #3
    \end{itemize}
}

\newcommand{\expertise}[8]{

    \begin{tabularx}{\linewidth}{ l X }
        #1: & #2\\
        #3: & #4\\
        #5: & #6\\
        #7: & #8\\
    \end{tabularx}
}

\RequirePackage{titlesec}
\titleformat{\section}
    {\Large\scshape\raggedright}
    {}{0em}
    {}
    [\titlerule]

\titleformat{\subsection}
    {\normalsize\scshape\raggedright}
    {}{0em}
    {}

\newcommand{\datedsection}[2] {
    \section[#1]{#1 \hfill #2}
}

\newcommand{\workplace}[3] {
    \subsection[#1]{#1 \hfill #2 \hfill #3}
}

\newcommand{\datedsubsection}[2] {
    \subsection[#1]{#1 \hfill #2}
}
