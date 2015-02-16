\version "2.16.2"

\paper {
  #(set-paper-size "tabloid")
  left-margin = 22\mm
}

\include "music.oxygen.ly"
\include "staves.oxygen.ly"

\header {
  title = "Oxygen - Strings"
  %instrument = "Orchestra"
  composer = "Randall West"
}

violinIOneStaff = \new Staff \with {
  instrumentName = "1" shortInstrumentName = "1"
  midiInstrument = "violin"
} {
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT
  %\partcombine \violinIOne \violinITwo
  { \violinIOne } 
}

violinITwoStaff = \new Staff \with {
  instrumentName = "2" shortInstrumentName = "2"
  midiInstrument = "violin"
} {
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT
  %\partcombine \violinIOne \violinITwo
  { \violinITwo } 
}

violinIThreeStaff = \new Staff \with {
  instrumentName = "3" shortInstrumentName = "3"
  midiInstrument = "violin"
} {
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT
  %\partcombine \violinIOne \violinITwo
  { \violinIThree } 
}

violinIFourStaff = \new Staff \with {
  instrumentName = "4" shortInstrumentName = "4"
  midiInstrument = "violin"
} {
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT
  %\partcombine \violinIOne \violinITwo
  { \violinIFour } 
}

violinIFiveStaff = \new Staff \with {
  instrumentName = "5" shortInstrumentName = "5"
  midiInstrument = "violin"
} {
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT
  %\partcombine \violinIOne \violinITwo
  { \violinIFive } 
}

violinISixStaff = \new Staff \with {
  instrumentName = "6" shortInstrumentName = "6"
  midiInstrument = "violin"
} {
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT
  %\partcombine \violinIOne \violinITwo
  { \violinISix } 
}

violinIStaves = \new StaffGroup \with {
  instrumentName = \markup {
    \center-column
      {"Violin I    "}
    }
  shortInstrumentName = "Vln. I   "
  systemStartDelimiter = #'SystemStartSquare
} <<
    \violinIOneStaff
    \violinITwoStaff
    \violinIThreeStaff
    \violinIFourStaff
    \violinIFiveStaff
    \violinISixStaff
>>
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violinIIOneStaff = \new Staff \with {
  instrumentName = "1" shortInstrumentName = "1"
  midiInstrument = "violin"
} {
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT
  %\partcombine \violinIOne \violinITwo
  { \violinIIOne } 
}

violinIITwoStaff = \new Staff \with {
  instrumentName = "2" shortInstrumentName = "2"
  midiInstrument = "violin"
} {
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT
  %\partcombine \violinIOne \violinITwo
  { \violinIITwo } 
}

violinIIThreeStaff = \new Staff \with {
  instrumentName = "3" shortInstrumentName = "3"
  midiInstrument = "violin"
} {
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT
  %\partcombine \violinIOne \violinITwo
  { \violinIIThree } 
}

violinIIFourStaff = \new Staff \with {
  instrumentName = "4" shortInstrumentName = "4"
  midiInstrument = "violin"
} {
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT
  %\partcombine \violinIOne \violinITwo
  { \violinIIFour } 
}

violinIIFiveStaff = \new Staff \with {
  instrumentName = "5" shortInstrumentName = "5"
  midiInstrument = "violin"
} {
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT
  %\partcombine \violinIOne \violinITwo
  { \violinIIFive } 
}

violinIISixStaff = \new Staff \with {
  instrumentName = "6" shortInstrumentName = "6"
  midiInstrument = "violin"
} {
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT
  %\partcombine \violinIOne \violinITwo
  { \violinIISix } 
}

violinIIStaves = \new StaffGroup \with {
  instrumentName = \markup {
    \center-column
      {"Violin II    "}
    }
  shortInstrumentName = "Vln. II   "
  systemStartDelimiter = #'SystemStartSquare
} <<
    \violinIIOneStaff
    \violinIITwoStaff
    \violinIIThreeStaff
    \violinIIFourStaff
    \violinIIFiveStaff
    \violinIISixStaff
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

violaOneStaff = \new Staff \with {
  instrumentName = "1" shortInstrumentName = "1"
  midiInstrument = "viola"
} {
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT
  %\partcombine \violinIOne \violinITwo
  { \violaOne } 
}

violaTwoStaff = \new Staff \with {
  instrumentName = "2" shortInstrumentName = "2"
  midiInstrument = "viola"
} {
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT
  %\partcombine \violinIOne \violinITwo
  { \violaTwo } 
}

violaThreeStaff = \new Staff \with {
  instrumentName = "3" shortInstrumentName = "3"
  midiInstrument = "viola"
} {
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT
  %\partcombine \violinIOne \violinITwo
  { \violaThree } 
}

violaFourStaff = \new Staff \with {
  instrumentName = "4" shortInstrumentName = "4"
  midiInstrument = "viola"
} {
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT
  %\partcombine \violinIOne \violinITwo
  { \violaFour } 
}

violaStaves = \new StaffGroup \with {
  instrumentName = \markup {
    \center-column
      {"Viola    "}
    }
  shortInstrumentName = "Vla.   "
  systemStartDelimiter = #'SystemStartSquare
} <<
    \violaOneStaff
    \violaTwoStaff
    \violaThreeStaff
    \violaFourStaff
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

celloOneStaff = \new Staff \with {
  instrumentName = "1" shortInstrumentName = "1"
  midiInstrument = "cello"
} {
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT
  %\partcombine \violinIOne \violinITwo
  { \celloOne } 
}

celloTwoStaff = \new Staff \with {
  instrumentName = "2" shortInstrumentName = "2"
  midiInstrument = "cello"
} {
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT
  %\partcombine \violinIOne \violinITwo
  { \celloTwo } 
}

celloThreeStaff = \new Staff \with {
  instrumentName = "3" shortInstrumentName = "3"
  midiInstrument = "cello"
} {
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT
  %\partcombine \violinIOne \violinITwo
  { \celloThree } 
}

celloFourStaff = \new Staff \with {
  instrumentName = "4" shortInstrumentName = "4"
  midiInstrument = "cello"
} {
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT
  %\partcombine \violinIOne \violinITwo
  { \celloFour } 
}

celloStaves = \new StaffGroup \with {
  instrumentName = \markup {
    \center-column
      {"Cello    "}
    }
  shortInstrumentName = "Vc.   "
  systemStartDelimiter = #'SystemStartSquare
} <<
    \celloOneStaff
    \celloTwoStaff
    \celloThreeStaff
    \celloFourStaff
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

bassOneStaff = \new Staff \with {
  instrumentName = "1" shortInstrumentName = "1"
  midiInstrument = "bass"
} {
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT
  %\partcombine \violinIOne \violinITwo
  { \bassOne } 
}

bassTwoStaff = \new Staff \with {
  instrumentName = "2" shortInstrumentName = "2"
  midiInstrument = "bass"
} {
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT
  %\partcombine \violinIOne \violinITwo
  { \bassTwo } 
}

bassStaves = \new StaffGroup \with {
  instrumentName = \markup {
    \center-column
      {"Bass    "}
    }
  shortInstrumentName = "Cb.   "
  systemStartDelimiter = #'SystemStartSquare
} <<
    \bassOneStaff
    \bassTwoStaff
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




cloudStaffOne = \new Staff \with { 
  printPartCombineTexts = ##f 
  instrumentName = "CLOUD:"
  shortInstrumentName = ":C:"
} {
  \relative c' {
  \cloudA
  \cloudC
  \cloudD
  }
}

\score {
  <<
    \override Score.BarNumber #'break-visibility = #'#(#t #t #t)
    \override Score.BarNumber  #'stencil
        = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
    \figureStaffOne
    \cloudStaffOne
    \violinIStaves
    \violinIIStaves
    \violaStaves
    \celloStaves
    \bassStaves
  >>
  \layout {
    #(layout-set-staff-size 15)
  }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}
