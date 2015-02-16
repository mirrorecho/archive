%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

highHeldThinNoteTop =  {\relative c''' des!1}
highHeldThinNoteMiddleTop =  {\relative c''' c1}
highHeldThinNoteMiddleBottom =  {\relative c''' aes1}
highHeldThinNoteBottom =  {\relative c''' g1}

lowHeldThinNoteTop = {\relative c a}
lowHeldThinNoteBottom = {\relative c e,}



celloSmallFireBlindHopeOne = {
	\override Staff.TimeSignature #'stencil = ##f
		\relative c {
		cis1\p\<
    \times 2/3 {cis8(\mp\! d4~ } d2)
			a4.( b2)-\parenthesize \fermata 
			r4
			a1\< cis!4( d2.) 
		}
	}

% <a d> to <d g>
celloSmallFireBlindHopeTwo = {
	\override Staff.TimeSignature #'stencil = ##f
		\relative c {
      d8( g2)\!\> fis!4.( g4) d8( e2.\!)-\parenthesize \fermata 
      r4
		}
	}

%<d g> to <g c>
celloSmallFireBlindHopeThree = {
  \override Staff.TimeSignature #'stencil = ##f
    \relative c {
    \times 2/3 {fis!4( g2 } d2.)-\parenthesize \fermata 
    d16~(\< \times 2/3 {d8 g c~} c8 b4.)
    }
  }

%<g c> to <c f> (or <b e>ish)
celloSmallFireBlindHopeFour = {
  \override Staff.TimeSignature #'stencil = ##f
    \relative c' {
    g16->(\!\mf a1) r4 \times 2/3 {b8-> c4\< ~ } c2 g4-- a4--
    b16->\!\f c2-> d4( e2.) r8 d4(
    }
  }

%<c f> to <f bes>
celloSmallFireBlindHopeFive = {
  \override Staff.TimeSignature #'stencil = ##f
    \relative c' {
      \clef treble
    e4.( f4.) g16->( a1) r8 a8[( bes]) f4-- g4-- 
    g16-> a2.->
    a8[( bes] \times 2/3 {c4 d2)}
  }
}

%<f bes> to <bes ees>
celloSmallFireBlindHopeSix = {
  \override Staff.TimeSignature #'stencil = ##f
    \relative c'' {
    ees16->( d2.) ees16->( d2) \times 2/3 {ees8-> f4-> ~ } f2)\< f2.-\parenthesize \fermata f16->\!\ff f2->  
  }
}

%<bes ees> to <ees aes (and des)>
celloSmallFireBlindHopeSeven = {
  \override Staff.TimeSignature #'stencil = ##f
    \relative c'' {
    f8( g2) g4.-> g2-> g16-> g1-> g16-> g1-> g16-> g1-> g4-> g4---> g4.---> g16-> g1-> -\parenthesize \fermata   
  }
}

celloSmallFireBlindHope = {
    \cadenzaOn
	 \celloSmallFireBlindHopeOne
	 \celloSmallFireBlindHopeTwo
   \celloSmallFireBlindHopeThree
   \celloSmallFireBlindHopeFour
   \celloSmallFireBlindHopeFive
   \celloSmallFireBlindHopeSix
   \celloSmallFireBlindHopeSeven
}



%%%%%%%%%%%%% MY FIRST FUNCTION YAY YAY YAY!!!!!!!!!
heldThinHope = #(define-music-function (parser location note)
  (ly:music?)
  #{
  <>(\ppp
	<<
  {\partOnly \startSpacer $note \partOnly \stopSpacer}
	$(skip-of-length celloSmallFireBlindHopeOne)
  >>
  <>)(
  <<
	{\partOnly \startSpacer $note \partOnly \stopSpacer}
	$(skip-of-length celloSmallFireBlindHopeTwo)
  >>
  <>)(\<
  <<
  {\partOnly \startSpacer $note \partOnly \stopSpacer}
  $(skip-of-length celloSmallFireBlindHopeThree)
  >>
  <>)(\!\p
  <<
  {\partOnly \startSpacer $note \partOnly \stopSpacer}
  $(skip-of-length celloSmallFireBlindHopeFour)
  >>
  <>)(\<
  <<
  {\partOnly \startSpacer $note \partOnly \stopSpacer}
  $(skip-of-length celloSmallFireBlindHopeFive)
  >>
  <>)(\f
  <<
  {\partOnly \startSpacer $note \partOnly \stopSpacer}
  $(skip-of-length celloSmallFireBlindHopeSix)
  >>
  <>)
  <<
  {\partOnly \startSpacer $note \partOnly \stopSpacer}
  $(skip-of-length celloSmallFireBlindHopeSeven)
  >>
  #})


startHopeMeasure = {\partOnly \startSpacer \hideNotes r1 \unHideNotes \partOnly \stopSpacer}

hopeRestOne = {<< $(mmrest-of-length celloSmallFireBlindHopeOne) {\startHopeMeasure s1 r1-\parenthesize \fermata} >>}
hopeRestTwo = {<< $(mmrest-of-length celloSmallFireBlindHopeTwo) {\startHopeMeasure  r1-\parenthesize \fermata} >>}
hopeRestThree = {<< $(mmrest-of-length celloSmallFireBlindHopeThree) {\startHopeMeasure r1-\parenthesize \fermata} >>}
hopeRestFour = {<< $(mmrest-of-length celloSmallFireBlindHopeFour) {\startHopeMeasure s1 r1-\parenthesize \fermata} >>}
hopeRestFive = {<< $(mmrest-of-length celloSmallFireBlindHopeFive) {\startHopeMeasure s1 s2 r1-\parenthesize \fermata} >>}
hopeRestSix = {<< $(mmrest-of-length celloSmallFireBlindHopeSix) {\startHopeMeasure s2 r1-\parenthesize \fermata} >>}
hopeRestSeven = {<< $(mmrest-of-length celloSmallFireBlindHopeSeven) {\startHopeMeasure s1 s1 s2 r1-\parenthesize \fermata} >>}

hopeMusicOne = #(define-music-function (parser location hopeMusic)
  (ly:music?)
  #{
      << 
        {\hideNotes r16 \unHideNotes $hopeMusic } $(skip-of-length celloSmallFireBlindHopeOne)
      >>
  #})
hopeMusicTwo = #(define-music-function (parser location hopeMusic)
  (ly:music?)
  #{
    << 
      {\hideNotes r16 \unHideNotes $hopeMusic } $(skip-of-length celloSmallFireBlindHopeTwo)
    >>
  #})
hopeMusicThree = #(define-music-function (parser location hopeMusic)
  (ly:music?)
  #{
    << 
      {\hideNotes r16 \unHideNotes $hopeMusic } $(skip-of-length celloSmallFireBlindHopeThree)
    >>
  #})
hopeMusicFour = #(define-music-function (parser location hopeMusic)
  (ly:music?)
  #{
    << 
      {\hideNotes r16 \unHideNotes $hopeMusic } $(skip-of-length celloSmallFireBlindHopeFour)
    >>
  #})
hopeMusicFive = #(define-music-function (parser location hopeMusic)
  (ly:music?)
  #{
    << 
      {\hideNotes r16 \unHideNotes $hopeMusic } $(skip-of-length celloSmallFireBlindHopeFive)
    >>
  #})
hopeMusicSix = #(define-music-function (parser location hopeMusic)
  (ly:music?)
  #{
    << 
      {\hideNotes r16 \unHideNotes $hopeMusic } $(skip-of-length celloSmallFireBlindHopeSix)
    >>
  #})
hopeMusicSeven = #(define-music-function (parser location hopeMusic)
  (ly:music?)
  #{
    << 
      {\hideNotes r16 \unHideNotes $hopeMusic } $(skip-of-length celloSmallFireBlindHopeSeven)
    >>
  #})

blindHopeUniversal = {
  \cadenzaOn
  \bar "||"
  \mark \markup {\fontsize #3.3 \bold \circle {"F"}}
  \override Staff.TimeSignature #'stencil = ##f
  \timeSpan "about 10''"
    $(skip-of-length celloSmallFireBlindHopeOne)
  \textLengthOff
  \bar "dashed"
  \timeSpan "about 5''"
  $(skip-of-length celloSmallFireBlindHopeTwo)
  \bar "dashed"
  \timeSpan "about 4''"
  $(skip-of-length celloSmallFireBlindHopeThree)
  \bar "dashed"
  \timeSpan "about 9''"
  $(skip-of-length celloSmallFireBlindHopeFour)
  \bar "dashed"
  \timeSpan "about 8''"
  $(skip-of-length celloSmallFireBlindHopeFive)
  \bar "dashed"
  \timeSpan "about 7''"
  $(skip-of-length celloSmallFireBlindHopeSix)
  \bar "dashed"
  \timeSpan "about 12''"
  $(skip-of-length celloSmallFireBlindHopeSeven)
  \cadenzaOff
  \bar "||"
}


blindHopeFluteOne = { <>^"(pause for breath as needed)" \heldThinHope \highHeldThinNoteTop}
blindHopeFluteTwo = { <>^"(pause for breath as needed)" \heldThinHope \highHeldThinNoteMiddleBottom}

blindHopeOboeOne = {
  \hopeRestOne
  \hopeRestTwo
  \hopeRestThree
  \hopeRestFour
  \hopeRestFive
  \hopeRestSix
  \hopeRestSeven
}
blindHopeOboeTwo = {
  \hopeRestOne
  \hopeRestTwo
  \hopeRestThree
  \hopeRestFour
  \hopeRestFive
  \hopeRestSix
  \hopeRestSeven
}

blindHopeClarinetOne = {
  \hopeRestOne
  \hopeRestTwo
  \hopeRestThree
  \hopeRestFour
  \hopeMusicFive {\relative c' {
      \boxNotes {e4.(\mp f4 g16 a4) r8} #4 #4 ""
      \startArrowStaff
      s1^"freely, repeat" 
      \arrowQuarterNote
      } }
  \hopeMusicSix {s1 s1 \arrowQuarterNote} 
  \hopeMusicSeven { 
      \stopArrowStaff
      s4
      \boxNotes {s8 \xNotesOn b16--->[\mf b16--->] \xNotesOff r4 } #4 #4 ""
      <>^"repeat on any pitch"
      \startArrowStaff
      s4
      s1\<
      s1
      s4\f
      \arrowQuarterNote
   }
}
blindHopeClarinetTwo = {
  \hopeRestOne
  \hopeRestTwo
  \hopeRestThree
  \hopeRestFour
  \hopeMusicFive {\relative c' {
    s1 
    \boxNotes {e8(\mp f g a) r8} #4 #4 ""
    \startArrowStaff
    s1^"freely, repeat" 
    \arrowQuarterNote
    }}
  \hopeMusicSix {   s1 s1 \arrowQuarterNote}
  \hopeMusicSeven {      
      s1
      \stopArrowStaff
      \boxNotes {s8 \xNotesOn b16--->[\mf b16--->] \xNotesOff r4 } #4 #4 ""
      <>^"repeat on any pitch"
      \startArrowStaff
      s4\<
      \arrowQuarterNote
      s1
      s4\f
      }
}

blindHopeBassoonOne = {
  \hopeRestOne
  \hopeMusicTwo \relative c' {
    r1 \boxNotes {g4.(\pp fis4 d16 e2) r8} #4 #4 ""
    \startArrowStaff
    }
  \hopeMusicThree {
    s1^"freely, repeat" 
    \arrowQuarterNoteBass
    }
  \hopeMusicFour {
    s1 s1 \arrowQuarterNoteBass
    }
  \hopeMusicFive {
    s1 s1 \arrowQuarterNoteBass
    }
  \hopeMusicSix \relative c {
      \stopArrowStaff
      s4
      \boxNotes {s8 \xNotesOn b16--->[\mf b16--->] \xNotesOff r4 } #4 #4 ""
      <>^"repeat on any pitch"
      \startArrowStaff
      s4
      \arrowQuarterNoteBass
    } 
  \hopeMusicSeven {s1\< s1 s1 \arrowQuarterNoteBass s1\f\!} 
}
blindHopeBassoonTwo = {
  \hopeRestOne
  \hopeRestTwo
  \hopeRestThree
  \hopeMusicFour \relative c' {
    s4 \boxNotes {g8(\mp c4. b) r4}  #4 #4 ""
      <>^"freely, repeat"
      \startArrowStaff
      s1
      \arrowQuarterNoteBass
    }
  \hopeMusicFive {s1 s1 s1 \arrowQuarterNoteBass}
  \hopeMusicSix \relative c {
      s1
      \stopArrowStaff
      s4
      \boxNotes {s8 \xNotesOn b16--->[\mf b16--->] \xNotesOff r4 } #4 #4 ""
      <>^"repeat on any pitch"
      \startArrowStaff
      s4
      \arrowQuarterNoteBass
    }
  \hopeMusicSeven {s1\< s1 s1 \arrowQuarterNoteBass s1\f\!} 
}
blindHopeHornOne = {
  \hopeRestOne
  \hopeRestTwo
  \hopeRestThree
  \hopeRestFour
  \hopeRestFive
  \hopeRestSix
  \hopeRestSeven
}
blindHopeHornTwo = {
  \hopeRestOne
  \hopeRestTwo
  \hopeRestThree
  \hopeRestFour
  \hopeRestFive
  \hopeRestSix
  \hopeRestSeven
}
blindHopeHornThree = {
  \hopeRestOne
  \hopeRestTwo
  \hopeRestThree
  \hopeRestFour
  \hopeRestFive
  \hopeRestSix
  \hopeRestSeven
}
blindHopeHornFour = {
  \hopeRestOne
  \hopeRestTwo
  \hopeRestThree
  \hopeRestFour
  \hopeRestFive
  \hopeRestSix
  \hopeRestSeven
}
blindHopeTrumpetOne = {
  \hopeRestOne
  \hopeRestTwo
  \hopeRestThree
  \hopeRestFour
  \hopeRestFive
  \hopeRestSix
  \hopeRestSeven
}
blindHopeTrumpetTwo = {
  \hopeRestOne
  \hopeRestTwo
  \hopeRestThree
  \hopeRestFour
  \hopeRestFive
  \hopeRestSix
  \hopeRestSeven
}
blindHopeTromboneOne = {
  \hopeRestOne
  \hopeRestTwo
  \hopeRestThree
  \hopeRestFour
  \hopeRestFive
  \hopeRestSix
  \hopeRestSeven
}
blindHopeTromboneTwo = {
  \hopeRestOne
  \hopeRestTwo
  \hopeRestThree
  \hopeRestFour
  \hopeRestFive
  \hopeRestSix
  \hopeRestSeven
}
blindHopeTuba = {
  \hopeRestOne
  \hopeRestTwo
  \hopeRestThree
  \hopeRestFour
  \hopeRestFive
  \hopeRestSix
  \hopeRestSeven
}
blindHopeTimpani = {
  \hopeRestOne
  \hopeMusicTwo {r4 \slurDashed d1:32\<\pp( d1:32\>) s16\! }
  \hopeMusicThree {s1 r1-\parenthesize \fermata}
  \hopeMusicFour {r1 \slurDashed d1:32\<\p( s2 d1:32\mf\>-\parenthesize \fermata) s16\! }
  \hopeMusicFive {r1-\parenthesize \fermata \slurDashed d1:32\<\p( s2 d1:32\mf\!)( }
  \hopeMusicSix {d1:32)(}
  \hopeMusicSeven {d1:32)(}
}
blindHopePercussionOne = {
  \hopeRestOne
  \hopeRestTwo
  \hopeRestThree
  \hopeRestFour
  \hopeRestFive
  \hopeRestSix
  \hopeRestSeven
}
blindHopePercussionTwo = {
  \hopeRestOne
  \hopeRestTwo
  \hopeRestThree
  \hopeRestFour
  \hopeRestFive
  \hopeRestSix
  \hopeRestSeven
}

blindHopeHarpTop = {
  \hopeRestOne
  \hopeRestTwo
  \hopeRestThree
  \hopeRestFour
  \hopeRestFive
  \hopeRestSix
  \hopeRestSeven
}
blindHopeHarpBottom = {
  \hopeRestOne
  \hopeRestTwo
  \hopeRestThree
  \hopeRestFour
  \hopeRestFive
  \hopeRestSix
  \hopeRestSeven
}

blindHopeViolinI = {<>^"div., rebow as needed" \heldThinHope << \highHeldThinNoteMiddleTop \highHeldThinNoteBottom >>}
blindHopeViolinII = {<>^"div., rebow as needed" \heldThinHope << \highHeldThinNoteTop \highHeldThinNoteMiddleBottom >>}
blindHopeViola = {
  \hopeRestOne
  \hopeRestTwo
  \hopeRestThree
  \hopeRestFour
  \hopeRestFive
  \hopeRestSix
  \hopeRestSeven
}

blindHopeCello = {
  \addSoloLine 
  {\clef bass 
    <>^"solo, freely, expressive"
    \celloSmallFireBlindHope}
  {
    <>^"div., rebow as needed"
    \heldThinHope << \lowHeldThinNoteTop \lowHeldThinNoteBottom >>
  }
  "Solo Cello" "S. Vc."
  \cadenzaOff
}

blindHopeBass =  {\clef bass \heldThinHope << \lowHeldThinNoteTop \lowHeldThinNoteBottom >>}

%{
blindHopeBass = {
  << $(mmrest-of-length celloSmallFireBlindHopeOne) {s1 s1 r1-\parenthesize \fermata} >>
  << $(mmrest-of-length celloSmallFireBlindHopeTwo) {s1 r1-\parenthesize \fermata} >>
  << $(mmrest-of-length celloSmallFireBlindHopeThree) {s1 r1-\parenthesize \fermata} >>
  << $(mmrest-of-length celloSmallFireBlindHopeFour) {s1 s1 r1-\parenthesize \fermata} >>
  << $(mmrest-of-length celloSmallFireBlindHopeFive) {s1 s1 s2 r1-\parenthesize \fermata} >>
  << $(mmrest-of-length celloSmallFireBlindHopeSix) {s1 s2 r1-\parenthesize \fermata} >>
  << $(mmrest-of-length celloSmallFireBlindHopeSeven) {s1 s1 s1 s2 r1-\parenthesize \fermata} >>
}
%}




%%%%%%%%%%%%% (testing stuff)
        %{
        \boxNotes {f d c  a f d} #9 #4 "" 
          %}
        %{
       \leftBracket 
        a'' \startTextSpan
        f d c  a f d
        \stopTextSpan
        \rightBracket 
        %}
  % -----------------------------------------------------------
  % BLIND HOPE SECTION (CELLO SOLO)
  %{
  <<
    \context Staff = soloStaff \with {
      fontSize = #-2
      \override StaffSymbol #'staff-space = #(magstep -2)
      \override StaffSymbol #'thickness = #(magstep -2)
      alignAboveContext = #"celloStaff"
      instrumentName = "Solo Cello"
      shortInstrumentName = "S. Vc."
      } {
        \clef bass \celloSmallFireBlindHope
     }
    {
      {
  << $(mmrest-of-length celloSmallFireBlindHopeOne) {s1 s1 r1-\parenthesize \fermata} >>
  << $(mmrest-of-length celloSmallFireBlindHopeTwo) {s1 r1-\parenthesize \fermata} >>
  << $(mmrest-of-length celloSmallFireBlindHopeThree) {s1 r1-\parenthesize \fermata} >>
  << $(mmrest-of-length celloSmallFireBlindHopeFour) {s1 s1 r1-\parenthesize \fermata} >>
  << $(mmrest-of-length celloSmallFireBlindHopeFive) {s1 s1 s2 r1-\parenthesize \fermata} >>
  << $(mmrest-of-length celloSmallFireBlindHopeSix) {s1 s2 r1-\parenthesize \fermata} >>
  << $(mmrest-of-length celloSmallFireBlindHopeSeven) {s1 s1 s1 s2 r1-\parenthesize \fermata} >>
}
    }
  >>
  %}