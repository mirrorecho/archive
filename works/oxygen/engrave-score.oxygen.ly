\version "2.16.2"

\paper {
  #(set-paper-size "tabloid")
  %#(set-paper-size "letter")
  left-margin = 22\mm
  system-separator-markup = \slashSeparator
}

#(set-global-staff-size 12)
showScoreStuff = 1
showPartStuff = 0

scoreBreak = {\break}
scoreNoBreak = {\noBreak}
partBreak = {}
partNoBreak = {}
engraveGlobal = {}

\include "music.oxygen.ly"
\include "staves.oxygen.ly"

\header {
  title = "Oxygen"
  %instrument = "Orchestra"
  composer = "Randall West"
  poet = \markup { \box "SCORE IN C" } %HACKY WAY TO GET SCORE IN C IN THERE !!!!!!
  tagline = "Copyright 2013 Randall West. All rights reserved."
}





%{

violinIPart = \new Staff \with {
  instrumentName = "Violin I 1"
  midiInstrument = "violin"
} \violinI

violinIIPart = \new Staff \with {
  instrumentName = "Violin I 2"
  midiInstrument = "violin"
} \violinII

violinIIIPart = \new Staff \with {
  instrumentName = "Violin III"
  midiInstrument = "violin"
} \violinIII

violinIVPart = \new Staff \with {
  instrumentName = "Violin IV"
  midiInstrument = "violin"
} \violinIV

soloviolins =  \new StaffGroup { << 
  \set StaffGroup.systemStartDelimiter = #'SystemStartSquare
    \violinI
    \violinII
  >> } 
%}



\score {
  <<
    \override Score.BarNumber #'break-visibility = #'#(#f #t #t)
    \override Score.BarNumber #'font-size = #1.4
    \override Score.BarNumber  #'stencil = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
    \override Score.RehearsalMark #'font-size = #2
    \set Score.markFormatter = #format-mark-circle-letters
%{
    \cloudsStaffOne
    \lineStaffOne
    \tracerStaffOne
    \branchStaffTwo
    \figureStaffOne
  %}  
    \windsStaves
    \brassStaves
    \timpaniStaff
    \percussionStaves
    \harpStaff
    %\figureStaffOne
    \stringStaves
  >>
  \layout {
    \context {\Voice \remove "Instrument_switch_engraver" }
    \context {\Staff \remove "Instrument_switch_engraver" }
%%{
    \context {\RhythmicStaff \RemoveEmptyStaves
          \override VerticalAxisGroup #'remove-first = ##t
          \override Hairpin #'minimum-length = #6
      }
    \context {\Staff \RemoveEmptyStaves
          \override VerticalAxisGroup #'remove-first = ##t
          \override Hairpin #'minimum-length = #6
      } % FRENCH SCORE
      %}

  }

  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 102 4)
    }
  }
  %}
}
