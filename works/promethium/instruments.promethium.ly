
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% DOUBLING INSTRUMENTS:

\addInstrumentDefinition #"contrabassoon"
  #`((instrumentTransposition . ,(ly:make-pitch -1 0 0))
     (shortInstrumentName . "Cbsn.")
     (clefGlyph . "clefs.F")
     (middleCPosition . 6)
     (clefPosition . 2)
     (instrumentCueName . ,(make-bold-markup "cbsn."))
     (midiInstrument . "bassoon"))

\addInstrumentDefinition #"bass clarinet"
  #`((instrumentTransposition . ,(ly:make-pitch -1 0 0))
     (shortInstrumentName . "Cbsn.")
     (clefGlyph . "clefs.F")
     (middleCPosition . 6)
     (clefPosition . 2)
     (instrumentCueName . ,(make-bold-markup "B. Cl."))
     (midiInstrument . "clarinet"))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% PERCUSSION INSTRUMENTS (use parens around short names)

\addInstrumentDefinition #"tom tom"
  #`((shortInstrumentName . "(tom tom)")
     (clefGlyph . "clefs.percussion")
     (middleCPosition . 6)
     (clefPosition . 2)
     (instrumentCueName . ,(make-bold-markup "tom tom"))
     (midiInstrument . "drums"))

\addInstrumentDefinition #"bass drum"
  #`((shortInstrumentName . "(BD)")
     (clefGlyph . "clefs.percussion")
     (middleCPosition . 6)
     (clefPosition . 2)
     (instrumentCueName . ,(make-bold-markup "BD"))
     (midiInstrument . "drums"))

\addInstrumentDefinition #"snare drum"
  #`((shortInstrumentName . "(SD)")
     (clefGlyph . "clefs.percussion")
     (middleCPosition . 6)
     (clefPosition . 2)
     (instrumentCueName . ,(make-bold-markup "SD"))
     (midiInstrument . "drums"))

  \addInstrumentDefinition #"suspended cymbal"
  #`((shortInstrumentName . "(sus. cym.)")
     (clefGlyph . "clefs.percussion")
     (middleCPosition . 6)
     (clefPosition . 2)
     (instrumentCueName . ,(make-bold-markup "sus. cym."))
     (midiInstrument . "drums"))

    \addInstrumentDefinition #"wood blocks"
  #`((shortInstrumentName . "(wdbl.)")
     (clefGlyph . "clefs.percussion")
     (middleCPosition . 6)
     (clefPosition . 2)
     (instrumentCueName . ,(make-bold-markup "wood blocks"))
     (midiInstrument . "drums"))

      \addInstrumentDefinition #"whistle"
  #`((shortInstrumentName . "(whistle)")
     (clefGlyph . "clefs.percussion")
     (middleCPosition . 6)
     (clefPosition . 2)
     (instrumentCueName . ,(make-bold-markup "whistle"))
     (midiInstrument . "drums"))

      \addInstrumentDefinition #"brake drum"
  #`((shortInstrumentName . "(brake d.)")
     (clefGlyph . "clefs.percussion")
     (middleCPosition . 6)
     (clefPosition . 2)
     (instrumentCueName . ,(make-bold-markup "brake drum"))
     (midiInstrument . "drums"))

    \addInstrumentDefinition #"crash cymbals"
  #`((shortInstrumentName . "(cym)")
     (clefGlyph . "clefs.percussion")
     (middleCPosition . 6)
     (clefPosition . 2)
     (instrumentCueName . ,(make-bold-markup "crash cymbals"))
     (midiInstrument . "drums"))

      \addInstrumentDefinition #"cow bell"
  #`((shortInstrumentName . "(c. bell)")
     (clefGlyph . "clefs.percussion")
     (middleCPosition . 6)
     (clefPosition . 2)
     (instrumentCueName . ,(make-bold-markup "cow bell"))
     (midiInstrument . "drums"))