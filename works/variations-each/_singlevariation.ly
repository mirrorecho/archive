\version "2.18.0"

% -------------------------------------------------------------------------
% include kappa tools:
kappaRoot = "c:/Ran/Code/Kappa/"
\include #(string-append kappaRoot "Kappa.ly")

% -------------------------------------------------------------------------
% TESTING LAYOUT FUNCTIONS.... (doesn't work yet)

#(set! paper-alist (cons '("11x14" . (cons (* 11 in) (* 14 in))) paper-alist))

\paper {
  #(set-paper-size "11x14")
  left-margin = 18\mm
  right-margin = 8\mm
  indent = 0\mm
  %system-separator-markup = \slashSeparator
  system-system-spacing #'basic-distance = #0
  system-system-spacing #'padding = #2.2
}

#(set-global-staff-size 13.9)

fluteUnder = "I" 
fluteOverChoice = "a"
clarinetUnder = "II" 
clarinetOverChoice = "a"

fluteOver = #(cond 
  ((string=? clarinetUnder "I") "one") 
  ((string=? clarinetUnder "II") "two")
  ((string=? clarinetUnder "III") "three") 
)
fluteOverCombo = #(string-append fluteOver "." fluteOverChoice)

clarinetOver = #(cond 
  ((string=? fluteUnder "I") "one") 
  ((string=? fluteUnder "II") "two")
  ((string=? fluteUnder "III") "three")
)
clarinetOverCombo = #(string-append clarinetOver "." clarinetOverChoice)


fluteComboName = #(string-append "F." fluteUnder "." fluteOverCombo) 
clarinetComboName = #(string-append "C." clarinetUnder "." clarinetOverCombo) 

% ------------------------------- 

tacetIndication = {r1^"TACET"}


variationName = #(string-append "Variations of Each Other - " fluteComboName " - " clarinetComboName) 

\header {
  title = \variationName
  %instrument = "Orchestra"
  composer = "Randall West"
  %poet = \markup { \box "SCORE IN C" } %HACKY WAY TO GET SCORE IN C IN THERE !!!!!!
  tagline = "Copyright 2014 Randall West. All rights reserved."
}

partOverrides = {
  \set Score.proportionalNotationDuration = #(ly:make-moment 1/17)
  \override Score.BarNumber #'break-visibility = #'#(#f #f #f)
  \override Score.SpacingSpanner.uniform-stretching = ##t
  \override Score.SpacingSpanner.strict-note-spacing = ##t
  \numericTimeSignature
  %\overrideProperty NonMusicalPaperColumn.line-break-system-details #'((Y-offset . 12) (alignment-distances . (12)))
}

\include "_functions.ly"
% override cutout functions so that we don't see big boxes here!


%unique function highlihgts (and warns) about unique music
%(should ONLY be used in underneath parts)
%overriding staff color so as not to conflict with note color function for cutouts
unique = #(define-music-function (parser location partName music) 
  (string? ly:music?)
  (if (or (string=? partName fluteComboName) (string=? partName clarinetComboName))
  #{
    <>^#(string-append "[UNIQUE:" partName)
    $music
    <>^"]"
  #}
  #{
    \stopStaff
    <>^#(string-append "[UNIQUE ERROR:" partName)
    $music
    \startStaff
    <>^"]"
  #}
  )
  )

startCutoutBox = {
    \stopStaff
    \override Staff.StaffSymbol #'line-positions = #'(
        -4 -2 0 2 4
        )
    \override Staff.StaffSymbol #'color = #(x11-color 'grey62)
    \startStaff
    \applyContext #(override-color-for-all-grobs (x11-color 'grey62)) % doesn't seem to do anything
    <>^"BOX"
}

startCutout = {
    \stopStaff
    \override Staff.StaffSymbol #'line-positions = #'(
        -4 -2 0 2 4
        )
    \override Staff.StaffSymbol #'color = #(x11-color 'grey62)
    \startStaff
    \applyContext #(override-color-for-all-grobs (x11-color 'grey62)) % doesn't seem to do anything
}

stopCutout = {
    \stopStaff
    \applyContext #(override-color-for-all-grobs (x11-color 'grey0))
    \override Staff.StaffSymbol #'line-positions = #'(-4 -2 0 2 4)
    \override Staff.StaffSymbol #'thickness = #1
    \override Staff.StaffSymbol #'color = #(x11-color 'grey0)
    \startStaff
}


% -----------------------------------------------------------------------------------------------------------------------------------
% FLUTE:
% -----------------------------------------------------------------------------------------------------------------------------------

% replace cutout function to pull music from flute under part:
cutout = #(define-music-function (parser location musicSkips) 
  (ly:music?)
  #{
    \startCutout
    \quoteDuring #"fluteUnder" { $musicSkips }
    \stopCutout
#})

cutoutBox = #(define-music-function (parser location musicSkips) 
  (ly:music?)
  #{
    \startCutoutBox
    \quoteDuring #"fluteUnder" { $musicSkips }
    \stopCutout
#})


% UNDERNEATH FLUTE PARTS:
\include "F.I.ly"
\include "F.II.ly"
\include "F.III.ly"
% OVERTOP FLUTE PARTS:
\include "F.one.ly"
\include "F.two.ly"
\include "F.three.ly"

fluteUnderMusic = {
  #(cond 
      ((string=? fluteUnder "I") fluteI) 
      ((string=? fluteUnder "II") fluteII)
      ((string=? fluteUnder "III") fluteIII)
    )
}

fluteOverMusic = {
  \stopCutout  
  #(cond 
      ((string=? fluteOverCombo "one.a") fluteOneA) 
      ((string=? fluteOverCombo "one.b") fluteOneB) 
      ((string=? fluteOverCombo "two.a") fluteTwoA) 
      ((string=? fluteOverCombo "two.b") 
        (cond 
          ((string=? clarinetOverCombo "one.b") fluteTwoBWithOneB) 
          ((string=? clarinetOverCombo "two.b") fluteTwoBSOLO) 
          ((string=? clarinetOverCombo "three.b") fluteTwoBWithThreeB)
          (else tacetIndication) 
          )
        ) 
      ((string=? fluteOverCombo "three.a") fluteThreeA) 
      ((string=? fluteOverCombo "three.b") fluteThreeB) 
    )
}

\addQuote "fluteUnder" {\fluteUnderMusic}

% -----------------------------------------------------------------------------------------------------------------------------------
% CLARINET:
% -----------------------------------------------------------------------------------------------------------------------------------
% replace cutout function to pull music from clarinet under part:
cutout = #(define-music-function (parser location musicSkips) 
  (ly:music?)
  #{
    \startCutout
    \quoteDuring #"clarinetUnder" { $musicSkips }
    \stopCutout
#})
cutoutBox = #(define-music-function (parser location musicSkips) 
  (ly:music?)
  #{
    \startCutoutBox
    \quoteDuring #"clarinetUnder" { $musicSkips }
    \stopCutout
#})

% UNDERNEATH CLARINET PARTS:
\include "C.I.ly"
\include "C.II.ly"
\include "C.III.ly"
% OVERTOP FLUTE PARTS:
\include "C.one.ly"
\include "C.two.ly"
\include "C.three.ly"


clarinetUnderMusic = {
    #(cond 
      ((string=? clarinetUnder "I") clarinetI) 
      ((string=? clarinetUnder "II") clarinetII)
      ((string=? clarinetUnder "III") clarinetIII)
    )
}


clarinetOverMusic = {
  \stopCutout
  #(cond 
      ((string=? clarinetOverCombo "one.a") clarinetOneA) 
      ((string=? clarinetOverCombo "one.b") clarinetOneB) 
      ((string=? clarinetOverCombo "two.a") clarinetTwoA) 
      ((string=? clarinetOverCombo "two.b") 
        (cond 
          ((string=? fluteOverCombo "one.b") clarinetTwoBWithOneB) 
          ((string=? fluteOverCombo "two.a") clarinetTwoBWithTwoA) 
          ((string=? fluteOverCombo "three.b") clarinetTwoBWithThreeB)
          (else tacetIndication) 
          )
        ) 
      ((string=? clarinetOverCombo "three.a") clarinetThreeA) 
      ((string=? clarinetOverCombo "three.b") clarinetThreeB) 
    )
}

\addQuote "clarinetUnder" { \transpose c d \clarinetUnderMusic}

% -----------------------------------------------------------------------------------------------------------------------------------
% STAVES AND LILYPOND BOOK:
% -----------------------------------------------------------------------------------------------------------------------------------


% here are all the various final combos for each part:
fluteStaff = \new Staff \with {
	%instrumentName = \fluteComboName
	%shortInstrumentName = \fluteComboName
	midiInstrument = "flute"
	} {
    \partOverrides
    \fluteOverMusic
	}

clarinetStaff = \new Staff \with {
  %instrumentName = \clarinetComboName
  %shortInstrumentName = \clarinetComboName
  midiInstrument = "clarinet"
  } {
    \partOverrides
    \transpose c d \clarinetOverMusic
  }

\book {
  \bookOutputName  "VAR OF EACH"
  %\bookOutputName  #(string-append "VAR OF EACH - " fluteComboName " - " clarinetComboName) 
  \score {
    <<
      \override Score.BarNumber #'break-visibility = #'#(#f #f #f)
      \fluteStaff
      \clarinetStaff
    >>
      \layout {
        ragged-right = ##t
        ragged-bottom = ##t
        \context {
        }
    }
  }
}
