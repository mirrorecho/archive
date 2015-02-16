fluteSectionTwo = \relative c''' {
<> ^\fermata 
\relative c'''' {\nastyNote g1\ff ~ ^"*" } |
	r4 r4 <>\f \bellThreeTop | \bellFourTop r4. |
	R1 |
	\transpose c d {r4 r4 \bellThreeTop | \bellFourTop r4.}
	%<>^"[ ** do I really want these notes? ** ]"
	\relative c' {r2 f8(\mf des') bes( ges') | }
	\transpose c f, \bellLineTop
	R2..*2 |
	\relative c'' {
		ees1\p\< ( ~ |
		\times 2/3 {ees4 aes d} c4\mf\> bes ~ |
		bes2.) r4\p\!
		\times 2/3 {ees4\mf\> ( aes, d} \times 2/3 {c4 aes g ~ } g2\p\! ) r4 g4\< ~ ( |
		%<>^"[ ** better to change it up here slightly ** ]"
		\times 2/3 {g4 bes e!\mf\>} d4 c ~ |
			c2.) r4\p\!
	
		R2..*2 |
		R1
		\transpose bes cis' {<>\mf \moveLineOne \moveLineTwoA}
		\transpose bes cis' {\moveLineOne} b8( g b,)
		%<>^"[ ** ... becoming free, echos from before, going down ** ]"
		R2.*3
		g'8( d' g,) c( bes aes) |
		<> ^\markup { \rounded-box "freely until B" }
		\transpose c c' \mainLineTwoSlur   r8 bes( ~ |
		\times 2/3 {bes4 a! g ~} g4) |
		r8 <>\>^\parenthesize \fermata 
		\transpose ees bes \mainLineOneSlur s8 |
	}
	% here's everyone free
	\relative c'' {
		r8 <>^\parenthesize \fermata 
		\transpose c g \mainLineTwoSlur
		r8  d2(\mp\> a4 g)  a8( g4 f8) 
		\boxNotes {
      		\times 2/3 {d4(\pp a' d, ~ } d2)
      	} #5 #5 "repeat until B"
      	\hideNotes r4 \unHideNotes
		
	}
}