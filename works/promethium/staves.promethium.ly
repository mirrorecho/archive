



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% winds staves:

fluteOneStaff = \new Staff \with {
  instrumentName = "Piccolo"
  shortInstrumentName = "Picc."
  midiInstrument = "flute"
} \fluteOne

fluteTwoStaff = \new Staff \with {
  instrumentName = "Flute"
  shortInstrumentName = "Fl."
  midiInstrument = "flute"
} \fluteTwo

oboeOneStaff = \new Staff \with {
  instrumentName = "Oboe 1"
  shortInstrumentName = "Ob. 1"
  midiInstrument = "oboe"
} \oboeOne

oboeTwoStaff = \new Staff \with {
  instrumentName = "Oboe 2"
  shortInstrumentName = "Ob. 2"
  midiInstrument = "oboe"
} \oboeTwo

clarinetOneStaff = \new Staff \with {
  instrumentName = "Clarinet in Bb 1"
  shortInstrumentName = "Cl. 1"
  midiInstrument = "clarinet"
} \clarinetOne

clarinetTwoStaff = \new Staff \with {
  instrumentName = "Clarinet in Bb 2"
  shortInstrumentName = "Cl. 2"
  midiInstrument = "clarinet"
} \clarinetTwo

bassoonOneStaff = \new Staff \with {
  instrumentName = "Bassoon 1"
  shortInstrumentName = "Bsn. 1"
  midiInstrument = "bassoon"
} \bassoonOne

bassoonTwoStaff = \new Staff \with {
  instrumentName = "Bassoon 2"
  shortInstrumentName = "Bsn. 2"
  midiInstrument = "bassoon"
} \bassoonTwo

windsStaves = \new StaffGroup 
<<
    \fluteOneStaff
    \fluteTwoStaff
    \oboeOneStaff
    \oboeTwoStaff
    \clarinetOneStaff
    \clarinetTwoStaff
    \bassoonOneStaff
    \bassoonTwoStaff
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% brass staves:

hornOneStaff = \new Staff \with {
  instrumentName = "Horn in F 1"
  shortInstrumentName = "Hn. 1"
  midiInstrument = "horn"
} \hornOne

hornTwoStaff = \new Staff \with {
  instrumentName = "Horn in F 2"
  shortInstrumentName = "Hn. 2"
  midiInstrument = "horn"
} \hornTwo

hornThreeStaff = \new Staff \with {
  instrumentName = "Horn in F 3"
  shortInstrumentName = "Hn. 3"
  midiInstrument = "horn"
} \hornThree

hornFourStaff = \new Staff \with {
  instrumentName = "Horn in F 4"
  shortInstrumentName = "Hn. 4"
  midiInstrument = "horn"
} \hornFour

trumpetOneStaff = \new Staff \with {
  instrumentName = "Trumpet in C 1"
  shortInstrumentName = "Tpt. 1"
  midiInstrument = "trumpet"
} \trumpetOne

trumpetTwoStaff = \new Staff \with {
  instrumentName = "Trumpet in C 2"
  shortInstrumentName = "Tpt. 2"
  midiInstrument = "trumpet"
} \trumpetTwo

tromboneOneStaff = \new Staff \with {
  instrumentName = "Trombone 1"
  shortInstrumentName = "Tbn. 1"
  midiInstrument = "trombone"
} \tromboneOne

tromboneTwoStaff = \new Staff \with {
  instrumentName = "Trombone 2"
  shortInstrumentName = "Tbn. 2"
  midiInstrument = "trombone"
} \tromboneTwo

tubaStaff = \new Staff \with {
  instrumentName = "Tuba"
  shortInstrumentName = "Tba."
  midiInstrument = "tuba"
} \tuba

brassStaves = \new StaffGroup 
<<
    \hornOneStaff
    \hornTwoStaff
    \hornThreeStaff
    \hornFourStaff
    \trumpetOneStaff
    \trumpetTwoStaff
    \tromboneOneStaff
    \tromboneTwoStaff
    \tubaStaff
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% timpani, percussion, and harp staves:

timpaniStaff = \new Staff \with {
  instrumentName = "Timpani"
  shortInstrumentName = "Timp."
  midiInstrument = "timpani"
} \timpani


percussionOneStaff = \new RhythmicStaff \with {
  midiInstrument = "percussion"
} {
  \override Staff.InstrumentName #'self-alignment-Y = #1.2
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT
  \percussionOne
}

percussionTwoStaff = \new RhythmicStaff \with {
  midiInstrument = "percussion"
} {
  \override Staff.InstrumentName #'self-alignment-Y = #1.2
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT
  \percussionTwo
}

percussionOneStaffGroup = \new StaffGroup \with  {
  instrumentName = "Percussion 1"
  shortInstrumentName = "Perc. 1"
} {
  \override StaffGroup.InstrumentName #'self-alignment-X = #RIGHT 
  \override StaffGroup.InstrumentName #'self-alignment-Y = #-1
  <<
  \percussionOneStaff
  >>
}

percussionTwoStaffGroup = \new StaffGroup \with  {
  instrumentName = "Percussion 2"
  shortInstrumentName = "Perc. 2"
} {
  \override StaffGroup.InstrumentName #'self-alignment-X = #RIGHT 
  \override StaffGroup.InstrumentName #'self-alignment-Y = #-1
  <<
  \percussionTwoStaff
  >>
}

percussionStaves = \new StaffGroup  {
%\override StaffGroup.SystemStartBracket #'style = #'bar-line 
<<
    \percussionOneStaffGroup
    \percussionTwoStaffGroup
>>
}

harpStaff = \new PianoStaff \with {
  instrumentName = "Harp"
  shortInstrumentName = "Hp."
  midiInstrument = "harp"
} 
<< 
  \new Staff = "harpTop" \harpTop
  \new Staff = "harpBottom" \harpBottom
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% string staves:

violinIStaffDivBelow = \new Staff = violinIStaffDivBelow \with {
    \override TimeSignature #'stencil = ##f
    \override Clef #'transparent = ##t
  } { 
    \stopStaff \globalStart s4*129}

violinIStaff = \new Staff \with {
  instrumentName = ""
  shortInstrumentName = ""
  midiInstrument = ""
} \violinI

violinIStaves = \new StaffGroup = violinIStaves \with {
  instrumentName ="Violin I"
  shortInstrumentName = "Vln.I"
  \override SystemStartBracket #'style = #'bar-line
} <<
  \violinIStaff
  \violinIStaffDivBelow
>>

violinIIStaffDivBelow = \new Staff = violinIIStaffDivBelow \with {
    \override TimeSignature #'stencil = ##f
    \override Clef #'transparent = ##t
  } { 
    \stopStaff \globalStart s4*129}

violinIIStaff = \new Staff \with {
  instrumentName = ""
  shortInstrumentName = ""
  midiInstrument = ""
} \violinII

violinIIStaves = \new StaffGroup = violinIIStaves \with {
  instrumentName ="Violin II"
  shortInstrumentName = "Vln.II"
  \override SystemStartBracket #'style = #'bar-line
} <<
  \violinIIStaff
  \violinIIStaffDivBelow
>>

violaStaff = \new Staff \with {
  instrumentName = ""
  shortInstrumentName = ""
  midiInstrument = ""
} \viola

violaStaffDivBelow = \new Staff = violaStaffDivBelow \with {
    \override TimeSignature #'stencil = ##f
    \override Clef #'transparent = ##t
  } { 
    \stopStaff \globalStart s4*129}

violaStaves = \new StaffGroup = violinIIStaves \with {
  instrumentName ="Viola"
  shortInstrumentName = "Vla."
  \override SystemStartBracket #'style = #'bar-line
} <<
  \violaStaff
  \violaStaffDivBelow
>>

celloStaff = \new Staff = celloStaff \with {
  instrumentName = "Cello"
  shortInstrumentName = "Vc."
  midiInstrument = "cello"
} \cello

celloStaves = \new StaffGroup = celloStaves \with {
  %SystemStartBracket #'style = #'bar-line 
} <<
    \celloStaff
>>

bassStaff = \new Staff \with {
  instrumentName = "Bass"
  shortInstrumentName = "Cb."
  midiInstrument = "bass"
} \bass

stringStaves = \new StaffGroup 
<<
    \violinIStaves
    \violinIIStaves
    \violaStaves
    \celloStaves
    \bassStaff
>>


