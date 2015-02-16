

allStrikeUniversal = \new Voice {
	s1*11
  \mark \markup {\fontsize #3.3 \bold \circle {"A"}}
  \bar "||"
  \time 3/4
  s2.*5
  \bar "||"
  \time 4/4
  s1
  \bar "||"
}

allStrikesEndingRest = {R2.*5 | R1}


allStrikesOneTimpani = #(define-music-function (parser location line) 
  (string?) 
  #{
  	%; BAR #1
    <>->\fff
    $(ranDataNote allStrikes1 line 1 4) %; 16th notes played twice
    <>->
    $(ranDataNote allStrikes1 line 1 4)
    <>\pp
  	$(ranDataNote allStrikes1 line 1 3)
  	$(ranDataNote allStrikes1 line 1 3)
  	$(ranDataNote allStrikes1 line 1 3)
  	$(ranDataNote allStrikes1 line 1 3)
  	$(ranDataNote allStrikes1 line 1 3)
  	$(ranDataNote allStrikes1 line 1 3)
  	$(ranDataNote allStrikes1 line 1 3)
    |
    %; BAR #2
    $(ranDataNote allStrikes1 line 1 3)
    $(ranDataNote allStrikes1 line 1 3)
    $(ranDataNote allStrikes1 line 1 3)
    $(ranDataNote allStrikes1 line 1 3)
    $(ranDataNote allStrikes1 line 1 3)
    $(ranDataNote allStrikes1 line 1 3)
    $(ranDataNote allStrikes1 line 1 3)
    $(ranDataNote allStrikes1 line 1 3)
    |
  	%; BAR #2.5!
  	$(ranDataNote allStrikes1 line 1 3)
  	$(ranDataNote allStrikes1 line 1 3)
  	$(ranDataNote allStrikes1 line 1 3)
  	$(ranDataNote allStrikes1 line 1 3)
  	$(ranDataNote allStrikes1 line 1 3)
  	$(ranDataNote allStrikes1 line 1 3)
  	$(ranDataNote allStrikes1 line 1 3)
  	$(ranDataNote allStrikes1 line 1 3)
    |
  	%; BAR #3
  	$(ranDataNote allStrikes1 line 1 3)
  	$(ranDataNote allStrikes1 line 1 3)
    <>->\fff
    $(ranDataNote allStrikes1 line 1 4) %; 
    <>->
    $(ranDataNote allStrikes1 line 1 4)
    <>\pp
  	$(ranDataNote allStrikes1 line 1 3)
  	$(ranDataNote allStrikes1 line 1 3)
  	$(ranDataNote allStrikes1 line 1 3)
  	$(ranDataNote allStrikes1 line 1 3)
  	$(ranDataNote allStrikes1 line 1 3)
    |
    %; BAR #3.5
    $(ranDataNote allStrikes1 line 1 3)
    $(ranDataNote allStrikes1 line 1 3)
    $(ranDataNote allStrikes1 line 1 3)
    $(ranDataNote allStrikes1 line 1 3)
    $(ranDataNote allStrikes1 line 1 3)
    $(ranDataNote allStrikes1 line 1 3)
    $(ranDataNote allStrikes1 line 1 3)
    <>->\fff
    $(ranDataNote allStrikes1 line 1 3) 
    |
    %; BAR #3.6
    <>\pp
    $(ranDataNote allStrikes1 line 1 3)
    $(ranDataNote allStrikes1 line 1 3)
    $(ranDataNote allStrikes1 line 1 3)
    $(ranDataNote allStrikes1 line 1 3)
    $(ranDataNote allStrikes1 line 1 3)
    $(ranDataNote allStrikes1 line 1 3)
    $(ranDataNote allStrikes1 line 1 3)
    <>->\fff
    $(ranDataNote allStrikes1 line 1 3)
  	%; BAR #4
    <>->
    $(ranDataNote allStrikes1 line 1 4) %; 16th notes played twice
    <>->
    $(ranDataNote allStrikes1 line 1 4)
  	$(ranDataNote allStrikes1 line 1 3)
  	<>->
    $(ranDataNote allStrikes1 line 1 3)
    <>\pp
  	$(ranDataNote allStrikes1 line 1 3)
  	$(ranDataNote allStrikes1 line 1 3)
  	$(ranDataNote allStrikes1 line 1 3)
  	$(ranDataNote allStrikes1 line 1 3)
  	$(ranDataNote allStrikes1 line 1 3)
    |
  	%; BAR #5
    <>->\fff
    $(ranDataNote allStrikes1 line 1 4) %; 16th notes played twice
    <>->
    $(ranDataNote allStrikes1 line 1 4)
    <>\p
  	$(ranDataNote allStrikes1 line 1 3)
  	$(ranDataNote allStrikes1 line 1 3)
    <>->\fff
  	$(ranDataNote allStrikes1 line 1 3)
    <>->
    $(ranDataNote allStrikes1 line 2 4) %; 16th notes played twice
    <>->
    $(ranDataNote allStrikes1 line 2 4)
    <>\p
  	$(ranDataNote allStrikes1 line 2 3)
  	$(ranDataNote allStrikes1 line 2 3)
  	$(ranDataNote allStrikes1 line 2 3)
    |
  	%; BAR #6
  	$(ranDataNote allStrikes1 line 2 3)
  	$(ranDataNote allStrikes1 line 2 3)
  	<>->\fff
    $(ranDataNote allStrikes1 line 3 3) %; 16th notes played twice
  	$(ranDataNote allStrikes1 line 3 3)
	   $(ranDataNote allStrikes1 line 3 3)
    <>->
    $(ranDataNote allStrikes1 line 4 4) %; 16th notes played twice
    <>->
    $(ranDataNote allStrikes1 line 4 4)
  	$(ranDataNote allStrikes1 line 4 3)
  	$(ranDataNote allStrikes1 line 4 3)
    |
  	%; BAR #7
    <>->
    $(ranDataNote allStrikes1 line 5 3) %; 16th notes played twice
  	$(ranDataNote allStrikes1 line 5 3)
  	$(ranDataNote allStrikes1 line 5 3)
    <>->
    $(ranDataNote allStrikes1 line 6 4) %; 16th notes played twice
    <>->
    $(ranDataNote allStrikes1 line 6 4)
  	$(ranDataNote allStrikes1 line 6 3)
	  $(ranDataNote allStrikes1 line 6 3)
    <>->
    $(ranDataNote allStrikes1 line 7 4) %; 16th notes played twice
    <>->
    $(ranDataNote allStrikes1 line 7 4)
    <>\p\<
  	$(ranDataNote allStrikes1 line 7 3)
  	|
    %; BAR #8
    <>->
    $(ranDataNote allStrikes1 line 7 3)
    $(ranDataNote allStrikes1 line 7 3)
    <>->
    $(ranDataNote allStrikes1 line 7 3)
    $(ranDataNote allStrikes1 line 7 3)
    <>->
    $(ranDataNote allStrikes1 line 7 3)
    $(ranDataNote allStrikes1 line 7 3)
    <>->\fff\!
    $(ranDataNote allStrikes1 line 7 3)
    $(ranDataNote allStrikes1 line 7 3)
  #}
)

allStrikesOne = #(define-music-function (parser location line) 
  (string?) 
  #{
    
  	%; BAR #1
    %; NOTE: would be nice if to figute out how to make the beaming automatic:
    <>-.->[\fff
    $(ranDataNote allStrikes1 line 1 4) %; 16th notes played twice
    <>-.->
    $(ranDataNote allStrikes1 line 1 4)
    r8]
    r4
    r2
    |
  	%; BAR #2
    R1
    |
    %; BAR #2.5!
    R1
    |
  	%; BAR #3
    r4
    <>-.->[
    $(ranDataNote allStrikes1 line 1 4) %; 16th notes played twice
    <>-.->
    $(ranDataNote allStrikes1 line 1 4)
    r8]
    r2

    |
    %; BAR #3.5!
    r2 r4 r8[
    <>-.->]
    $(ranDataNote allStrikes1 line 1 3) %; 16th notes played twice
    |
    %; bar 3.6!
    R1

    |
  	%; BAR #4
    <>-.->[
    $(ranDataNote allStrikes1 line 1 4) %; 16th notes played twice
    <>-.->
    $(ranDataNote allStrikes1 line 1 4)
    r8]
    r4
    r2
    |
  	%; BAR #5
    <>-.->[
    $(ranDataNote allStrikes1 line 1 4) %; 16th notes played twice
    <>-.->
    $(ranDataNote allStrikes1 line 1 4)
    r8]
    r4
    <>-.->[
    $(ranDataNote allStrikes1 line 2 4)
    <>-.->
    $(ranDataNote allStrikes1 line 2 4)
    r8]
    r4
    |
  	%; BAR #6
    r4
    <>-.->[
    $(ranDataNote allStrikes1 line 3 3)
    r8]
    r8[
    <>-.->
    $(ranDataNote allStrikes1 line 4 4)
    <>-.->]
    $(ranDataNote allStrikes1 line 4 4)
    r4
  	%; BAR #7
    |
    <>-.->[
    $(ranDataNote allStrikes1 line 5 3)
    r8]
    r8[
    <>-.->
    $(ranDataNote allStrikes1 line 6 4)
    <>-.->]
    $(ranDataNote allStrikes1 line 6 4)
    r4
    <>-.->[
    $(ranDataNote allStrikes1 line 7 4)
    <>-.->
    $(ranDataNote allStrikes1 line 7 4)
    r8]
  #}
)

allStrikesOneBass = #(define-music-function (parser location line) 
  (string?) 
  #{
    
    %; BAR #1
    %; NOTE: would be nice if to figute out how to make the beaming automatic:
    <>-.->[\fff
    $(ranDataNote allStrikes1 line 1 4) %; 16th notes played twice
    <>-.->
    $(ranDataNote allStrikes1 line 1 4)
    r8]
    r4
    r2
    |
    %; BAR #2
    R1
    |
    %; BAR #2.5!
    R1
    |
    %; BAR #3
    r4
    <>-.->[
    $(ranDataNote allStrikes1 line 1 4) %; 16th notes played twice
    <>-.->
    $(ranDataNote allStrikes1 line 1 4)
    r8]
    r2

    |
    %; BAR #3.5!
    r2 r4 r8[
    <>-.->]
    $(ranDataNote allStrikes1 line 1 3) %; 16th notes played twice
    |
    %; bar 3.6!
    R1

    |
    %; BAR #4
    <>-.->[
    $(ranDataNote allStrikes1 line 1 4) %; 16th notes played twice
    <>-.->
    $(ranDataNote allStrikes1 line 1 4)
    r8]
    r4
    r2
    |
    %; BAR #5
    <>-.->[
    $(ranDataNote allStrikes1 line 1 4) %; 16th notes played twice
    <>-.->
    $(ranDataNote allStrikes1 line 1 4)
    r8]
    r4
    <>-.->[
    $(ranDataNote allStrikes1 line 2 4)
    <>-.->
    $(ranDataNote allStrikes1 line 2 4)
    r8]
    r4
    |
    %; BAR #6
    r4
    <>-.->[
    $(ranDataNote allStrikes1 line 3 3)
    r8]
    r8[
    <>-.->
    $(ranDataNote allStrikes1 line 4 4)
    <>-.->]
    $(ranDataNote allStrikes1 line 4 4)
    r4
    %; BAR #7
    |
    \clef tenor
    <>-.->[
    $(ranDataNote allStrikes1 line 5 3)
    r8]
    r8[
    <>-.->
    $(ranDataNote allStrikes1 line 6 4)
    <>-.->]
    $(ranDataNote allStrikes1 line 6 4)
    r4
    <>-.->[
    $(ranDataNote allStrikes1 line 7 4)
    <>-.->
    $(ranDataNote allStrikes1 line 7 4)
    r8]
  #}
)




allStrikesOneHarp = #(define-music-function (parser location line) 
  (string?) 
  #{
    
    %; BAR #1
    %; NOTE: would be nice if to figute out how to make the beaming automatic:
    <>->[
    $(ranDataNote allStrikes1 line 1 4) %; 16th notes played twice
    <>->
    $(ranDataNote allStrikes1 line 1 4)
    r8]
    r4
    r2
    |
    %; BAR #2
    R1
    |
    %; BAR #2.5!
    R1
    |
    %; BAR #3
    r4
    <>->[
    $(ranDataNote allStrikes1 line 1 4) %; 16th notes played twice
    <>->
    $(ranDataNote allStrikes1 line 1 4)
    r8]
    r2

    |
    %; BAR #3.5!
    r2 r4 r8[
    <>->]
    $(ranDataNote allStrikes1 line 1 3) %; 16th notes played twice
    |
    %; bar 3.6!
    R1

    |
    %; BAR #4
    <>->[
    $(ranDataNote allStrikes1 line 1 4) %; 16th notes played twice
    <>->
    $(ranDataNote allStrikes1 line 1 4)
    r8]
    r4
    r2
    |
    %; BAR #5
    <>->[
    $(ranDataNote allStrikes1 line 1 4) %; 16th notes played twice
    <>->
    $(ranDataNote allStrikes1 line 1 4)
    r8]
    r4
    <>->[
    $(ranDataNote allStrikes1 line 2 4)
    <>->
    $(ranDataNote allStrikes1 line 2 4)
    r8]
    r4
    |
    %; BAR #6
    r4
    <>->[
    $(ranDataNote allStrikes1 line 3 3)
    r8]
    r8[
    <>->
    $(ranDataNote allStrikes1 line 4 4)
    <>->]
    $(ranDataNote allStrikes1 line 4 4)
    r4
    %; BAR #7
    |
    <>->[
    $(ranDataNote allStrikes1 line 5 3)
    r8]
    r8[
    <>->
    $(ranDataNote allStrikes1 line 6 4)
    <>->]
    $(ranDataNote allStrikes1 line 6 4)
    r4
    <>->[
    $(ranDataNote allStrikes1 line 7 4)
    <>->
    $(ranDataNote allStrikes1 line 7 4)
    r8]
  #}
)



allStrikesBooom = #(define-music-function (parser location line) 
  (string?) 
  #{
    <>[-.-> $(ranDataNote allStrikes1 line 1 4) %; 
    <>]-.-> $(ranDataNote allStrikes1 line 1 4) %; 
  #}
)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


allStrikesOneRisingOne = #(define-music-function (parser location line transposeTo) 
  (string? ly:pitch?) 
  #{
    <>(
    $(ly:music-transpose (ranDataNote risingLines line 1 3) transposeTo)
    <>)
    $(ly:music-transpose (ranDataDottedNote risingLines line 2 2 1) transposeTo)
    <>--
    $(ly:music-transpose (ranDataNote risingLines line 3 2) transposeTo)
    <>~--
    $(ly:music-transpose (ranDataNote risingLines line 4 2) transposeTo)
    |
    $(ly:music-transpose (ranDataNote risingLines line 4 1) transposeTo)
    r2
  #})
allStrikesOneRisingTwo = #(define-music-function (parser location line transposeTo) 
  (string? ly:pitch?) 
  #{
    <>--
    $(ly:music-transpose (ranDataNote risingLines line 1 2) transposeTo)
    <>--
    $(ly:music-transpose (ranDataNote risingLines line 2 2) transposeTo)
    <>(
    $(ly:music-transpose (ranDataNote risingLines line 3 4) transposeTo)
    <>)
    $(ly:music-transpose (ranDataDottedNote risingLines line 4 2 2) transposeTo)
  #})
allStrikesOneRisingThree = #(define-music-function (parser location line transposeTo) 
  (string? ly:pitch?) 
  #{
    <>--
    $(ly:music-transpose (ranDataNote risingLines line 1 2) transposeTo)
    <>--
    $(ly:music-transpose (ranDataNote risingLines line 2 2) transposeTo)
    <>--
    $(ly:music-transpose (ranDataNote risingLines line 3 2) transposeTo)
    <>--
    $(ly:music-transpose (ranDataNote risingLines line 4 2) transposeTo)
  #})

allStrikesOneRisingTwoOverlap = #(define-music-function (parser location line transposeTo) 
  (string? ly:pitch?) 
  #{
  	r2
    <>(
    $(ly:music-transpose (ranDataNote risingLines line 1 4) transposeTo)
    <>)
    $(ly:music-transpose (ranDataDottedNote risingLines line 2 2 2) transposeTo)
    |
    <>--
    $(ly:music-transpose (ranDataNote risingLines line 3 2) transposeTo)
    <>--
    $(ly:music-transpose (ranDataDottedNote risingLines line 4 1 1) transposeTo)
  #})

allStrikesOneRisingResponseOne = #(define-music-function (parser location line transposeTo) 
  (string? ly:pitch?) 
  #{
    r2
    <>(
    $(ly:music-transpose (ranDataNote risingLines line 2 4) transposeTo)
    <>~
    $(ly:music-transpose (ranDataDottedNote risingLines line 1 2 2) transposeTo)
    |
    <>)
    $(ly:music-transpose (ranDataDottedNote risingLines line 1 2 1) transposeTo)
    <>(
    $(ly:music-transpose (ranDataNote risingLines line 1 3) transposeTo)
    <>)
    $(ly:music-transpose (ranDataNote risingLines line 2 1) transposeTo)
  #})


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%







allStrikesOneContinueBeat = #(define-music-function (parser location line) 
  (string?) 
  #{
    %; NOTE: would be nice if to figute out how to make the beaming automatic:
    <>-.->[
    $(ranDataNote allStrikes1 line 7 4)
    <>-.->
    $(ranDataNote allStrikes1 line 7 4)
    r8]
  #}
)





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

allStrikeRest = {
  R1 | R1 | R1 | R1 | R1 | R1 | R1 | R1 |
  \times 3/4 R2. R2. R2. R2. R2. R1
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


%%% TO DO ... FIGURE THIS OUT FOR TIMPANI AND PERCUSSION!

allStrikeFluteOne = {
		   \allStrikesOne "pic.1" 
		    |
		    \allStrikesOneContinueBeat "pic.1"
		    \allStrikesOneContinueBeat "pic.1"
		    \allStrikesOneContinueBeat "pic.1"
		    \allStrikesOneContinueBeat "pic.1"
        \relative c'' {r4 r4 fis4\mf | fis16->( ~ g8. a4 b4) | R2. | r4 r4 b4( | fis8\< g a4 ~ a8 b8) |  fis(\f\! g a b) fis( g a b) }

		\scoreBreak} %% PICCOLO???
allStrikeFluteTwo = {
		   \allStrikesOne "fl.2" 
		    |
		    \allStrikesOneContinueBeat "fl.2"
		    \allStrikesOneContinueBeat "fl.2"
		    \allStrikesOneContinueBeat "fl.2"
		    \allStrikesOneContinueBeat "fl.2"
        \relative c''' { R2. | r4 r4 b4(\mf | fis16-> ~ g8. a4 ~ a8 b8) | fis8([ g] ~ g[ a] b4) | R2. | r2 fis8(\f g a b) }
		}
allStrikeOboeOne = {
		   \allStrikesOne "ob.1" 
		    |
		    \allStrikesOneContinueBeat "ob.1"
		    \allStrikesOneContinueBeat "ob.1"
		    \allStrikesOneContinueBeat "ob.1"
		    \allStrikesOneContinueBeat "ob.1"
        R2. | R2. | R2. | \relative c''' {<<{ges2. ~| ges2. ~ | ges1 } {s2.\pp\< | s2. | s2.. s8\f} >> } |
		}
allStrikeOboeTwo = {
		   \allStrikesOne "ob.2" 
		    |
		    \allStrikesOneContinueBeat "ob.2"
		    \allStrikesOneContinueBeat "ob.2"
		    \allStrikesOneContinueBeat "ob.2"
		    \allStrikesOneContinueBeat "ob.2"
        R2. | R2. | R2. | \relative c'' {<<{f?2. ~| f2. ~ | f1 } {s2.\pp\< | s2. | s2.. s8\f} >> } |
		}
allStrikeClarinetOne = {
		   \allStrikesOne "cl.1" 
		    |
		    \allStrikesOneContinueBeat "cl.1"
		    \allStrikesOneContinueBeat "cl.1"
		    \allStrikesOneContinueBeat "cl.1"
		    \allStrikesOneContinueBeat "cl.1"
        R2. | r4 a'4\p\< ~ a8 a8-.\mf | gis2.-- | r4 a4\p\< ~ a8 a8-.\mf | gis2.-- | r4 << a2. {s2\p\< s4\f} >>
		}
allStrikeClarinetTwo = {
		   \allStrikesOne "cl.2" 
		    |
		    \allStrikesOneContinueBeat "cl.2"
		    \allStrikesOneContinueBeat "cl.2"
		    \allStrikesOneContinueBeat "cl.2"
		    \allStrikesOneContinueBeat "cl.2"
        R2. | r4 a'4\p\< ~ a8 a8-.\mf | gis2.-- | r4 a4\p\< ~ a8 a8-.\mf | gis2.-- | r4 << a2. {s2\p\< s4\f} >>
		}
allStrikeBassoonOne = {
		   \allStrikesOne "bsn.1" 
		    |
		    \allStrikesOneContinueBeat "bsn.1"
		    \allStrikesOneContinueBeat "bsn.1"
		    \allStrikesOneContinueBeat "bsn.1"
		    \allStrikesOneContinueBeat "bsn.1"
        \relative c {R2. | ges2.\mf |  ges2. | r4 ges2  |  ges2.  | g?1->\f }
		}
allStrikeBassoonTwo = {
		   \allStrikesOne "bsn.2" 
		    |
		    \allStrikesOneContinueBeat "bsn.2"
		    \allStrikesOneContinueBeat "bsn.2"
		    \allStrikesOneContinueBeat "bsn.2"
		    \allStrikesOneContinueBeat "bsn.2"
        \relative c {R2. | des,2.\mf |  des2. | r4 des2 |  des2.  | c1->\f }
		}
allStrikeHornOne = {
		   \allStrikesOne "hn.1" 
		    |
		    \allStrikesOneContinueBeat "hn.1"
		    \allStrikesOneContinueBeat "hn.1"
		    \allStrikesOneContinueBeat "hn.1"
		    \allStrikesOneContinueBeat "hn.1"
        \relative c' {fis2.\mf | fis2. | R2. | fis2. | fis2.\< | r2\! g2->\f | }
		}
allStrikeHornTwo = {
		   \allStrikesOne "hn.2" 
		    |
		    \allStrikesOneContinueBeat "hn.2"
		    \allStrikesOneContinueBeat "hn.2"
		    \allStrikesOneContinueBeat "hn.2"
		    \allStrikesOneContinueBeat "hn.2"
        \relative c {fis2.\mf | b2. | R2. | a2. | d2.\< | r2\! c2->\f | }
		}
allStrikeHornThree = {
		   \allStrikesOne "hn.3" 
		    |
		    \allStrikesOneContinueBeat "hn.3"
		    \allStrikesOneContinueBeat "hn.3"
		    \allStrikesOneContinueBeat "hn.3"
		    \allStrikesOneContinueBeat "hn.3"
        \relative c' {cis2.\mf | R2. | fis2. | cis2. | R2. | fis1->\f | }
		}
allStrikeHornFour = {
		   \allStrikesOne "hn.4" 
		    |
		    \allStrikesOneContinueBeat "hn.4"
		    \allStrikesOneContinueBeat "hn.4"
		    \allStrikesOneContinueBeat "hn.4"
		    \allStrikesOneContinueBeat "hn.4"
        \relative c' {R2. | cis2.\mf | cis2. | R2. | cis2.\< | cis1->\!\f |  }
		}
allStrikeTrumpetOne = {
		   \allStrikesOne "tpt.1" 
		    |
		    \allStrikesOneContinueBeat "tpt.1"
		    \allStrikesOneContinueBeat "tpt.1"
		    \allStrikesOneContinueBeat "tpt.1"
		    \allStrikesOneContinueBeat "tpt.1"
       \relative c' { cis8\mf( d e4 fis4) | r4 r4 fis4( | cis16-> ~ d8. e4 ~ e8 fis8) | cis8([ d] ~ d[ e] fis4) | R2. | cis8(\f d e fis) cis( d e fis) }
		}
allStrikeTrumpetTwo = {
		   \allStrikesOne "tpt.2" 
		    |
		    \allStrikesOneContinueBeat "tpt.2"
		    \allStrikesOneContinueBeat "tpt.2"
		    \allStrikesOneContinueBeat "tpt.2"
		    \allStrikesOneContinueBeat "tpt.2"
        \relative c' { R2.  | cis16->(\mf ~ d8. e4 fis4) | R2. | r4 r4 fis4( | cis8\< d e4 ~ e8 fis8)\f\! |  r2 cis8( d e fis) }
		}
allStrikeTromboneOne = {
		   \allStrikesOne "tbn.1" 
		    |
		    \allStrikesOneContinueBeat "tbn.1"
		    \allStrikesOneContinueBeat "tbn.1"
		    \allStrikesOneContinueBeat "tbn.1"
		    \allStrikesOneContinueBeat "tbn.1"
        \relative c {fis2.\mf | g2. | a2. | r4 b2\< | b2. | c1\f}
		}
allStrikeTromboneTwo = {
		   \allStrikesOne "tbn.2" 
		    |
		    \allStrikesOneContinueBeat "tbn.2"
		    \allStrikesOneContinueBeat "tbn.2"
		    \allStrikesOneContinueBeat "tbn.2"
		    \allStrikesOneContinueBeat "tbn.2"
        \relative c  {cis2.\mf | d2. | e2. | r4 fis2\< | fis2. | g1\f}
		}
allStrikeTuba = {
		   \allStrikesOne "tba" 
		    |
		    \allStrikesOneContinueBeat "tba"
		    \allStrikesOneContinueBeat "tba"
		    \allStrikesOneContinueBeat "tba"
		    \allStrikesOneContinueBeat "tba"
        \relative c {R2. | b2.\mf | e2. | r4 a,2\< | d2. | g2-> c2->\ff }
		}
allStrikeTimpani = { 
	<>^"hard beaters"
  \allStrikesOneTimpani "timp"
  des4-> r4 r4 | des\mf r4 ges | des4 r4 r4 |
  ges8 ges r4 r4 | ges8 ges r4 r8 ges | g,4->\f\! r4 g8-> g8-> g4:32 |
	}
allStrikePercussionOne = {
			\ranInstrumentSwitch "whistle" "whistle"
			b1~\pp | b1~ | b1~ |  b4 r4 b2~ | b2 ~ b4. r8 | 
      r4 b2. ~ | r4 b2. |
			r4 b2.~ | b2~ \ranInstrumentSwitch "crash cymbals" "to cym" r2 |  
      R1 | R1 | 
      b4->\f^"cym, l.v." r4 r4 | R2.*4 | R1 |
      % this was the whistle crescendo:
      %<<{r4 b2.~ | b1~ }  {s4 s2.\< | s2.. s8\!\fff} >>
		}
allStrikePercussionTwo = \relative c' {
	\ranInstrumentSwitch "crash cymbals" "crash cymbals"
		   b4->\fff r4^"l.v." r2 | R1 |  
       r2 r4 r8[ \ranInstrumentSwitch "tom tom" "tom tom" b16\pp\< b] | b b b b b\!->\fff[ b-> r8] r2 | r2 r8[ b16\pp\< b] b b b8\fff\!-> |
      r2 r4 r8[ b16-> b->] | b->[ b-> r8] b16->[ b-> r8] b16\pp\< b b b b b b b | 
      b16->\fff\![ b-> r8] r8[ b16-> b16] b16->[ b16-> r8] r4  | r4 b16-> b b b b b b-> b-> r4 |
      b16-> b b b b b b-> b-> r4 b16-> b-> b b |
      b-> b-> r8^"to cow bell" r4 r2 |
      %the original last hit line:
      %b-> b-> b b b b b-> b b b b-> b b-> b-> b-> b-> |
      \ranInstrumentSwitch "cow bell" "cow bell (same drumsticks)"
      \slurDashed
      b2.\pp:32( | b2.:32)( | b2.:32)( | b2.:32)( | <<{ b2.:32)( | b1:32) } {s2.\< | s2.. s8\!\f } >>
      \slurSolid
		}

allStrikeharpRepeat = \relative c'' {
  <des des'>8 \change Staff = "harpBottom" <cis cis'> \change Staff = "harpTop"
}

allStrikeHarpTop = {
      <>->
      \allStrikesOneHarp "hp.1" 
			|
			<>->[ $(ranDataNote allStrikes1 "hp.1" 7 4) <>-> $(ranDataNote allStrikes1 "hp.1" 7 4) r8]
      <>->[ $(ranDataNote allStrikes1 "hp.1" 7 4) <>-> $(ranDataNote allStrikes1 "hp.1" 7 4) r8]
      <>->[ $(ranDataNote allStrikes1 "hp.1" 7 4) <>-> $(ranDataNote allStrikes1 "hp.1" 7 4) r8]
      <>->[ $(ranDataNote allStrikes1 "hp.1" 7 4) <>-> $(ranDataNote allStrikes1 "hp.1" 7 4) r8]
      |
        <>\f \allStrikeharpRepeat  \allStrikeharpRepeat \allStrikeharpRepeat |
        \allStrikeharpRepeat \allStrikeharpRepeat \relative c'' {<des des'>8 \change Staff = "harpBottom" <a' a'>-> \change Staff = "harpTop" } |
        \relative c'' {<fis fis'>8-> \change Staff = "harpBottom" <cis cis'> \change Staff = "harpTop" } \allStrikeharpRepeat \allStrikeharpRepeat |
        \allStrikeharpRepeat \allStrikeharpRepeat\relative c'' {<des des'>8 \change Staff = "harpBottom" <a' a'>-> \change Staff = "harpTop" } |
        \relative c'' {<fis fis'>8-> \change Staff = "harpBottom" <cis cis'> \change Staff = "harpTop" }  \allStrikeharpRepeat \allStrikeharpRepeat |
       \allStrikeharpRepeat \allStrikeharpRepeat \allStrikeharpRepeat \allStrikeharpRepeat |
		}
allStrikeHarpBottom = {
      <>->
      \allStrikesOneHarp "hp.2" 
      |
      <>->[ $(ranDataNote allStrikes1 "hp.2" 7 4) <>-> $(ranDataNote allStrikes1 "hp.2" 7 4) r8]
      <>->[ $(ranDataNote allStrikes1 "hp.2" 7 4) <>-> $(ranDataNote allStrikes1 "hp.2" 7 4) r8]
      <>->[ $(ranDataNote allStrikes1 "hp.2" 7 4) <>-> $(ranDataNote allStrikes1 "hp.2" 7 4) r8]
      <>->[ $(ranDataNote allStrikes1 "hp.2" 7 4) <>-> $(ranDataNote allStrikes1 "hp.2" 7 4) r8]
        s2.*5 | s1
      }
allStrikeViolinI = {
		   \allStrikesOne "vln.I" 
		    |
		    \allStrikesOneContinueBeat "vln.I"
		    \allStrikesOneContinueBeat "vln.I"
		    \allStrikesOneContinueBeat "vln.I"
		    \allStrikesOneContinueBeat "vln.I"
        <dis fis>8-.->^"div."\mf <dis fis>-.-> <dis fis>-. <dis fis>-. <dis fis>-. <dis fis>-. |
        <dis fis>8-.-> <dis fis>-.-> <dis fis>-. <dis fis>-. <dis fis>-. <dis fis>-. |
        <dis fis>8-.-> <dis fis>-.-> <dis fis>-. <dis fis>-. <dis fis>-. <dis fis>-. |
        <dis fis>8-.-> <dis fis>-.-> <dis fis>-. <dis fis>-. <dis fis>-. <dis fis>-. |
        <dis fis>8-.-> <dis fis>-.->\< <dis fis>-. <dis fis>-. <dis fis>-. <dis fis>-. |
        <dis fis>8-.-> <dis fis>-.->\!\f <dis fis>-. <dis fis>-. <dis fis>-.-> <dis fis>-.-> <dis fis>-. <dis fis>-.|
		}
allStrikeViolinII = {
		   \allStrikesOne "vln.II" 
		    |
		    \allStrikesOneContinueBeat "vln.II"
		    \allStrikesOneContinueBeat "vln.II"
		    \allStrikesOneContinueBeat "vln.II"
		    \allStrikesOneContinueBeat "vln.II"
        <d f>8-.->^"div."\mf <d f>-.-> <d f>-. <d f>-. <d f>-. <d f>-. |
        <d f>8-.-> <d f>-.-> <d f>-. <d f>-. <d f>-. <d f>-. |
        <d f>8-.-> <d f>-.-> <d f>-. <d f>-. <d f>-. <d f>-. |
        <d f>8-.-> <d f>-.-> <d f>-. <d f>-. <d f>-. <d f>-. |
        <d f>8-.-> <d f>-.->\< <d f>-. <d f>-. <d f>-. <d f>-. |
        <d f>8-.-> <d f>-.->\!\f <d f>-. <d f>-. <d f>-.-> <d f>-.-> <d f>-. <d f>-. |
		}
allStrikeViola = {
		   \allStrikesOne "vla" 
		    |
		    \allStrikesOneContinueBeat "vla"
		    \allStrikesOneContinueBeat "vla"
		    \allStrikesOneContinueBeat "vla"
		    \allStrikesOneContinueBeat "vla"
        <cis e>8-.->^"div."\mf <cis e>-.-> <cis e>-. <cis e>-. <cis e>-. <cis e>-. |
        <cis e>8-.-> <cis e>-.-> <cis e>-. <cis e>-. <cis e>-. <cis e>-. |
        <cis e>8-.-> <cis e>-.-> <cis e>-. <cis e>-. <cis e>-. <cis e>-. |
        <cis e>8-.-> <cis e>-.-> <cis e>-. <cis e>-. <cis e>-. <cis e>-. |
        <cis e>8-.-> <cis e>-.->\< <cis e>-. <cis e>-. <cis e>-. <cis e>-. |
        <cis e>8-.-> <cis e>-.->\!\f <cis e>-. <cis e>-. <cis e>-.-> <cis e>-.-> <cis e>-. <cis e>-.|
		}
allStrikeCello = {
		   \allStrikesOne "vc" 
		    |
		    \allStrikesOneContinueBeat "vc"
		    \allStrikesOneContinueBeat "vc"
		    \allStrikesOneContinueBeat "vc"
		    \allStrikesOneContinueBeat "vc"
        \relative c, {<cis fis>2.\mf^"div" | <d g>2. | <e a>2. | <fis b>2.\< | <fis b>2. | <g c>1\f}
		}
allStrikeBass = {
		   \allStrikesOneBass "cb" 
		    |
		    \allStrikesOneContinueBeat "cb"
		    \allStrikesOneContinueBeat "cb"
		    \allStrikesOneContinueBeat "cb"
		    \allStrikesOneContinueBeat "cb"
        \clef bass
        \relative c, {des2.\f^"rebow as needed" ~ | des2. ~ | des2. ~ | des2.\< ~ | des2. ~ | des2->\ff c2-> }
		}
