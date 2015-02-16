
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

deadCymbalsKeyStaff = \new Staff = deadCymbalsStaff \with {
  instrumentName = "Cymbals Key"
  shortInstrumentName = ""
  midiInstrument = "fx 3"
      \remove "Time_signature_engraver"
    fontSize = #-2
    \override StaffSymbol #'staff-space = #(magstep -2)
    \override StaffSymbol #'thickness = #(magstep -2)

} {
    \clef percussion
  \relative c' {
  \textLengthOn
  \override Staff.BarLine #'transparent = ##t
  \tweak Stem #'transparent ##t f,4^"china"
  \tweak Stem #'transparent ##t a4^"crash"
  \tweak Stem #'transparent ##t c ^"suspended"
  \tweak Stem #'transparent ##t e ^ "bell"
  \tweak Stem #'transparent ##t g ^"splash"
}
  \textLengthOff
}

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
  \deadCymbalsKeyStaff
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

