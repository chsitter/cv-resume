\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{my_cv}[2017/11/05 Christoph Sitter CV class]
\LoadClass{article}
\RequirePackage[a4paper,left=0.5in, right=0.5in, top=0.5in, bottom=0.5in]{geometry}
\RequirePackage{tabularx}
\RequirePackage{enumitem}
\RequirePackage{multicol}


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

%TODO: pass in labelwidth as an argument
\newenvironment{expertise}{
    \newcommand{\expertiseitem[2]}{\item[##1:]{##2}}
    \begin{itemize}[align=parleft,topsep=0pt,parsep=0pt,partopsep=0pt,labelwidth=12em, leftmargin=\dimexpr\labelwidth+\labelsep\relax]
}{\end{itemize}}

\newenvironment{modules}{
    \small
    \newcommand{\module}[1]{\item{##1}}
    \subsubsection{Modules included:}
    \begin{multicols}{2}
    \begin{itemize}[topsep=0pt,parsep=0pt,partopsep=0pt]
}{\end{itemize}
\end{multicols}}

\newenvironment{projects}[1]{
    \small
    \newcommand{\project[2]}{\item[##1:]{##2}}
    \subsubsection{Projects:}
    \begin{itemize}[align=parleft,topsep=0pt,parsep=0pt,partopsep=0pt,labelwidth=#1, leftmargin=\dimexpr\labelwidth+\labelsep+1em\relax, rightmargin=3em]
}{\end{itemize}}

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

\titleformat{\subsubsection}
    {\small\scshape\raggedright}
    {}{0em}
    {}

\newcommand{\workplace}[3] {
    \subsection[#1]{#1 \hfill #2 \hfill #3}
}

\newcommand{\education}[3] {
    %TODO: Course is not properly centered
    \subsection[#1]{#1 \hfill \normalfont\small\texttt{#2} \hfill \scshape#3}
}
