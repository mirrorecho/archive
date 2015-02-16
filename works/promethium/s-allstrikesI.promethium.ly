

allStrikeIUniversal = \new Voice {
  %\bar "||"
  %\mark "I"
  s1*8
  \bar "|."
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

allStrikeNotesI = {s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 |}

allStrikeIFluteOne = {
  R1*7 r2 r4 r8
  <>-.->
  $(ranDataNote allStrikes1 "pic.1" 1 4)
  <>-.->
  $(ranDataNote allStrikes1 "pic.1" 1 4) 
  }
allStrikeIFluteTwo = {
  R1*7 r2 r4 r8
  <>-.->
  $(ranDataNote allStrikes1 "fl.2" 1 4)
  <>-.->
  $(ranDataNote allStrikes1 "fl.2" 1 4) 
  }
allStrikeIOboeOne = {
  R1*7 r2 r4 r8
  <>-.->
  $(ranDataNote allStrikes1 "ob.1" 1 4)
  <>-.->
  $(ranDataNote allStrikes1 "ob.1" 1 4) 
  }
allStrikeIOboeTwo = {
  R1*7 r2 r4 r8
  <>-.->
  $(ranDataNote allStrikes1 "ob.2" 1 4)
  <>-.->
  $(ranDataNote allStrikes1 "ob.2" 1 4) 
  }
allStrikeIClarinetOne = \relative c''' {
  R1 | 
  \boxArrow {r4 \xNotesOn e4\ff(^"bend tone" \glissando s8 a,4) s8} #5 #4 "freely, repeat"
  \arrowMeasure
  \arrowMeasure
  \arrowMeasure
  \arrowMeasure
  \arrowMeasure
  }
allStrikeIClarinetTwo = \relative c''' {
  R1 | 
  \boxArrow {r4 \xNotesOn d4\ff(^"bend tone" \glissando s8 g,4) s8} #5 #4 "freely, repeat"
  \arrowMeasure
  \arrowMeasure
  \arrowMeasure
  \arrowMeasure
  \arrowMeasure
  }
allStrikeIBassoonOne = {
  R1*7 r2 r4 r8
  <>-.->
  $(ranDataNote allStrikes1 "bsn.1" 1 4)
  <>-.->
  $(ranDataNote allStrikes1 "bsn.1" 1 4) 
  }
allStrikeIBassoonTwo = {
  R1*7 r2 r4 r8
  <>-.->
  $(ranDataNote allStrikes1 "bsn.2" 1 4)
  <>-.->
  $(ranDataNote allStrikes1 "bsn.2" 1 4) 
  } 
allStrikeIHornOne = {
  R1*7 r2 r4 r8
  <>-.->
  $(ranDataNote allStrikes1 "hn.1" 1 4)
  <>-.->
  $(ranDataNote allStrikes1 "hn.1" 1 4) 
  }
allStrikeIHornTwo = {
  R1*7 r2 r4 r8
  <>-.->
  $(ranDataNote allStrikes1 "hn.2" 1 4)
  <>-.->
  $(ranDataNote allStrikes1 "hn.2" 1 4) 
  }
allStrikeIHornThree = {
  R1*7 r2 r4 r8
  <>-.->
  $(ranDataNote allStrikes1 "hn.3" 1 4)
  <>-.->
  $(ranDataNote allStrikes1 "hn.3" 1 4) 
  }
allStrikeIHornFour = {
  R1*7 r2 r4 r8
  <>-.->
  $(ranDataNote allStrikes1 "hn.4" 1 4)
  <>-.->
  $(ranDataNote allStrikes1 "hn.4" 1 4) 
  }
allStrikeITrumpetOne = {
  R1*7 r2 r4 r8
  <>-.->
  $(ranDataNote allStrikes1 "tpt.1" 1 4)
  <>-.->
  $(ranDataNote allStrikes1 "tpt.1" 1 4) 
  }
allStrikeITrumpetTwo = {
  R1*7 r2 r4 r8
  <>-.->
  $(ranDataNote allStrikes1 "tpt.2" 1 4)
  <>-.->
  $(ranDataNote allStrikes1 "tpt.2" 1 4) 
  }
allStrikeITromboneOne = {
  R1*7 r2 r4 r8
  <>-.->
  $(ranDataNote allStrikes1 "tbn.1" 1 4)
  <>-.->
  $(ranDataNote allStrikes1 "tbn.1" 1 4) 
  }
allStrikeITromboneTwo = {
  R1*7 r2 r4 r8
  <>-.->
  $(ranDataNote allStrikes1 "tbn.2" 1 4)
  <>-.->
  $(ranDataNote allStrikes1 "tbn.2" 1 4) 
  }
allStrikeITuba = {
  R1*7 r2 r4 r8
  <>-.->
  $(ranDataNote allStrikes1 "tba" 1 4)
  <>-.->
  $(ranDataNote allStrikes1 "tba" 1 4) 
  }
allStrikeITimpani = {
  R1*7 r2 r4 r8
  <>->
  $(ranDataNote allStrikes1 "timp" 1 4)
  <>->
  $(ranDataNote allStrikes1 "timp" 1 4) 
  }

allStrikeIPercussionOne = {
	\ranInstrumentSwitch "whistle" "whistle"
  R1*6 | b1\mp\< ~ | b2 ~  b4. b16->\ff b-> |
}
allStrikeIPercussionTwo = {
	\ranInstrumentSwitch "brake drum" "brake drum"
	<>_\ff 
	b8 b8 r4 r2 | r4 b8 b8 r2 | r2 b8 b8 r4 | r2 b8 b8 \times 2/3 {b8 b8 r8} | r4 \times 2/3 {b8 b8 r8} r2 | 
	\times 2/3 {b8 b8 r8} b16[ b r8] r4 r8[ b16 b] | b16[ b r8] r4  \stemDown b16^"tom tom" b b-> b-> \stemUp r8[ b16^"brake drum" b] |
	r8[ b16 b] \stemDown b^"tom tom" b b b b b b b b b b-> b->
}

allStrikeIHarpTop = {
  R1*7 r2 r4 r8
  <>->
  $(ranDataNote allStrikes1 "hp.1" 1 4)
  <>->
  $(ranDataNote allStrikes1 "hp.1" 1 4)
}
allStrikeIHarpBottom = {
  R1*7 r2 r4 r8
  <>->
  $(ranDataNote allStrikes1 "hp.2" 1 4)
  <>->
  $(ranDataNote allStrikes1 "hp.2" 1 4)
}

allStrikeIHighStrings = {
	\override NoteHead #'style = #'cross
  	\relative c'''' { c1)( | c2) c8-.-> c4.->( | c2.) c8-.-> c8->( | c1) c16-.-> c16->( c4.) c16-.-> c16->( c4.)( |
  	c2) c16-.-> c16->( c4.) | c4. c16-.-> c16->( c2)( | c2( c4.) 
  	\revert NoteHead #'style
  }
}
allStrikeIMidStrings = \transpose g c, \allStrikeIHighStrings 
allStrikeILowStrings = \transpose g e,, \allStrikeIHighStrings


allStrikeIViolinI = {
	\allStrikeIHighStrings 
  <>-.->
  $(ranDataNote allStrikes1 "vln.I" 1 4)
  <>-.->
  $(ranDataNote allStrikes1 "vln.I" 1 4) 
}
allStrikeIViolinII = \allStrikeIViolinI

allStrikeIViola = {
	\allStrikeIMidStrings
  <>-.->
  $(ranDataNote allStrikes1 "vla" 1 4)
  <>-.->
  $(ranDataNote allStrikes1 "vla" 1 4) 
}
allStrikeICello = {
	\allStrikeILowStrings
  <>-.->
  $(ranDataNote allStrikes1 "vc" 1 4)
  <>-.->
  $(ranDataNote allStrikes1 "vc" 1 4) 
}
allStrikeIBass = {
	\allStrikeILowStrings
  <>-.->
  $(ranDataNote allStrikes1 "cb" 1 4)
  <>-.->
  $(ranDataNote allStrikes1 "cb" 1 4) 
}