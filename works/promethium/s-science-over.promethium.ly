
%{
scienceOverDriveUniversal = { \bar "||" \mark "G"  s1*8}
scienceOverStartRest = {R1 | R1 | R1 | R1 | R1 | R1 |} 
%}

%for now, make this nothing!
scienceOverDriveUniversal = { 
  \timeSpan "about 5 to 6''"
	\bar "dashed"
	\cadenzaOn
	s1*2 
	\cadenzaOff
	s1
	\timeSpan "about 3 to 4''"
	\bar "dashed"
	s1
	\bar "||" 
	\mark \markup {\fontsize #3.3 \bold \circle {"G"}}
	\time 4/4
	s1*2 % this is the clime up
	}

eagleCrazy = #(define-music-function (parser location note) 
  (ly:music?)
  #{
	r4
	\textLengthOn
    <>\p\<^\markup {\column { 
      \line {"make a nasty sound that's similar"}
      \line {"to the sound you made in m.35 or 36."}
      }}
    \once \override Stem #'transparent = ##t
    \noteHeadCrazy $note

    \once \override Stem #'transparent = ##t
    \noteHeadCrazyLong $note
    \textLengthOff
    <>\!\ff
    \once \override Stem #'transparent = ##t
    \noteHeadCrazy $note
   #})

scienceOverDriveFluteOne = {  
	  \hideNotes r8 \unHideNotes
      \boxNotes {s8 \xNotesOn b16--->[\mf b16--->] \xNotesOff r8 } #4 #4 ""
      <>^"repeat on any pitch"
      \startArrowStaff
      s2 s1 s2 \arrowQuarterNote s4
      \stopArrowStaff
	\eagleCrazy a4  \climeUpFluteOne 
}
scienceOverDriveFluteTwo = {  
	  \hideNotes r8 \unHideNotes
      \boxNotes {s8 \xNotesOn b16--->[\mf b16--->] \xNotesOff r8 } #4 #4 ""
      <>^"repeat on any pitch"
      \startArrowStaff
      s2 s1 s2 \arrowQuarterNote s4
      \stopArrowStaff
	\eagleCrazy a4  \climeUpFluteTwo 
}
scienceOverDriveOboeOne = {
	  \hideNotes r8 \unHideNotes
      \boxNotes {s8 \xNotesOn b16--->[\mf b16--->] \xNotesOff r8 } #4 #4 ""
      <>^"repeat on any pitch"
      \startArrowStaff
      s2 s1 s2 \arrowQuarterNote s4
      \stopArrowStaff
	\eagleCrazy a4
	\climeUpRest
}
scienceOverDriveOboeTwo = {
	  \hideNotes r8 \unHideNotes
      \boxNotes {s8 \xNotesOn b16--->[\mf b16--->] \xNotesOff r8 } #4 #4 ""
      <>^"repeat on any pitch"
      \startArrowStaff
      s2 s1 s2 \arrowQuarterNote s4
      \stopArrowStaff
	\eagleCrazy a4
	\climeUpRest
}
scienceOverDriveClarinetOne = {
  \hideNotes r1 \unHideNotes
	s2. \arrowQuarterNote s1
	\stopArrowStaff
	\eagleCrazy a4
	\climeUpRest
}
scienceOverDriveClarinetTwo = {
	\hideNotes r1 \unHideNotes s2. \arrowQuarterNote s1
	\stopArrowStaff
	\eagleCrazy a4
	\climeUpRest
}
scienceOverDriveBassoonOne = {
	\hideNotes r1 \unHideNotes s2. \arrowQuarterNoteBass s1
	\stopArrowStaff
	\eagleCrazy a4
	\climeUpRest
}
scienceOverDriveBassoonTwo = {
	\hideNotes r1 \unHideNotes s2. \arrowQuarterNoteBass s1
	\stopArrowStaff
	\eagleCrazy a4
	\climeUpRest
}
scienceOverDriveHornOne = {
	  \hideNotes r8 \unHideNotes
      \boxNotes {s8 \xNotesOn b16--->[\mf b16--->] \xNotesOff r8 } #4 #4 ""
      <>^"repeat on any pitch"
      \startArrowStaff
      s2 s1 s2 \arrowQuarterNote s4
      \stopArrowStaff
	\eagleCrazy a4
	\climeUpRest
}
scienceOverDriveHornTwo = {
	  \hideNotes r8 \unHideNotes
      \boxNotes {s8 \xNotesOn b16--->[\mf b16--->] \xNotesOff r8 } #4 #4 ""
      <>^"repeat on any pitch"
      \startArrowStaff
      s2 s1 s2 \arrowQuarterNote s4
      \stopArrowStaff
	\eagleCrazy a4
	\climeUpRest
}
scienceOverDriveHornThree = {
	  \hideNotes r8 \unHideNotes
      \boxNotes {s8 \xNotesOn b16--->[\mf b16--->] \xNotesOff r8 } #4 #4 ""
      <>^"repeat on any pitch"
      \startArrowStaff
      s2 s1 s2 \arrowQuarterNote s4
      \stopArrowStaff
	\eagleCrazy a4
	\climeUpRest
}
scienceOverDriveHornFour = {
	  \hideNotes r8 \unHideNotes
      \boxNotes {s8 \xNotesOn b16--->[\mf b16--->] \xNotesOff r8 } #4 #4 ""
      <>^"repeat on any pitch"
      \startArrowStaff
      s2 s1 s2 \arrowQuarterNote s4
      \stopArrowStaff
	\eagleCrazy a4
	\climeUpRest
}
scienceOverDriveTrumpetOne = {  
	  \hideNotes r8 \unHideNotes
      \boxNotes {s8 \xNotesOn b16--->[\mf b16--->] \xNotesOff r8 } #4 #4 ""
      <>^"repeat on any pitch"
      \startArrowStaff
      s2 s1 s2 \arrowQuarterNote s4
      \stopArrowStaff
	\eagleCrazy a4  \climeUpTrumpetOne 
}
scienceOverDriveTrumpetTwo = {  
	  \hideNotes r8 \unHideNotes
      \boxNotes {s8 \xNotesOn b16--->[\mf b16--->] \xNotesOff r8 } #4 #4 ""
      <>^"repeat on any pitch"
      \startArrowStaff
      s2 s1 s2 \arrowQuarterNote s4
      \stopArrowStaff
	\eagleCrazy a4  \climeUpTrumpetTwo 
}
scienceOverDriveTromboneOne = {
	  \hideNotes r8 \unHideNotes
      \boxNotes {s8 \xNotesOn b16--->[\mf b16--->] \xNotesOff r8 } #4 #4 ""
      <>^"repeat on any pitch"
      \startArrowStaff
      s2 s1 s2 \arrowQuarterNoteBass s4
      \stopArrowStaff
	\eagleCrazy a4
	\climeUpRest
}
scienceOverDriveTromboneTwo = {
	  \hideNotes r8 \unHideNotes
      \boxNotes {s8 \xNotesOn b16--->[\mf b16--->] \xNotesOff r8 } #4 #4 ""
      <>^"repeat on any pitch"
      \startArrowStaff
      s2 s1 s2 \arrowQuarterNoteBass s4
      \stopArrowStaff
	\eagleCrazy a4
	\climeUpRest
}
scienceOverDriveTuba = {
	  \hideNotes r8 \unHideNotes
      \boxNotes {s8 \xNotesOn b16--->[\mf b16--->] \xNotesOff r8 } #4 #4 ""
      <>^"repeat on any pitch"
      \startArrowStaff
      s2 s1 s2 \arrowQuarterNoteBass s4
      \stopArrowStaff
	\eagleCrazy a4
	\climeUpRest
}
scienceOverDriveTimpani = {
	<<{d1:32)} {s1\< s1 s2. s4\!\ff}  >>
	<>^"*dampen"
	R1
	\climeUpRest
}
scienceOverDrivePercussionOne = {
	R1*3
	\eagleCrazy a4
	\climeUpRest
}
scienceOverDrivePercussionTwo = {
	R1*3
	\eagleCrazy a4
	\climeUpRest
}
scienceOverDriveHarpTop = {
	  \hideNotes r8 \unHideNotes
      \boxNotes {s8 \xNotesOn b16--->[\mf b16--->] \xNotesOff r8 } #4 #4 ""
      <>^"repeat on any pitch"
      \startArrowStaff
      s2 s1 s2 \arrowQuarterNote s4
      \stopArrowStaff
	\eagleCrazy a4
	\climeUpRest
}
scienceOverDriveHarpBottom = {
	R1*3
	\eagleCrazy a4
	\climeUpRest
}
scienceOverDriveViolinI = {  
	  \hideNotes r8 \unHideNotes
      \boxNotes {s8 \xNotesOn b16--->[\f b16--->] \xNotesOff r8 } #4 #4 ""
      <>^"repeat on any pitch"
      \startArrowStaff
      s2 s1 s2 \arrowQuarterNote s4
      \stopArrowStaff 
	\eagleCrazy a4 \climeUpHighGliss
}
scienceOverDriveViolinII = {  
	  \hideNotes r8 \unHideNotes
      \boxNotes {s8 \xNotesOn b'16--->[\f b16--->] \xNotesOff r8 } #4 #4 ""
      <>^"repeat on any pitch"
      \startArrowStaff
      s2 s1 s2 \arrowQuarterNote s4
      \stopArrowStaff
	\eagleCrazy a4 \climeUpHighGliss
}
scienceOverDriveViola = {  
	R1*3
	\eagleCrazy a4 \climeUpMidGliss
}
scienceOverDriveCello = {  
	  \hideNotes r8 \unHideNotes
      \boxNotes {s8 \xNotesOn b'16--->[\f b16--->] \xNotesOff r8 } #4 #4 ""
      <>^"repeat on any pitch"
      \startArrowStaff
      s2 s1 s2 \arrowQuarterNoteBass s4
      \stopArrowStaff
	\eagleCrazy a4 \climeUpLowGliss
}
scienceOverDriveBass = {
	  \hideNotes r8 \unHideNotes
      \boxNotes {s8 \xNotesOn b16--->[\mf b16--->] \xNotesOff r8 } #4 #4 ""
      <>^"repeat on any pitch"
      \startArrowStaff
      s2 s1 s2 \arrowQuarterNoteBass s4
      \stopArrowStaff
	\eagleCrazy a4
	\climeUpRest
}