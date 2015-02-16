%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%% BOOOM!
%{ drum section has:
 - TEMPLATE:
  -- hidden X number of rests whole rest at end with fermata
  -- OR:
  -- hidden X number of rests (for instructions that say continue to next)

 - SCORE (and individual parts)
  -- text spanner indicating length

 - SPECIFIC PARTS
 - bass drum note fffffff
%}




booomMergeOne = {s1*2}

booomMergeTwo = {s1*4}

booomMergeThree = {s1*4}

booomMergeFour = {s1*4}

booomMergeFive = {s1*3}

booomMergeSix = {s1}

booomMergeSeven = {s1}

booomerNoRest = #(define-music-function (parser location myBoom mergeBoom)
  (ly:music? ly:music?)
  #{
    <<
    \context Voice $myBoom 
    \context Voice {\cadenzaOn $mergeBoom \cadenzaOff s1 }
    >>
  \bar ":"
#})

booomUniversal = \new Voice {
  \bar "||"
 \mark \markup {\fontsize #3.3 \bold \circle {"C"}}
  \override Staff.TimeSignature #'stencil = ##f
  \booomerNoRest {
    s8
    \timeSpan "about 5 to 6''"
    s1
   \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
   \once \override Score.RehearsalMark #'X-offset = #2
    \mark \markup {\column { 
      \line {"Bass drum and timpani in unison strike note to trigger each"}
      \line {"dotted bar and cue everyone to do shit. (everyone listens for"}
      \line {"BD/timp strikes... bars not signaled by conductor until D)"}
      }}
    } \booomMergeOne
  \timeSpan "about 8 to 10''"
  \booomerNoRest {} \booomMergeTwo
  \timeSpan "about 8 to 10''"
  \booomerNoRest {} \booomMergeThree
  \timeSpan "about 5 to 6''"
  \booomerNoRest {} \booomMergeFour
  \timeSpan "about 4 to 5''"
  \booomerNoRest {} \booomMergeFive
  \timeSpan "about 3 to 4''"
  \booomerNoRest {} \booomMergeSix
  \timeSpan "about 2 to 3''"
  \booomerNoRest {} \booomMergeSeven
  \override Staff.TimeSignature #'stencil = ##t
  \textLengthOff
}

booomBooomSingle = {b4->}
booomBooomSingleTimp = \relative c, {\xNotesOn c-> \fff \xNotesOff}

booomer = #(define-music-function (parser location myBoom mergeBoom)
  (ly:music? ly:music?)
  #{
  \cadenzaOn
    <<
    { $myBoom  }
    { $mergeBoom  }
    >>
    \cadenzaOff
    \parenthesize r1-\parenthesize \fermata
  \bar ":"
  #})

booomCrazy = #(define-music-function (parser location note) 
  (ly:music?)
  #{
    r8
    s8
    <>\>\ff^\markup {\column { 
      \line {"any very nasty sound"}
      \line {"(on your instrument)"}
      }}
    \once \override Stem #'transparent = ##t
    \noteHeadCrazy $note
    \once \override Stem #'transparent = ##t
    \noteHeadCrazyLong $note
    <>\!\p
    \once \override Stem #'transparent = ##t
    \noteHeadCrazy $note
   #})



booomRest = {
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeOne
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeTwo
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeThree
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeFour
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeFive
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeSix
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeSeven
}


booomFluteOne = {
  \booomer {\allStrikesBooom "pic.1"} \booomMergeOne
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeTwo
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeThree
  \booomer {
    \relative c'''{<<
      {\repeat tremolo 16 {c32( des} \repeat tremolo 16 {c32 des)} }
      {s2..\p\< s8\! s1\f\> s8\p\!}
      >>}
    } \booomMergeFour
  \booomer {\booomCrazy a4} \booomMergeFive
  \booomerNoRest {\booomCrazy a4} \booomMergeSix
  \booomerNoRest {\booomCrazy a4} \booomMergeSeven
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
booomFluteTwo = {
  \booomer {\allStrikesBooom "fl.2"} \booomMergeOne
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeTwo
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeThree
  \booomer {
    \relative c'''{<<
      {\repeat tremolo 16 {d32( ees} \repeat tremolo 16 {d ees)} }
      {s2..\p\< s8\! s1\f\> s8\p\!}
      >>}
    } \booomMergeFour
  \booomer {\booomCrazy a4} \booomMergeFive
  \booomerNoRest {\booomCrazy a4} \booomMergeSix
  \booomerNoRest {\booomCrazy a4} \booomMergeSeven
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
booomOboeOne = {
  \booomer {\allStrikesBooom "ob.1"} \booomMergeOne
  \booomer {
    r8
    <>\p\<
    \boxNotes {c16[( des8.] \times 2/3 {ges8[ f des])} r8} #5 #5 ""
    \startArrowStaff s4^"repeat"
    s4 s2\f\!\> \arrowQuarterNote s1
    \stopArrowStaff
    <>\p\!
    } \booomMergeTwo
    \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeThree
  \booomer {
    r8
    <>\p\<
    \boxNotes {cis16[( d8.] \times 2/3 {g8[ fis d])}} #5 #5 ""
    \startArrowStaff
    s8
    <>^"repeat"
    s4 s1\f\!\> \arrowQuarterNote  
    s1
    \stopArrowStaff
    <>\p\!  
    } \booomMergeFour
  \booomer {\booomCrazy a4} \booomMergeFive
  \booomerNoRest {\booomCrazy a4} \booomMergeSix
  \booomerNoRest {\booomCrazy a4} \booomMergeSeven
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
booomOboeTwo = {
  \booomer {\allStrikesBooom "ob.2"} \booomMergeOne
  \booomer {
    r4
    <>\p\<
    \boxNotes {c16[( des8.] \times 2/3 {ges8[ f des])}} #5 #5 ""
    \startArrowStaff
    s4
    <>^"repeat"
    s4 s1\f\!\>  s2  \arrowQuarterNote 
    \stopArrowStaff
    <>\p\!
    } \booomMergeTwo
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeThree
  \booomer {
    r4
    <>\p\<
    \boxNotes {cis16[( 
      d8.] \times 2/3 {g8[ fis d])}} #5 #5 ""
    \startArrowStaff
    <>^"repeat" s4 s1\f\!\> \arrowQuarterNote   s1
    \stopArrowStaff
    <>\p\!  
    } \booomMergeFour
  \booomer {\booomCrazy a4} \booomMergeFive
  \booomerNoRest {\booomCrazy a4} \booomMergeSix
  \booomerNoRest {\booomCrazy a4} \booomMergeSeven
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
booomClarinetOne = {
  \booomer {\allStrikesBooom "cl.1"} \booomMergeOne
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeTwo
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeThree
  \booomer \relative c''' {r4 \xNotesOn e4(^"bend tone" \glissando s8 a,4) r4  e'4(\glissando s8 a,4) \xNotesOff} \booomMergeFour
  \booomer {\booomCrazy a4} \booomMergeFive
  \booomerNoRest {\booomCrazy a4} \booomMergeSix
  \booomerNoRest {\booomCrazy a4} \booomMergeSeven
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
booomClarinetTwo = {
  \booomer {\allStrikesBooom "cl.2"} \booomMergeOne
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeTwo
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeThree
  \booomer \relative c''' {r1 \xNotesOn d4(^"bend tone" \glissando s8 a4) r4  c4(\glissando s8 g4) \xNotesOff} \booomMergeFour
  \booomer {\booomCrazy a4} \booomMergeFive
  \booomerNoRest {\booomCrazy a4} \booomMergeSix
  \booomerNoRest {\booomCrazy a4} \booomMergeSeven
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
booomBassoonOne = {
  \booomer {\allStrikesBooom "bsn.1"} \booomMergeOne
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeTwo
  \booomer {
    \relative c {<<
      {\repeat tremolo 16 {g32( aes} \repeat tremolo 16 {g32 aes)} }
      {s2..\p\< s8\! s1\f\> s8\p\!}
      >>}
    } \booomMergeThree
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeFour
  \booomer {
    \relative c {<<
      {\repeat tremolo 16 {g32( aes} \repeat tremolo 16 {g32 aes)} }
      {s2..\p\< s8\! s1\f\> s8\p\!}
      >>}
    } \booomMergeFive
  \booomerNoRest {\booomCrazy b4} \booomMergeSix
  \booomerNoRest {\booomCrazy b4} \booomMergeSeven
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
booomBassoonTwo = {
  \booomer {\allStrikesBooom "bsn.2"} \booomMergeOne
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeTwo
  \booomer {
    \relative c {<<
      {\repeat tremolo 16 {a32( bes} \repeat tremolo 16 {a32 bes)} }
      {s2..\p\< s8\! s1\f\> s8\p\!}
      >>}
    } \booomMergeThree
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeFour
  \booomer {
    \relative c {<<
      {\repeat tremolo 16 {a32( bes} \repeat tremolo 16 {a32 bes)} }
      {s2..\p\< s8\! s1\f\> s8\p\!}
      >>}
    } \booomMergeFive
  \booomerNoRest {\booomCrazy b4} \booomMergeSix
  \booomerNoRest {\booomCrazy b4} \booomMergeSeven
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
booomHornOne = {
  \booomer {\allStrikesBooom "hn.1"} \booomMergeOne
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeTwo
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeThree
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeFour
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeFive
  \booomerNoRest {\booomCrazy b4} \booomMergeSix
  \booomerNoRest {\booomCrazy b4} \booomMergeSeven
}
booomHornTwo = {
  \booomer {\allStrikesBooom "hn.2"} \booomMergeOne
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeTwo
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeThree
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeFour
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeFive
  \booomerNoRest {\booomCrazy b4} \booomMergeSix
  \booomerNoRest {\booomCrazy b4} \booomMergeSeven
}
booomHornThree = {
  \booomer {\allStrikesBooom "hn.3"} \booomMergeOne
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeTwo
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeThree
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeFour
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeFive
  \booomerNoRest {\booomCrazy b4} \booomMergeSix
  \booomerNoRest {\booomCrazy b4} \booomMergeSeven
}
booomHornFour = {
  \booomer {\allStrikesBooom "hn.4"} \booomMergeOne
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeTwo
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeThree
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeFour
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeFive
  \booomerNoRest {\booomCrazy b4} \booomMergeSix
  \booomerNoRest {\booomCrazy b4} \booomMergeSeven
}
booomTrumpetOne = {
  \booomer {\allStrikesBooom "tpt.1"} \booomMergeOne
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeTwo
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeThree
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeFour
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeFive
  \booomerNoRest {\booomCrazy b4} \booomMergeSix
  \booomerNoRest {\booomCrazy b4} \booomMergeSeven
}
booomTrumpetTwo = {
  \booomer {\allStrikesBooom "tpt.2"} \booomMergeOne
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeTwo
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeThree
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeFour
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeFive
  \booomerNoRest {\booomCrazy b4} \booomMergeSix
  \booomerNoRest {\booomCrazy b4} \booomMergeSeven
}
booomTromboneOne = {
  \booomer {\allStrikesBooom "tbn.1"} \booomMergeOne
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeTwo
  \booomer {
    \xNotesOn 
    \relative c,, {r16 e1->\f^"lowest, ugliest sound possible"}
    \xNotesOff \slurSolid
    } \booomMergeThree
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeFour
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeFive
  \booomerNoRest {\booomCrazy b4} \booomMergeSix
  \booomerNoRest {\booomCrazy b4} \booomMergeSeven
}
booomTromboneTwo = {
  \booomer {\allStrikesBooom "tbn.2"} \booomMergeOne
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeTwo
  \booomer {
    \xNotesOn 
    \relative c,, {r16 e1->\f^"lowest, ugliest sound possible"}
    \xNotesOff \slurSolid
    } \booomMergeThree
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeFour
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeFive
  \booomerNoRest {\booomCrazy b4} \booomMergeSix
  \booomerNoRest {\booomCrazy b4} \booomMergeSeven
}
booomTuba = {
  \booomer {\allStrikesBooom "tba"} \booomMergeOne
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeTwo
  \booomer {
    \xNotesOn 
    \relative c,, {r16 e1->\f^"lowest, ugliest sound possible"}
    \xNotesOff \slurSolid
    } \booomMergeThree
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeFour
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeFive
  \booomerNoRest {\booomCrazy b4} \booomMergeSix
  \booomerNoRest {\booomCrazy b4} \booomMergeSeven
}
booomTimpani = {
  \booomer {\allStrikesBooom "timp"} \booomMergeOne
    \booomer {<>^"lowest tuning possible" \booomBooomSingleTimp} \booomMergeTwo
    \booomer {<>\fff \booomBooomSingleTimp} \booomMergeThree
    \booomer \booomBooomSingleTimp \booomMergeFour
    \booomer \booomBooomSingleTimp \booomMergeFive
    \booomer \booomBooomSingleTimp \booomMergeSix
    \booomer \booomBooomSingleTimp \booomMergeSeven
}
booomPercussionOne = {
    \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeOne
    \booomer {<>\fff^"BD" \booomBooomSingle} \booomMergeTwo
    \booomer \booomBooomSingle \booomMergeThree
    \booomer \booomBooomSingle \booomMergeFour
    \booomer \booomBooomSingle \booomMergeFive
    \booomer \booomBooomSingle \booomMergeSix
    \booomer \booomBooomSingle \booomMergeSeven
  }
booomPercussionTwo = {
    \booomerNoRest {
    
    %{\boxNotes {b16[\ff^"tom tom" b b b]} #4 #2 ""
    \startArrow "repeat until D" " "
    \hideNotes r4 r1  r1 r4 \unHideNotes
    \stopArrow%}
    \boxArrow {b16[\ff^"tom tom" b b b]} #4 #2 "repeat 16th notes straight through until D"
    \hideNotes r4 \unHideNotes s1 \arrowQuarterNote s2 
  } \booomMergeOne

  
\booomerNoRest {
    <>^"(cont.)"
    \hideNotes r1 \unHideNotes \arrowQuarterNote
  } \booomMergeTwo

  \booomerNoRest {
    <>^"(cont.)"
    \hideNotes r1 \unHideNotes \arrowQuarterNote
  } \booomMergeThree

  \booomerNoRest {
    <>^"(cont.)"
    \hideNotes r1 \unHideNotes \arrowQuarterNote
  } \booomMergeFour

  \booomerNoRest {
    <>^"(cont.)"
    \hideNotes r1 \unHideNotes \arrowQuarterNote
  } \booomMergeFive

  \booomerNoRest {
    <>^"(cont.)"
    \hideNotes r1 \unHideNotes \arrowQuarterNote
  } \booomMergeSix

  \booomerNoRest {
    <>^"(cont.)"
    \hideNotes r1 \unHideNotes \arrowQuarterNote
  } \booomMergeSeven
  \stopArrowStaff
  \bar "||"
}

booomHarpTop = {
  \booomer {\allStrikesBooom "hp.1"} \booomMergeOne
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeTwo
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeThree
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeFour
  \booomer {\relative c' \booomCrazy a4} \booomMergeFive
  \booomerNoRest {\relative c' \booomCrazy a4} \booomMergeSix
  \booomerNoRest {\relative c' \booomCrazy a4} \booomMergeSeven
}
booomHarpBottom = {
  \booomer {\allStrikesBooom "hp.2"} \booomMergeOne
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeTwo
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeThree
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeFour
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeFive
  \booomerNoRest {} \booomMergeSix
  \booomerNoRest {} \booomMergeSeven
}

booomViolinI = {
  \booomer {\allStrikesBooom "vln.I"} \booomMergeOne
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeTwo
  \booomer {
    \xNotesOn \slurDashed
    \relative c'' {b1(->\f^"scratch tones" b1)}
    \xNotesOff \slurSolid
    } \booomMergeThree
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeFour
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeFive
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeSix
  \booomerNoRest {\relative c'' \booomCrazy a4} \booomMergeSeven
}
booomViolinII = {
  \booomer {\allStrikesBooom "vln.II"} \booomMergeOne
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeTwo
  \booomer {
    \xNotesOn \slurDashed
    \relative c'' {b1(->\f^"scratch tones" b1)}
    \xNotesOff \slurSolid
    } \booomMergeThree
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeFour
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeFive
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeSix
  \booomerNoRest {\relative c'' \booomCrazy a4} \booomMergeSeven
}
booomViola = {
  \booomer {\allStrikesBooom "vla"} \booomMergeOne
  \booomer {
    \relative c {<<
      {c1:32~^"sul pont" c1:32}
      {s2..\p\< s8\! s1\f\> s8\p\!}
      >>}
    } \booomMergeTwo
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeThree
  \booomer {
    \relative c {<<
      {c1:32~^"sul pont" c1:32}
      {s2..\p\< s8\! s1\f\> s8\p\!}
      >>}
    } \booomMergeFour
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeFive
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeSix
  \booomerNoRest {\relative c'' \booomCrazy a4} \booomMergeSeven
}
booomCello = {
  \booomer {\allStrikesBooom "vc"} \booomMergeOne
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeTwo
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeThree
  \booomer {
    \relative c, {<<
      {c1:32~^"sul pont" c1:32}
      {s2..\p\< s8\! s1\f\> s8\p\!}
      >>}
    } \booomMergeFour
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeFive
  \booomer {\booomCrazy b4} \booomMergeSix
  \booomer {\booomCrazy b4} \booomMergeSeven
}
booomBass = {
  \booomer {\allStrikesBooom "cb"} \booomMergeOne
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeTwo
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeThree
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeFour
  \booomer {\hideNotes \partOnly \startSpacer r2 \partOnly \stopSpacer \unHideNotes} \booomMergeFive
  \booomerNoRest {\booomCrazy b4} \booomMergeSix
  \booomerNoRest {\booomCrazy b4} \booomMergeSeven
}
