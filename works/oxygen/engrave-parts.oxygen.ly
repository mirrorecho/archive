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

engraveGlobal = {
  \compressFullBarRests
}

  \header {
    title = "Oxygen"
    %instrument = "Orchestra"
    composer = "Randall West"
    tagline = "Copyright 2013 Randall West. All rights reserved."
  }


\include "music.oxygen.ly"
\include "staves.oxygen.ly"

%%{---------------------------------------------------------------------------
\book {
  \bookOutputName "RandallWest-Oxygen.Flutes"
  \score {
      \new StaffGroup <<
     \fluteOneStaff
     \fluteTwoStaff
     >>
     \header { piece = "Flute 1, 2" }
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
%%{---------------------------------------------------------------------------
\book {
  \bookOutputName "RandallWest-Oxygen.Oboes"
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
%%{---------------------------------------------------------------------------
\book {
  \bookOutputName "RandallWest-Oxygen.Clarinets"
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
%%{---------------------------------------------------------------------------
\book {
  \bookOutputName "RandallWest-Oxygen.Bassoons"
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
%%{---------------------------------------------------------------------------
\book {
  \bookOutputName "RandallWest-Oxygen.Horns-1-2"
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
%%{---------------------------------------------------------------------------
\book {
  \bookOutputName "RandallWest-Oxygen.Horns-3-4"
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
%%{---------------------------------------------------------------------------
\book {
  \bookOutputName "RandallWest-Oxygen.Trumpets"
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
%%{---------------------------------------------------------------------------
\book {
  \bookOutputName "RandallWest-Oxygen.Trombones"
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
%%{---------------------------------------------------------------------------
\book {
  \bookOutputName "RandallWest-Oxygen.Tuba"
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
%%{---------------------------------------------------------------------------
\book {
  \bookOutputName "RandallWest-Oxygen.Timpani"
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
%%{---------------------------------------------------------------------------
\book {
        \paper {
          left-margin = 18\mm  % FOR PERCUSSION ONLY????
        }
  \bookOutputName "RandallWest-Oxygen.Percussion"
  \score {
      \new StaffGroup <<
        {
        \new Staff \with {
          instrumentName = \markup {
            \center-column
              {"1" \italic "(vibraphone)"}
            }
          shortInstrumentName = \markup {
            \center-column
              {"1" "vib."}
            }
          midiInstrument = "percussion"
        } \percussionOne
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
%%{---------------------------------------------------------------------------
\book {
  \bookOutputName "RandallWest-Oxygen.Harp"
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
%%{---------------------------------------------------------------------------
\book {
  \bookOutputName "RandallWest-Oxygen.ViolinI-Stand.1"
  \score {
      \new StaffGroup <<
     \violinIOneStaff
     \violinITwoStaff
     >>
     \header { piece = "Violin I, 1st stand" }
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
  \bookOutputName "RandallWest-Oxygen.ViolinI-Stand.2"
  \score {
      \new StaffGroup <<
     \violinIThreeStaff
     \violinIFourStaff
     >>
     \header { piece = "Violin I, 2nd stand" }
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
  \bookOutputName "RandallWest-Oxygen.ViolinI-Stand.3"
  \score {
      \new StaffGroup <<
     \violinIFiveStaff
     \violinISixStaff
     >>
     \header { piece = "Violin I, 3rd stand" }
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
  \bookOutputName "RandallWest-Oxygen.ViolinII-Stand.1"
  \score {
      \new StaffGroup <<
     \violinIIOneStaff
     \violinIITwoStaff
     >>
     \header { piece = "Violin II, 1st stand" }
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
  \bookOutputName "RandallWest-Oxygen.ViolinII-Stand.2"
  \score {
      \new StaffGroup <<
     \violinIIThreeStaff
     \violinIIFourStaff
     >>
     \header { piece = "Violin II, 2nd stand" }
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
  \bookOutputName "RandallWest-Oxygen.ViolinII-Stand.3"
  \score {
      \new StaffGroup <<
     \violinIIFiveStaff
     \violinIISixStaff
     >>
     \header { piece = "Violin II, 3rd stand" }
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
  \bookOutputName "RandallWest-Oxygen.Viola-Stand.1"
  \score {
      \new StaffGroup <<
     \violaOneStaff
     \violaTwoStaff
     >>
     \header { piece = "Viola, 1st stand" }
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
  \bookOutputName "RandallWest-Oxygen.Viola-Stand.2"
  \score {
      \new StaffGroup <<
     \violaThreeStaff
     \violaFourStaff
     >>
     \header { piece = "Viola, 2nd stand" }
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
  \bookOutputName "RandallWest-Oxygen.Cello-Stand.1"
  \score {
      \new StaffGroup <<
     \celloOneStaff
     \celloTwoStaff
     >>
     \header { piece = "Cello, 1st stand" }
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
  \bookOutputName "RandallWest-Oxygen.Cello-Stand.2"
  \score {
      \new StaffGroup <<
     \celloThreeStaff
     \celloFourStaff
     >>
     \header { piece = "Cello, 2nd stand" }
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
  \bookOutputName "RandallWest-Oxygen.Bass"
  \score {
      \new StaffGroup <<
     \bassOneStaff
     \bassTwoStaff
     >>
     \header { piece = "Bass" }
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
        \context {\Staff \RemoveEmptyStaves
              \override VerticalAxisGroup #'remove-first = ##t
              \override Hairpin #'minimum-length = #6
          }
      }
    }
  }
%}