cymbalsSectionTwo = {
	<> ^\fermata 
    c1:32\ff^"(susp)" |
    R2..*2 |
    R1 |
    R2..*2 |
    R1*2 |
    R2..*2 |
    R1 |
    \relative c' {
    	r4 c2.:32\p\<^"(susp)" |
	    f,4\mf ^"(china, bell)" e'4 r2 |
	    r4 c2.:32\p\<^"(susp)" |
	    f,8\mf ^"(china, bell)" e'8 r4 r2 |
	    %<>^"[ ** continue, develop... ** ]"
	    R1 | 
	    R1 |
	    R2..*2 |
	    R1 | R2.*9 | 
	    % everone free
	    r1 c4:32\pp ^"(susp)" r2  c2:32 
	    r2 c4:32 r2. c2:32 r1
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
	r2 r4  r8 bes' | 
	\transpose b aes' \marimbaALine
	\transpose b aes' \marimbaALine
	\transpose b aes' \marimbaAStart g f
	ees4-> r4 r2 | %r4 f8 des bes-> ges' |
	R1 | %r2 ees2:32\p\<
	ees4-> r4 r2 | % ees4->\mf r4 f8 des bes4:32\p\<( |
	r2 d2:32\p\< | % bes1:32)
	<>\mf
	<<f4 \\ <g, d'>4>> r4 r2 |
	R1 |
	\transpose cis des \marimbaALine
	\transpose cis des \marimbaALine
	cis1:32 %4/4
	% the 6/8 -----------------------------
	\transpose bes cis' \moveLineOneHits 
	e4.:32
	\transpose bes cis' \moveLineOneHits
	e4.:32
	d2.:32(
	d:32)(
	d:32)(
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
	c'1:32\pp ^\parenthesize \fermata
}


marimbaLowerTwo = {
	\clef bass
	r1\fermata | <>_\f s2..*2 | R1 | s2..*2 | s1 | R1 | s2..*2 | s1|
	<f, c'>4-> r4 r2 | % <bes, f'>4 <bes f'>4-> |
	R1 |
	<f c'>4-> r4 r2 | % <bes, f'>4 r4 |
	R1*3 |
	s2..*2 |
	R2. * 9 |
	s1*3 r1
}