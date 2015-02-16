
allStrikeEUniversal= \new Voice {
  \bar "||"
  \mark \markup {\fontsize #3.3 \bold \circle {"E"}}
	s1*2
	\bar "||"
	\time 3/4
	s2. s2.
	\bar "||"
	\time 4/4
	s1*4
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


allERiffOne = \relative c {g16->( aes8. ~ aes4) bes8-. c4.--}
allERiffTwo = \relative c {g16->( aes8. ~ aes4) bes8-. c4-- des8--->}
allERiffThree = \relative c {g16->( aes8.) bes8-. c8 ~ c4 ~ | c2.  }
allERiffFour = \relative c {c16-> g8.-> ~ g4 ~ g2 | g4. aes''8-- g,,4. aes''8--}

allERiffOneUp =  \transpose c f \relative c \allERiffOne
allERiffTwoUp =  \transpose c f \relative c \allERiffTwo
allERiffThreeUp =  \transpose c f \relative c \allERiffThree
allERiffFourUp =  \transpose c f \relative c \allERiffFour

allStrikesBaseE = #(define-music-function (parser location line) 
  (string?) 
  #{
  <>-.->\f $(ranDataNote allStrikes1 line 4 3) s8 s4 s2 | 
  s1 |
  s4 s4 s8 <>--->\f $(ranDataNote allStrikes1 line 6 3)
  <>-.-> $(ranDataNote allStrikes1 line 4 4) 
  <>-.-> $(ranDataNote allStrikes1 line 4 4) s8 s4 s4
  #}
)

allStrikesRestE = { s8 r8 r4 r2 | R1 | r4 r4 r8 s8 | s16 s16 r8 r4 r4 }


allStrikesE = #(define-music-function (parser location line) 
  (string?) 
  #{
  	<< \allStrikesBaseE $line \allStrikesRestE >>
  #}
)

allStrikesLayE = #(define-music-function (parser location line overline) 
  (string? ly:music?) 
  #{
  	<< \allStrikesBaseE $line $overline >>
  #}
)

overlayHold = \relative c''' { s8 r8 r4 g2\p ~ | g1 ~ | g4 r4 r8 s8 | s16 s16 r8 r4 r4 }

hoHumLineOne = \relative c {g2 ~ g4. c8 ~ | c2. r4}
hoHumLineTwo = \relative c {g2 ~ g8  c8 ~ | c2. }


allStrikesEKindOfEnd = #(define-music-function (parser location line) 
  (string?) 
  #{
	 r4
	 <>-.->\mf\< $(ranDataNote allStrikes1 line 4 3) r8 
	 r8 <>-. $(ranDataNote allStrikes1 line 4 3)
	 r8 <>-. $(ranDataNote allStrikes1 line 4 3)
	 |
	 <>-. $(ranDataNote allStrikes1 line 5 3)
	 <>-. $(ranDataNote allStrikes1 line 4 3)
	 <>-. $(ranDataNote allStrikes1 line 5 3)
	 <>-. $(ranDataNote allStrikes1 line 6 3)
	 <>-. $(ranDataNote allStrikes1 line 5 3)
	 <>-. $(ranDataNote allStrikes1 line 6 3)
	 <>-. $(ranDataNote allStrikes1 line 6 3)
	 <>-.\f\! $(ranDataNote allStrikes1 line 6 3)
  #}
  )


allStrikesEVeryEnd = #(define-music-function (parser location line) 
  (string?) 
  #{
  	R1
	 |
	 <>-.\<\mf $(ranDataNote allStrikes1 line 5 3)
	 <>-. $(ranDataNote allStrikes1 line 4 3)
	 <>-. $(ranDataNote allStrikes1 line 5 3)
	 <>-. $(ranDataNote allStrikes1 line 6 3)
	 <>-. $(ranDataNote allStrikes1 line 5 3)
	 <>-. $(ranDataNote allStrikes1 line 6 3)
	 <>-. $(ranDataNote allStrikes1 line 6 3)
	 <>-.\f\! $(ranDataNote allStrikes1 line 6 3)
  #}
  )

	% R1*2 \allStrikesEKindOfEnd
	% or
	% R1*2 \allStrikesEVeryEnd


allStrikeEFluteOne = {
	\allStrikesLayE "pic.1" \transpose g c' \overlayHold
	R1*2 \allStrikesEVeryEnd "pic.1"
	} %% PICCOLO???
allStrikeEFluteTwo = {
	\allStrikesLayE "fl.2" \overlayHold
	R1*2 \allStrikesEVeryEnd "fl.2"
}
allStrikeEOboeOne = {
	\allStrikesLayE "ob.1" \transpose g b \overlayHold
	R1*2 \allStrikesEVeryEnd "ob.1"
}
allStrikeEOboeTwo = {
	\allStrikesLayE "ob.2" \transpose g a \overlayHold
	R1*2 \allStrikesEVeryEnd "ob.2"
}
allStrikeEClarinetOne = { 
	\allStrikesLayE "cl.1" \transpose g bes \overlayHold
	R1*2 \allStrikesEVeryEnd "cl.1"
}
allStrikeEClarinetTwo = { 
	\allStrikesLayE "cl.2"\transpose g aes \overlayHold
	R1*2 \allStrikesEVeryEnd "cl.2"
}
allStrikeEBassoonOne = { \clef bass
  \allStrikesE "bsn.1"
	R1*2 \allStrikesEVeryEnd "bsn.1"
}
allStrikeEBassoonTwo = {\clef bass
  \allStrikesE "bsn.2"
	R1*2 \allStrikesEVeryEnd "bsn.2"
}
allStrikeEHornOne = {
  \allStrikesE "hn.1"
	R1*2 \allStrikesEKindOfEnd "hn.1"
}
allStrikeEHornTwo = {
	\allStrikesE "hn.2"
	R1*2 \allStrikesEKindOfEnd "hn.2"
}
allStrikeEHornThree = {
	\allStrikesE "hn.3"
	R1*2 \allStrikesEKindOfEnd "hn.3"
}
allStrikeEHornFour = {
	\allStrikesE "hn.4"
	R1*2 \allStrikesEKindOfEnd "hn.4"
}
allStrikeETrumpetOne = {
	\allStrikesLayE "tpt.1" \relative c'' { s8 r8 r4 b?8-. cis4-- f8--  | R1 |  r4 r4 r8 s8 | s16 s16 r8 r4 r4 }
	R1*2 \allStrikesEKindOfEnd "tpt.1"
}
allStrikeETrumpetTwo = {
	\allStrikesLayE "tpt.2" \relative c'' { s8 r8 r4 bes8-. c?4-- c8-- | R1 |  r4 r4 r8 s8 | s16 s16 r8 r4 r4 }
	R1*2 \allStrikesEKindOfEnd "tpt.2"
}
allStrikeETromboneOne = {
	\allStrikesE "tbn.1"
	R1*2 \allStrikesEKindOfEnd "tbn.1"
}
allStrikeETromboneTwo = {
	\allStrikesE "tbn.2"
	R1*2 \allStrikesEKindOfEnd "tbn.2"
}
allStrikeETuba = \transpose c c, {
	<>\f
	\hoHumLineOne \hoHumLineTwo
	R1*2 \allStrikesEKindOfEnd "tba"
}
allStrikeETimpani = {
	g4->\mf r4 r4 r8 c8 | g4-> r4 r2 | g4-> r4 r8 c8 | g8->[ c8\<] c[ c] c[ c] | 
	c4->\fff\! r4 g4-> r4 |
	des'4-> r4 g,4-> r4 | 
	\slurDashed
	<< {des'1:32 ~ | des:32} {s1\<\mp | s2.. s8\fff\!} >>
	\slurSolid
}
allStrikeEPercussionOne = {
 R1*2 | R2. R2. | R1*4
}
allStrikeEPercussionTwo = {
R1*2 | R2. R2. | R1*4
}
allStrikeEHarpTop ={
R1*2 | R2. R2. | R1*4
}
allStrikeEHarpBottom ={
R1*2 | R2. R2. | R1*4
}

allStrikesEEnd = #(define-music-function (parser location line) 
  (string?) 
  #{
	 <>---> $(ranDataNote allStrikes1 line 3 2)
	 <>-. $(ranDataNote allStrikes1 line 4 3)
	 <>~  $(ranDataNote allStrikes1 line 3 3) 
	      $(ranDataNote allStrikes1 line 3 3)
	 <>-. $(ranDataNote allStrikes1 line 4 3)
	 <>-- $(ranDataNote allStrikes1 line 3 3)
	 <>-. $(ranDataNote allStrikes1 line 4 3)
	 |
	 <>-. $(ranDataNote allStrikes1 line 5 3)
	 <>-. $(ranDataNote allStrikes1 line 4 3)
	 <>-. $(ranDataNote allStrikes1 line 5 3)
	 <>-. $(ranDataNote allStrikes1 line 6 3)
	 <>-. $(ranDataNote allStrikes1 line 5 3)
	 <>-. $(ranDataNote allStrikes1 line 6 3)
	 <>-. $(ranDataNote allStrikes1 line 6 3)
	 <>-. $(ranDataNote allStrikes1 line 6 3)
  #}
  )

allStrikesEEndBass = #(define-music-function (parser location line) 
  (string?) 
  #{
	 <>---> $(ranDataNote allStrikes1 line 3 2)
	 <>-. $(ranDataNote allStrikes1 line 4 3)
	 <>~  $(ranDataNote allStrikes1 line 3 3) 
	      $(ranDataNote allStrikes1 line 3 3)
	 <>-. $(ranDataNote allStrikes1 line 4 3)
	 <>-- $(ranDataNote allStrikes1 line 3 3)
	 <>-. $(ranDataNote allStrikes1 line 4 3)
	 |
	 \clef tenor
	 <>-. $(ranDataNote allStrikes1 line 5 3)
	 <>-. $(ranDataNote allStrikes1 line 4 3)
	 <>-. $(ranDataNote allStrikes1 line 5 3)
	 <>-. $(ranDataNote allStrikes1 line 6 3)
	 <>-. $(ranDataNote allStrikes1 line 5 3)
	 <>-. $(ranDataNote allStrikes1 line 6 3)
	 <>-. $(ranDataNote allStrikes1 line 6 3)
	 <>-. $(ranDataNote allStrikes1 line 6 3)
  #}
  )



allStrikeEViolinI = {
	\transpose c c' {
	 \allERiffOne \allERiffTwo \allERiffThree  \allERiffFour
	}
	 \allStrikesEEnd "vln.I"
}

allStrikeEViolinII = {
	\transpose c c' {
	 \allERiffOne \allERiffTwo \allERiffThree  \allERiffFour
	}
	 \allStrikesEEnd "vln.II"
}

allStrikeEViola =  {
	\allERiffOneUp \allERiffTwoUp \allERiffThreeUp \allERiffFourUp
	 \allStrikesEEnd "vla"
}

allStrikeECello =  {\transpose c c, {
	\allERiffOneUp \allERiffTwoUp \allERiffThreeUp \allERiffFourUp
	}
	\allStrikesEEnd "bsn.1"
}

allStrikeEBass = {
	\allERiffOne \allERiffTwo \allERiffThree c,1 c1
	 \allStrikesEEndBass "cb"
}