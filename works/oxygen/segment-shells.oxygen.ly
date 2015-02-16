segFShow = 1 %--  12 bars
segOShow = 1 %--  18 bars
segVShow = 1 %--  11 bars
segAFShow = 1 %-- 15 bars
segAHShow = 1 %-- 18 bars
segASShow = 1 %-- 13 bars
segANShow = 1 %-- 15 bars

showStrings = 1

formatSegToDo = {
	\override NoteHead #'color = #red 
	\override Stem #'length = #0
}

segToDoNotes = {c4 c4 c4 c4 |}

% \new Voice may not be the best way to do this.... giving clashing Note warnings:
segToDoOneBar = \new Voice {
	\formatSegToDo 
	\segToDoNotes 
}

segToDoTwoBar = \new Voice {
	\formatSegToDo 
	\segToDoNotes \segToDoNotes
}

segToDoThreeBar = \new Voice {
	\formatSegToDo 
	\segToDoNotes \segToDoNotes \segToDoNotes
}

segToDoFourBar = \new Voice {
	\formatSegToDo 
	\segToDoNotes \segToDoNotes \segToDoNotes \segToDoNotes
}

segToDoFiveBar = \new Voice {
	\formatSegToDo 
	\segToDoNotes \segToDoNotes \segToDoNotes \segToDoNotes \segToDoNotes
}

segToDoSixBar = \new Voice {
	\formatSegToDo 
	\segToDoNotes \segToDoNotes \segToDoNotes \segToDoNotes \segToDoNotes
	\segToDoNotes
}
segToDoSevenBar = \new Voice {
	\formatSegToDo 
	\segToDoNotes \segToDoNotes \segToDoNotes \segToDoNotes \segToDoNotes
	\segToDoNotes \segToDoNotes
}

segToDoEightBar = \new Voice {
	\formatSegToDo 
	\segToDoNotes \segToDoNotes \segToDoNotes \segToDoNotes \segToDoNotes
	\segToDoNotes \segToDoNotes \segToDoNotes
}

segToDoNineBar = \new Voice {
	\formatSegToDo 
	\segToDoNotes \segToDoNotes \segToDoNotes \segToDoNotes \segToDoNotes
	\segToDoNotes \segToDoNotes \segToDoNotes \segToDoNotes
}

segToDoTenBar = \new Voice {
	\formatSegToDo 
	\segToDoNotes \segToDoNotes \segToDoNotes \segToDoNotes \segToDoNotes
	\segToDoNotes \segToDoNotes \segToDoNotes \segToDoNotes \segToDoNotes
}

segToDoElevenBar = \new Voice {
	\formatSegToDo 
	\segToDoNotes \segToDoNotes \segToDoNotes \segToDoNotes \segToDoNotes
	\segToDoNotes \segToDoNotes \segToDoNotes \segToDoNotes \segToDoNotes
	\segToDoNotes
}

segFUniversal = {
  %\mark \markup { \box \bold \center-column {"F" "A" "B"} }
  %s1*4
  %\mark \markup { \box \bold \center-column {"C"} }
  %s1*3
  %\mark \markup { \box \bold \center-column {"D"} }
  %s1*5 
  s1*12
}
segOUniversal = {
	%\once \override Score.BarNumber #'break-visibility = #'#(#f #f #f)
	\mark \markup {\fontsize #3.3 \bold \circle {"A"}}
    \bar "||"
    s1*10
    %\mark \markup { \box \bold \center-column {"O" "H" "I" "J"} }
    %s1*7 % I
    %\mark \markup { \box \bold \center-column {"K"} }
    %s1*3 % rest of H
    %\mark \markup { \box \bold \center-column {"M"} }
	%\once \override Score.BarNumber #'break-visibility = #'#(#f #f #f)
	\mark \markup {\fontsize #3.3 \bold \circle {"B"}}
    \bar "||"
    s1*8
 }
segVUniversal = {
	\scoreBreak
  	%\mark \markup { \box \bold \center-column {"V" "Q" "R" "S" } }
	%\once \override Score.BarNumber #'break-visibility = #'#(#f #f #f)
	\mark \markup {\fontsize #3.3 \bold \circle {"C"}}
  	\bar "||"
  	s1*11 
}
segAFUniversal = {
	\scoreBreak
  	%\mark \markup { \box \bold \center-column {"AF"" AU" "W"} }
	%\once \override Score.BarNumber #'break-visibility = #'#(#f #f #f)
	\mark \markup {\fontsize #3.3 \bold \circle {"D"}}
  	\bar "||"
  	s1*8 % AU / W
  	%\mark \markup { \box \bold \center-column {"AC"} }   
  	\scoreBreak
	%\once \override Score.BarNumber #'break-visibility = #'#(#f #f #f)
  	\mark \markup {\fontsize #3.3 \bold \circle {"E"}}
  	\bar "||"
  	s1*7
}
segAHUniversal = {
  %\mark \markup { \box \bold \center-column {"AH" "AW" "AD" "BH" "Z" } }
	%\once \override Score.BarNumber #'break-visibility = #'#(#f #f #f)
	\mark \markup {\fontsize #3.3 \bold \circle {"F"}}
  \bar "||"
  s1*8 % BH
	%\once \override Score.BarNumber #'break-visibility = #'#(#f #f #f)
	\mark \markup {\fontsize #3.3 \bold \circle {"G"}}
  \bar "||"
  s1*10 %AA
  %\mark \markup { \box \bold \center-column {"BI" "AG" "AA"} }
  %\mark \markup { \box \bold \center-column {"AE"} }
}
segASUniversal = {
\scoreBreak
	%\once \override Score.BarNumber #'break-visibility = #'#(#f #f #f)
	\mark \markup {\fontsize #3.3 \bold \circle {"H"}}
  %\mark \markup { \box \bold \center-column {"AS" "AR" "BD" "Y"} }
  \bar "||"
  s1*7 %AR 
	%\once \override Score.BarNumber #'break-visibility = #'#(#f #f #f)
	\mark \markup {\fontsize #3.3 \bold \circle {"I"}}
  %\mark \markup { \box \bold \center-column {"AQ"} }
  \bar "||"
  s1*6 %AQ
}
segANUniversal = {
	%\once \override Score.BarNumber #'break-visibility = #'#(#f #f #f)
	\mark \markup {\fontsize #3.3 \bold \circle {"J"}}
  \bar "||"
  %\mark \markup { \box \bold \center-column {"AN" "AM" "BF"} }
  s1*8 %AM
	%\once \override Score.BarNumber #'break-visibility = #'#(#f #f #f)
	\mark \markup {\fontsize #3.3 \bold \circle {"K"}}
  \bar "||"
  %\mark \markup { \box \bold \center-column {"AL"} }
  s1*7 %AL
  \bar "|."
}

segRestA = {R1*4}
segToDoA = {
	\segToDoFourBar
}

segRestC = {R1*3}
segToDoC = {
	\segToDoThreeBar
}

segRestD = {R1*5}
segToDoD = {
	\segToDoFiveBar
}

segRestI = {R1*7}
segToDoI = {
	\segToDoSevenBar
}

segRestK = {R1*7}
segToDoK = {
	\segToDoSevenBar
}

segRestN = {R1*4}
segToDoN = {
	\segToDoFourBar
}

segRestH = {R1*10}
segToDoH = {
	\segToDoTenBar
}

segRestM = {R1*8}
segToDoM = {
	\segToDoEightBar
}

segRestQ = {R1*8}
segToDoQ = {
	\segToDoEightBar
}

segRestT = {R1*3}
segToDoT = {
	\segToDoThreeBar
}
% ---------------------------------------------
segRestAX = {R1*8}
segToDoAX = {
	\segToDoEightBar
}

segRestAU = {R1*8}
segToDoAU = {
	\segToDoEightBar
}

segRestAC = {R1*7}
segToDoAC = {
	\segToDoSevenBar
}

segRestW = {R1*7}
segToDoW = {
	\segToDoSevenBar
}

segRestX = {R1*2}
segToDoX = {
	\segToDoTwoBar
}

segRestAV = {R1*6}
segToDoAV = {
	\segToDoSixBar
}

segRestZ = {R1*8}
segToDoZ = {
	\segToDoEightBar
}

segRestAA = {R1*2}
segToDoAA = {
	\segToDoTwoBar
}

segRestAD = {R1*10}
segToDoAD = {
	\segToDoTenBar
}

segRestAW = {R1*7}
segToDoAW = {
	\segToDoSevenBar
}

segRestAE = {R1*8}
segToDoAE = {
	\segToDoEightBar
}

segRestAG = {R1*11}
segToDoAG = {
	\segToDoElevenBar
}

segRestAY = {R1}
segToDoAY = {
	\segToDoOneBar
}

segRestAZ = {R1*2}
segToDoAZ = {
	\segToDoTwoBar
}

segRestBA = {R1*8}
segToDoBA = {
	\segToDoEightBar
}

segRestBB = {R1*6}
segToDoBB = {
	\segToDoSixBar
}

segRestBC = {R1*2}
segToDoBC = {
	\segToDoTwoBar
}

segRestBH = {R1*8}
segToDoBH = {
	\segToDoEightBar
}

segRestBI = {R1*10}
segToDoBI = {
	\segToDoTenBar
}


% ---------------------------------------------

segRestY = {R1*2}
segToDoY = {
	\segToDoTwoBar
}

segRestAP = {R1*4}
segToDoAP = {
	\segToDoFourBar
}

segRestAO = {R1*7}
segToDoAO = {
	\segToDoSevenBar
}

segRestS = {R1*11}
segToDoS = {
	\segToDoElevenBar
}

segRestAR = {R1*7}
segToDoAR = {
	\segToDoSevenBar
}

segRestBD = {R1*2}
segToDoBD = {
	\segToDoTwoBar
}

segRestBE = {R1*5}
segToDoBE = {
	\segToDoFiveBar
}

segRestAQ = {R1*6}
segToDoAQ = {
	\segToDoSixBar
}

segRestAM = {R1*8}
segToDoAM = {
	\segToDoEightBar
}

segRestBF = {R1*4}
segToDoBF = {
	\segToDoFourBar
}

segRestBG = {R1*4}
segToDoBG = {
	\segToDoFourBar
}

segRestAL = {R1*7}
segToDoAL = {
	\segToDoSevenBar
}

% ---------------------------------------------
segRestE = {\segRestC \segRestD}
segToDoE = {\segToDoC \segToDoD}

segRestF = {R1*12}
segToDoF = {\segToDoA \segToDoE}

segRestO = {R1*18}
segToDoO = {\segToDoI \segToDoK \segToDoN}

segRestV = {R1*11}
segToDoV = {\segToDoQ \segToDoT}

segRestG = {\segRestF \segRestO \segRestV}
segToDoG = {\segToDoF \segToDoO \segToDoV}
% ---------------------------------------------
segRestAF = {R1*12}
segToDoAF = {\segToDoAU \segToDoAC}

segRestAJ = {\segRestZ \segRestAA}
segToDoAJ = {\segToDoZ \segToDoAA}

segRestAH = {\segRestAD \segRestAE}
segToDoAH = {\segToDoAD \segToDoAE}

segRestAI = {\segRestAF \segRestAH}
segToDoAI = {\segToDoAF \segToDoAH}
% ---------------------------------------------
segRestAS = {R1*13}
segToDoAS = {\segToDoAR \segToDoAQ}

segRestAN = {R1*15}
segToDoAN = {\segToDoAM \segToDoAL}

segRestAT = {\segRestAS \segRestAN}
segToDoAT = {\segToDoAS \segToDoAN}

