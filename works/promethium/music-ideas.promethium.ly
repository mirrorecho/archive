highHeldThinHarmonies = {<g aes! c des!>1 }
lowHeldThinHarmonies = {<e a>1}

ideaBigHits = {
	a16 bes r8 r4 r r8 d16 cis |
	r4 b8 r8 r4 r8 c8 r8 |
	a16 bes r4 r4 d4~ |
	d1 |
}

%%%%%%%%%%%%%%%%%% THE STORY %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%{

[START]
\allStrike 
	(preamble to something severe)

[A]
\fireGiverA
	--strings low

[B]
\allStrikeB
	(agian, this time with a human element)

[C]
\booomBooom

[D]
\sciencePushing
	\climeUp

[E]
\allStrikeE
	(with string staccato ostis and big finish)

[F]
\blindHope

[G]
\scienceOverDrive
	\climeUp

[H]
\yourLiverEatenByAnEagle
	\pieces of striking

[I]
\allStrikeI
%}

%%%%%%%%%%%%%%%%%% TONE IDEAS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%{
	all strike is everyone playing a rhythm loud or almost in unison 

	lowest held open strings as fire 
	 --- (sometimes including oboe)
	 --- may include quick glisses high on same strings

	scheming instrumentation as science
	 -- brake drums and wood blocks
	 -- short to medium tenuto or staccato notes over fire

	downward high glisses and downward clarinet cries (liver sections)
%}



%{

highHeldThinHopeTop = {
	\override Staff.TimeSignature #'stencil = ##f
	\set Staff.printPartCombineTexts = ##f
	\cadenzaOn
		%#(ly:export (skip-of-length celloSmallFireBlindHope))
		\partcombine
		 \relative c''' \highHeldThinNoteTop
		$(skip-of-length celloSmallFireBlindHopeOne)
		\partcombine
		\relative c''' \highHeldThinNoteTop
		$(skip-of-length celloSmallFireBlindHopeTwo)
}

lowHeldThinHope = {
	\override Staff.TimeSignature #'stencil = ##f
	\set Staff.printPartCombineTexts = ##f
	\cadenzaOn
		%#(ly:export (skip-of-length celloSmallFireBlindHope))
		\partcombine
		\relative c, \lowHeldThinHarmonies
		$(skip-of-length celloSmallFireBlindHopeOne)
		\partcombine
		\relative c, \lowHeldThinHarmonies
		$(skip-of-length celloSmallFireBlindHopeTwo)
}
%}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% could use in the future for boxes:

%{
notes = \relative c' {
  \override TextScript #'extra-offset = #'(4.9 . 8)
  c,-\markup {  
\override #'(thickness . 3)
\override #'(style . #'dotted-line)
  \box \pad-markup #6
   {
    "         " }
 }      
        \relative c {
        a f d c  a f d
      }
}

  \override TextSpanner #'style = #'dotted-line
  \override TextSpanner #'(bound-details left text) =
    \markup { \draw-line #'(0 . -2) }
  \override TextSpanner #'(bound-details right text) =
    \markup { \rounded-box {" "} }
  \once \override TextSpanner #'(bound-details right padding) = #-2
  \override TextSpanner #'thickness = #3
  %}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% OLD STUFF
%{
	
allStrikeRest = {
  R1 | R1 | R1 | R1 |
}

allStrikeNotes = {
  a16-.->[ bes-.-> r8] r4 r r8[ d16-.-> cis-.->] |
  r4 b8-.->[ r8] r4 r8[ c8-.->] |
  r8[ a16-.-> bes-.->] r4 r4 d4--->~ |
  d1 |
}

allStrikeTimpaniNotes = {
  a4-> r r r8[ d8->] |
  r4 b8->[ r8] r4 r8[ c8->] |
  r8[ a8->] r4 r4 d4-> |
  R1 |	
}

allStrikeHitNotes = {
  b16->[ bes-> r8] r4 r r8[ b16-> bis->] |
  r4 b8->[ r8] r4 r8[ c8->] |
  r8[ b16-> bes->] r4 r4 b4-> |
  R1 |
}

%}