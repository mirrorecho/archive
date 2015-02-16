\version "2.18.0"

% -------------------------------------------------------------------------
% include kappa tools:
kappaRoot = "c:/Ran/Code/Kappa/"
\include #(string-append kappaRoot "Kappa.ly")

% -------------------------------------------------------------------------

#(set! paper-alist (cons '("11x14" . (cons (* 11 in) (* 14 in))) paper-alist))

\paper {
  #(set-paper-size "11x14")
  left-margin = 14\mm
  top-margin = 4\mm
  right-margin = 0\mm
  indent = 0\mm
  print-page-number = ##f 
  %system-separator-markup = \slashSeparator
  system-system-spacing #'basic-distance = #0
  system-system-spacing #'padding = #0
  markup-system-spacing #'basic-distance = #12
  top-system-spacing #'basic-distance = #12
}

#(set-global-staff-size 15)


\include "_functions.ly"
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

partOverrides = {
  \set Score.proportionalNotationDuration = #(ly:make-moment 1/19)
  \override Score.BarNumber #'break-visibility = #'#(#f #f #f)
  \override Score.SpacingSpanner.uniform-stretching = ##t
  \override Score.SpacingSpanner.strict-note-spacing = ##t
  %\override Score.SpacingSpanner.strict-note-spacing = ##f
  %\override Score.SpacingSpanner.strict-note-spacing = ##t
  \override Staff.BarLine #'extra-spacing-width = #'(0.6 . 0.6) 
  \numericTimeSignature
  #(set-accidental-style 'modern)
  %\overrideProperty NonMusicalPaperColumn.line-break-system-details #'((Y-offset . 12) (alignment-distances . (12)))
}


ranTagLine = "" %date? anything?

%--------------------------------------------------------------------------------------------------------------------
% FLUTE UNDERNEATH
%--------------------------------------------------------------------------------------------------------------------

\book {
  \bookOutputName "Vars - F I (clover)" 
  \header { subtitle = \markup  {\column { 
      \line {\fontsize #4 "Flute Initial Underneath Part " \rounded-box {\fontsize #8 "♣"}}
      } } tagline = \ranTagLine }
  \score {
      \new Staff {
      \partOverrides
      \fluteI
    }
    \header { 
      breakbefore = ##t
      piece = \markup { \column { \line {\rounded-box  {\fontsize #6 "♣" }  } } }     
      }
    \layout {
      ragged-right = ##t
      ragged-bottom = ##t
      \context { }
    }
  }
}

\book {
  \bookOutputName "Vars - F II (sun)" 
  \header { subtitle = \markup  {\column { 
      \line {\fontsize #4 "Flute Initial Underneath Part " \rounded-box {\fontsize #8 "☀"}}
      } } tagline = \ranTagLine }
  \score {
      \new Staff {
      \partOverrides
      \fluteII
    }
    \header { 
      breakbefore = ##t
      piece = \markup { \column { \line {\rounded-box  {\fontsize #6 "☀" }  } } }     
      }
    \layout {
      ragged-right = ##t
      ragged-bottom = ##t
      \context { }
    }
  }
}

\book {
  \bookOutputName "Vars - F III (crown)" 
  \header { subtitle = \markup  {\column { 
      \line {\fontsize #4 "Flute Initial Underneath Part " \rounded-box {\fontsize #8 "♛"}}
      } } tagline = \ranTagLine }
  \score {
      \new Staff {
      \partOverrides
      \fluteIII
    }
    \header { 
      breakbefore = ##t
      piece = \markup { \column { \line {\rounded-box  {\fontsize #6 "♛" }  } } }     
      }
    \layout {
      ragged-right = ##t
      ragged-bottom = ##t
      \context { }
    }
  }
}

%--------------------------------------------------------------------------------------------------------------------
% CLARINET UNDERNEATH
%--------------------------------------------------------------------------------------------------------------------

\book {
  \bookOutputName "Vars - C I (snowman)" 
  \header { subtitle = \markup  {\column { 
      \line {\fontsize #4 "Clarinet in b♭ Initial Underneath Part " \rounded-box {\fontsize #8 "☃"}}
      } } tagline = \ranTagLine }
  \score {
      \new Staff {
      \partOverrides
      \transpose c d \clarinetI
    }
    \header { 
      breakbefore = ##t
      piece = \markup { \column { \line {\rounded-box  {\fontsize #6 "☃" }  } } }     
      }
    \layout {
      ragged-right = ##t
      ragged-bottom = ##t
      \context { }
    }
  }
}

\book {
  \bookOutputName "Vars - C II (airplane)" 
  \header { subtitle = \markup  {\column { 
      \line {\fontsize #4 "Clarinet in b♭ Initial Underneath Part " \rounded-box {\fontsize #8 "✈"}}
      } } tagline = \ranTagLine }
  \score {
      \new Staff {
      \partOverrides
      \transpose c d \clarinetII
    }
    \header { 
      breakbefore = ##t
      piece = \markup { \column { \line {\rounded-box  {\fontsize #6 "✈" }  } } }     
      }
    \layout {
      ragged-right = ##t
      ragged-bottom = ##t
      \context { }
    }
  }
}

\book {
  \bookOutputName "Vars - C III (moon)" 
  \header { subtitle = \markup  {\column { 
      \line {\fontsize #4 "Clarinet in b♭ Initial Underneath Part " \rounded-box {\fontsize #8 "☽"}}
      } } tagline = \ranTagLine }
  \score {
      \new Staff {
      \partOverrides
      \transpose c d \clarinetIII
    }
    \header { 
      breakbefore = ##t
      piece = \markup { \column { \line {\rounded-box  {\fontsize #6 "☽" }  } } }     
      }
    \layout {
      ragged-right = ##t
      ragged-bottom = ##t
      \context { }
    }
  }
}

%--------------------------------------------------------------------------------------------------------------------
% FLUTE COVER
%--------------------------------------------------------------------------------------------------------------------

\book {
  \bookOutputName "Vars - F one a (cover to match snowman - a)" 
  \header { subtitle = \markup  {\column { 
      \line {\fontsize #4 "Flute Cover Part " \rounded-box {\fontsize #8 "☃a"}}
      } } tagline = \ranTagLine }
  \score {
      \new Staff {
      \partOverrides
      \fluteOneA
    }
    \header { 
      breakbefore = ##t
      piece = \markup { \column {
            \line {
              \rounded-box  {\fontsize #5 "☃a"} %\fontsize #2 "Clarinet in b♭" 
              \fontsize #0.6 " SPECIAL INSTRUCTIONS IF CLARINET HAS COVER PART" \fontsize #4 "☀b:"
            }
            \fontsize #0.6 "Play the following material as best as possible using key clicks only. Play it as fast as possible. You may repeat any system as many times as you wish."
            \fontsize #0.6 "This is a flute solo. (IF CLARINET DOES NOT HAVE ☀b, then play normally, as written)" 
            } }
      }
    \layout {
      ragged-right = ##t
      ragged-bottom = ##t
      \context { }
    }
  }
}

\book {
  \bookOutputName "Vars - F one b (cover to match snowman - b)" 
  \header { subtitle = \markup  {\column { 
      \line {\fontsize #4 "Flute Cover Part " \rounded-box {\fontsize #8 "☃b"}}
      } } tagline = \ranTagLine }
  \score {
      \new Staff {
      \partOverrides
      \fluteOneB
    }
    \header { 
      breakbefore = ##t
      piece = \markup { \column {
            \line {
              \rounded-box  {\fontsize #5 "☃b"} %\fontsize #2 "Clarinet in b♭" 
            }
            } }
      }
    \layout {
      ragged-right = ##t
      ragged-bottom = ##t
      \context { }
    }
  }
}

\book {
  \bookOutputName "Vars - F two a (cover to match airplane - a)" 
  \header { subtitle = \markup  {\column { 
      \line {\fontsize #4 "Flute Cover Part " \rounded-box {\fontsize #8 "✈a"}}
      } } tagline = \ranTagLine }
  \score {
      \new Staff {
      \partOverrides
      \fluteTwoA
    }
    \header { 
      breakbefore = ##t
      piece = \markup { \column {
            \line {
              \rounded-box  {\fontsize #5 "✈a"} %\fontsize #2 "Clarinet in b♭" 
            }
            } }
      }
    \layout {
      ragged-right = ##t
      ragged-bottom = ##t
      \context { }
    }
  }
}

\book {
  \bookOutputName "Vars - F three a (cover to match moon - a)" 
  \header { subtitle = \markup  {\column { 
      \line {\fontsize #4 "Flute Cover Part " \rounded-box {\fontsize #8 "☽a"}}
      } } tagline = \ranTagLine }
  \score {
      \new Staff {
      \partOverrides
      \fluteThreeA
    }
    \header { 
      breakbefore = ##t
      piece = \markup { \column {
            \line {
              \rounded-box  {\fontsize #5 "☽a"} %\fontsize #2 "Clarinet in b♭" 
              \fontsize #0.6 " SPECIAL INSTRUCTIONS IF CLARINET HAS COVER PART" \fontsize #4 "☀b:"
            }
            \fontsize #0.6 "Play the following material freely, but with vigor, at a medium fast tempo. Ignore repeats (play boxed material only once). You may change the octave of any"
            \fontsize #0.6 "note as you wish. This is a flute solo. (IF CLARINET DOES NOT HAVE ☀b, then play normally, as written)" 
            } }
      }
    \layout {
      ragged-right = ##t
      ragged-bottom = ##t
      \context { }
    }
  }
}

\book {
  \bookOutputName "Vars - F three b (cover to match moon - b)" 
  \header { subtitle = \markup  {\column { 
      \line {\fontsize #4 "Flute Cover Part " \rounded-box {\fontsize #8 "☽b"}}
      } } tagline = \ranTagLine }
  \score {
      \new Staff {
      \partOverrides
      \fluteThreeB
    }
    \header { 
      breakbefore = ##t
      piece = \markup { \column {
            \line {
              \rounded-box  {\fontsize #5 "☽b"} %\fontsize #2 "Clarinet in b♭" 
            }
            } }
      }
    \layout {
      ragged-right = ##t
      ragged-bottom = ##t
      \context { }
    }
  }
}

%--------------------------------------------------------------------------------------------------------------------
% CLARINET COVER
%--------------------------------------------------------------------------------------------------------------------


\book {
  \bookOutputName "Vars - C one a (cover to match clover - a)" 
  \header { subtitle = \markup  {\column { 
      \line {\fontsize #4 "Clarinet in b♭ Cover Part " \rounded-box {\fontsize #8 "♣a"}}
      } } tagline = \ranTagLine }
  \score {
      \new Staff {
      \partOverrides
      \transpose c d \clarinetOneA
    }
    \header { 
      breakbefore = ##t
      piece = \markup { \column {
            \line {
              \rounded-box  {\fontsize #6 "♣a"} %\fontsize #2 "Clarinet in b♭" 
              \fontsize #0.6 " SPECIAL INSTRUCTIONS IF FLUTE HAS COVER PART" \fontsize #4 "✈b:"
            }
            \fontsize #0.6 "Play each pitch up until P, in order, as 8th note pulses (ignore the written rhythms and articulations). Skip, repeat, or insert rests as you wish; but"
            \fontsize #0.6 "the sense of a constant pulse should remain. Start at any tempo and dynamic level; change the tempo and dynamic level consistently and dramatically in one" 
            \fontsize #0.6 "direction from start to finish (e.g. start slow and quiet; end fast and loud). This is a clarinet solo. (IF FLUTE DOES NOT HAVE ✈b, then play as written)"
            } }
      }
    \layout {
      ragged-right = ##t
      ragged-bottom = ##t
      \context { }
    }
  }
}


\book {
  \bookOutputName "Vars - C one b (cover to match clover - b)" 
  \header { subtitle = \markup  {\column { 
      \line {\fontsize #4 "Clarinet in b♭ Cover Part " \rounded-box {\fontsize #8 "♣b"}}
      } } tagline = \ranTagLine }
  \score {
      \new Staff {
      \partOverrides
      \transpose c d \clarinetOneB
    }
    \header { 
      breakbefore = ##t
      piece = \markup { \column {
            \line {
              \rounded-box  {\fontsize #6 "♣b"} %\fontsize #2 "Clarinet in b♭" 
            }
            } }
      }
    \layout {
      ragged-right = ##t
      ragged-bottom = ##t
      \context { }
    }
  }
}


\book {
  \bookOutputName "Vars - C two a (cover to match sun - a)" 
  \header { subtitle = \markup  {\column { 
      \line {\fontsize #4 "Clarinet in b♭ Cover Part " \rounded-box {\fontsize #8 "☀a"}}
      } } tagline = \ranTagLine }
  \score {
      \new Staff {
      \partOverrides
      \transpose c d \clarinetTwoA
    }
    \header { 
      breakbefore = ##t
      piece = \markup { \column {
            \line {
              \rounded-box  {\fontsize #6 "☀a"} %\fontsize #2 "Clarinet in b♭" 
              \fontsize #0.6 " SPECIAL INSTRUCTIONS IF FLUTE HAS COVER PART" \fontsize #4 "✈b:"
            }
            \fontsize #0.6 "Play only measures that contain 16th notes and the final measure. Play at a very fast tempo but pause briefly between each measure. Keep the dynamic"
            \fontsize #0.6 "level at pianissimo throughout (ignore written dynmics).  This is a clarinet solo. (IF FLUTE DOES NOT HAVE ✈b, then play as written)"
            } }
      }
    \layout {
      ragged-right = ##t
      ragged-bottom = ##t
      \context { }
    }
  }
}


\book {
  \bookOutputName "Vars - C three a (cover to match crown - a)" 
  \header { subtitle = \markup  {\column { 
      \line {\fontsize #4 "Clarinet in b♭ Cover Part " \rounded-box {\fontsize #8 "♛a"}}
      } } tagline = \ranTagLine }
  \score {
      \new Staff {
      \partOverrides
      \transpose c d \clarinetThreeA
    }
    \header { 
      breakbefore = ##t
      piece = \markup { \column {
            \line {
              \rounded-box  {\fontsize #6 "♛a"} %\fontsize #2 "Clarinet in b♭" 
              \fontsize #0.6 " SPECIAL INSTRUCTIONS IF FLUTE HAS COVER PART" \fontsize #4 "✈b:"
            }
            \fontsize #0.6 "On the first page, play the first measure of each system, repeating each measure twice in a row; play each repeated measure slower than the original."
            \fontsize #0.6 "On the second page, play only systems O and P (as written). This is a clarinet solo. (IF FLUTE DOES NOT HAVE ✈b, then play as written)" 
            %\fontsize #0.6 "direction from start to finish (e.g. start slow and quiet; end fast and loud). This is a clarinet solo. (IF FLUTE DOES NOT HAVE ✈b, then play as written)"
            %\fontsize #0.6 "..."
            } }
      }
    \layout {
      ragged-right = ##t
      ragged-bottom = ##t
      \context { }
    }
  }
}


\book {
  \bookOutputName "Vars - C three b (cover to match crown - b)" 
  \header { subtitle = \markup  {\column { 
      \line {\fontsize #4 "Clarinet in b♭ Cover Part " \rounded-box {\fontsize #8 "♛b"}}
      } } tagline = \ranTagLine }
  \score {
      \new Staff {
      \partOverrides
      \transpose c d \clarinetThreeB
    }
    \header { 
      breakbefore = ##t
      piece = \markup { \column {
            \line {
              \rounded-box  {\fontsize #6 "♛b"} %\fontsize #2 "Clarinet in b♭" 
            }
            } }
      }
    \layout {
      ragged-right = ##t
      ragged-bottom = ##t
      \context { }
    }
  }
}
