fluteII = { #(set-accidental-style 'modern)
\kappaMeterOn 4/4
% A: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "A" \relative c'' {
 	f1^\markup \column {"Present your flute to a household pet. " 
 	 					"He or she may choose to perform the" 
 	 					"following music." } | 
	f2\< bes!16-.->\sfz\> bes!-.-> <<f4. { s4 s8\!} >> |  
	r2 g2 | 
	r8 bes-. bes4\mp\< f'16-.->\sfz\> f-.-> << bes,4. {s4 s8\!}>>  |
}
% B: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "B" \relative c'' {
	% is the e natural OK here?
	r4 e-- g4.-- c,8-. | 
	\unique "F.II.two.a"  \relative c''' { bes16(\f c d ees) f( ees d c) bes8-- r8 r4   } |
	\unique "F.II.one.b"  \relative c'' {\tuplet 3/2 {f4( e b)} bes16-.-> bes16-.-> r8 f'8( e) } |
	d8-.\f r r g'-.-> g,4.\> c,8-.\mp |
}
% C: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "C" \relative c'' {
	\unique "F.II.two.a" {ees16(\< f g aes) bes( aes g f) ees16( f g aes) bes( aes g\! f)} | 
	d8-.\f r r g'-.-> r g-.-> r8 c,-.  | 
	f,2(\mf aes) | 
	f8-. r r aes-.-> r aes-.-> c4-- |
}
% D: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "D" \relative c'' {
	r4 f2( a,4) | d8-.->\f r r d8-.\mp r2 | 
	\unique "F.II.two.a" {\relative c'' { f16(\< g aes bes) c( bes aes g) f8--\!\f r8 r4   } } |
	\unique "F.II.one.b" \relative c'' { \tuplet 3/2 {aes4( g) d'(} ees8 d) aes'16-.-> aes -.-> r8 } |
}
% E: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "E" 
	\unique "F.II.three.a" \relative c'' { 
		f4\p\< aes8-.->\!\f f4(\p\< e)  d16-.->\!\f d-.-> } | 
	\relative c'' { aes16-.\p aes16-. r8 aes'16-. aes16-.\mp r8 r4 r8 c,8-. | 
	bes16-. bes16-. r8 r8 bes'16-.\mf bes16-. r4 d4--  | 
	\unique "F.II.two.a" {aes16( bes c d) ees( d c bes) aes4-- d4--} | 
}
% F: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "F" \relative c''' {
	% USE A CROSS SLUR HERE (for last 3 bars... because I can)
	\unique "F.II.two.a" { bes16(\mf\< c d ees) f( ees d c) bes16( c d ees) f(\!\f ees d c) } | 
	aes4( aes, aes') r4  | 
	r4 aes16-.->\f aes-.-> r8 aes'16-.-> aes-.-> r8 aes,4--->  | 
	 bes16-.-> bes-.-> r8  bes16-.-> bes-.-> r8  bes16-.-> bes-.-> r8  bes'16-.-> bes-.-> r8  | 
}
% G: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "G" 
	\unique "F.II.one.b" \relative c''' { \tuplet 3/2 {aes4( g d)} aes'8( g) d'16-.-> d-.-> r8 } 
	\unique "F.II.three.b" \relative c'' {
		s4 \tuplet 3/2 {d!2(\p\< des4)\!} c16-.->\f c16-.-> s8 } 
	\relative c'' { ees16-.->\< ees-.-> r8 ees16-.-> ees-.-> r8 ees'16-.-> ees-.-> r8 ees16-.-> ees-.->\! r8 | 
	aes,8\<-- ees'4-- aes16-.->\!\ff aes-.-> r8 ees,,4.--\p | }
% H: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "H" \relative c'' {
	\unique "F.II.two.a" { c16( d ees f) g( f ees d) c4 r4
		c16( d ees f) g( aes bes c) d4.-> r8 | }  |
	\unique "F.II.three.b" \relative c'' { 
		s8 d2(\mf\> bes8) a16-.\!\p a-. s8 \bar ""
		s8 d2(\> a8 aes) g'16-.\!\pp g-.   } |
}
\pageBreak
%%%%%%% PAGE 2 %%%%%%%%%%%%%%%
\kappaMeterOn 4/4
% I: ------------------------------------------------------------------------------------------------------------------------------------------------------
% MED-FAST TEMPO...
\newLine "I" \relative c'' {
	r2 r4 a8(\mp bes ) | \unique "F.II.two.a" {r4 c16( d ees f) g( f ees d) c4--} | 
	ees'8--->\mf r8 r4 r4 g,8---> aes--->  | 
	r4 ees'8--->\f r8 r4 g,8---> aes---> |
}
% J: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "J" \relative c''' {
	r4 ees8---> r8 r4 ees,4---> | 
	\unique "F.II.two.a" { r4 bes8( d,) r4 g16( aes bes c)} | 
	e2 e8( c) a( e') | 
	r4 g8(  d') ees( bes aes4) |
}
% K: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "K" \relative c''' {
	r4 ees8--->\f r8  g,8---> aes---> r4  | 
	\unique "F.II.two.a" {ees'16(\f d c bes) aes( bes c d) ees4-- ees4--} | 
	% ees8(\> d bes a) g( d g)\!\p r8 |  % (had before)
	ees8(\> d bes a) g2\!\p |
	\unique "F.II.three.b" \relative c'' {
		d8(\< des) g,16-. g-. r8 d'4 des'16-.->\! des-.-> r8 } |
}
% L: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "L" \relative c''' {
	r4 g4\< e'16-.->\!\f e-.-> r8 fis,---> d'16-.-> d-.->| 
	R1 | 
	\unique "F.II.one.b" \relative c'' { r4 \tuplet 3/2 {f4(\> e b)} a'16-.\!\pp a-. r8}  | 
	r2 a,4\pp a8( bes) |
}
% M: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "M" \relative c'' {
	r2 r4 a8( bes ) | 
	\unique "F.II.one.b" \relative c'' {\tuplet 3/2 {f4( e b)} f'8( e,) a'16-. a-. r8} |
	c4( a') c,( a') | 
	\unique "F.II.one.b" \relative c'' { r2 \tuplet 3/2 {e4( f b,)} } |
}
% N: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "N" \relative c''' {
	\unique "F.II.two.a" { aes16(\< g f ees) d( ees f g) aes4--\!\f g\p  } | 
	r4 a,8( bes)  d4( a')  | 
	c,( a') a,( a')  | 
	\unique "F.II.one.b" \relative c'' {\tuplet 3/2 {bes4_( a e)} bes'4 e16-. e-. r8} |
}
% O: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "O" \relative c'' {
	r4 g d'( a') | 
	\unique "F.II.two.a" {g16( aes bes d) ees( d c bes) g16( aes bes d) ees( d c bes)}  | 
	R1 | \unique "F.II.two.a" {g16(\f aes bes d) ees( d c bes) g16( aes bes d) ees( d c bes)} |
}
% P: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "P" \relative c'' {
	r4 f8-- c'-- f,-- c'-- bes-- d--  | 
	c,4( a') d8( ees a,4) | 
	R1 | 
	\unique "F.II.two.a" {aes16(\< g f ees) d( ees f g) aes( bes c d) ees4--->\!\f}   \bar "|."
}
}