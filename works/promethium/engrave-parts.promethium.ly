\version "2.16.2"

  #(set! paper-alist (cons '("10x13" . (cons (* 10 in) (* 13 in))) paper-alist))

  \paper {
    #(set-paper-size "10x13")
    system-system-spacing #'basic-distance = #12
    system-system-spacing #'padding = #9
  }  

#(set-global-staff-size 16)

showScoreStuff = 0
showPartStuff = 1

scoreBreak = {}
scoreNoBreak = {}

partBreak = {\break}
partNoBreak = {\noBreak}


  \header {
    title = "Promethium"
    %instrument = "Orchestra"
    composer = "Randall West"
    tagline = "Copyright 2013 Randall West. All rights reserved."
  }

engraveGlobal = {
  \compressFullBarRests
}

\include "music.promethium.ly"
\include "staves.promethium.ly"


%{---------------------------------------------------------------------------
\book {
  \bookOutputName "RandallWest-Promethium.Piccolo-Flute"
  \score {
      \new StaffGroup <<
     \fluteOneStaff
     \fluteTwoStaff
     >>
     \header { piece = "Piccolo, Flute" }
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
%{---------------------------------------------------------------------------
\book {
  \bookOutputName "RandallWest-Promethium.Oboes"
  \score {
      \new StaffGroup <<
     \oboeOneStaff
     \oboeTwoStaff
     >>
     \header { piece = "Oboe 1, 2" }
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
%{---------------------------------------------------------------------------
\book {
  \bookOutputName "RandallWest-Promethium.Clarinets"
  \score {
      \new StaffGroup <<
     \transpose c d  \clarinetOneStaff
     \transpose c d  \clarinetTwoStaff
     >>
     \header { piece = "Clarinet in Bb 1, 2" }
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
%{---------------------------------------------------------------------------
\book {
  \bookOutputName "RandallWest-Promethium.Bassoons"
  \score {
      \new StaffGroup <<
     \bassoonOneStaff
     \bassoonTwoStaff
     >>
     \header { piece = "Bassoon 1, 2" }
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
%{---------------------------------------------------------------------------
\book {
  \bookOutputName "RandallWest-Promethium.Horns-1-2"
  \score {
      \new StaffGroup <<
     \transpose c g \hornOneStaff
     \transpose c g \hornTwoStaff
     >>
     \header { piece = "Horn in F 1, 2" }
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
%{---------------------------------------------------------------------------
\book {
  \bookOutputName "RandallWest-Promethium.Horns-3-4"
  \score {
      \new StaffGroup <<
     \transpose c g \hornThreeStaff
     \transpose c g \hornFourStaff
     >>
     \header { piece = "Horn in F 3, 4" }
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
%{---------------------------------------------------------------------------
\book {
  \bookOutputName "RandallWest-Promethium.Trumpets"
  \score {
      \new StaffGroup <<
     \trumpetOneStaff
     \trumpetTwoStaff
     >>
     \header { piece = "Trumpet in C 1, 2" }
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
%{---------------------------------------------------------------------------
\book {
  \bookOutputName "RandallWest-Promethium.Trombones"
  \score {
      \new StaffGroup <<
     \tromboneOneStaff
     \tromboneTwoStaff
     >>
     \header { piece = "Trombone 1, 2" }
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
%{---------------------------------------------------------------------------
\book {
  \bookOutputName "RandallWest-Promethium.Tuba"
  \score {
     \tubaStaff
     \header { piece = "Tuba" }
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
%{---------------------------------------------------------------------------
\book {
  \bookOutputName "RandallWest-Promethium.Timpani"
  \score {
     \timpaniStaff
     \header { piece = "Timpani" }
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
%{---------------------------------------------------------------------------
\book {
        \paper {
          #(set-paper-size "10x13")
          left-margin = 20\mm  % FOR PERCUSSION ONLY????
          system-system-spacing #'basic-distance = #14
          system-system-spacing #'padding = #12
        }
  \bookOutputName "RandallWest-Promethium.Percussion"
  \score {
      \new StaffGroup <<
      {
        \new StaffGroup \with  {
          instrumentName = "1"
          shortInstrumentName = "1"
        } {
          \override StaffGroup.InstrumentName #'self-alignment-Y = #-1
          \new RhythmicStaff 
          {
            \override Staff.InstrumentName #'self-alignment-Y = #1.6
            \percussionOne
          }
        }
      }
      {
        \new StaffGroup \with  {
          instrumentName = "2"
          shortInstrumentName = "2"
        } {
          \override StaffGroup.InstrumentName #'self-alignment-Y = #-1
          \new RhythmicStaff 
          {
            \override Staff.InstrumentName #'self-alignment-Y = #1.6
            \percussionTwo
          }
        }
      }
      >>
     \header { piece = "Percussion" }
      \layout {

        \context {\Voice \remove "Instrument_switch_engraver" }
        \context {\Staff \remove "Instrument_switch_engraver" }

        \context {
          \Score
          \override MultiMeasureRest #'expand-limit = #1
          \override BarNumber #'font-size = #1.4
          \override BarNumber  #'stencil = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
        }
        \context {
          \Staff
          \override Hairpin #'minimum-length = #6
        }
        \context {
          \RhythmicStaff
          \override Hairpin #'minimum-length = #6
        }
      }
    }
  }
%}
%{---------------------------------------------------------------------------
\book {
  \bookOutputName "RandallWest-Promethium.Harp"
  \score {
     \harpStaff
     \header { piece = "Harp" }
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
%{---------------------------------------------------------------------------
\book {
  \bookOutputName "RandallWest-Promethium.ViolinI"
  \score {
      \violinIStaves
     \header { piece = "Violin I" }
      \layout {
        \context {
          \Score
          \override MultiMeasureRest #'expand-limit = #1
          \override BarNumber #'font-size = #1.4
          \override BarNumber  #'stencil = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
        }
        \context {
          \StaffGroup
          \remove Instrument_name_engraver
        }
        \context {
          \Staff
          \remove Instrument_name_engraver
          \override Hairpin #'minimum-length = #6
        }
        \context {\Staff \RemoveEmptyStaves
              \override VerticalAxisGroup #'remove-first = ##t
              \override Hairpin #'minimum-length = #6
          }
      }
    }
  }
%}
%{---------------------------------------------------------------------------
\book {
  \bookOutputName "RandallWest-Promethium.ViolinII"
  \score {
      \violinIIStaves
     \header { piece = "Violin II" }
      \layout {
        \context {
          \Score
          \override MultiMeasureRest #'expand-limit = #1
          \override BarNumber #'font-size = #1.4
          \override BarNumber  #'stencil = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
        }
        \context {
          \StaffGroup
          \remove Instrument_name_engraver
        }
        \context {
          \Staff
          \remove Instrument_name_engraver
          \override Hairpin #'minimum-length = #6
        }
        \context {\Staff \RemoveEmptyStaves
              \override VerticalAxisGroup #'remove-first = ##t
              \override Hairpin #'minimum-length = #6
          }
      }
    }
  }
%}
%{---------------------------------------------------------------------------
\book {
  \bookOutputName "RandallWest-Promethium.Viola"
  \score {
      \violaStaves
     \header { piece = "Viola" }
      \layout {
        \context {
          \Score
          \override MultiMeasureRest #'expand-limit = #1
          \override BarNumber #'font-size = #1.4
          \override BarNumber  #'stencil = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
        }
        \context {
          \StaffGroup
          \remove Instrument_name_engraver
        }
        \context {
          \Staff
          \remove Instrument_name_engraver
          \override Hairpin #'minimum-length = #6
        }
        \context {\Staff \RemoveEmptyStaves
              \override VerticalAxisGroup #'remove-first = ##t
              \override Hairpin #'minimum-length = #6
          }
      }
    }
  }
%}
%{---------------------------------------------------------------------------
\book {
  \bookOutputName "RandallWest-Promethium.Cello"
  \score {
      \celloStaves
     \header { piece = "Cello" }
      \layout {
        \context {
          \Score
          \override MultiMeasureRest #'expand-limit = #1
          \override BarNumber #'font-size = #1.4
          \override BarNumber  #'stencil = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
        }
        \context {
          \StaffGroup
          \remove Instrument_name_engraver
        }
        \context {
          \Staff
          \remove Instrument_name_engraver
          \override Hairpin #'minimum-length = #6
        }
        \context {\Staff \RemoveEmptyStaves
              \override VerticalAxisGroup #'remove-first = ##t
              \override Hairpin #'minimum-length = #6
          }
      }
    }
  }
%}
%%{---------------------------------------------------------------------------
\book {
  \bookOutputName "RandallWest-Promethium.Bass"
  \score {
      \bassStaff
     \header { piece = "Bass" }
      \layout {
        \context {
          \Score
          \override MultiMeasureRest #'expand-limit = #1
          \override BarNumber #'font-size = #1.4
          \override BarNumber  #'stencil = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
        }
        \context {
          \StaffGroup
          \remove Instrument_name_engraver
        }
        \context {
          \Staff
          \remove Instrument_name_engraver
          \override Hairpin #'minimum-length = #6
        }
        \context {\Staff \RemoveEmptyStaves
              \override VerticalAxisGroup #'remove-first = ##t
              \override Hairpin #'minimum-length = #6
          }
      }
    }
  }
%}