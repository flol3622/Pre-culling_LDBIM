\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ugent-doc}[2023/06/06 ugent-doc]
\LoadClass[12pt,a4paper]{report}

\RequirePackage{kvoptions}
\RequirePackage{geometry}
\RequirePackage{calc}
\RequirePackage{graphicx}
\RequirePackage{xcolor}
\RequirePackage[sf]{titlesec}
\RequirePackage{tcolorbox}
\RequirePackage{anyfontsize}



\definecolor{ugentblue}{RGB}{30,100,200}
\definecolor{ugentwhite}{RGB}{255,255,255}
\definecolor{ugent-ea}{RGB}{139,190,232}

\def\thetitle#1{\def\@thetitle{#1}}
\def\thesubtitle#1{\def\@thesubtitle{#1}}
\def\infoboxa#1{\def\@infoboxa{#1}}
\def\infoboxb#1{\def\@infoboxb{#1}}
\def\infoboxc#1{\def\@infoboxc{#1}}
\def\infoboxd#1{\def\@infoboxd{#1}}
\def\infoboxe#1{\def\@infoboxe{#1}}

\def\@thetitle{}
\def\@thesubtitle{}
\def\@infoboxa{}
\def\@infoboxb{}
\def\@infoboxc{}
\def\@infoboxd{}
\def\@infoboxe{}

\renewcommand\maketitle{
    \begin{titlepage}%
        \thispagestyle{empty} % No header/footer
        \newgeometry{margin=0cm} % Special margins
        \setlength{\parindent}{0cm}
        \sffamily % Titlepage in sans serif font

        % Logo at top
        \includegraphics[height=3.2cm]{settings/ea-en.pdf}

        % Title box
        \begin{tcolorbox}[colback=ugent-ea!30, colframe=ugent-ea!30, width=\textwidth, left=1cm, bottom=1cm, enlarge left by=1cm]
            \setlength{\parskip}{0.5cm}

            % Title and subtitle
            \vspace*{4cm}
            \huge{\@thetitle}\par
            \large\@thesubtitle

            % Info boxes at specific positions
            \vspace*{6cm}
            \normalsize
            \textbf{\fontsize{13pt}{16pt}\selectfont\@infoboxa}\par
            \@infoboxb\par
            \@infoboxc\par
            \@infoboxd\\
            \@infoboxe
        \end{tcolorbox}

        % Logo at bottom
        \vfill
        \includegraphics[height=4.3cm]{settings/ugent-en.pdf}
    \end{titlepage}
    \restoregeometry
}
