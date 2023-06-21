% The document class
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{settings/ugent-doc}[2023/06/06 ugent-doc]
\LoadClass[12pt,a4paper]{report}

% --------------------------------
%    Package imports
% --------------------------------

\RequirePackage[backend=biber, style=apa, sorting=nyt, hyperref=true]{biblatex} % Bibliography
\RequirePackage[colorlinks=true, allcolors=ugentblue]{hyperref} % Hyperlinks
\RequirePackage[main=english,french,dutch]{babel} % Multilingual support
\RequirePackage[parfill]{parskip} % No indentation on new paragraphs
\RequirePackage[printonlyused,withpage]{acronym} % Acronyms
\RequirePackage[sf]{titlesec}    % Custom title formats
\RequirePackage{amsmath}         % Advanced math
\RequirePackage{anyfontsize}     % Arbitrary font sizes
\RequirePackage{booktabs}        % Professional quality tables
\RequirePackage{calc}            % Advanced calculations
\RequirePackage{caption}         % Custom captions
\RequirePackage{changepage}      % Changing page layout mid-document
\RequirePackage{csquotes}        % Quotation marks
\RequirePackage{dirtree}         % Directory tree visuals
\RequirePackage{enumitem}        % Custom lists
\RequirePackage{fontspec}        % Custom fonts
\RequirePackage{geometry}        % Page layout
\RequirePackage{graphicx}        % Graphics
\RequirePackage{kvoptions}       % Key-value options
\RequirePackage{lipsum}          % Dummy text
\RequirePackage{listings}        % Source code listings
\RequirePackage{minted}          % Source code highlighting
\RequirePackage{multicol}        % Multiple columns
\RequirePackage{pdfpages}        % Include PDFs as pages
\RequirePackage{pgf-umlsd}       % UML sequence diagrams
\RequirePackage{tcolorbox}       % Colored boxes
\RequirePackage{tikz}            % Diagrams
\RequirePackage{ulem}            % Underlining
\RequirePackage{xcolor}          % Color support
\RequirePackage{xparse}          % Command argument parsing


% --------------------------------
%    Settings and configurations
% --------------------------------

% Page layout
\geometry{bottom=2.5cm,top=2.5cm,left=2.5cm,right=2.5cm} % Margins
\hfuzz=2pt % Ignore overfull boxes

% Colors
\definecolor{ugentblue}{RGB}{30,100,200}
\definecolor{ugentwhite}{RGB}{255,255,255}
\definecolor{ugent-ea}{RGB}{139,190,232}
\definecolor{mygray}{rgb}{0.95, 0.95, 0.95}

% Fonts
\setmainfont[ExternalLocation=fonts/]{SourceSerifPro-Light.ttf}
[ItalicFont=SourceSerifPro-LightItalic.ttf,
    BoldFont=SourceSerifPro-Regular.ttf,
    BoldItalicFont=SourceSerifPro-Italic.ttf]
\setmonofont[ExternalLocation=fonts/]{SourceCodePro-Regular.ttf}
[ItalicFont=SourceCodePro-Italic.ttf,
    BoldFont=SourceCodePro-SemiBold.ttf]
\setsansfont[ExternalLocation=fonts/]{WorkSans-Regular.ttf}
[BoldFont=WorkSans-Medium.ttf]

% Text formatting
\renewcommand{\baselinestretch}{1.15} % Line spacing
\normalem % No underlining for emphasis

% Code formatting
\captionsetup{justification=centering, margin=2cm}
\setminted{
    breaklines=true,
    breakanywhere=true,
    fontsize=\footnotesize,
    bgcolor={mygray},
    style=lovelace
}

% Bibliography
\addbibresource{references.bib}

% Figures
\graphicspath{{./figures/}} % Default path

% Diagrams
\usepgflibrary{arrows} % Custom arrows

% Footnotes
\counterwithout{footnote}{chapter}

% Title page
\RequirePackage{pdfpages}

% Tables of contents
\counterwithin{listing}{chapter}
\setcounter{secnumdepth}{4}


% --------------------------------
%   Title page
% --------------------------------

% Custom commands
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

% Title page itself
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
            {\color{ugentblue}
                \renewcommand{\ULthickness}{2pt}
                \huge\uline{\@thetitle}\par
                \large\@thesubtitle
            }

            % Info boxes at specific positions
            \vspace*{6cm}
            \normalsize
            \textbf{\fontsize{13pt}{16pt}\selectfont\@infoboxa}

            Supervisor:
            \begin{tabular}[t]{lll}
                \@infoboxb
            \end{tabular}

            Counselors:
            \begin{tabular}[t]{lll}
                \@infoboxc
            \end{tabular}

            \@infoboxd\\
            Academic year: \@infoboxe
        \end{tcolorbox}

        % Logo at bottom
        \vfill
        \includegraphics[height=4.3cm]{settings/ugent-en.pdf}
    \end{titlepage}
    \restoregeometry
}