\version "2.16.2"

\paper {
  #(set-paper-size "letter")
}

scoreBreak = {}
scoreNoBreak = {}

partBreak = {}
partNoBreak = {}

\include "music.promethium.ly"
\include "staves.promethium.ly"
\include "engrave-sandbox2.promethium.ly"
\include "engrave-sandbox3.promethium.ly"
\include "engrave-sandbox4.promethium.ly"
\include "engrave-sandbox5.promethium.ly"

%{
blindHopeStaffOne =  \new Staff 
%\with { \remove "Note_heads_engraver" \consists "Completion_heads_engraver"}
 {
   \clef bass
   \celloSmallFireBlindHope
}

highHeldThinHopStaffOne =  \new Staff 
%\with { \remove "Note_heads_engraver" \consists "Completion_heads_engraver"}
 {
   \heldThinHope \highHeldThinNoteTop
  }

lowHeldThinHopStaffOne =  \new Staff 
%\with { \remove "Note_heads_engraver" \consists "Completion_heads_engraver"}
 {
   \clef bass
   \lowHeldThinHope
  }
wormyFourSlursTest = {s8( s) s( s) s( s) s( s)}
wormyWithSlurs = {
    <<
    \context Voice {<< \wormyUpFour  <>-.-> >>}
    \context Voice \wormyFourSlursTest 
    >>
}

upIntervalHalf = {
 <<
    \context Voice {s1}
    \context Voice \relative c' \upInterval
    \context Voice  \transpose c f \relative c' {\upInterval}
  >>
}

%}




sandboxOne = {
  $(ranDataNote risingLines "keeprising" 1 3)
  $(ranDataNote risingLines "keeprising" 2 3)
  $(ranDataNote risingLines "keeprising" 3 3)
  <>->
  $(ranDataNote risingLines "keeprising" 4 3)
  $(ranDataNote risingLines "keeprising" 5 3)
  $(ranDataNote risingLines "keeprising" 6 3)
  <>->
  $(ranDataNote risingLines "keeprising" 7 3)
  $(ranDataNote risingLines "keeprising" 8 3)
  |
  $(ranDataNote risingLines "keeprising" 9 3)
  $(ranDataNote risingLines "keeprising" 10 3)
  $(ranDataNote risingLines "keeprising" 11 3)
  $(ranDataNote risingLines "keeprising" 12 3)
  <>->
  $(ranDataNote risingLines "keeprising" 13 3)
  $(ranDataNote risingLines "keeprising" 14 3)
  $(ranDataNote risingLines "keeprising" 15 3)
  $(ranDataNote risingLines "keeprising" 16 3)
  |
  $(ranDataNote risingLines "keeprising" 17 3)
  $(ranDataNote risingLines "keeprising" 18 3)
  $(ranDataNote risingLines "keeprising" 19 3)
  $(ranDataNote risingLines "keeprising" 20 3)
  $(ranDataNote risingLines "keeprising" 21 3)
  $(ranDataNote risingLines "keeprising" 22 3)
  $(ranDataNote risingLines "keeprising" 23 3)
  $(ranDataNote risingLines "keeprising" 24 3)
}

sandboxTwo = {
  r4 r8
  <>->
  $(ranDataNote risingLines "keeprising" 1 3)
  $(ranDataNote risingLines "keeprising" 2 3)
  $(ranDataNote risingLines "keeprising" 3 3)
  <>->
  $(ranDataNote risingLines "keeprising" 4 3)
  $(ranDataNote risingLines "keeprising" 5 3)
  |
  $(ranDataNote risingLines "keeprising" 6 3)
  $(ranDataNote risingLines "keeprising" 7 3)
  $(ranDataNote risingLines "keeprising" 8 3)
  $(ranDataNote risingLines "keeprising" 9 3)
  <>->
  $(ranDataNote risingLines "keeprising" 10 3)
  $(ranDataNote risingLines "keeprising" 11 3)
  $(ranDataNote risingLines "keeprising" 12 3)
  $(ranDataNote risingLines "keeprising" 13 3)
  |
  $(ranDataNote risingLines "keeprising" 14 3)
  $(ranDataNote risingLines "keeprising" 15 3)
  $(ranDataNote risingLines "keeprising" 16 3)
  $(ranDataNote risingLines "keeprising" 17 3)
  $(ranDataNote risingLines "keeprising" 18 3)
  $(ranDataNote risingLines "keeprising" 19 3)
  $(ranDataNote risingLines "keeprising" 20 3)
  $(ranDataNote risingLines "keeprising" 21 3)
}

 sandboxThree = {
  r2 r4
  <>->
  $(ranDataNote risingLines "keeprising" 1 3)
  $(ranDataNote risingLines "keeprising" 2 3)
  |
  $(ranDataNote risingLines "keeprising" 3 3)
  $(ranDataNote risingLines "keeprising" 4 3)
  $(ranDataNote risingLines "keeprising" 5 3)
  $(ranDataNote risingLines "keeprising" 6 3)
  <>->
  $(ranDataNote risingLines "keeprising" 7 3)
  $(ranDataNote risingLines "keeprising" 8 3)
  $(ranDataNote risingLines "keeprising" 9 3)
  $(ranDataNote risingLines "keeprising" 10 3)
  |
  $(ranDataNote risingLines "keeprising" 11 3)
  $(ranDataNote risingLines "keeprising" 12 3)
  $(ranDataNote risingLines "keeprising" 13 3)
  $(ranDataNote risingLines "keeprising" 14 3)
  $(ranDataNote risingLines "keeprising" 15 3)
  $(ranDataNote risingLines "keeprising" 16 3)
  $(ranDataNote risingLines "keeprising" 17 3)
  $(ranDataNote risingLines "keeprising" 18 3)
  }

 sandboxFour =  {
  R1 |  r2
  <>->
  $(ranDataNote risingLines "keeprising" 4 3)
  $(ranDataNote risingLines "keeprising" 5 3)
  $(ranDataNote risingLines "keeprising" 6 3)
  $(ranDataNote risingLines "keeprising" 7 3)
  |
  $(ranDataNote risingLines "keeprising" 8 3)
  $(ranDataNote risingLines "keeprising" 9 3)
  $(ranDataNote risingLines "keeprising" 10 3)
  $(ranDataNote risingLines "keeprising" 11 3)
  $(ranDataNote risingLines "keeprising" 12 3)
  $(ranDataNote risingLines "keeprising" 13 3)
  $(ranDataNote risingLines "keeprising" 14 3)
  $(ranDataNote risingLines "keeprising" 15 3)
  }




sandboxStaffOne =  \new Staff 
%\with { \remove "Note_heads_engraver" \consists "Completion_heads_engraver"}
{\globalStart \sandboxOne}

sandboxStaffTwo =  \new Staff 
 {\globalStart \sandboxTwo}

sandboxStaffThree=  \new Staff 
{\globalStart \sandboxThree}

sandboxStaffFour=  \new Staff 
{\globalStart \sandboxFour}

sandboxStaffFive=  \new Staff 
{\globalStart \sandboxFive}

sandboxStaffSix=  \new Staff 
{\globalStart \sandboxSix}

sandboxStaffSeven=  \new Staff 
{\globalStart \sandboxSeven}

sandboxStaffEight=  \new Staff 
{\globalStart \sandboxEight}

sandBoxStaves = \new StaffGroup 
  <<
    \sandboxStaffOne
    \sandboxStaffTwo
    \sandboxStaffThree
    \sandboxStaffFour
    \sandboxStaffFive
    \sandboxStaffSix
    \sandboxStaffSeven
    \sandboxStaffEight
  >>



\score {
  <<
    \sandBoxStaves
  >>
  \layout { 
  \context {
    \Staff \RemoveEmptyStaves
    \override VerticalAxisGroup #'remove-first = ##t}
  }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}

