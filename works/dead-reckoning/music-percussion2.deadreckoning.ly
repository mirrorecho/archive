cymbalsSectionTwo = {
	<> ^\fermata 
    c1:32\ff^"(susp)" |
    R2..*2 |
    R1 |
    R2..*2 |
    R1 |
    %R2..*2 |
    r2 r2\fermata |
    R1
    \relative c' {
    	r4 g'8\p\<^"(splash)" g g g g g |
	    f,4\mf ^"(china, bell)" e'4 r2 |
	    r4 g8\p\<^"(splash)" g g g g g |
	    f,8\mf ^"(china, bell)" e'8 r4 r2 |
	    %<>^"[ ** continue, develop... ** ]"
	    r4 g8\p\<^"(splash)" g g g g g |
	    g\mf\> g g g g g g g\p |
	    %R2..*2 |
	    R1 | 
	    R2.*3 | 
	    f,2.:32\mf ^"(china)"
	    R2.*5 | 
	    % everone free
	    \relative c' {
	    	    r1 c4:32\pp ^"(susp)" r2  c2:32 
	    	    r2 c4:32 r2. c2:32 r1 \fermata}
	}
}

marimbaUpperTwo = \relative c'' {
	r1\fermata | 
\transpose cis des {
	\marimbaALine
	\marimbaALine}
%<> ^"[ ** use this? ** ]" 
aes8  des g, f' f des bes ges | %4/4
	%des8[ <aes, ees'>] c'[ <aes, ees'>] bes'[ <aes, ees'>] f'[ <aes, ees'>]
	\transpose b des' \marimbaALine
	\transpose b des' \marimbaALine
	\transpose b des' {\marimbaAStart \marimbaAEnd}

	%<> ^"[ ** rest OK? **]"
	r2 r2\fermata | 
	%\transpose b aes' \marimbaALine
	%\transpose b aes' \marimbaALine
	\transpose b aes' \marimbaAStart g8 f
	ees4-> r4 r2 | %r4 f8 des bes-> ges' |
	R1 | %r2 ees2:32\p\<
	ees4-> r4 r2 | % ees4->\mf r4 f8 des bes4:32\p\<( |
	r2 d2:32\p\< | % bes1:32)
	<>\mf
	<<f4 \\ <g, d'>4>> r4 r2 |
	R1 |
	
	%cuttinf stuff out:
	%\transpose cis des \marimbaALine
	%\transpose cis des \marimbaALine
	cis1:32\p\< %4/4
	% the 6/8 -----------------------------
	<>\mf
	\transpose bes cis' \moveLineOneHits 
	e4.:32
	\transpose bes cis' \moveLineOneHits
	e4.:32
	
	d2.:32
	R2.
	d:32(
	d:32)
	g,:32( \>
	g:32)
	a:32 ~
	% everyone free
	a1:32) \mp
	r4
	bes2:32\>
	r2
	e2:32
	r4
	d'2.:32
	r2
	c'1:32\pp  \fermata
}


marimbaLowerTwo = {
	\clef bass
	r1\fermata | <>_\f s2..*2 | R1 | s2..*2 | s1 | r2 r2\fermata | %s2..*2 | 
	s1\p\<|
	<f, c'>4->\mf r4 r2 | % <bes, f'>4 <bes f'>4-> |
	R1 |
	<f c'>4-> r4 r2 | % <bes, f'>4 r4 |
	R1*3 |
	%s2..*2 |
	R1
	R2. *9 |
	s1*3 r1 \fermata
}