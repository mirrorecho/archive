\version "2.18.0"

% -------------------------------------------------------------------------
% include kappa tools:
kappaRoot = "c:/Ran/Code/Kappa/"
\include #(string-append kappaRoot "Kappa.ly")

% -------------------------------------------------------------------------

\paper {
  #(set-paper-size "tabloid")
  left-margin = 24\mm
  right-margin = 8\mm
  indent = 0\mm
  %system-separator-markup = \slashSeparator
  system-system-spacing #'basic-distance = #11
  system-system-spacing #'padding = #11
}

#(set-global-staff-size 16)


\include "_functions.ly"

partOverrides = {
  \set Score.proportionalNotationDuration = #(ly:make-moment 1/17)
  \override Score.BarNumber #'break-visibility = #'#(#f #f #f)
  \override Score.SpacingSpanner.uniform-stretching = ##t
  \override Score.SpacingSpanner.strict-note-spacing = ##t
  \numericTimeSignature
  %\overrideProperty NonMusicalPaperColumn.line-break-system-details #'((Y-offset . 12) (alignment-distances . (12)))
}

% override startCutout so that grey boxes aren't so big:
startCutout = {
    \stopStaff
    \override Staff.StaffSymbol #'line-positions = #'(
        -8 -7.5 -7 -6.5 -6 -5.5 -5 -4.5 -4 -3.5 -3 -2.5 -2 -1.5 -1 -.5 0 
        .5 1 1.5 2 2.5 3 3.5 4 4.5 5 5.5 6 6.5 7 7.5 8
        )
    \override Staff.StaffSymbol #'thickness = #4
    \override Staff.StaffSymbol #'color = #(x11-color 'grey69)
    \startStaff
}

startCutoutBox = {
    \stopStaff
    \override Staff.StaffSymbol #'line-positions = #'(
        -8 -7.5 -7 -6.5 -6 -5.5 -5 -4.5 -4 -3.5 -3 -2.5 -2 -1.5 -1 -.5 0 
        .5 1 1.5 2 2.5 3 3.5 4 4.5 5 5.5 6 6.5 7 7.5 8
        )
    \override Staff.StaffSymbol #'thickness = #4
    \override Staff.StaffSymbol #'color = #(x11-color 'ForestGreen)
    \startStaff
}


unique = #(define-music-function (parser location partName music) 
  (string? ly:music?)
  #{
    \applyContext #(override-color-for-all-grobs (x11-color 'purple))
    <>^#(string-append "[UNIQUE:" partName)
    $music
    <>^"]"
    \applyContext #(override-color-for-all-grobs (x11-color 'blue))
  #}
  )

%%{---------------------------------------------------------------------------


\include "F.I.ly"
\include "F.II.ly"
\include "F.III.ly"
\include "F.one.ly"
\include "F.two.ly"
\include "F.three.ly"
\include "C.I.ly"
\include "C.II.ly"
\include "C.III.ly"
\include "C.one.ly"
\include "C.two.ly"
\include "C.three.ly"

\layout {
  ragged-right = ##t
  ragged-bottom = ##t
  \context {
    \Score
    \remove "Timing_translator"
    \remove "Default_bar_line_engraver"
    \remove "Bar_number_engraver"
    \override SpacingSpanner.uniform-stretching = ##t % also use on parts????
    \override SpacingSpanner.strict-note-spacing = ##t  % also use on parts????
    }
  \context {
    \Staff
    \consists "Timing_translator"
    \consists "Default_bar_line_engraver"
  }
  \context {
    \Voice
    \remove "Forbid_line_break_engraver"
  }
}



%%{---------------------------------------------------------------------------
\book {
  \bookOutputName "Variations of Each Other - ALL PARTS"
    \header { 
      title = "Variations of Each Other"
      instrument = "All parts"
      composer = "Randall West"
      tagline = "Copyright 2014 Randall West."
    }
  \score {
    <<
    \new StaffGroup {
      <<
      \new StaffGroup \with { systemStartDelimiter = #'SystemStartSquare } {
      <<
      \new Staff \with {
          instrumentName = "F.I"
          shortInstrumentName = "F.I"
          midiInstrument = "flute"
        } {
        \partOverrides
        \applyContext #(override-color-for-all-grobs (x11-color 'blue))
        \fluteI
      }
      \new Staff \with {
          instrumentName = "F.II"
          shortInstrumentName = "F.II"
          midiInstrument = "flute"
        } {
        \partOverrides
        \applyContext #(override-color-for-all-grobs (x11-color 'blue))
        \fluteII
      }
        \new Staff \with {
          instrumentName = "F.III"
          shortInstrumentName = "F.III"
          midiInstrument = "flute"
        } {
        \partOverrides
        \applyContext #(override-color-for-all-grobs (x11-color 'blue))
        \fluteIII
      }
      >> }
      % --------------------------------------------------------------------
      \new StaffGroup \with { systemStartDelimiter = #'SystemStartSquare } {
        <<
        \new Staff \with {
          instrumentName = "F.one.a"
          shortInstrumentName = "F.one.a"
          midiInstrument = "flute"
        } {
        \partOverrides
        \fluteOneA
      }
        \new Staff \with {
          instrumentName = "F.one.b"
          shortInstrumentName = "F.one.b"
          midiInstrument = "flute"
        } {
        \partOverrides
        \fluteOneB
      }
        \new Staff \with {
          instrumentName = "F.two.a"
          shortInstrumentName = "F.two.a"
          midiInstrument = "flute"
        } {
        \partOverrides
        \fluteTwoA
      }
        %{
        \new Staff \with {
          instrumentName = "F.two.b"
          shortInstrumentName = "F.two.b"
          midiInstrument = "flute"
        } {
        \partOverrides
        \fluteTwoB
      }%}
        \new Staff \with {
          instrumentName = "F.three.a"
          shortInstrumentName = "F.three.a"
          midiInstrument = "flute"
        } {
        \partOverrides
        \fluteThreeA
      }
        \new Staff \with {
          instrumentName = "F.three.b"
          shortInstrumentName = "F.three.b"
          midiInstrument = "flute"
        } {
        \partOverrides
        \fluteThreeB
      }
      >> }
      >> }
    % --------------------------------------------------------------------
    \new StaffGroup {
      <<

      \new Staff \with {
        instrumentName = "C.I"
        shortInstrumentName = "C.I"
        midiInstrument = "clarinet"
      } {
      \partOverrides
      \applyContext #(override-color-for-all-grobs (x11-color 'blue))
      \clarinetI
    }
     \new Staff \with {
        instrumentName = "C.II"
        shortInstrumentName = "C.II"
        midiInstrument = "clarinet"
      } {
      \partOverrides
      \applyContext #(override-color-for-all-grobs (x11-color 'blue))
      \clarinetII
    }
      \new Staff \with {
        instrumentName = "C.III"
        shortInstrumentName = "C.III"
        midiInstrument = "clarinet"
      } {
      \partOverrides
      \applyContext #(override-color-for-all-grobs (x11-color 'blue))
      \clarinetIII
    }

    % --------------------------------------------------------------------
      \new StaffGroup \with { systemStartDelimiter = #'SystemStartSquare } {
        <<
      \new Staff \with {
        instrumentName = "C.one.a"
        shortInstrumentName = "C.one.a"
        midiInstrument = "clarinet"
      } {
      \partOverrides
      \clarinetOneA
    }
      \new Staff \with {
        instrumentName = "C.one.b"
        shortInstrumentName = "C.one.b"
        midiInstrument = "clarinet"
      } {
      \partOverrides
      \clarinetOneB
    }
      \new Staff \with {
        instrumentName = "C.two.a"
        shortInstrumentName = "C.two.a"
        midiInstrument = "clarinet"
      } {
      \partOverrides
      \clarinetTwoA
    }
    %{
      \new Staff \with {
        instrumentName = "C.two.b"
        shortInstrumentName = "C.two.b"
        midiInstrument = "clarinet"
      } {
      \partOverrides
      \clarinetTwoB
    }
    %}
      \new Staff \with {
        instrumentName = "C.three.a"
        shortInstrumentName = "C.three.a"
        midiInstrument = "clarinet"
      } {
      \partOverrides
      \clarinetThreeA
    }
      \new Staff \with {
        instrumentName = "C.three.b"
        shortInstrumentName = "C.three.b"
        midiInstrument = "clarinet"
      } {
      \partOverrides
      \clarinetThreeB
    }
    >> }
    >> }
    >>
  }
}  

