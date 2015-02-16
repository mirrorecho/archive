\version "2.18.0"

% -------------------------------------------------------------------------
% include kappa tools:
kappaRoot = "c:/Ran/Code/Kappa/"
\include #(string-append kappaRoot "Kappa.ly")

% -------------------------------------------------------------------------

#(set! paper-alist (cons '("11x14" . (cons (* 11 in) (* 14 in))) paper-alist))

\paper {
  #(set-paper-size "11x14")
  left-margin = 19\mm
  top-margin = 4\mm
  right-margin = 19\mm
  indent = 0\mm
  print-page-number = ##f 
  %system-separator-markup = \slashSeparator
  system-system-spacing #'basic-distance = #4
  system-system-spacing #'padding = #6
  top-system-spacing #'basic-distance = #12
}

#(set-global-staff-size 15.8)

\include "_functions.ly"
\include "F.two.ly"
\include "C.two.ly"

partOverridesSpecial = {
  \override Score.BarNumber #'break-visibility = #'#(#f #f #f)
  \override Staff.BarLine #'extra-spacing-width = #'(0.6 . 0.6) 
  \numericTimeSignature
  #(set-accidental-style 'modern)
  %\overrideProperty NonMusicalPaperColumn.line-break-system-details #'((Y-offset . 12) (alignment-distances . (12)))
}


ranTagLine = "" %date? anything?

\book {
  \bookOutputName "Vars - F two b  (cover to match airplane - b)" 
  \header {
    subtitle = \markup  {\column { 
      \line {\fontsize #4 "Flute Cover Part " \rounded-box {\fontsize #8 "✈b"}}
      } }
    tagline = \ranTagLine
  }
  \score {
      \new Staff {
      \partOverridesSpecial
      \fluteTwoBWithOneB
    }
    \header { 
      breakbefore = ##t
      piece = \markup { \column {
            \line {
              \rounded-box  {\fontsize #5 "✈b"} 
              \fontsize #0.6 " SPECIAL INSTRUCTIONS:"
            }
            \fontsize #0.6 "Play the part below that corresponds to clarinet's cover part. IF CLARINET DOES NOT HAVE ONE OF THESE 3 PARTS, THEN TACET."
            \fontsize #2 " " \fontsize #2 " "  \fontsize #2 " "
            \line {\fontsize #2 "If clarinet has cover part" \rounded-box \fontsize #3.3 "♣b" \fontsize #2 "then play this:"}
            \fontsize #0.6 " "
            } }
    }
  }
  \score {
      \new Staff {
      \partOverridesSpecial
      \fluteTwoBSOLO
    }
    \header { 
      piece = \markup { \column {
            \line {\fontsize #4 "_________________________________________________________________________________________________" }
            \line {\fontsize #8 " "}
            \line {\fontsize #2 "If clarinet has cover part" \rounded-box \fontsize #3.3 "☀b" \fontsize #2 "then play this (flute solo):"}
            \fontsize #0.6 " "
            } }
  }
  }
  \score {
      \new Staff {
      \partOverridesSpecial
      \fluteTwoBWithThreeB 
    }
    \header { 
      piece = \markup { \column {
            \line {\fontsize #4 "_________________________________________________________________________________________________" }
            \line {\fontsize #8 " "}
            \line {\fontsize #2 "If clarinet has cover part" \rounded-box \fontsize #3.3 "♛b" \fontsize #2 "then play this:"}
            \fontsize #0.6 " "
            } }
    }
  }
}



\book {
  \bookOutputName "Vars - C two b  (cover to match sun - b)" 
  \header {
    subtitle = \markup  {\column { 
      \line {\fontsize #4 "Clarinet in b♭ Cover Part " \rounded-box {\fontsize #8 "☀b"}}
      } }
    tagline = \ranTagLine
  }
  \score {
      \new Staff {
      \partOverridesSpecial
      \transpose c d \clarinetTwoBWithOneB
    }
    \header { 
      breakbefore = ##t
      piece = \markup { \column {
            \line {
              \rounded-box  {\fontsize #5 "☀b"} 
              \fontsize #0.6 " SPECIAL INSTRUCTIONS:"
            }
            \fontsize #0.6 "Play the part below that corresponds to flute's cover part. IF FLUTE DOES NOT HAVE ONE OF THESE 3 PARTS, THEN TACET."
            \fontsize #2 " " \fontsize #2 " "  \fontsize #2 " "
            \line {\fontsize #2 "If flute has cover part" \rounded-box \fontsize #3.3 "☃b" \fontsize #2 "then play this:"}
            \fontsize #0.6 " "
            } }
    }
  }
  \score {
      \new Staff {
      \partOverridesSpecial
      \transpose c d \clarinetTwoBWithTwoA
    }
    \header { 
      piece = \markup { \column {
            \line {\fontsize #4 "_________________________________________________________________________________________________" }
            \line {\fontsize #8 " "}
            \line {\fontsize #2 "If flute has cover part" \rounded-box \fontsize #3.3 "✈a" \fontsize #2 "then play this:"}
            \fontsize #0.6 " "
            } }
  }
  }
  \score {
      \new Staff {
      \partOverridesSpecial
      \transpose c d \clarinetTwoBWithThreeB 
    }
    \header { 
      piece = \markup { \column {
            \line {\fontsize #4 "_________________________________________________________________________________________________" }
            \line {\fontsize #8 " "}
            \line {\fontsize #2 "If flute has cover part" \rounded-box \fontsize #3.3 "☽b" \fontsize #2 "then play this:"}
            \fontsize #0.6 " "
            } }
    }
  }
}

