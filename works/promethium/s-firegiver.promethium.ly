


fireGiverUniversal = \new Voice {
  %\time 20/4 %% TODO: hide this time signature
  \bar "||"
  \cadenzaOn
  s8
  <> \timeSpan "about 12''"  
  s2.
  s1*3
  \cadenzaOff
  s1  
}

fireGiverRest = {
  %\time 20/4 %% TODO: hide this time signature
  \cadenzaOn
  s1*3 
  r1-\parenthesize-\parenthesize \fermata
  \cadenzaOff
  s1
}

fireGiverBlank = {
  %\time 20/4 %% TODO: hide this time signature
  \cadenzaOn
  s1*4
  \cadenzaOff
  s1
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fireStrings = {
  \relative c' {
  \slurDown
  \slurDashed
  \cadenzaOn
  % --------------------------- COUNT 4 (1):
  \once \override Stem #'transparent = ##t
  g4\fff(\downbow^"big ferocious bow strokes" 
  \makeClusters {
  g4 g4... g32
  }

  % --------------------------- COUNT 4 (2):
  \once \override Stem #'transparent = ##t
  g4)(\upbow
  \makeClusters {
  g4 g4... g32
  }

  % --------------------------- COUNT 4 (3):
    

  \override Beam #'transparent = ##f
  \boxNotes { \xNotesOn g''16\glissando b\glissando^\markup {\column { 
      \line {"at random every couple seconds:"} 
      \line {"put finger very high on string"} 
      \line {"and quickly gliss up and down"}}} g \xNotesOff} #4 #4 ""
  \once \override Stem #'transparent = ##t
  
  \makeClusters {g,,2. g16}  

  % --------------------------- COUNT 4 (4):
  \once \override Stem #'transparent = ##t
  g4)(\downbow
    \makeClusters {
  g4 g4... g32
  }

  
% --------------------------- COUNT 4 (5):
  \cadenzaOff
  \once \override Stem #'transparent = ##t
  g4)(\upbow
  \textLengthOn
  <>^"                                                 "
  \makeClusters {
  g4 g4... g64
   }
  \hideNotes
  <>^\markup {\musicglyph #"scripts.downbow" "   " \musicglyph #"scripts.upbow" "   " \musicglyph #"scripts.downbow" "   " "... etc."}
  g128
  g128)
  \textLengthOff
  \unHideNotes
  |
  \slurNeutral
  \slurSolid
  }
}


fireGiverFluteOne = {
  \combineMusic {<>-.->\ff $(ranDataNote allStrikes1 "pic.1" 1 3)} \fireGiverRest \scoreBreak}
fireGiverFluteTwo = {
  \combineMusic {
    <>-.->\ff $(ranDataNote allStrikes1 "fl.2" 1 3)
    r4 aes'1\p\< ~ aes1\f\!\>-\parenthesize \fermata r4\! aes1\p\< ~ aes1\f\!\>-\parenthesize \fermata r4\!
    } \fireGiverBlank}
fireGiverOboeOne = {
    \combineMusic {<>-.->\ff $(ranDataNote allStrikes1 "ob.1" 1 3)} \fireGiverRest}
fireGiverOboeTwo = {
  \combineMusic {<>-.->\ff $(ranDataNote allStrikes1 "ob.2" 1 3)} \fireGiverRest}
fireGiverClarinetOne = {
  \combineMusic {
    <>-.->\ff $(ranDataNote allStrikes1 "cl.1" 1 3)} \fireGiverRest}
fireGiverClarinetTwo = {
  \combineMusic {<>-.->\ff $(ranDataNote allStrikes1 "cl.2" 1 3)} \fireGiverRest}
fireGiverBassoonOne = {
  \combineMusic {<>-.->\ff $(ranDataNote allStrikes1 "bsn.1" 1 3)} \fireGiverRest}
fireGiverBassoonTwo = {
  \combineMusic {<>-.->\ff $(ranDataNote allStrikes1 "bsn.2" 1 3)} \fireGiverRest}
fireGiverHornOne = {
  \combineMusic {<>-.->\ff $(ranDataNote allStrikes1 "hn.1" 1 3)} \fireGiverRest}
fireGiverHornTwo = {
  \combineMusic {<>-.->\ff $(ranDataNote allStrikes1 "hn.2" 1 3)} \fireGiverRest}
fireGiverHornThree = {
  \combineMusic {<>-.->\ff $(ranDataNote allStrikes1 "hn.3" 1 3)} \fireGiverRest}
fireGiverHornFour = {
  \combineMusic {<>-.->\ff $(ranDataNote allStrikes1 "hn.4" 1 3)} \fireGiverRest}
fireGiverTrumpetOne = {
  \combineMusic {<>-.->\ff $(ranDataNote allStrikes1 "tpt.1" 1 3)} \fireGiverRest}
fireGiverTrumpetTwo = {
  \combineMusic {<>-.->\ff $(ranDataNote allStrikes1 "tpt.2" 1 3)} \fireGiverRest}
fireGiverTromboneOne = {\combineMusic {<>-.-> $(ranDataNote allStrikes1 "tbn.1" 1 3)} \fireGiverRest}
fireGiverTromboneTwo = {
  \combineMusic {<>-.->\ff $(ranDataNote allStrikes1 "tbn.2" 1 3)} \fireGiverRest}
fireGiverTuba = {
  \combineMusic {
    <>-.->\ff $(ranDataNote allStrikes1 "tba" 1 3)} \fireGiverRest}
fireGiverTimpani = {
  \combineMusic {<>->\ff $(ranDataNote allStrikes1 "timp" 1 3)} \fireGiverRest}
fireGiverPercussionOne = {
   \combineMusic {b4->\ff^"l.v"} \fireGiverRest}
fireGiverPercussionTwo = {
  \ranInstrumentSwitch "brake drum" "to brake drum"
  \fireGiverRest}
fireGiverHarpTop = {
  \combineMusic {<>->\ff $(ranDataNote allStrikes1 "hp.1" 1 3)} \fireGiverRest
}
fireGiverHarpBottom = {
  \combineMusic {<>->\ff $(ranDataNote allStrikes1 "hp.2" 1 3)} \fireGiverRest
}
fireGiverViolinI =  \fireStrings
fireGiverViolinII = \fireStrings

fireGiverViola = \transpose c' f \fireStrings
fireGiverCello = \transpose c' f, \fireStrings
fireGiverBass = {\clef bass \transpose c' f, \fireStrings} %% worry about not having an extension?
