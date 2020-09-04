%% 
%% This is file `iiththesis.cls',
%% generated with the docstrip utility.
%% 
%% The original source files were:
%% 
%% iiththesis.dtx  (with options: `class')
%% 
%% IMPORTANT NOTICE:
%% 
%% For the copyright see the source file.
%% 
%% You are *not* allowed to modify this file.
%% 
%% You are allowed to distribute this file.
%% 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{iiththesis}
         [2011/06/16 v1.2 IIT Hyderabad Thesis class]
\RequirePackage{setspace}
% dvips engine is not compatible and would result
% in logo rendering via tikzpicture being ignored
% what the heck dvips here doing anyway for pdftex?
%\RequirePackage[dvips]{graphics}
\RequirePackage{array}
\RequirePackage{tikz}
\RequirePackage{ifxetex}
% the next two lines are needed to make packages using xcolor happy
\RequirePackage{xcolor}
\def\current@color{ Black}
\newcounter{subyear}
\setcounter{subyear}{\number\year}
\def\submitted#1{\gdef\@submitted{#1}}
\def\@submittedyear{\ifnum\month>10 \stepcounter{subyear}\thesubyear
  \else\thesubyear\fi}
\def\@submittedmonth{\ifnum\month>10 January\else\ifnum\month>8 November
  \else\ifnum\month>6 September\else May\fi\fi\fi}
\def\adviser#1{\gdef\@adviser{#1}}
\def\addradviser#1{\gdef\@addradviser{#1}}
\def\chair#1{\gdef\@chair{#1}}
\def\addrchair#1{\gdef\@addrchair{#1}}
\def\external#1{\gdef\@external{#1}}
\def\addrexternal#1{\gdef\@addrexternal{#1}}
\def\internal#1{\gdef\@internal{#1}}
\def\addrinternal#1{\gdef\@addrinternal{#1}}
\def\coguide#1{\gdef\@coguide{#1}}
\def\addrcoguide#1{\gdef\@addrcoguide{#1}}
\def\degree#1{\gdef\@degree{#1}}
\def\book#1{\gdef\@book{#1}}
\long\def\@abstract{\@latex@error{No \noexpand\abstract given}\@ehc}
\newcommand*{\frontmatter}{
  \pagenumbering{roman}
  }
\newcommand*{\mainmatter}{\pagenumbering{arabic}}
\newcommand*{\makelot}{}
\newcommand*{\makelof}{}
\newcommand*{\makelos}{}
\newcommand*{\begincmd}{
\doublespacing
\frontmatter
\maketitlepage
%\makecopyrightpage
\makedeclarepage
\makecertificate
\makeacknowledgements
\makededication
\makeabstract
\tableofcontents
\addcontentsline{toc}{chapter}{Nomenclature} 
\clearpage
%\listoffigures
%\clearpage
%\listoftables
%\clearpage
\makelot
\clearpage
\makelof
\clearpage
\makelos
\clearpage\mainmatter}
\def\@submitted{\@submittedmonth~\@submittedyear}
\def\@dept{Computer Science and Engineering}
\def\@deptpref{Department of}
\def\departmentprefix#1{\gdef\@deptpref{#1}}
\def\department#1{\gdef\@dept{#1}}
\long\def\acknowledgements#1{\gdef\@acknowledgements{#1}}
\def\dedication#1{\gdef\@dedication{#1}}
\newcommand{\maketitlepage}{{
  \thispagestyle{empty}
  \sc
  \vspace*{0in}
  \begin{center}
  \bf
	  {\LARGE \@title}
  \end{center}
%  \normalsize
\normalfont
  \vspace{.3in}
  \begin{center}
    \@author
  \end{center}
  \vspace{.3in}
  \begin{center}
    A \@book ~Submitted to  \\
Indian Institute of Technology Hyderabad \\
   In Partial Fulfillment of the Requirements for \\
   The Degree of \@degree \\
  \end{center}
    \vspace{.3in}
  \begin{center}
%  \includegraphics{logo}
\definecolor{circleorange}{rgb}{1,0.17,0.08}
\definecolor{darkorange}{rgb}{1,0.27,0.1}
\definecolor{orange2}{rgb}{1,0.5,0.15}
\definecolor{orange3}{rgb}{1,0.65,0.25}
\definecolor{yellow1}{rgb}{0.95,0.77,0.2}
\begin{tikzpicture}[scale=0.25,every node/.style={transform shape}]
\draw [fill=circleorange,circleorange] (5,10) circle (1.15); 
\fill [darkorange] (5.06,8) -- (5.06,2) -- (7.3,1.2) -- (7.3,8.8) -- (5.06,8);
\fill [darkorange] (4.94,8) -- (4.94,2) -- (2.7,1.2) -- (2.7,8.8) -- (4.94,8);
\fill [orange2]    (7.4,8.4) -- (7.4,1.6) -- (8.2,1.2) -- (8.2,8.8) -- (7.4,8.4);
\fill [orange2]    (2.6,8.4) -- (2.6,1.6) -- (1.8,1.2) -- (1.8,8.8) -- (2.6,8.4);
\fill [orange3]    (8.3,8.4) -- (8.3,1.6) -- (9.0,1.2) -- (9.0,8.8) -- (8.3,8.4);
\fill [orange3]    (1.7,8.4) -- (1.7,1.6) -- (1.0,1.2) -- (1.0,8.8) -- (1.7,8.4);
\fill [yellow1]    (9.1,8.4) -- (9.1,1.6) -- (9.7,1.2) -- (9.7,8.8) -- (9.1,8.4);
\fill [yellow1]    (0.9,8.4) -- (0.9,1.6) -- (0.3,1.2) -- (0.3,8.8) -- (0.9,8.4);
\ifxetex
\node [scale=2.1] at (5,-0.1)  {   {\bf {\nakulafont  भारतीय प्रौद्योगिकी संस्थान हैदराबाद }} };
\node [scale=1.8] at (5,-1.2) {   {\bf {\liberationsansfont Indian Institute of Technology Hyderabad}} };
\renewcommand\rmdefault{lmr}
\renewcommand\sfdefault{lmss}
\renewcommand\ttdefault{lmtt}
\fi
\end{tikzpicture}

  \end{center}
  \vspace{.3in}
  \begin{center}
    \@deptpref  ~\@dept \\
  \vspace{.3in}
  \end{center}

  \vspace{.3in}
  \begin{center}
    \@submitted
  \end{center}
  \vspace*{.5in}
  \begin{center}
  \begin{small}
    {\bf \copyright{ }\the\year{} by \@author} \\
    {\bf All rights reserved}
  \end{small}
  \end{center}
  \clearpage
  }}
\newcommand*{\makecopyrightpage}{
  \thispagestyle{empty}
  \vspace*{0in}
  \begin{center}
    \copyright\ Copyright by \@author, \number\year. \\
    All Rights Reserved
  \end{center}
  \clearpage}

  
  
  \newcommand*{\makedeclarepage}{
  \thispagestyle{empty}
  \vspace*{0in}
   \addcontentsline{toc}{section}{Declaration}
  \begin{center}
  \bf
	  {\Large Declaration}
  \end{center}
  %\normalsize
\onehalfspacing
I declare that this written submission represents my ideas in my own words, and where ideas or words of others have been included, I have adequately cited and referenced the original sources. I also declare that I have adhered to all principles of academic honesty and integrity and have not misrepresented or fabricated or falsified any idea/data/fact/source in my submission. I understand that any violation of the above will be a cause for disciplinary action by the Institute and can also evoke penal action from the sources that  have thus not been properly cited, or from whom proper permission has not been taken when needed.

 \vspace*{0.3in}

 \begin{flushright}
 --------------------------\\
   (Signature) \\
\vspace*{0.3in}
 ---------------------------\\
(\@author) \\
\vspace*{0.3in}
-----------------------------\\
(Roll No.)\\
\end{flushright}
  \clearpage}


  \newpage
  
  \newcommand*{\makecertificate}{
  \thispagestyle{empty}
  \vspace*{0in}
   \addcontentsline{toc}{section}{Approval Sheet}
  \begin{center}
  \bf
	  {\Large Approval Sheet}
  \end{center}
%  \normalsize
  
  
 %% Guide
 This \@book ~entitled \@title ~by \@author ~is approved for the degree of \@degree ~from IIT Hyderabad
 
 \ifx\@external\undefined
\else
 \vspace*{0.2in}
 \begin{flushright}
 --------------------------\\
  (\@external) Examiner \\
  \@addrexternal\\
\end{flushright}
\fi

 
  \ifx\@internal\undefined
\else
 \vspace*{0.2in}
 \begin{flushright}
 --------------------------\\
  (\@internal) Examiner \\
  \@addrinternal\\
\end{flushright}
\fi
 
 \vspace*{0.2in}
 \begin{flushright}
  --------------------------\\
  (\@adviser) Adviser \\
  \@addradviser
\end{flushright}
\vspace*{0.2in}


\ifx\@coguide\undefined
\else
 \vspace*{0.2in}
 \begin{flushright}
 --------------------------\\
  (\@coguide) Co-Adviser \\
  \@addrcoguide\\
\end{flushright}
\fi



\ifx\@chair\undefined
\else
 \vspace*{0.2in}
 \begin{flushright}
 --------------------------\\
  (\@chair) Chairman \\
  \@addrchair \\
\end{flushright}
\fi

%% End of guide


%% End of co-guide

  
  \clearpage}
  
\newpage  
  
\def\makeacknowledgements{
  \ifx\@acknowledgements\undefined
  \else
    \addcontentsline{toc}{section}{Acknowledgements}
    \begin{center}
      \Large \textbf{Acknowledgements}
    \end{center}
    \@acknowledgements
    \clearpage
  \fi
  }
\def\makededication{
  \ifx\@dedication\undefined
  \else
     \begin{center}
      \Large \textbf{Dedication}
    \end{center}
    \vspace*{1.5in}
    \begin{flushright}
      \@dedication
    \end{flushright}
    \clearpage
  \fi
  }
    
  
\newcommand*{\makeabstract}{
  \newpage
  \addcontentsline{toc}{section}{Abstract}
  \begin{center}
  \Large \textbf{Abstract}
  \end{center}
  \@abstract
  \clearpage
  }
  
  
\DeclareOption{myorder}{
  \renewcommand*{\begincmd}{\doublespacing}}
\DeclareOption{lot}{\renewcommand*{\makelot}{
  \addcontentsline{toc}{section}{List of Tables}\listoftables}}
\DeclareOption{lof}{\renewcommand*{\makelof}{
  \addcontentsline{toc}{section}{List of Figures}\listoffigures}}
\DeclareOption{los}{
  \renewcommand*{\makelos}{
    \RequirePackage{losymbol}
    \section*{List of Symbols\@mkboth {LIST OF SYMBOLS}{LIST OF SYMBOLS}}
    \@starttoc{los}
    \addcontentsline{toc}{section}{List of Symbols}
  }
}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions
\LoadClass{report}
% --sbjoshi : DO NOT Change the following
% Putting this before \LoadClass results in
% a known error regardong \normalsize not defined
% Another fix is to commentout \normalsize part in
% fontspec-xetex.sty but can't ask all the users to do that
\ifxetex
\RequirePackage{fix-cm}
\RequirePackage[T1]{fontenc}
\RequirePackage{fontspec}
\newfontfamily\nakulafont[Script=Devanagari,AutoFakeBold=2]{Nakula}
\newfontfamily\liberationfont{Liberation Sans Narrow}
\newfontfamily\liberationsansfont{Liberation Sans}
\fi
% -- sbjoshi end

\setlength{\oddsidemargin}{0.25in} 
\setlength{\evensidemargin}{0.25in}
\setlength{\topmargin}{-.5in}
\setlength{\textheight}{9in}
\setlength{\textwidth}{6in}
\long\def\abstract#1{\gdef\@abstract{#1}}

\AtBeginDocument{\begincmd}

\endinput
%% 
%% End of file `puthesis.cls'.
