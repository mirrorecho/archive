
deadFluteStaff = \new Staff = deadFluteStaff \with {
  instrumentName = "Flute"
  shortInstrumentName = "Fl."
  midiInstrument = "flute"
} \flute


deadClarinetStaff = \new Staff = deadClarinetStaff \with {
  instrumentName = "Clarinet"
  shortInstrumentName = "Cl."
  midiInstrument = "clarinet"
} \clarinet


deadCymbalsStaff = \new Staff = deadCymbalsStaff \with {
  instrumentName = "Cymbals"
  shortInstrumentName = "Cym."
  midiInstrument = "fx 3"
} \cymbals


deadMarimbaStaff = \new PianoStaff \with {
  instrumentName = "Marimba"
  shortInstrumentName = "Mar."
  midiInstrument = "marimba"
}  <<
    \new Staff = "marimbaUpper" \marimbaUpper
    \new Staff = "marimbaLower" \marimbaLower
  >> 
   


deadPercussionStaves = \new StaffGroup = deadPercussionStaves
<<
   \deadCymbalsStaff
   \deadMarimbaStaff
>>

deadPianoStaff = \new PianoStaff = deadPianoStaff \with {
  instrumentName = "Piano"
  shortInstrumentName = "Pno."
  midiInstrument = "acoustic grand"
} <<
    \new Staff = "pianoUpper" \pianoUpper
    \new Staff = "pianoLower" \pianoLower
  >> 

deadCompassStaff = \new PianoStaff = deadCompassStaff \with {
  instrumentName = "Compass"
  shortInstrumentName = "C."
} <<
    \new Staff = "compassUpper" \compassUpper
    \new Staff = "compassLower" \compassLower
  >> 

