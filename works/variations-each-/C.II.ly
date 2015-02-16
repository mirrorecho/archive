repeatMe = { \relative c'' { r8 e8--->\f\> e-- e-. e-. e-. e-.\!\p e-.->\f  } }
shakeTwo = \relative c''{d16( ees d ees)}

cTremFour = \relative c''' { \repeat tremolo 14 {a32( e)} }
cTremDim = \relative c''' { \repeat tremolo 14 {a32( ees)} }

clarinetII = \relative c'' { #(set-accidental-style 'modern-cautionary)
\kappaMeterOn 4/4
\tempo  \markup \fontsize #2 { \note #"4" #1 = 132 ca, or faster, accel. until M}

% A: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "A" \relative c'' {
	<< R1  {s2.. s8\f} >> | 
	\unique "C.II.two.a" { \shakeTwo \shakeTwo \shakeTwo d8-. r8 } | 
	R1 | 
	\unique "C.II.two.a" { \shakeTwo \shakeTwo d8-. r8 r4 } |
}
% B: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "B" \relative c'' {
	\unique "C.II.one.b" { \relative c'' {
		d8--\< fis-- g-- b-- c-- e-- f--->\! r8}} | 
	bes4--\< bes-- bes(\!\> a'\!) | r4 a-- c,( a'8)-- c,-. | 
	\unique "C.II.one.b" { \relative c'' {
		d8-.-> fis-- g-- b-.-> c-- e-- f-- a,-.}} | 
}
% C: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "C" \relative c'' {
	d4-- bes-- d-- bes-- | 
	des8-- bes-- des-- bes-- des-- bes-- r4 |   
	ees4--\p\< ees-- ees-- ees--\! | 
	ees4--\f r ees--\p\< ees-- |
}
% D: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "D"  
	\relative c'' { ees!4--\!\f bes2. | }
	\unique "C.II.three.a" \relative c'' { e16(\f f8.~ f8) a-.\mp << r2 {s4. s8\f} >>} | 
	\relative c' { f4-- d'-- c8-- r8 r4 | }
	\transpose e es \repeatMe |

% E: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "E" \relative c'' {
	f2. g4-- | 
	r4 d2\p\< bes!4--\! | 
	\repeatMe | 
	f'8-.-> r ees4-- ees-- bes'4-- |
}
% F: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "F" \relative c''' {
	bes4--\mf\< bes-- bes-- bes--\!\f | 
	\unique "C.II.three.b" {\cTremDim r8} | 
	a,4--\p\< a-- a-- a--\f\! | 
	\repeatMe |
}
% G: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "G" 
	\relative c'' {e4-- d2 r4} | 
	\unique "C.II.two.a" \relative c' { ees4-- c'-- \transpose d  g, \shakeTwo g8-. r8 } | 
	\repeatMe
	\unique "C.II.two.a" \relative c'' {\shakeTwo \shakeTwo \shakeTwo d8-.-> r8}  |



% H: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "H"  
	\repeatMe | 
	\unique "C.II.two.a" \relative c' { f2 \transpose d d, {\shakeTwo \shakeTwo} } | 
	\repeatMe | 
	\unique "C.II.two.a" { \transpose d a,, {\shakeTwo \shakeTwo \shakeTwo \shakeTwo } } |

\pageBreak
%%%%%%% PAGE 2 %%%%%%%%%%%%%%%
\kappaMeterOn 4/4
% I: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "I" \relative c'' {
 	c1^\markup \column {"Put down your clarinet and run away." 
						"Project the thought of the following" 
						"music onto your clarinet, remotely."} |  
	r8 e8--\< e-- e-. e-. e-. e-. e-.->\f | 
	\unique "C.II.two.a" { \transpose d g, {<>\< \shakeTwo \shakeTwo \shakeTwo \shakeTwo <>\! }  | 
		r4 bes8--->\f r8 \transpose d g, {\shakeTwo} c8---> c---> } |
}
% J: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "J" \relative c' {
	\unique "C.II.two.a" { \transpose d g, {\shakeTwo } ees8---> ees---> \transpose d g, {\shakeTwo \shakeTwo} } | 
	\transpose e a, \repeatMe | 
	\unique "C.II.three.a" \relative c'' {s8 e16->(\> f2) a8-.-> r8 s16 \bar "" 
		a8(\mp\< \tuplet 3/2 {e8)[ a( e)]} e16(->\!\f f4.) a8-.-> s16 } |
}

% K: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "K" \relative c''' {
	\unique "C.II.two.a" {
	\transpose d g {<>\mf\< \shakeTwo \shakeTwo \shakeTwo \shakeTwo <>\! } | 
	bes4--\f ees,-- aes,-- g--  } | 
	\transpose e b \repeatMe | 
	\repeatMe |
}
% L: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "L"
	\unique "C.II.three.a" \relative c'' { s8 f16( e2) a,8-- bes8-.-> s16 \bar ""
		r8 f'16( e2) b!8-.-> r8 s16  } 
	\repeatMe | \repeatMe |

% M: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "M" \relative c' {
	 	c1^\markup \column {"Feel the music. Make an impression." } |   
	\unique "C.II.one.b" { \relative c' {
		a8-- cis-- d-- fis-- g-- fis-- d-- cis--}} | 
	\transpose e a, \repeatMe | f4--\p\< f-- f-- f--\!\mf |
}
% N: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "N" 
	\repeatMe | 
	\unique "C.II.three.a" \relative c'' { s8 f16( e2) aes,!8-.-> r8 s16 \bar "" 
		s16 f'16( e2)\fermata aes,!8-.-> r8 s8
		}  
	\relative c' { f4--\<\p f-- f-- f--\!\f } |
% O: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "O" \relative c'' {
	\unique "C.II.one.b" { \relative c' {
		r8 a--\<\p cis-- d-- fis-- g-- b-- c--\!\f}} |
	\unique "C.II.two.a" { \shakeTwo \shakeTwo \shakeTwo \shakeTwo } | 
	\transpose e e' \repeatMe | \repeatMe |
}
% P: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "P"
\unique "C.II.one.a" \relative c'' { 
	<>^"ad lib!" \makeClusters { 
		c4 <g c f> c4 <g c f>^\markup {\fontsize #4.4 "☻"} | 
		c4 <g c f> c4 <g c f>_\markup {\fontsize #4.4 "☂"} | 
		c4 <g c f> c4 <g c f> | 
		c4 <g c f> c4 <g c f>^\markup {\fontsize #4.4 "★"} | }
 }  \bar "|."

}