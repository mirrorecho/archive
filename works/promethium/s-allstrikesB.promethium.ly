allStrikeBUniversal = \new Voice {
  \bar "||"
  \time 4/4
  \mark \markup {\fontsize #3.3 \bold \circle {"B"}}
	s1*11}

allStrikesB = #(define-music-function (parser location line) 
  (string?) 
  #{
    
    %; BAR #1
    %; NOTE: would be nice if to figute out how to make the beaming automatic:
    <>-.\p\<
    $(ranDataNote allStrikes1 line 7 3) %; 
    <>-.
    $(ranDataNote allStrikes1 line 6 3) %; 
    <>-.
    $(ranDataNote allStrikes1 line 5 3) %; 
    <>-.
    $(ranDataNote allStrikes1 line 4 3) %; 
    <>-.
    $(ranDataNote allStrikes1 line 5 3) %; 
    <>-.
    $(ranDataNote allStrikes1 line 2 3) %; 
    <>-.
    $(ranDataNote allStrikes1 line 1 3) %; 
  <>~--\ff\!
    $(ranDataNote allStrikes1 line 1 3) %; 
    |
    $(ranDataNote allStrikes1 line 1 0) %; 
  #}
)
allStrikesBLate = #(define-music-function (parser location line) 
  (string?) 
  #{
    
    %; BAR #1
    %; NOTE: would be nice if to figute out how to make the beaming automatic:
    r4
    <>-.\p\<
    $(ranDataNote allStrikes1 line 5 3) %; 
    <>-.
    $(ranDataNote allStrikes1 line 4 3) %; 
    <>-.
    $(ranDataNote allStrikes1 line 5 3) %; 
    <>-.
    $(ranDataNote allStrikes1 line 2 3) %; 
    <>-.
    $(ranDataNote allStrikes1 line 1 3) %; 
  <>~--\ff\!
    $(ranDataNote allStrikes1 line 1 3) %; 
    |
    $(ranDataNote allStrikes1 line 1 0) %; 
  #}
)
allStrikesBNoArt = #(define-music-function (parser location line) 
  (string?) 
  #{
    
    %; BAR #1
    %; NOTE: would be nice if to figute out how to make the beaming automatic:
    r4
    <>\p\<
    $(ranDataNote allStrikes1 line 5 3) %; 
    $(ranDataNote allStrikes1 line 4 3) %; 
    $(ranDataNote allStrikes1 line 5 3) %; 
    $(ranDataNote allStrikes1 line 2 3) %; 
    $(ranDataNote allStrikes1 line 1 3) %; 
    <>\ff\!
    $(ranDataNote allStrikes1 line 1 3) %; 
    R1
  #}
)


fireStringsMeasure = {
  \slurDown
  \slurDashed
  \once \override Stem #'transparent = ##t
  g4(
  \makeClusters {
  g4 g4... g64
  }
  \hideNotes
  g64)
  \unHideNotes
  \slurNeutral
  \slurSolid
  |
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


allStrikeNotesB = {s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1}
%--------------------------------------------------------------------------------
% B FLUTE 1
%--------------------------------------------------------------------------------
allStrikeBFluteOne = {
  R1*6
	|
	r2 r4 <>(->\mf
  \transpose c c' $(ranDataNote risingLines "keeprising" 7 3)
  \transpose c c' $(ranDataNote risingLines "keeprising" 5 3)
  | %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  $(ranDataNote risingLines "keeprising" 3 3)
 \transpose c c' $(ranDataNote risingLines "keeprising" 4 3)
  <>)
  $(ranDataNote risingLines "keeprising" 8 3)
  <>-.
  $(ranDataNote risingLines "keeprising" 6 3)
  <>--->
  $(ranDataNote risingLines "keeprising" 7 3)
  r8
  r4
  |
  R1

	\allStrikesB "pic.1" 
}
%--------------------------------------------------------------------------------
% B FLUTE 2
%--------------------------------------------------------------------------------
allStrikeBFluteTwo = {R1*6
	|
	r2 r4 <>(->\mf
  \transpose c c' $(ranDataNote risingLines "keeprising" 4 3)
  $(ranDataNote risingLines "keeprising" 2 3)
  | %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  $(ranDataNote risingLines "keeprising" 9 3)
  $(ranDataNote risingLines "keeprising" 7 3)
  <>)
  $(ranDataNote risingLines "keeprising" 5 3)
  <>-.
  \transpose bis, c $(ranDataNote risingLines "keeprising" 12 3)
  <>--->
  $(ranDataNote risingLines "keeprising" 4 3)
  r8
  r4
  |
  R1
	\allStrikesB "fl.2" 
}
%--------------------------------------------------------------------------------
% B OBOE 1
%--------------------------------------------------------------------------------
allStrikeBOboeOne = {R1*6
		%{\relative c'' {
		\repeat tremolo 16 {cis32( d} |
		\repeat tremolo 16 {cis32 d} |
		\repeat tremolo 16 {cis32 d} |
		\repeat tremolo 16 {cis32 d)} |
		}
		s1 s1 %}
	|
	r2 r4 
  <>(->\mf
  \transpose c c' $(ranDataNote risingLines "keeprising" 4 3)
  $(ranDataNote risingLines "keeprising" 2 3)
  | %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  $(ranDataNote risingLines "keeprising" 9 3)
  $(ranDataNote risingLines "keeprising" 7 3)
  <>)
  $(ranDataNote risingLines "keeprising" 5 3)
  <>-.
  \transpose bis, c $(ranDataNote risingLines "keeprising" 12 3)
  <>--->
  $(ranDataNote risingLines "keeprising" 4 3)
  r8
  r4
  | %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  R1
  |
  \allStrikesB "ob.1" 
	}
%--------------------------------------------------------------------------------
% B OBOE 2
%--------------------------------------------------------------------------------
allStrikeBOboeTwo = {R1*6
		%MAYBE BRING THESE TREMOLOS BACK?
		%{\relative c'' {
		\repeat tremolo 16 {a32( b} |
		\repeat tremolo 16 {a32 b} |
		\repeat tremolo 16 {a32 b} |
		\repeat tremolo 16 {a32 b)} |
		}
		s1 s1%}
  |
  r4 r8
  <>(->\mf
  $(ranDataNote risingLines "keeprising" 1 3)
  $(ranDataNote risingLines "keeprising" 2 3)
  $(ranDataNote risingLines "keeprising" 3 3)
  <>)->
  \transpose c c' $(ranDataNote risingLines "keeprising" 4 3)
  r8
  | %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  r2
  <>---> $(ranDataNote risingLines "keeprising" 7 3)
  <>-. $(ranDataNote risingLines "keeprising" 8 3)
  <>-. \transpose bis, c $(ranDataNote risingLines "keeprising" 15 3)
  <>-. $(ranDataNote risingLines "keeprising" 7 3) 
  | %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  R1
  |
  \allStrikesB "ob.2" 
	}
%--------------------------------------------------------------------------------
% B CLARINET 1
%--------------------------------------------------------------------------------
allStrikeBClarinetOne = {R1*6
	<>(\mp\<
  $(ranDataNote risingLines "keeprising" 1 3)
  $(ranDataNote risingLines "keeprising" 2 3)
  $(ranDataNote risingLines "keeprising" 3 3)
  <>)->\mf\!
  \transpose c c' $(ranDataNote risingLines "keeprising" 4 3)
  r4
  <>(-> \transpose c c' $(ranDataNote risingLines "keeprising" 7 3)
  \transpose c c' $(ranDataNote risingLines "keeprising" 5 3)
  | %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  $(ranDataNote risingLines "keeprising" 3 3)
 \transpose c c' $(ranDataNote risingLines "keeprising" 4 3)
  <>) $(ranDataNote risingLines "keeprising" 8 3)
  <>-. $(ranDataNote risingLines "keeprising" 6 3)
  <>---> $(ranDataNote risingLines "keeprising" 7 3)
  r8
  r4
  | %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  R1
  |
  \allStrikesB "cl.1" 
}
%--------------------------------------------------------------------------------
% B CLARINET 2
%--------------------------------------------------------------------------------
allStrikeBClarinetTwo = {
  R1*6
  r4 r8
  <>(->\mf
  \transpose c c' $(ranDataNote risingLines "keeprising" 4 3)
  \transpose c c' $(ranDataNote risingLines "keeprising" 5 3)
  \transpose c c' $(ranDataNote risingLines "keeprising" 6 3)
  <>)->
  \transpose c c' $(ranDataNote risingLines "keeprising" 7 3)
  r8
  | %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  r2
  <>---> $(ranDataNote risingLines "keeprising" 4 3)
  <>-. $(ranDataNote risingLines "keeprising" 5 3)
  <>-. \transpose bis, c $(ranDataNote risingLines "keeprising" 12 3)
  <>-. \transpose c c, $(ranDataNote risingLines "keeprising" 10 3)
  |
  R1
  |
  \allStrikesB "cl.2" 
}
% ADD TRUMPETS 4th HERE!
%--------------------------------------------------------------------------------
% B BSN 1
%--------------------------------------------------------------------------------
allStrikeBBassoonOne = {
  R1*7
  |
  r2
  <>--->\mf\< $(ranDataNote risingLines "keeprising" 13 3)
  <>-. \transpose c c, $(ranDataNote risingLines "keeprising" 11 3)
  <>-. \transpose c bis,, $(ranDataNote risingLines "keeprising" 9 3)
  <>-. \transpose c c, $(ranDataNote risingLines "keeprising" 16 3)
  | %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \clef bass
  <>-. \transpose c c, $(ranDataNote risingLines "keeprising" 14 3)
  <>-. \transpose c c,, $(ranDataNote risingLines "keeprising" 18 3)
  <>-. \transpose c c,, $(ranDataNote risingLines "keeprising" 16 3)
  <>-. \transpose c c,, $(ranDataNote risingLines "keeprising" 14 3)

  <>-. \transpose c c,, $(ranDataNote risingLines "keeprising" 21 3)
  <>-. \transpose c c,, $(ranDataNote risingLines "keeprising" 22 3)
  <>-.->\f \transpose c c,, $(ranDataNote risingLines "keeprising" 14 3)
  <>-. \transpose c c,, $(ranDataNote risingLines "keeprising" 21 3)
  |
  \allStrikesBLate "bsn.1" 
}
%--------------------------------------------------------------------------------
% B BSN 2
%--------------------------------------------------------------------------------
allStrikeBBassoonTwo = {
  R1*8
  | %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  <>-.\mf\< \transpose c c, $(ranDataNote risingLines "keeprising" 8 3)
  <>-. \transpose c c, $(ranDataNote risingLines "keeprising" 9 3)
  <>-. \transpose bis c $(ranDataNote risingLines "keeprising" 19 3)
  <>-. \transpose c c, $(ranDataNote risingLines "keeprising" 20 3)

  <>-. \transpose bis c, $(ranDataNote risingLines "keeprising" 15 3)
  <>-. \transpose bis c, $(ranDataNote risingLines "keeprising" 13 3)
  <>-.->\f \transpose c c,, $(ranDataNote risingLines "keeprising" 20 3)
  <>-. \transpose bis c, $(ranDataNote risingLines "keeprising" 15 3)
  |
  \allStrikesBLate "bsn.2" 
}
%--------------------------------------------------------------------------------
% B HNS
%--------------------------------------------------------------------------------
allStrikeBHornOne = {
	R1*8
	<< fis1 {s2..\p\< s8\f\!}>> |
	\allStrikesB "hn.1" 
}
allStrikeBHornTwo = {
	R1*8
  << cis1 {s2..\p\< s8\f\!}>> |
	\allStrikesB "hn.2" 
}
allStrikeBHornThree = {
	R1*7
	r2 aes2~\p\< |
	aes2. r4\f\! |
	\allStrikesB "hn.3" 
}
allStrikeBHornFour = {
	R1*7
	r2 ees,2~\p\< |
	ees2. r4\f\! |
	\allStrikesB "hn.4" 
}
%--------------------------------------------------------------------------------
% B TPTS
%--------------------------------------------------------------------------------
allStrikeBTrumpetOne = {R1*6
	\relative c'{
	r4 r8 c'8~\p\< c4 g'8->(\mf\!  % the g = \transpose c c' $(ranDataNote risingLines "keeprising" 1 3)
  \transpose c bis $(ranDataNote risingLines "keeprising" 8 3)
  | %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \transpose c bis $(ranDataNote risingLines "keeprising" 6 3)
  \transpose c bis, $(ranDataNote risingLines "keeprising" 10 3)
  <>)
  $(ranDataNote risingLines "keeprising" 11 3)
  <>-.
  \transpose c bis, $(ranDataNote risingLines "keeprising" 9 3)
  <>--->
  \transpose c bis, $(ranDataNote risingLines "keeprising" 10 3)
  r8
  r4
	R1
	}
	\allStrikesB "tpt.1" 
	% save SOLO FOR LATER....
	%\boxNotes \relative c'' {\times 2/3 {cis2(\mf d1~} | d4) r8 a8~( a2 | b1 | b'1)} #4 #4 "freely"
	%s1 s1 s1 s1
}
allStrikeBTrumpetTwo = {R1*6
	\relative c'{
	r4 r8 g'8~\p\< g4 c8->\mf\! r8
	r2
  <>---> \transpose c bis, $(ranDataNote risingLines "keeprising" 10 3)
  <>-. $(ranDataNote risingLines "keeprising" 14 3)
  <>-. \transpose c bis, $(ranDataNote risingLines "keeprising" 6 3)
  <>-. $(ranDataNote risingLines "keeprising" 13 3)
	R1
	}
	\allStrikesB "tpt.2" 
}
allStrikeBTromboneOne = {R1*8
  <>-.\mf\< \transpose c c, $(ranDataNote risingLines "keeprising" 11 3)
  <>-. \transpose c c, $(ranDataNote risingLines "keeprising" 15 3)
  <>-. \transpose c c, $(ranDataNote risingLines "keeprising" 13 3)
  <>-. \transpose c c,, $(ranDataNote risingLines "keeprising" 11 3)

  <>-. \transpose c c,, $(ranDataNote risingLines "keeprising" 18 3)
  <>-. \transpose c c,, $(ranDataNote risingLines "keeprising" 16 3)
  <>-.->\f \transpose c c,, $(ranDataNote risingLines "keeprising" 17 3)
  <>-. \transpose c c,, $(ranDataNote risingLines "keeprising" 18 3)
	\allStrikesBLate "tbn.1" 
}
allStrikeBTromboneTwo = {R1*8
	<>-.\mf\< \transpose c c, $(ranDataNote risingLines "keeprising" 17 3)
  <>-. \transpose bis c $(ranDataNote risingLines "keeprising" 12 3)
  <>-. \transpose c c,, $(ranDataNote risingLines "keeprising" 10 3)
  <>-. \transpose c c,, $(ranDataNote risingLines "keeprising" 17 3)
  <>-. \transpose bis c $(ranDataNote risingLines "keeprising" 12 2)
  <>-.->\f \transpose c c,, $(ranDataNote risingLines "keeprising" 23 2)
	\allStrikesBLate "tbn.2" 
}
allStrikeBTuba = {R1*8
	r2
  <>-.\mf\< \transpose bis c $(ranDataNote risingLines "keeprising" 12 3)
  <>-. \transpose bis c, $(ranDataNote risingLines "keeprising" 19 3)
  <>-.->\f \transpose c c,,, $(ranDataNote risingLines "keeprising" 23 3)
  <>-. \transpose c c,,, $(ranDataNote risingLines "keeprising" 24 3)
	\allStrikesBLate "tba" 
}
allStrikeBTimpani = {R1*9
	\allStrikesBNoArt  "timp" 
}
allStrikeBPercussionOne = {
  R1*8
  <<{b1:32^"sus.cym" | R1} {s2..\pp\< s8\f\! | s8^"*dampen" s2..} >> | 
  \ranInstrumentSwitch "bass drum" "to Bass Drum"
  R1
}
allStrikeBPercussionTwo = {
  R1*9
  \grace b16-> b8->\f^"brake d." r8 r4 \ranInstrumentSwitch "tom tom" "to tom tom" r2  |
  R1
}
allStrikeBHarpTop = {R1*11
	%\allStrikesBNoArt  "hp.1" %doesn't work with harp pedals
}
allStrikeBHarpBottom = {R1*11
  %\allStrikesBNoArt  "hp.2" %doesn't work with harp pedals
}
allStrikeBViolinI = \relative c' {
  \fireStringsMeasure
  \fireStringsMeasure
  <>\mf
    $(ranDataNote risingLines "cloud.1" 1 2)
    $(ranDataNote risingLines "cloud.1" 2 2)
    $(ranDataNote risingLines "cloud.1" 3 2)
    <>-.->\sfz
    $(ranDataNote risingLines "cloud.1" 4 4)
    <>--
    $(ranDataDottedNote risingLines "cloud.1" 1 3 1)
    
    <<
    {
	    <>\p^"vln.I div 1"
	    $(ranDataNote risingLines "cloud.2" 2 2)
	    $(ranDataNote risingLines "cloud.2" 3 3)
	    $(ranDataNote risingLines "cloud.2" 4 3)
	    $(ranDataNote risingLines "cloud.2" 1 3)
	    $(ranDataNote risingLines "cloud.2" 2 3)
	    $(ranDataNote risingLines "cloud.2" 3 3)
	    $(ranDataNote risingLines "cloud.2" 4 3)
	    |
        $(ranDataNote risingLines "cloud.2" 1 3)
	    $(ranDataNote risingLines "cloud.2" 2 3)
	    $(ranDataNote risingLines "cloud.2" 3 3)
	    $(ranDataNote risingLines "cloud.2" 4 3)
        $(ranDataNote risingLines "cloud.2" 1 3)
	    $(ranDataNote risingLines "cloud.2" 2 3)
	    $(ranDataNote risingLines "cloud.2" 3 3)
	    $(ranDataNote risingLines "cloud.2" 4 3)
	    |
      <>\<
        $(ranDataNote risingLines "cloud.2" 1 3)
	    $(ranDataNote risingLines "cloud.2" 2 3)
	    $(ranDataNote risingLines "cloud.2" 3 3)
	    $(ranDataNote risingLines "cloud.2" 4 3)
        $(ranDataNote risingLines "cloud.2" 1 3)
	    $(ranDataNote risingLines "cloud.2" 2 3)
	    $(ranDataNote risingLines "cloud.2" 3 3)
	    $(ranDataNote risingLines "cloud.2" 4 3)
	    |
      <>\mp
        $(ranDataNote risingLines "cloud.2" 1 3)
	    $(ranDataNote risingLines "cloud.2" 2 3)
	    $(ranDataNote risingLines "cloud.2" 3 3)
	    $(ranDataNote risingLines "cloud.2" 4 3)
        $(ranDataNote risingLines "cloud.2" 1 3)
	    $(ranDataNote risingLines "cloud.2" 2 3)
	    $(ranDataNote risingLines "cloud.2" 3 3)
	    $(ranDataNote risingLines "cloud.2" 4 3)
	    |
        $(ranDataNote risingLines "cloud.2" 1 3)
	    $(ranDataNote risingLines "cloud.2" 2 3)
	    $(ranDataNote risingLines "cloud.2" 3 3)
	    $(ranDataNote risingLines "cloud.2" 4 3)
	    <>->-.\mf\< \transpose c bes, $(ranDataNote risingLines "cloud.2" 1 3)
	    <>-. \transpose c bes, $(ranDataNote risingLines "cloud.2" 2 3)
	    <>-. \transpose c bes, $(ranDataNote risingLines "cloud.2" 3 3)
	    <>-. \transpose c bes, $(ranDataNote risingLines "cloud.2" 4 3)
	    |
        <>-. \transpose c ais, $(ranDataNote risingLines "cloud.2" 1 3)
	    <>-. \transpose c ais, $(ranDataNote risingLines "cloud.2" 2 3)
	    <>-. \transpose c gis, $(ranDataNote risingLines "cloud.2" 3 3) %changes
	    <>-. \transpose c gis, $(ranDataNote risingLines "cloud.2" 4 3)
        <>-. \transpose c gis, $(ranDataNote risingLines "cloud.2" 1 3)
	    <>-. \transpose c gis, $(ranDataNote risingLines "cloud.2" 2 3)
	    <>-.->\f\! \transpose c gis, $(ranDataNote risingLines "cloud.2" 3 3)
	    <>-. \transpose c gis, $(ranDataNote risingLines "cloud.2" 4 3)
    } \context Staff = violinIStaffDivBelow {
        \override Staff.Clef #'transparent = ##f
        \override Staff.TimeSignature #'stencil = ##t
        \clef treble
        \startStaff
        <>\p^"vln.I div 2"
	    $(ranDataNote risingLines "cloud.1" 2 2)
	    $(ranDataNote risingLines "cloud.1" 3 3)
	    $(ranDataNote risingLines "cloud.1" 4 3)
	    $(ranDataNote risingLines "cloud.1" 1 3)
	    $(ranDataNote risingLines "cloud.1" 2 3)
	    $(ranDataNote risingLines "cloud.1" 3 3)
	    $(ranDataNote risingLines "cloud.1" 4 3)
	    |
        $(ranDataNote risingLines "cloud.1" 1 3)
	    $(ranDataNote risingLines "cloud.1" 2 3)
	    $(ranDataNote risingLines "cloud.1" 3 3)
	    $(ranDataNote risingLines "cloud.1" 4 3)
        $(ranDataNote risingLines "cloud.1" 1 3)
	    $(ranDataNote risingLines "cloud.1" 2 3)
	    $(ranDataNote risingLines "cloud.1" 3 3)
	    $(ranDataNote risingLines "cloud.1" 4 3)
	    |
      <>\<
        $(ranDataNote risingLines "cloud.1" 1 3)
	    $(ranDataNote risingLines "cloud.1" 2 3)
	    $(ranDataNote risingLines "cloud.1" 3 3)
	    $(ranDataNote risingLines "cloud.1" 4 3)
        $(ranDataNote risingLines "cloud.1" 1 3)
	    $(ranDataNote risingLines "cloud.1" 2 3)
	    $(ranDataNote risingLines "cloud.1" 3 3)
	    $(ranDataNote risingLines "cloud.1" 4 3)
	    |
      <>\mp
        $(ranDataNote risingLines "cloud.1" 1 3)
	    $(ranDataNote risingLines "cloud.1" 2 3)
	    $(ranDataNote risingLines "cloud.1" 3 3)
	    $(ranDataNote risingLines "cloud.1" 4 3)
        $(ranDataNote risingLines "cloud.1" 1 3)
	    $(ranDataNote risingLines "cloud.1" 2 3)
	    $(ranDataNote risingLines "cloud.1" 3 3)
	    $(ranDataNote risingLines "cloud.1" 4 3)
	    |
        $(ranDataNote risingLines "cloud.1" 1 3)
	    $(ranDataNote risingLines "cloud.1" 2 3)
	    $(ranDataNote risingLines "cloud.1" 3 3)
	    $(ranDataNote risingLines "cloud.1" 4 3)
	    <>->-.\mf\< \transpose c bes, $(ranDataNote risingLines "cloud.1" 1 3)
	    <>-. \transpose c bes, $(ranDataNote risingLines "cloud.1" 2 3)
	    <>-. \transpose c bes, $(ranDataNote risingLines "cloud.1" 3 3)
	    <>-. \transpose c bes, $(ranDataNote risingLines "cloud.1" 4 3)
	    |
        <>-. \transpose c bes, $(ranDataNote risingLines "cloud.1" 1 3)
	    <>-. \transpose c bes, $(ranDataNote risingLines "cloud.1" 2 3)
	    <>-. \transpose c aes, $(ranDataNote risingLines "cloud.1" 3 3) %changes
	    <>-. \transpose c aes, $(ranDataNote risingLines "cloud.1" 4 3)
        <>-. \transpose c gis, $(ranDataNote risingLines "cloud.1" 1 3)
	    <>-. \transpose c gis, $(ranDataNote risingLines "cloud.1" 2 3)
	    <>-.->\f\! \transpose c gis, $(ranDataNote risingLines "cloud.1" 3 3)
	    <>-. \transpose c gis, $(ranDataNote risingLines "cloud.1" 4 3)
        \override Staff.Clef #'transparent = ##t
        \override Staff.TimeSignature #'stencil = ##f
        \stopStaff
    }
    >>
	<>^"tutti" \allStrikesB "vln.I" 
}
allStrikeBViolinII = {
    <>\mf
    $(ranDataNote risingLines "cloud.1" 1 2)
    $(ranDataNote risingLines "cloud.1" 2 2)
    $(ranDataNote risingLines "cloud.1" 3 2)
    $(ranDataNote risingLines "cloud.1" 4 2)
    |
    $(ranDataNote risingLines "cloud.1" 1 2)
    $(ranDataNote risingLines "cloud.1" 2 2)
    $(ranDataNote risingLines "cloud.1" 3 2)
    $(ranDataNote risingLines "cloud.1" 4 2)
    |
    $(ranDataNote risingLines "cloud.1" 1 2)
    $(ranDataNote risingLines "cloud.1" 2 2)
    $(ranDataNote risingLines "cloud.1" 3 2)
    <>-.->\sfz
    $(ranDataNote risingLines "cloud.1" 4 4)
    <>--
    $(ranDataDottedNote risingLines "cloud.1" 1 3 1)
    |
    <<
    {
    <>\p^"vln.II div 1"
	    $(ranDataNote risingLines "cloud.1" 2 2)
	    $(ranDataNote risingLines "cloud.1" 3 3)
	    $(ranDataNote risingLines "cloud.1" 4 3)
	    $(ranDataNote risingLines "cloud.1" 1 3)
	    $(ranDataNote risingLines "cloud.1" 2 3)
	    $(ranDataNote risingLines "cloud.1" 3 3)
	    $(ranDataNote risingLines "cloud.1" 4 3)
	    |
        $(ranDataNote risingLines "cloud.1" 1 3)
	    $(ranDataNote risingLines "cloud.1" 2 3)
	    $(ranDataNote risingLines "cloud.1" 3 3)
	    $(ranDataNote risingLines "cloud.1" 4 3)
        $(ranDataNote risingLines "cloud.3" 1 3)
	    $(ranDataNote risingLines "cloud.3" 2 3)
	    $(ranDataNote risingLines "cloud.3" 3 3)
	    $(ranDataNote risingLines "cloud.3" 4 3)
	    |
      <>\<
        $(ranDataNote risingLines "cloud.3" 1 3)
	    $(ranDataNote risingLines "cloud.3" 2 3)
	    $(ranDataNote risingLines "cloud.3" 3 3)
	    $(ranDataNote risingLines "cloud.3" 4 3)
        $(ranDataNote risingLines "cloud.3" 1 3)
	    $(ranDataNote risingLines "cloud.3" 2 3)
	    $(ranDataNote risingLines "cloud.3" 3 3)
	    $(ranDataNote risingLines "cloud.3" 4 3)
	    |
      <>\mp
        $(ranDataNote risingLines "cloud.3" 1 3)
	    $(ranDataNote risingLines "cloud.3" 2 3)
	    $(ranDataNote risingLines "cloud.3" 3 3)
	    $(ranDataNote risingLines "cloud.3" 4 3)
        $(ranDataNote risingLines "cloud.3" 1 3)
	    $(ranDataNote risingLines "cloud.3" 2 3)
	    $(ranDataNote risingLines "cloud.3" 3 3)
	    $(ranDataNote risingLines "cloud.3" 4 3)
	    |
        $(ranDataNote risingLines "cloud.3" 1 3)
	    $(ranDataNote risingLines "cloud.3" 2 3)
	    $(ranDataNote risingLines "cloud.3" 3 3)
	    $(ranDataNote risingLines "cloud.3" 4 3)
	    <>->-.\mf\< \transpose c bes, $(ranDataNote risingLines "cloud.3" 1 3)
	    <>-. \transpose c bes, $(ranDataNote risingLines "cloud.3" 2 3)
	    <>-. \transpose c bes, $(ranDataNote risingLines "cloud.3" 3 3)
	    <>-. \transpose c bes, $(ranDataNote risingLines "cloud.3" 4 3)
	    |
        <>-. \transpose c bes, $(ranDataNote risingLines "cloud.3" 1 3)
	    <>-. \transpose c bes, $(ranDataNote risingLines "cloud.3" 2 3)
	    <>-. \transpose c aes, $(ranDataNote risingLines "cloud.3" 3 3) %changes
	    <>-. \transpose c aes, $(ranDataNote risingLines "cloud.3" 4 3)
        <>-. \transpose c aes, $(ranDataNote risingLines "cloud.3" 1 3)
	    <>-. \transpose c aes, $(ranDataNote risingLines "cloud.3" 2 3)
	    <>-.-.->\f\! \transpose c aes, $(ranDataNote risingLines "cloud.3" 3 3)
	    <>-. \transpose c aes, $(ranDataNote risingLines "cloud.3" 4 3)
    } \context Staff = violinIIStaffDivBelow {
        \override Staff.Clef #'transparent = ##f
        \override Staff.TimeSignature #'stencil = ##t
        \clef treble
        \startStaff
        <>\p^"vln.II div 2"
	    $(ranDataNote risingLines "cloud.1" 2 2)
	    $(ranDataNote risingLines "cloud.1" 3 3)
	    $(ranDataNote risingLines "cloud.1" 4 3)
	    $(ranDataNote risingLines "cloud.1" 1 3)
	    $(ranDataNote risingLines "cloud.1" 2 3)
	    $(ranDataNote risingLines "cloud.1" 3 3)
	    $(ranDataNote risingLines "cloud.1" 4 3)
	    |
        $(ranDataNote risingLines "cloud.1" 1 3)
	    $(ranDataNote risingLines "cloud.1" 2 3)
	    $(ranDataNote risingLines "cloud.1" 3 3)
	    $(ranDataNote risingLines "cloud.1" 4 3)
        $(ranDataNote risingLines "cloud.1" 1 3)
	    $(ranDataNote risingLines "cloud.1" 2 3)
	    $(ranDataNote risingLines "cloud.1" 3 3)
	    $(ranDataNote risingLines "cloud.1" 4 3)
	    |
      <>\<
        $(ranDataNote risingLines "cloud.4" 1 3)
	    $(ranDataNote risingLines "cloud.4" 2 3)
	    \relative c'' a?8 % unfortunately hard coded for courtesy accidental
	    \relative c'' b?8 % unfortunately hard coded for courtesy accidental
        $(ranDataNote risingLines "cloud.4" 1 3)
	    $(ranDataNote risingLines "cloud.4" 2 3)
	    $(ranDataNote risingLines "cloud.4" 3 3)
	    $(ranDataNote risingLines "cloud.4" 4 3)
	    |
      <>\mp
        $(ranDataNote risingLines "cloud.4" 1 3)
	    $(ranDataNote risingLines "cloud.4" 2 3)
	    $(ranDataNote risingLines "cloud.4" 3 3)
	    $(ranDataNote risingLines "cloud.4" 4 3)
        $(ranDataNote risingLines "cloud.4" 1 3)
	    $(ranDataNote risingLines "cloud.4" 2 3)
	    $(ranDataNote risingLines "cloud.4" 3 3)
	    $(ranDataNote risingLines "cloud.4" 4 3)
	    |
        $(ranDataNote risingLines "cloud.4" 1 3)
	    $(ranDataNote risingLines "cloud.4" 2 3)
	    $(ranDataNote risingLines "cloud.4" 3 3)
	    $(ranDataNote risingLines "cloud.4" 4 3)
	    <>->-.\mf\< \transpose c bes, $(ranDataNote risingLines "cloud.1" 1 3)
	    <>-. \transpose c bes, $(ranDataNote risingLines "cloud.4" 2 3)
	    <>-. \transpose c bes, $(ranDataNote risingLines "cloud.4" 3 3)
	    <>-. \transpose c bes, $(ranDataNote risingLines "cloud.4" 4 3)
	    |
        <>-. \transpose c bes, $(ranDataNote risingLines "cloud.4" 1 3)
	    <>-. \transpose c bes, $(ranDataNote risingLines "cloud.4" 2 3)
	    <>-. \transpose c aes, $(ranDataNote risingLines "cloud.4" 3 3) %changes
	    <>-. \transpose c aes, $(ranDataNote risingLines "cloud.4" 4 3)
        <>-. \transpose c aes, $(ranDataNote risingLines "cloud.4" 1 3)
	    <>-. \transpose c aes, $(ranDataNote risingLines "cloud.4" 2 3)
	    <>-.-.->\f\! \transpose c aes, $(ranDataNote risingLines "cloud.4" 3 3)
	    <>-. \transpose c aes, $(ranDataNote risingLines "cloud.4" 4 3)
        \override Staff.Clef #'transparent = ##t
        \override Staff.TimeSignature #'stencil = ##f
        \stopStaff
    }
    >>
    <>^"tutti" \allStrikesB "vln.II" 
}
allStrikeBViola = \relative c' {
  \transpose c' f \fireStringsMeasure 
    <>\mf
    $(ranDataNote risingLines "cloud.1" 1 2)
    $(ranDataNote risingLines "cloud.1" 2 2)
    $(ranDataNote risingLines "cloud.1" 3 2)
    $(ranDataNote risingLines "cloud.1" 4 2)
    |
    $(ranDataNote risingLines "cloud.1" 1 2)
    $(ranDataNote risingLines "cloud.1" 2 2)
    $(ranDataNote risingLines "cloud.1" 3 2)
    <>-.->\sfz
    $(ranDataNote risingLines "cloud.1" 4 4)
    <>--
    $(ranDataDottedNote risingLines "cloud.1" 1 3 1)
    
    <<
    {
	    <>\p^"vla. div 1"
	    $(ranDataNote risingLines "cloud.1" 2 2)
	    $(ranDataNote risingLines "cloud.1" 3 3)
	    $(ranDataNote risingLines "cloud.1" 4 3)
	    $(ranDataNote risingLines "cloud.1" 1 3)
	    $(ranDataNote risingLines "cloud.1" 2 3)
	    $(ranDataNote risingLines "cloud.1" 3 3)
	    $(ranDataNote risingLines "cloud.1" 4 3)
	    |
        \relative c'' a?8 % unfortunately hard coded for courtesy accidental
	    $(ranDataNote risingLines "cloud.5" 2 3)
	    $(ranDataNote risingLines "cloud.5" 3 3)
	    $(ranDataNote risingLines "cloud.5" 4 3)
        $(ranDataNote risingLines "cloud.5" 1 3)
	    $(ranDataNote risingLines "cloud.5" 2 3)
	    $(ranDataNote risingLines "cloud.5" 3 3)
	    $(ranDataNote risingLines "cloud.5" 4 3)
	    |
      <>\<
		$(ranDataNote risingLines "cloud.5" 1 3)
	    $(ranDataNote risingLines "cloud.5" 2 3)
	    $(ranDataNote risingLines "cloud.5" 3 3)
	    $(ranDataNote risingLines "cloud.5" 4 3)
        $(ranDataNote risingLines "cloud.5" 1 3)
	    $(ranDataNote risingLines "cloud.5" 2 3)
	    $(ranDataNote risingLines "cloud.5" 3 3)
	    $(ranDataNote risingLines "cloud.5" 4 3)
	    |
      <>\mp
		$(ranDataNote risingLines "cloud.5" 1 3)
	    $(ranDataNote risingLines "cloud.5" 2 3)
	    $(ranDataNote risingLines "cloud.5" 3 3)
	    $(ranDataNote risingLines "cloud.5" 4 3)
        $(ranDataNote risingLines "cloud.5" 1 3)
	    $(ranDataNote risingLines "cloud.5" 2 3)
	    $(ranDataNote risingLines "cloud.5" 3 3)
	    $(ranDataNote risingLines "cloud.5" 4 3)
	    |
        $(ranDataNote risingLines "cloud.5" 1 3)
	    $(ranDataNote risingLines "cloud.5" 2 3)
	    $(ranDataNote risingLines "cloud.5" 3 3)
	    $(ranDataNote risingLines "cloud.5" 4 3)
	    <>->-.\mf\< \transpose c bes, $(ranDataNote risingLines "cloud.5" 1 3)
	    <>-. \transpose c bes, $(ranDataNote risingLines "cloud.5" 2 3)
	    <>-. \transpose c bes, $(ranDataNote risingLines "cloud.5" 3 3)
	    <>-. \transpose c bes, $(ranDataNote risingLines "cloud.5" 4 3)
	    |
        <>-. \transpose c bes, $(ranDataNote risingLines "cloud.5" 1 3)
	    <>-. \transpose c bes, $(ranDataNote risingLines "cloud.5" 2 3)
	    <>-. \transpose c aes, $(ranDataNote risingLines "cloud.5" 3 3) %changes
	    <>-. \transpose c aes, $(ranDataNote risingLines "cloud.5" 4 3)
        <>-. \transpose c aes, $(ranDataNote risingLines "cloud.5" 1 3)
	    <>-. \transpose c aes, $(ranDataNote risingLines "cloud.5" 2 3)
	    <>-.-.->\f\! \transpose c aes, $(ranDataNote risingLines "cloud.5" 3 3)
	    <>-. \transpose c aes, $(ranDataNote risingLines "cloud.5" 4 3)
    } \context Staff = violaStaffDivBelow {
        \override Staff.Clef #'transparent = ##f
        \override Staff.TimeSignature #'stencil = ##t
        \clef alto
        \startStaff
	    <>^"vla. div 2"
      <>\p
	    $(ranDataNote risingLines "cloud.1" 2 2)
	    $(ranDataNote risingLines "cloud.1" 3 3)
	    $(ranDataNote risingLines "cloud.1" 4 3)
	    $(ranDataNote risingLines "cloud.1" 1 3)
	    $(ranDataNote risingLines "cloud.1" 2 3)
	    $(ranDataNote risingLines "cloud.1" 3 3)
	    $(ranDataNote risingLines "cloud.1" 4 3)
	    |
        $(ranDataNote risingLines "cloud.1" 1 3)
	    $(ranDataNote risingLines "cloud.1" 2 3)
	    $(ranDataNote risingLines "cloud.1" 3 3)
	    $(ranDataNote risingLines "cloud.1" 4 3)
        $(ranDataNote risingLines "cloud.1" 1 3)
	    $(ranDataNote risingLines "cloud.1" 2 3)
	    $(ranDataNote risingLines "cloud.1" 3 3)
	    $(ranDataNote risingLines "cloud.1" 4 3)
	    |
      <>\<
        $(ranDataNote risingLines "cloud.1" 1 3)
	    $(ranDataNote risingLines "cloud.1" 2 3)
	    $(ranDataNote risingLines "cloud.1" 3 3)
	    $(ranDataNote risingLines "cloud.1" 4 3)
        $(ranDataNote risingLines "cloud.6" 1 3)
	    $(ranDataNote risingLines "cloud.6" 2 3)
	    $(ranDataNote risingLines "cloud.6" 3 3)
	    $(ranDataNote risingLines "cloud.6" 4 3)
	    |
      <>\mp
        $(ranDataNote risingLines "cloud.6" 1 3)
	    $(ranDataNote risingLines "cloud.6" 2 3)
	    $(ranDataNote risingLines "cloud.6" 3 3)
	    $(ranDataNote risingLines "cloud.6" 4 3)
        $(ranDataNote risingLines "cloud.6" 1 3)
	    $(ranDataNote risingLines "cloud.6" 2 3)
	    $(ranDataNote risingLines "cloud.6" 3 3)
	    $(ranDataNote risingLines "cloud.6" 4 3)
	    |
        $(ranDataNote risingLines "cloud.6" 1 3)
	    $(ranDataNote risingLines "cloud.6" 2 3)
	    $(ranDataNote risingLines "cloud.6" 3 3)
	    $(ranDataNote risingLines "cloud.6" 4 3)
	    <>->-.\mf\< \transpose c bes, $(ranDataNote risingLines "cloud.6" 1 3)
	    <>-. \transpose c bes, $(ranDataNote risingLines "cloud.6" 2 3)
	    <>-. \transpose c bes, $(ranDataNote risingLines "cloud.6" 3 3)
	    <>-. \transpose c bes, $(ranDataNote risingLines "cloud.6" 4 3)
	    |
        <>-. \transpose c bes, $(ranDataNote risingLines "cloud.6" 1 3)
	    <>-. \transpose c bes, $(ranDataNote risingLines "cloud.6" 2 3)
	    <>-. \transpose c aes, $(ranDataNote risingLines "cloud.6" 3 3) %changes
	    <>-. \transpose c aes, $(ranDataNote risingLines "cloud.6" 4 3)
        <>-. \transpose c aes, $(ranDataNote risingLines "cloud.6" 1 3)
	    <>-. \transpose c aes, $(ranDataNote risingLines "cloud.6" 2 3)
	    <>-.-.->\f\! \transpose c aes, $(ranDataNote risingLines "cloud.6" 3 3)
	    <>-. \transpose c aes, $(ranDataNote risingLines "cloud.6" 4 3)
        \override Staff.Clef #'transparent = ##t
        \override Staff.TimeSignature #'stencil = ##f
        \stopStaff
    }
    >>
    <>^"tutti" \allStrikesB "vla" 
}
allStrikeBCello = {
	\transpose c' f, \fireStringsMeasure
	\transpose c' f, \fireStringsMeasure
	\transpose c' f, \fireStringsMeasure
		R1*6
    \allStrikesB "vc" 
}
allStrikeBBass = {
	     \transpose c' f, \fireStringsMeasure
        \transpose c' f, \fireStringsMeasure
          \transpose c' f, \fireStringsMeasure
          R1*6
      \allStrikesBLate "cb" 
	}

