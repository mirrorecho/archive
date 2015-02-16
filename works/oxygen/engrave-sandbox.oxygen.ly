\version "2.16.2"

\paper {
  #(set-paper-size "letter")
}

\include "music.oxygen.ly"
\include "staves.oxygen.ly"



violinStandOneTest = \new Staff 
  %\partcombine \violinIOne \violinITwo
  << { \violinIOne } \\ { \violinIThree } >>


ideasStaffOne = \new Staff { {\lineHarmonyIOne} }
ideasStaffTwo = \new Staff { \lineHarmonyITwo }
ideasStaffThree = \new Staff { \lineHarmonyIThree }
ideasStaffFour = \new Staff { \lineHarmonyIFour }
ideasStaffFive = \new Staff { \lineHarmonyIFive }
ideasStaffSix = \new Staff { \lineHarmonyISix }
ideasStaffSeven = \new Staff { \lineHarmonyISeven }
ideasStaffEight = \new Staff { \lineHarmonyIEight }
ideasStaffNine = \new Staff { \lineHarmonyINine }
ideasStaffTen = \new Staff { \lineHarmonyITen }
ideasStaffEleven = \new Staff { \lineHarmonyIEleven }
ideasStaffTwelve = \new Staff { \lineHarmonyITwelve }

lineStaffOne = \new Staff 
%\with { \remove "Note_heads_engraver" \consists "Completion_heads_engraver"}
 {
  r2 r4 % generally starts on 4th beat in 4/4
  \lineSeed
}

figureStaffOne = \new Staff 
%\with { \remove "Note_heads_engraver" \consists "Completion_heads_engraver"}
 {
  \narratorOne
}

pairStaffOne = \new Staff 
%\with { \remove "Note_heads_engraver" \consists "Completion_heads_engraver"}
 {
  \relative c''
  \pairSeed
  \transpose e a {\relative c' \pairSeed}
  \transpose e d {\relative c' \pairSeed}
  \transpose e g {\relative c' \pairSeed}
  \pairSeedFlat
  \transpose c f {\relative c' \pairSeedFlat}
}

\score {
  \relative c'
  <<
    \lineStaffOne
    \relative c''
    \figureStaffOne
    
    \pairStaffOne
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
