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
\RequirePackage[dvips]{graphics}
\RequirePackage{array}
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
    \LARGE \@title
  \end{center}
  \normalsize
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
  \includegraphics{logo}
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
  \Large Declaration 
  \end{center}
  \normalsize
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
  \Large Approval Sheet 
  \end{center}
  \normalsize
  
  
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
