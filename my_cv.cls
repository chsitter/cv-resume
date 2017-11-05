\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{my_cv}[2017/11/05 Christoph Sitter CV class]
\LoadClass{article}
\RequirePackage[left=0.5in, right=0.5in, top=0.5in, bottom=0.5in]{geometry}


\newcommand{\namecontact}[3]{ %TODO: this isn't as nice as it could be
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
    \section[#1]{#1 \hfill #2}
}
