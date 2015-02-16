fluteSectionThree = \relative c''' {
	<> ^\fermata 
	\relative c'''' {\nastyNote g1\ff ~ ^"*" } |
	bes8(\f ees, a) g( ees f) |
  	c4.---> \relative c'''' {\nastyNote g4.\ff ~ ^"*" } |
  	<>\f \moveLineOne \moveLineTwoA
  	\moveLineOne \moveLineTwoB

	  %<> ^ "[ ** unison '3 line' with cl ** ]"
	r2 b'8( \mf ais gis fis ~ | fis2.) r4
	a4( gis8 fis e2) |
  	b4( fis'2.) |
  	r2 g8( fis e d) |
  	<> ^\markup { \rounded-box "freely until end" }
  	a8( \> e'2..) |

	 \times 4/5 {r8 f8(\mp e d c}  \times 2/3 {bes4) f'( e} |
	 d8 c) bes4( c8 g4) r8 |
	 \times 2/3 {f2(\> ees des)}
	 r8 des4.( ges4 c,4 ~ | c4) r8 
	 \times 2/3 {des2( ges c,)}r8
	des!4.\ppp( c2) 
	des!2( c1) 
	des!2.( c1) ^\parenthesize \fermata 
}