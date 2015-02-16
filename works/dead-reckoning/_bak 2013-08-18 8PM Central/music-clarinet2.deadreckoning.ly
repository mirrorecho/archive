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
	\transpose c f, \bellLineBottom
	R2..*2 | 
	%<>^"[ ** something here? ** ]"
	R1
	\times 2/3 {f,2\mp\< ( ees4} \times 2/3 {des4 ges2\mf\>} f2. ) r4\p |
	\times 2/3 {f2\mp\< ( ees4} \times 2/3 {des4 ees f\mf\> ~ } f2. ) r4\p |
	f2\< ( \times 2/3 {ees4 aes d\mf\> ~ } d1\> )  |
	R2..\! |
	R2.. |
	\relative c'' {bes4-- ges'-- ees-- bes'--} |
	\relative c'' {
		cis2. ~ | cis2 r4  |
		d2.  | bes,2.-> |
		d4( c8) bes'( aes4) | 
		R2. | %d2. ~ | d2 r4 |
		ees2. ~ | ees2 r4 |
		ees2. ~ | ees1
	}
	\times 2/3 {a2\mp\> ( g4} \times 2/3 {f4 g a\p ~ } a1 ) r8 |
\times 2/3 {a2\> ( g4} \times 2/3 {f4 e d ~ } d1\pp^\parenthesize \fermata ) 
}