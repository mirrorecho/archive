\version "2.16.2"

showScoreStuff = 1
showPartStuff = 0

scoreBreak = {\break}
scoreNoBreak = {\noBreak}
partBreak = {}
partNoBreak = {}
engraveGlobal = {}

\paper {
  #(set-paper-size "tabloid")
  left-margin = 29\mm
  system-separator-markup = \slashSeparator
}

#(set-global-staff-size 13)

\include "music.promethium.ly"
\include "staves.promethium.ly"

\header {
  title = "Promethium"
  %instrument = "Orchestra"
  composer = "Randall West"
  poet = \markup { \box "SCORE IN C" } %HACKY WAY TO GET SCORE IN C IN THERE !!!!!!
  tagline = "Copyright 2013 Randall West. All rights reserved."
}



\score {
  {
    %\override Score.RehearsalMark #'font-name = #"PT Sans"
    \override Score.BarNumber #'break-visibility = #'#(#f #t #t)
    \override Score.BarNumber #'font-size = #1.4
    \override Score.BarNumber  #'stencil = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
    \override Score.RehearsalMark #'font-size = #2
    \set Score.markFormatter = #format-mark-circle-letters
    
  <<
    \windsStaves
    \brassStaves
    \timpaniStaff
    \percussionStaves
    \harpStaff
    \stringStaves
  >>
  }
  \layout {
    \override TextScript #'baseline-skip = #1.2
    % --------------------------------------------------------
    % this moves the cues to the staff context instead of the Voice
    % context.... helps prevent weirdness when partCombine and 
    %InstrumentSwitch are used together
    %

    \context {\Voice \remove "Instrument_switch_engraver" }
    \context {\Staff \remove "Instrument_switch_engraver" }
    \context {\RhythmicStaff \RemoveEmptyStaves
          \override VerticalAxisGroup #'remove-first = ##t
      }
    \context {\Staff \RemoveEmptyStaves
          \override VerticalAxisGroup #'remove-first = ##t
      } % FRENCH SCORE
     %%%%%%%%%%%% ARE ALL THESE NECESSARY????
     \context {\StaffGroup \remove "Instrument_switch_engraver" }
     \context {\CueVoice \remove "Instrument_switch_engraver" }
     %
     % --------------------------------------------------------
  }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 120 4)
    }
  }
}
