clarinetSectionTwo = \relative c'' {
	%{
  R1 | b1 | c4 d e f |
  %}
  <> ^\fermata 
	\relative c'''' {\nastyNote g1\ff ~ ^"*" } |
	r4 r4 <>\f \transpose cis des {\bellThreeBottom | \bellFourBottom} r4. |
	R1 |
		\transpose cis ees {r4 r4 \bellThreeBottom | \bellFourBottom r4.}
	R1 | 
	\transpose c f, <<\bellLineBottom {s2 s2\fermata}>>
	%R2..*2 | 
	%<>^"[ ** something here? ** ]"
	R1
	<>\mp
	\pianoTrainLine \pianoAfterTrainLine |
	%\times 2/3 {f,2\mp\< ( ees4} \times 2/3 {des4 
		ges4 r4 r2 |
	\pianoTrainLine f8( des bes4)
	aes8->(\mf c2..)
	d8(\mp bes' a g) g( ees c aes')
	<>\<
	 \transpose c d' \pianoTrainLine g'8( ees c aes) |
		
	%\times 2/3 {f2\mp\< ( ees4} \times 2/3 {des4 ees f\mf\> ~ } f2. ) r4\p |
	%f2\< ( \times 2/3 {ees4 aes d\mf\> ~ } d2.\> r4\! )  |
	%R2..\! |
	%R2.. |
	\relative c'' {bes4--\mf ges'-- ees-- bes'--} |
	\relative c'' {
		cis2. ~ | cis2 r8 b(  |
				d c f e4) r8  | bes,2.-> |
		d4( c8) bes'( aes4 | 
		g8) r8 r8 r4. | %d2. ~ | d2 r4 |
		ees2. ~ | ees2 r4 |
		ees2. ~ | ees1
	}
	\times 2/3 {a2\mp\> ( g4} \times 2/3 {f4 g a\p ~ } a1 ) r8 |
\times 2/3 {a2\> ( g4} \times 2/3 {f4 e d ~ } d1\pp \fermata ) 
}