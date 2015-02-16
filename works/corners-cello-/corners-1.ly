\version "2.18.2"

% -------------------------------------------------------------------------
% include kappa tools:
kappaRoot = "/home/randall/Code/Kappa/"
\include #(string-append kappaRoot "Kappa.ly")

% -------------------------------------------------------------------------
% TESTING LAYOUT FUNCTIONS.... (doesn't work yet)
%\kappaLayoutTest "solo" "small"
% -------------------------------------------------------------------------

% layout hard-coded here:
\paper {
	#(set-paper-size "letter")
	left-margin = 16\mm
	%;system-separator-markup = \slashSeparator
	system-system-spacing #'basic-distance = #9
	system-system-spacing #'padding = #9
}

#(set-global-staff-size 18.8)

% -------------------------------------------------------------------------
%{

\kappaDefineSections #("alone-1" "lights-on" "motor-on" "revving-up" "stacked" "crazy" "alone-2" "wonder")


\kappaDefineSection "alone-1" {
	\tempo "freely" 4 = 40 
	\kappaTimeSpan "25 ''"
	\kappaMeterOff
	s1*3
	\kappaXBar
	\kappaTimeSpan "15 ''"
	s1*3
	\break
	\kappaXBar
	\kappaTimeSpan "15 ''"
	s1*3 s2
	\kappaXBar
	s1*3
	\kappaMeterOn 4/4
	s1 |
	s1 |
}

\kappaDefineSection "lights-on" {
	s1 | s1 |
}
\kappaDefineSection "motor-on" {
	s1 | s1 |
}
\kappaDefineSection "revving-up" {
	s1 | s1 |
}
\kappaDefineSection "stacked" {
	s1 | s1 |
}
\kappaDefineSection "crazy" {
	s1 | s1 |
}
\kappaDefineSection "alone-2" {
	\kappaMeterOff
	s1*3
}
\kappaDefineSection "wonder" {
	s1*3
}

\kappaDefineSectionMusic "alone-1" "cello" {}

\kappaDefineSectionMusic "alone-1" "electro" {}
%}

% -------------------------------------------------------------------------
% something like this for staff functions...?
%{ 
\kappaDefineStaff "cello" "Cello" ""

\kappaAssignBubblesMusicToStaff "cello" "cello"
%}
% -------------------------------------------------------------------------


% -------------------------------------------------------------------------
% "Alone" section
% -------------------------------------------------------------------------
globalAlone = {
	\kappaMusicDefaults
	\tempo  \markup {"Freely (" \note #"4" #1 = 40 "ca)"}  %"freely" 4 = 40 
	\kappaTimeSpan "25 ''"
	\kappaMeterOff
	s1*3
	\kappaXBar
	\kappaTimeSpan "15 ''"
	s1*3
	\break
	\kappaXBar
	\kappaTimeSpan "25 ''"
	s1*3 s2
	\kappaXBar
	\kappaTimeSpan "20 ''"
	s1*3
	\break
	\kappaXBar
	\kappaTimeSpan "25 ''"
	s1*3 s2
	\kappaXBar
	\kappaTimeSpan "15 ''"
	s1*2 s2. \tempo 4 = 80 s4
	\break
}
celloAlone = {
	\clef tenor
	\relative c' { 
		\phrasingSlurDashed
		\kappaXBarRest s1 
		aes2\p_\(^"dotted line = phrasing"^"n.v., sul pont." ees'1\fermata\)  r1\fermata s2 
		aes,4_\( ees'( bes)\)\fermata
			r2 ees8_\(( f) des4( aes)_\)\fermata 
			s2 r1\fermata
		f'8_\(([ ees)] des( bes4) ees2\>_\)\fermata r8\! aes,2\<\fermata s4\! r1\fermata
		aes4_\( ees'( bes)\)\fermata s4
			aes4_\( ees' ees8( f) bes,2\)
			s4 r1
		bes4_\(( des) ees4.\fermata f8[( ees])_\) s8
			f_\(([ ees)] des( bes4) ees( aes,4.)_\) s4 r4
	}	
}
electroAlone= {
	\clef bass
	\relative c, {
		<a cis  a'>1\<\fermata ~ \hideNotes <a cis  a'>2\! \unHideNotes
	}
	\clef tenor
	\relative c' {
		<<{aes1\fermata( ees'2\fermata)} \\ {s2.\< \xNote <des,, des'>4\> s2\!}  >>
		s1 s2  aes''2\fermata( ees' bes) 
		s2. \xNote {des,,4 <aes''' ees'>} 
			s2. \xNote {des,,,4 <aes''' ees'>} 
			s8 bes,4( des ees)\fermata s8 
		s1 s2 aes,1(\fermata ees'2)\fermata
		s1*2 s2. ees8( f) des4( aes)\fermata
		s1*2 s2. aes4\<
	}	
}
% -------------------------------------------------------------------------
% "Lights-on" section
% -------------------------------------------------------------------------
globalLightsOn = {
	\kappaRehearsalMark "A"
	\kappaMeterOn 4/4
	s1*5
	\time 7/8 s4. s2
	\time 2/4 s2
	\time 7/8 s4. s2
	\time 1/4 s4
	\time 4/4 s1*4
	\time 2/4 s2
	\time 7/8 s4. s2 | s4. s2 |

}
celloLightsOn = \relative c' {
	%why is there a bar check failure here???
	| R1 | r2 r4^"normal, with vibrato" ees8(\mp f) | 
	bes,2 r4 ees8( f)\> | des4( aes)\! f(\< aes)\! | ees'2 r4 f8( ees) |
	%7/8 ...
	f8([ ees]) des c4( des) | aes'( ees) | f8([ ees]) des c4( des) |
	%1/4 ...
	aes4 | f'4(\< bes,2) bes4\! | f'\mf f8( g) aes4 des, |  r4 aes'8( g) f4 bes, | f4( c') g'2 |
	r4 f8(\< g) | aes8([ g]) f ees4( bes')\! | c8([\f bes]) aes g4( bes) |
}
electroLightsOn = \relative c' {
	%BUG: accidentals carry over from previous measure here... therefore have to be explicitly shown...
	| ees!4 ees!8( f) aes!4(\!\mf g) | 
	ees2\> r2\! | r4 aes, r aes | aes r aes r | r2 aes4 r | 
	aes4. aes4 r4 | R2 | aes4. aes4 r | r | r2 aes4 r | aes4 r r2 | aes4 r r2 | aes4 r r2 | aes4 r | aes4. aes4 r | aes4. r2\< |
}
% -------------------------------------------------------------------------
% "Motor-on" section
% -------------------------------------------------------------------------
globalMotorOn = {
	\kappaRehearsalMark "B"
	\time 4/4
	s1*3 |
	\time 7/8 s4. s2 |
	s1*4 | 
	\time 7/8 s4. s2 | \time 3/4 s2. |
	\time 4/4 s1*3 |
	\time 3/4 s2.*2 |
	\time 7/8 s4. s2 |
}
celloMotorOn = \relative c {
	\clef bass
	f2. r4 | g8( aes) f4( bes,2) | c4.\> r8 g'2\pp\< | aes8([ g)\mf f]-- c4-- g'8 g, |
}
electroMotorOn = {
	\clef bass	
	\relative c {
		f4\!\mf
	}
}
% -------------------------------------------------------------------------
% "Revving up" section
% -------------------------------------------------------------------------
globalRevvingUp = {

}
celloRevvingUp = {

}
electroRevvingUp = {
	
}
% -------------------------------------------------------------------------
% "Stacked" section
% -------------------------------------------------------------------------
globalStacked = {

}
celloStacked = {

}
electroStacked = {
	
}
% -------------------------------------------------------------------------
% "Crazy" section
% -------------------------------------------------------------------------
globalCrazy = {

}
celloCrazy = {

}
electroCrazy = {
	
}
% -------------------------------------------------------------------------
% "Alone Two" section
% -------------------------------------------------------------------------
globalAloneTwo = {

}
celloAloneTwo = {

}
electroAloneTwo = {
	
}
% -------------------------------------------------------------------------
% "Wonder" section
% -------------------------------------------------------------------------
globalWonder = {

}
celloWonder = {

}
electroWonder = {
	
}
% -------------------------------------------------------------------------
% ALL SETIONS:
% -------------------------------------------------------------------------
globalMusic = {
	\globalAlone
	\globalLightsOn
	\globalMotorOn
	\globalRevvingUp
	\globalStacked
	\globalCrazy
	\globalAloneTwo
	\globalWonder
}
celloMusic = {
	\celloAlone
	\celloLightsOn
	\celloMotorOn
	\celloRevvingUp
	\celloStacked
	\celloCrazy
	\celloAloneTwo
	\celloWonder
}
electroCueMusic = {
	\electroAlone
	\electroLightsOn
	\electroMotorOn
	\electroRevvingUp
	\electroStacked
	\electroCrazy
	\electroAloneTwo
	\electroWonder
}

% -------------------------------------------------------------------------
% LILYPOND BOOK / SCORE OUTPUT:
% -------------------------------------------------------------------------

\book {
  \bookOutputName "Corners of a Complex World"
    \header { 
      title = "Corners of a Complex World"
      subtitle = "for Cello and Electronics"
      composer = "Randall West"
      tagline = "Copyright 2014 Randall West."
    }
  \score {
  	<<
  	%\new Staff {\globalMusic}
    \new Staff \with {
  			instrumentName = "Cello"
  			%shortInstrumentName = "Bsn. 1"
    	} 
    	%\kappaSectionsMusic "cello"
    	<< \new Voice { \celloMusic } \globalMusic >>
    \new Staff	\with { 
  			instrumentName = "Electronics Cue"
			fontSize = #-3
			\override StaffSymbol #'staff-space = #(magstep -3)
			\override StaffSymbol #'thickness = #(magstep -3)
        }
        %\kappaSectionsMusic "electro"
     	<< \new Voice { \electroCueMusic } \globalMusic >>
    >>
  }
 }