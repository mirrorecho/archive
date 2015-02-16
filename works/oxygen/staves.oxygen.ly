%{
figureStaffOne = \new Staff \with { 
  printPartCombineTexts = ##f 
  instrumentName = "NARRATOR:"
  shortInstrumentName = ":N:"
  midiInstrument = "string ensemble 1"
} {
  \partcombine {\global \relative c' 
  %\narratorOneMeasures
  %\narratorOneMeasures
  <<
  \transpose c c' {<>\pp \narratorOneCondensed} \\ {<>\pp \narratorOneMeasures}
  >>
  } \imageMapMarks 
}
%}

formatDividedStaff = \with {
  %fontSize = #-2
  %\override StaffSymbol #'staff-space = #(magstep -2)
  %\override StaffSymbol #'thickness = #(magstep -2)
}


figureStaffOne = \new Staff \with { 
  printPartCombineTexts = ##f 
  instrumentName = "NARRATOR:"
  shortInstrumentName = ":N:"
  midiInstrument = "string ensemble 1"
} {
   \global  
  \bubbleLine \segFShow \segFUniversal \narratorF 
  \bubbleLine \segOShow \segOUniversal \narratorO 
  \bubbleLine \segVShow \segVUniversal \narratorV 
  \bubbleLine \segAFShow \segAFUniversal \narratorAF 
  \bubbleLine \segAHShow \segAHUniversal \narratorAH 
  \bubbleLine \segASShow \segASUniversal \narratorAS 
  \bubbleLine \segANShow \segANUniversal \narratorAN
  }
  


tracerStaffOne = \new Staff \with { 
  printPartCombineTexts = ##f 
  instrumentName = "tracer:"
  shortInstrumentName = ":T:"
    midiInstrument = "clarinet"
} {
  <>\mf
  \bubbleLine \segFShow \segFUniversal \tracerDuoF 
  \bubbleLine \segOShow \segOUniversal \tracerDuoO 
  \bubbleLine \segVShow \segVUniversal \tracerDuoV 
  \bubbleLine \segAFShow \segAFUniversal \tracerDuoAF 
  \bubbleLine \segAHShow \segAHUniversal \tracerDuoAH 
  \bubbleLine \segASShow \segASUniversal \tracerDuoAS 
  \bubbleLine \segANShow \segANUniversal \tracerDuoAN
}

cloudsStaffOne = \new Staff \with { 
  printPartCombineTexts = ##f 
  instrumentName = "clouds"
  shortInstrumentName = ":C:"
    midiInstrument = "string ensemble 2"
} {
  <>\ppp
  \bubbleLine \segFShow \segFUniversal \cloudsF 
  \bubbleLine \segOShow \segOUniversal \cloudsO 
  \bubbleLine \segVShow \segVUniversal \cloudsV 
  \bubbleLine \segAFShow \segAFUniversal \cloudsAF 
  \bubbleLine \segAHShow \segAHUniversal \cloudsAH 
  \bubbleLine \segASShow \segASUniversal \cloudsAS 
  \bubbleLine \segANShow \segANUniversal \cloudsAN
}

lineStaffOne = \new Staff \with { 
  printPartCombineTexts = ##f 
  instrumentName = "line"
  shortInstrumentName = ":L:"
    midiInstrument = "synthbrass 2"
} {
  <>\mp
  \bubbleLine \segFShow \segFUniversal \lineF 
  \bubbleLine \segOShow \segOUniversal \lineO 
  \bubbleLine \segVShow \segVUniversal \lineV 
  \bubbleLine \segAFShow \segAFUniversal \lineAF 
  \bubbleLine \segAHShow \segAHUniversal \lineAH 
  \bubbleLine \segASShow \segASUniversal \lineAS 
  \bubbleLine \segANShow \segANUniversal \lineAN
}

branchStaffOne = \new Staff \with { 
  printPartCombineTexts = ##f 
  instrumentName = "branch"
  shortInstrumentName = ":B:"
    midiInstrument = "cello"
} {
  \clef bass
  <>\f
  \bubbleLine \segFShow \segFUniversal \branchF 
  \bubbleLine \segOShow \segOUniversal \branchO 
  \bubbleLine \segVShow \segVUniversal \branchV 
  \bubbleLine \segAFShow \segAFUniversal \branchAF 
  \bubbleLine \segAHShow \segAHUniversal \branchAH 
  \bubbleLine \segASShow \segASUniversal \branchAS 
  \bubbleLine \segANShow \segANUniversal \branchAN
}

branchStaffTwo = \new Staff \with { 
  printPartCombineTexts = ##f 
  instrumentName = "branch"
  shortInstrumentName = ":B:"
    midiInstrument = "trombone"
} {
  \clef bass
  <>\f
  \bubbleLine \segFShow \segFUniversal \branchF 
  \bubbleLine \segOShow \segOUniversal \branchO 
  \bubbleLine \segVShow \segVUniversal \branchV 
  \bubbleLine \segAFShow \segAFUniversal \branchAF 
  \bubbleLine \segAHShow \segAHUniversal \branchAH 
  \bubbleLine \segASShow \segASUniversal \branchAS 
  \bubbleLine \segANShow \segANUniversal \branchAN
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% winds staves:

fluteOneStaff = \new Staff \with {
  instrumentName = "Flute 1"
  shortInstrumentName = "Fl. 1"
  midiInstrument = "flute"
} \fluteOne

fluteTwoStaff = \new Staff \with {
  instrumentName = "Flute 2"
  shortInstrumentName = "Fl. 2"
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

percussionOneStaff = \new Staff \with {
  instrumentName = \markup {
    \center-column
      {"Percussion 1" \italic "(vibraphone)"}
    }
  shortInstrumentName = \markup {
    \center-column
      {"Perc. 1" "(vib.)"}
    }
  midiInstrument = "percussion"
} \percussionOne

percussionTwoStaff = \new RhythmicStaff \with {
  midiInstrument = "percussion"
} {
  \override Staff.InstrumentName #'self-alignment-Y = #1.6
  %\override Staff.InstrumentName #'self-alignment-X = #RIGHT
  \percussionTwo
}

percussionTwoStaffGroup = \new StaffGroup \with  {
  instrumentName = "Percussion 2"
  shortInstrumentName = "Perc. 2"
} {
  %\override StaffGroup.InstrumentName #'self-alignment-X = #RIGHT 
  \override StaffGroup.InstrumentName #'self-alignment-Y = #-1
  <<
  \percussionTwoStaff
  >>
}

percussionStaves = \new StaffGroup 
<<
    \percussionOneStaff
    \percussionTwoStaffGroup
>>

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

%%%% violin I:

stringMarksStaff = \new Staff \with {
  \consists "Mark_engraver"
} {
  \mark "test" b1 \mark "test2" | \stopStaff
}



violinIStandOneStaff = \new Staff \with {
  instrumentName = "Violin Stand 1"
  midiInstrument = "violin"
} {
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT
  %\partcombine \violinIOne \violinITwo
  << { \violinIOne } \\ { \violinITwo } >>
}

violinIOneStaff = \new Staff \with {
  instrumentName = "1"
  shortInstrumentName = "1"
  midiInstrument = "violin"
} {
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT
  %\partcombine \violinIOne \violinITwo
  { \violinIOne }
}

violinITwoStaff = \new Staff \with {
  instrumentName = "2"
  shortInstrumentName = "2"
  midiInstrument = "violin"
} {
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT
  %\partcombine \violinIOne \violinITwo
  { \violinITwo }
}

violinIStandTwoStaff = \new Staff \with {
  instrumentName = " Violin Stand 2"
  midiInstrument = "violin"
} {
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT 
  << { \violinIThree } \\ { \violinIFour } >>
}

violinIThreeStaff = \new Staff \with {
  instrumentName = "3"
  shortInstrumentName = "3"
  midiInstrument = "violin"
} {
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT 
  { \violinIThree }
}

violinIFourStaff = \new Staff \with {
  instrumentName = "4"
  shortInstrumentName = "4"
  midiInstrument = "violin"
} {
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT 
  { \violinIFour }
}

violinIStandThreeStaff = \new Staff \with {
  instrumentName = "Violin Stand 3"
  midiInstrument = "violin"
} {
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT 
  << { \violinIFive } \\ { \violinISix } >>
}

violinIFiveStaff = \new Staff \with {
  instrumentName = "5"
  shortInstrumentName = "5"
  midiInstrument = "violin"
} {
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT 
  { \violinIFive }
}

violinISixStaff = \new Staff \with {
  instrumentName = "6"
  shortInstrumentName = "6"
  midiInstrument = "violin"
} {
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT 
  { \violinISix }
}

violinIStandStaves = \new StaffGroup \with {
  \formatDividedStaff
  instrumentName = \markup {
    \center-column
      {"Violin I    " \italic "(soli)    "}
    }
  shortInstrumentName = "Vln. I      "
  systemStartDelimiter = #'SystemStartSquare
} <<
    \violinIOneStaff
    \violinITwoStaff
    \violinIThreeStaff
    \violinIFourStaff
    \violinIFiveStaff
    \violinISixStaff
>>

%%%% violin II:

violinIIStandOneStaff = \new Staff \with {
  instrumentName = "Violin II Stand 1"
  midiInstrument = "violin"
} {
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT
  %\partcombine \violinIOne \violinITwo
  << { \violinIIOne } \\ { \violinIITwo } >>
}

violinIIOneStaff = \new Staff \with {
  instrumentName = "1"
  shortInstrumentName = "1"
  midiInstrument = "violin"
} {
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT
  %\partcombine \violinIOne \violinITwo
  { \violinIIOne }
}

violinIITwoStaff = \new Staff \with {
  instrumentName = "2"
  shortInstrumentName = "2"
  midiInstrument = "violin"
} {
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT
  %\partcombine \violinIOne \violinITwo
  { \violinIITwo }
}

violinIIStandTwoStaff = \new Staff \with {
  instrumentName = "Violin II Stand 2"
  midiInstrument = "violin"
} {
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT 
  << { \violinIIThree } \\ { \violinIIFour } >>
}

violinIIThreeStaff = \new Staff \with {
  instrumentName = "3"
  shortInstrumentName = "3"
  midiInstrument = "violin"
} {
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT 
  { \violinIIThree }
}

violinIIFourStaff = \new Staff \with {
  instrumentName = "4"
  shortInstrumentName = "4"
  midiInstrument = "violin"
} {
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT 
  { \violinIIFour }
}

violinIIStandThreeStaff = \new Staff \with {
  instrumentName = "Violin II Stand 3"
  midiInstrument = "violin"
} {
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT 
  << { \violinIIFive } \\ { \violinIISix } >>
}

violinIIFiveStaff = \new Staff \with {
  instrumentName = "5"
  shortInstrumentName = "5"
  midiInstrument = "violin"
} {
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT 
  { \violinIIFive }
}

violinIISixStaff = \new Staff \with {
  instrumentName = "6"
  shortInstrumentName = "6"
  midiInstrument = "violin"
} {
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT 
  { \violinIISix }
}

violinIIStandStaves = \new StaffGroup \with {
  \formatDividedStaff
  instrumentName = \markup {
    \center-column
      {"Violin II    " \italic "(soli)    "}
    }
  shortInstrumentName = "Vln. II      "
  systemStartDelimiter = #'SystemStartSquare
} <<
    \violinIIOneStaff
    \violinIITwoStaff
    \violinIIThreeStaff
    \violinIIFourStaff
    \violinIIFiveStaff
    \violinIISixStaff
>>

%%%% viola!!!:

violaStandOneStaff = \new Staff \with {
  instrumentName = "Viola Stand 1"
  midiInstrument = "viola"
} {
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT
  << { \violaOne } \\ { \violaTwo } >>
}

violaOneStaff = \new Staff \with {
  instrumentName = "1"
  shortInstrumentName = "1"
  midiInstrument = "viola"
} {
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT
  { \violaOne } 
}

violaTwoStaff = \new Staff \with {
  instrumentName = "2"
  shortInstrumentName = "2"
  midiInstrument = "viola"
} {
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT
  { \violaTwo }
}

violaStandTwoStaff = \new Staff \with {
  instrumentName = "Viola Stand 2"
  midiInstrument = "viola"
} {
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT 
  << { \violaThree } \\ { \violaFour } >>
}

violaThreeStaff = \new Staff \with {
  instrumentName = "3"
  shortInstrumentName = "3"
  midiInstrument = "viola"
} {
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT 
 { \violaThree }
}

violaFourStaff = \new Staff \with {
  instrumentName = "4"
  shortInstrumentName = "4"
  midiInstrument = "viola"
} {
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT 
  { \violaFour }
}


violaStandStaves = \new StaffGroup \with {
  \formatDividedStaff
  instrumentName = \markup {
    \center-column
      {"Viola    " \italic "(soli)    "}
    }
  shortInstrumentName = "Vla.      "
  systemStartDelimiter = #'SystemStartSquare
} <<
    \violaOneStaff
    \violaTwoStaff
    \violaThreeStaff
    \violaFourStaff
>>

%%%% celli:

celloStandOneStaff = \new Staff \with {
  instrumentName = "Cello Stand 1"
  midiInstrument = "cello"
} {
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT
  << { \celloOne } \\ { \celloTwo } >>
}

celloOneStaff = \new Staff \with {
  instrumentName = "1"
  shortInstrumentName = "1"
  midiInstrument = "cello"
} {
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT
  { \celloOne }
}

celloTwoStaff = \new Staff \with {
  instrumentName = "2"
  shortInstrumentName = "2"
  midiInstrument = "cello"
} {
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT
  { \celloTwo }
}

celloStandTwoStaff = \new Staff \with {
  instrumentName = "Cello Stand 2"
  midiInstrument = "cello"
} {
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT 
  << { \celloThree } \\ { \celloFour } >>
}

celloThreeStaff = \new Staff \with {
  instrumentName = "3"
  shortInstrumentName = "3"
  midiInstrument = "cello"
} {
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT 
  { \celloThree }
}

celloFourStaff = \new Staff \with {
  instrumentName = "4"
  shortInstrumentName = "4"
  midiInstrument = "cello"
} {
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT 
  { \celloFour }
}

celloStandStaves = \new StaffGroup \with {
  \formatDividedStaff
  instrumentName = \markup {
    \center-column
      {"Cello    " \italic "(soli)    "}
    }
  shortInstrumentName = "Vc.      "
  systemStartDelimiter = #'SystemStartSquare
} <<
    \celloOneStaff
    \celloTwoStaff
    \celloThreeStaff
    \celloFourStaff
>>

%%%% bass:

bassOneStaff = \new Staff \with {
  instrumentName = "1"
  shortInstrumentName = "1"
  midiInstrument = "bass"
} {
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT
  { \bassOne }
}

bassTwoStaff = \new Staff \with {
  instrumentName = "2"
  shortInstrumentName = "2"
  midiInstrument = "bass"
} {
  \override Staff.InstrumentName #'self-alignment-X = #RIGHT
  { \bassTwo }
}

bassStandStaves = \new StaffGroup \with {
  \formatDividedStaff
  instrumentName = \markup {
    \center-column
      {"Bass    " \italic "(soli)    "}
    }
  shortInstrumentName = "Cb.      "
  systemStartDelimiter = #'SystemStartSquare
} {
  << 
  \bassOneStaff
  \bassTwoStaff
  >>
}

stringStaves = \new StaffGroup 
<<
    %\stringMarksStaff
    \violinIStandStaves
    \violinIIStandStaves
    \violaStandStaves
    \celloStandStaves
    \bassStandStaves
>>