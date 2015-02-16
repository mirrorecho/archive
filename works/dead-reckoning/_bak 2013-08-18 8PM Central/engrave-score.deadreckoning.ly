\version "2.16.2"

\paper {
  %#(set-paper-size "letter" 'landscape )
  #(set-paper-size "letter"  )
  left-margin = 22\mm
  system-separator-markup = \slashSeparator
  system-system-spacing #'basic-distance = #14
  system-system-spacing #'padding = #11
}

#(set-global-staff-size 16)

showScoreStuff = 1
showPartStuff = 0

scoreBreak = {}
scoreNoBreak = {}

partBreak = {\break}
partNoBreak = {\noBreak}


\include "music.deadreckoning.ly"
\include "staves.deadreckoning.ly"

\header {
  title = "Dead Reckoning"
  %instrument = "Orchestra"
  composer = "Randall West"
  poet = \markup { \box "SCORE IN C" } %HACKY WAY TO GET SCORE IN C IN THERE !!!!!!
  tagline = "Copyright 2013 Randall West. All rights reserved."
}



\score {
  <<
    \override Score.BarNumber #'break-visibility = #'#(#f #t #t)
    \override Score.BarNumber  #'stencil
        = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
    \deadFluteStaff
    \deadClarinetStaff
    \deadPercussionStaves
    \deadPianoStaff
    %\deadCompassStaff
  >>
  \layout {
    % --------------------------------------------------------
    % this moves the cues to the staff context instead of the Voice
    % context.... helps prevent weirdness when partCombine and 
    %InstrumentSwitch are used together
    %

    \context {\Voice \remove "Instrument_switch_engraver" }
     \context {\Staff \remove "Instrument_switch_engraver" }
     %%%%%%%%%%%% ARE ALL THESE NECESSARY????
     \context {\StaffGroup \remove "Instrument_switch_engraver" }
     \context {\CueVoice \remove "Instrument_switch_engraver" }
     %
     % --------------------------------------------------------
  }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 112 4)
    }
  }
}
