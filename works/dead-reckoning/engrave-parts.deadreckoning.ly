\version "2.16.2"

%  #(set! paper-alist (cons '("10x13" . (cons (* 10 in) (* 13 in))) paper-alist))

  \paper {
    %#(set-paper-size "10x13")
    system-system-spacing #'basic-distance = #12
    system-system-spacing #'padding = #9
    left-margin = 14\mm
  }  

#(set-global-staff-size 18)

showScoreStuff = 0
showPartStuff = 1

scoreBreak = {}
scoreNoBreak = {}

partBreak = {\break}
partNoBreak = {\noBreak}


  \header {
    title = "Dead Reckoning"
    %instrument = "Orchestra"
    composer = "Randall West"
    tagline = "Copyright 2013 Randall West. All rights reserved."
  }

engraveGlobal = {
  \compressFullBarRests
}

\include "music.deadreckoning.ly"
\include "staves.deadreckoning.ly"


%%{---------------------------------------------------------------------------
%%{
\book {
  \bookOutputName "RandallWest-DeadReckoning.Flute"
  \score {
     \deadFluteStaff
     \header { piece = "Flute" }
      \layout {
        \context {
          \Score
          %\override MultiMeasureRest #'expand-limit = #1
          \override BarNumber #'font-size = #1.4
          \override BarNumber  #'stencil = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
        }
        \context {
          \Staff
          \remove Instrument_name_engraver
          \override Hairpin #'minimum-length = #6
        }
        \context {
          \RhythmicStaff
          \remove Instrument_name_engraver
          \override Hairpin #'minimum-length = #6
        }
      }
    }
  }
%}
%%{
  \book {
  \bookOutputName "RandallWest-Promethium.Clarinet-Bb"
  \score {
     \transpose c d \deadClarinetStaff
     \header { piece = "Clarinet in Bb" }
      \layout {
        \context {
          \Score
          \override MultiMeasureRest #'expand-limit = #1
          \override BarNumber #'font-size = #1.4
          \override BarNumber  #'stencil = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
        }
        \context {
          \Staff
          \remove Instrument_name_engraver
          \override Hairpin #'minimum-length = #6
        }
        \context {
          \RhythmicStaff
          \remove Instrument_name_engraver
          \override Hairpin #'minimum-length = #6
        }
      }
    }
  }
  %}
  %%{
\book {
  \bookOutputName "RandallWest-DeadReckoning.Percussion"
  \score {
     \deadPercussionStaves
     \header { piece = "Percussion" }
      \layout {
        \context {
          \Score
          %\override MultiMeasureRest #'expand-limit = #1
          \override BarNumber #'font-size = #1.4
          \override BarNumber  #'stencil = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
        }
        \context {
          \GrandStaff
          \remove Instrument_name_engraver
          \override Hairpin #'minimum-length = #6
        }
        \context {
          \RhythmicStaff
          \remove Instrument_name_engraver
          \override Hairpin #'minimum-length = #6
        }
      }
    }
  }
%}
%%{
\book {
  \bookOutputName "RandallWest-DeadReckoning.Piano"
  \score {
     \deadPianoStaff
     \header { piece = "Piano" }
      \layout {
        \context {
          \Score
          %\override MultiMeasureRest #'expand-limit = #1
          \override BarNumber #'font-size = #1.4
          \override BarNumber  #'stencil = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
        }
        \context {
          \PianoStaff
          \remove Instrument_name_engraver
          \override Hairpin #'minimum-length = #6
        }
      }
    }
  }
%}