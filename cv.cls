\LoadClass{article}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv}[2024/05/24 my CV]

\RequirePackage[compact]{titlesec} % for redoing titleformat
\RequirePackage[colorlinks=true, allcolors=black]{hyperref} % for links
\RequirePackage{fontawesome5} % for icons
\RequirePackage{mfirstuc} % for capital words
\RequirePackage{parskip} % to manage paragraph behaviour
\RequirePackage[left=0cm, top=0cm, bottom=0cm, right=0cm]{geometry} % for page padding
\RequirePackage{lipsum} % to generate fake text
\RequirePackage{xcolor} % color package
\RequirePackage{tikz} % drawing package
\RequirePackage{adjustbox} % for adjusting minipages
\RequirePackage{graphicx} % for including images
\RequirePackage{progressbar}
\RequirePackage{enumitem}
 

\definecolor{leftColor}{HTML}{d6d5cc} % Column1 color
\definecolor{rightColor}{HTML}{efefeb} % Column2 color
\pagenumbering{gobble}  % to desable page numbering
\graphicspath{images/} % images path

\titleformat{\section}
    {\Large\scshape\raggedright}
    {}{0em}{}[\titlerule]
    
\titleformat{\subsection}
    {\scshape\raggedright}
    {}{0em}{}
    
\titlespacing{\subsection}
    {0pt}{*1.5}{*0.25}

\newcommand{\datesection}[2]{%
    \section[#1]{#1 \hfill #2}%
}

\newcommand{\datesubsection}[2]{%
    \subsection[#1]{#1 \hfill #2}%
}

\newcommand{\email}[1]{%
    \href{mailto:#1}{\faEnvelope \hspace{0.5cm} #1} \\%
}

\newcommand{\mobile}[1]{%
    \href{tel:#1}{\faMobile \hspace{0.5cm} #1}\\%
}

\newcommand{\github}[1]{%
    \href{https://github.com/#1}{\faGithub \hspace{0.5cm} #1}\\%
}

\newcommand{\linkedin}[1]{%
    \href{https://www.linkedin.com/in/#1/}{\faLinkedin \hspace{0.5cm} #1}\\%
}

\newcommand{\location}[2]{%
     \href{https://www.google.com/maps/}{\faMapMarker \hspace{0.5cm} {#1}, {#2}}\\%
}

\newcommand{\myitem}[2]{%
    \begin{itemize}[leftmargin=0.5cm]
    \item  \capitalisewords{\normalsize\textbf{#1}} : {#2}
    \end{itemize}%
}

\newcommand{\name}[3]{%
    \begin{center} 
        {\Large\capitalisewords{#1}}{ \LARGE\scshape\raggedright #2}  
        \vspace{0.5cm}
    
    %{\Large\capitalisewords{#1}}{ \LARGE\scshape\raggedright #2}\par 
    \end{center}
    \begin{tikzpicture}
        \newcommand{\radius}{3cm}
        % Draw the circular frame
        \draw[clip] (0,0) circle (\radius);
        % Include the image
        \node at (0,0) {\includegraphics[scale=0.8]{#3}}; % Replace 'example-image' with your image file
    \end{tikzpicture}
    \vspace{0.5cm} \\
}


\newcommand{\jobTitle}[1]{%
    \begin{center}\Large \textbf{#1}  \end{center}
}

