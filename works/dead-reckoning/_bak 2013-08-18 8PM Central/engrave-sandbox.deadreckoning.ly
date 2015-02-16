\version "2.16.2"

\paper {
  #(set-paper-size "letter")
}

\include "music.deadreckoning.ly"
\include "staves.deadreckoning.ly"




sandboxStaffOne =  \new Staff 
%\with { \remove "Note_heads_engraver" \consists "Completion_heads_engraver"}
 {
   \relative c'
   \fireViolins
   R1
}

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
%}


\score {
  <<
    \sandboxStaffOne

  %{
    \relative c'
    \ideasStaffOne
    \relative c'
    \ideasStaffTwo
    \relative c'
    \ideasStaffThree
    \relative c'
    \ideasStaffFour
    \relative c'
    \ideasStaffFive
    \relative c'
    \ideasStaffSix
    \relative c'
    \ideasStaffSeven
    \relative c'
    \ideasStaffEight
    \relative c'
    \ideasStaffNine
    \relative c'
    \ideasStaffTen
    \relative c'
    \ideasStaffEleven
    \relative c'
    \ideasStaffTwelve
    %}
  >>
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}
