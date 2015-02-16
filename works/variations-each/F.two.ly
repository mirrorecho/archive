ostiFiveUp = \relative c'' {ees8-- bes'-- ees,-- bes'--}
ostiFour = \relative c''' {bes8-- f-- bes-- f--}
ostiFourUp = \relative c'' {f8-- bes-- f-- bes--}
ostiTwo = \relative c''' {aes8-- g-- aes-- g--}
ostiScramble = \relative c''' {\transpose ees f \ostiFiveUp g8---> d'--->}

fluteTwoA = \relative c'' { 
\kappaMeterOn 4/4
#(set-accidental-style 'modern)
\tempo  \markup \fontsize #2 { \note #"4" #1 = 132 ca, or faster, accel. until M}

% A: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "A" \relative c''' {
	<>\p\< \ostiFour \ostiFour | 
	bes8--->\f r8 r4 r4 bes8--\p f-- | 
	<>\< \ostiFour \ostiFour | 
	bes8--->\!\f r8 r4 <>\mp bes8-- f-- aes-- g-- | 
}
% B: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "B" \relative c''' {
	<>\< aes8-- g-- bes-- f-- aes8--g-- bes--->\! r8   | \cutout {s1} | 
	<>\p\< \ostiFour aes8-- g-- bes-- f-- | 
	bes8-.\!\f r8 r8 ees-.-> aes,4.\> ees8-.\!\mp  |
}
% C: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLineCutout "C" \relative c''' {
	\cutout {s1*2} %{ perhaps don't cutout 2nd bar? %} | 
	\transpose bes g {<>\p\< \ostiFour \ostiFour} <>\! |
	g8--->\f d-- r4 bes'8--\p\< f-- aes-- g--\! |
}
% D: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "D" \relative c''' {
	aes8(\f g )ees4( ~ ees8 d'4.)   | bes8-.->\f r8 r8 bes-.\mp r2 | \cutout {s1} | 
	<>\p\< \transpose bes g {\ostiFour \ostiFour} <>\! |
	%\startCutout s1 \stopCutout | d16 d d d d d d d d d d d d4 | c1
}
% E: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "E" \relative c''' {
	f8-.->\f r8 r4 r4 f,8--\p c-- | r4 f8-- bes-- f-- bes-- f-- bes-- | 
	f8--\< bes-- f-- bes-- f-- bes-- f--\f bes-- | \cutout {s1}  |
}

% F: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLineCutout "F" \relative c''' {
	\cutout {s1} | bes4( f ees') r4 | 
	c,8--\p\< f-- c-- f-- c-- f-- bes-- f--\! | bes--\f f-- bes-- f-- c'-- f,-- c'-- f,-- |
}
% G: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "G" \relative c''' {
	f4-- ees,2 r4 | <>\mp\< \ostiFiveUp \ostiFiveUp <>\! | 
	<>\f \ostiFourUp \ostiFourUp | f8-- r8 r4 r2 |
}

% H: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLineCutout "H" \relative c''' {
	\cutout {s1*2} | \transpose bes c' {\ostiFour \ostiFour} | f,1 |
}

\pageBreak
%%%%%%% PAGE 2 %%%%%%%%%%%%%%%
\kappaMeterOn 4/4
#(set-accidental-style 'modern)
% I: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLineCutout "I" \relative c'' {
	\cutout {s1*2}  | bes4-- a'2 g4-- | \cutout {s1} |
}

% J: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "J" \relative c''' {
	r4 bes8---> f---> c4-- bes'8( f) | 
	\cutout {s1} | 
	d2 g8( d) f( bes!) | \cutout {s1} | 
}
% K: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "K" \relative c''' {
	g8-.-> r8 ees'4--\<\mf ees-- ees--\!  | \cutout {s1*2} 
	<>\pp\< \transpose bes c' {\ostiFour \ostiFour} <>\! | 
}
% L: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "L" \relative c''' {
	r4 << \ostiScramble {s4\< s4. s8\!\f }>> | \cutout {s1} | 
	r4 << \ostiScramble {s4\<\mf s4. s8\!\f }>> | \cutout {s1} | 
}

% M: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLineCutout "M" \relative c' {
	\cutout {s1} | f8--\p\< c'-- << \ostiScramble {s4 s4. s8\!\mf} >> | 
	\cutout {s1} | <>\<\p \ostiFour \ostiFour <>\! |
}
% N: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLineCutout "N" \relative c''' {
	\cutout {s1*3} | <>\<\p \transpose bes aes {\ostiFour \ostiFour} <>\!  |
}

% O: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "O" \relative c''' {
	r4 <>\f  \ostiScramble | \cutout {s1} | 
	r4 c8--\mf\< f,-- c'-- f,-- c'-- f,--\! | \cutout {s1} |
}
% P: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLineCutout "P" \relative c''' {
	\cutout {s1*2} | r4 bes8--\mf\< f-- \ostiFour <>\! | \cutout {s1}  \bar "|."
}
}

%|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
%|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
%|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
%|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

% ALL SPECIAL !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


fluteTwoBWithOneB = \relative c'' { 
\kappaMeterOn 4/4
#(set-accidental-style 'modern)
\tempo  \markup \fontsize #2 { \note #"4" #1 = 132 ca, or faster, accel. until M}

% A: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLineSpecial "A" \relative c''' {
	R1 | 
	ees8--\f r8 r4 r4 a,8-- bes-- | 
	R1 | 
	a8-- r8 r4 ees8-- e-- f-- bes--  |
}
% B: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLineSpecial "B" \relative c''' {
	g8--\< f'-- c-- bes'-- f-- f-- bes--\ff r8 | 
	a,4--\f\< ees-- a(\> aes) <>\! | 
	r4 d-- b( d8) b-. | 
	g8-.-> f'-- c-- bes'-- f-- f-- bes-- bes-. |
}

% C: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLineSpecial "C" \relative c'' {
	r4 a--\< ees a--\! | 
	d8--\> ees-- c'-- ees-- c-- f--\! r4 | 
	e4--\p\< aes,-- e'-- bes-- | 
	ees,4-- r4 a-- ees--\! |
}

% D: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLineSpecial "D" \relative d''' {
	aes4--\f a2. | 
	bes4.( a8) ees'4.( e8)  | 
	bes4-- ees-- f,8-- r8 r4 | 
	r8 d'--->\f\> aes-- d-. aes-. d-. aes-.\!\p d-.->\f |
}

% E: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLineSpecial "E" \relative c'' { 
	ees2. e4--\p | 
	r4 ees'2\< ees,4--\! | 
	r8 ees'--->\f\> a,-- ees'-. a,-. ees'-. a,-.\!\p ees'-.->\f  | 
	r2 d4--\mp aes-- |
}

% F: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLineSpecial "F" \relative c''' { 
	ees4--\mf\< a,-- ees'-- a,--\f |
	a4( bes g) r | 
	aes--\p\< d,-- aes'-- d,--\! |
	r8 f--->\f\> a-- f-. a-. f-. a-.\!\p f-.->\f |
}

% G: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLineSpecial "G" \relative c''' {
	a4-- ees2 r4 |
	g8-- f-- c'-- bes-- c-- f,-- g-- aes-- |
	r8 f--->\f\> a-- f-. a-. f-. a-.\!\p f-.->\f |
	ees8-- f-- c-- c-- c-- f-- g-- bes-- |
}

% H: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLineSpecial "H" \relative c''' {
	r8 ees--->\f\> a,-- ees'-. a,-. ees'-. a,-.\!\p ees'-.->\f  | 
	r4 a,4-- ees-- a-- |
	r8 ees'--->\f\> a,-- ees'-. a,-. ees'-. a,-.\!\p ees-.->\f  | 
	f4-- g8-- f-- d-- bes'-- f-- ees'-- |
}

% I: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLineSpecial "I"
\relative c''' {
	R1 | 
	r8 a--->\f\> ees'-- a,-. ees'-. a,-. ees'-.\!\p a,-.->\f  | 
	ees4-- d2 g4-- |
	r4 a-- ees-- a,-- |
}

% J: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLineSpecial "J" \relative c'' {
	r4 f8---> c---> ees4-- a-- | 
	r8 aes--->\f\> d,-- aes'-. d,-. aes'-. d,-.\!\p aes'-.->\f |
	r2 f8(\< c) bes'( f)\! |
	r4 f--\> g2 <>\! |
}

% K: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLineSpecial "K" \relative c''' {
	r4 g--\< ees-- a--\! | 
	c4--\> aes-- c-- ees--\! | 
	r8 e--->\f\> bes-- e-. bes-. e-. bes-.\!\p e-.->\f  |
	r8 ees--->\f\> a,-- ees'-. a,-. ees'-. a,-.\!\p ees'-.->\f  | 
}
% L: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLineSpecial "L" \relative c'' {
	r4 f8-- e-- f-- e-- f-- bes-- |
	f8(\< aes) c( b) f8(\!\> bes4 a8)\! | 
	r8 a--->\f\> ees'-- a,-. ees'-. a,-. ees'-.\!\p a,-.->\f  | 
	r8 ees'--->\f\> a,-- ees'-. a,-. ees'-. a,-.\!\p ees'-.->\f  | 	
}

% M: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLineSpecial "M" \relative c'' {
	f1 | 
	d8-- c-- g'-- f-- c'-- f,-- g-- c-- | 
	r8 d--->\f\> aes-- d-. aes-. d-. aes-.\!\p d-.->\f |
	e,4--\p\< bes'-- e,-- bes'--\!\mf |
}

% N: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLineSpecial "N" \relative c''' {
	r8 ees--->\f\> a,-- ees'-. a,-. ees'-. a,-.\!\p ees'-.->\f  | 	
	f,1 | 
	r2 r4 d4 | 
	e4--\p\< bes'-- e,-- bes'--\!\f |
}

% O: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLineSpecial "O" \relative c'' {
	r8 d--\p\< c-- g'-- f-- c'-- bes-- f--\!\f | 
	aes4-- a-- ees8-- e-- ees-- e-- | 
	r8 a--->\f\> ees-- a-. ees-. a-. ees-.\!\p b'-.->\f  | 
	r8 a--->\f\> ees-- a-. ees-. b'-. ees,-.\!\p b'-.->\f  | 
}
% P: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLineSpecial "P"
<>^"ad lib!" \makeClusters { 
		c4 <g c f> c4 <g c f>^\markup {\fontsize #4.4 "❅"} | 
		c4 <g c f> c4 <g c f>_\markup {\fontsize #4.4 "☾"} | 
		c4 <g c f>_\markup {\fontsize #4.4 "✌"} c4 <g c f> | 
		c4 <g c f> c4 <g c f>^\markup {\fontsize #4.4 "★"} | }
	\bar "|."
}

%|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
%|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
%|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
%|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||


fluteTwoBSOLO = \relative c'' { 
\kappaMeterOff
\cadenzaOn
#(set-accidental-style 'neo-modern)
\tempo  \markup \fontsize #2 { "Feely, expressive, " \note #"4" #1 "= 92 ca"}
	\relative c'' {
		bes1\fermata\p
		s4
		<>^\markup \column {"speed up into tremolo," "then slow back down"}
		\kappaBoxNotesOld #4 #5 {bes8([\< c]} 
		\repeat tremolo 4  {bes!32 c} 
		\kappaBoxNotesOld #4 #5 {bes8([ c]} 
		bes8) 
		s4 \tuplet 3/2 {d4( ees2\mp\>} d4)
		s8
		
		bes1\fermata\!\p
		s4
		<>^\markup \column {"sim."}
		\kappaBoxNotesOld #4 #5 {bes8([\< c]} 
		\repeat tremolo 4  {bes!32 c} 
		\kappaBoxNotesOld #4 #5 {bes8[ c]} 
		bes8) 
		s4 \tuplet 3/2 {d4( ees2\!\>} d4\!\<)
		s8

		\tuplet 2/3 {bes4( aes'2\mp\>} g2)

		c,8([\!\p e!] f4 e\<)

		c4( bes'4.\!\mp\> a!4) f8[(\!\p e]) \tuplet 3/2 {c4( g'2)}

		r4\fermata 
	} 	\break \bar "" \relative c''' {
		a4-- c,-- a'-- g2. r4 
		a4-- c,-- a'-- g2. r8

		d8(\< \tuplet 3/2 { bes8[ d ees] } g8 aes4 g ) \tuplet 3/2 {aes4( c2)\!\mp}

		\tuplet 5/4 { d,8[(\p\< bes d ees g] } aes4 g8.) ees8-- d'2\!\mf\fermata r4\fermata

		f,4(\mp d' c2) r8 d4-- f,-- d'-- \tuplet 3/2 { d,4( c'2)\fermata } r8 

	} 	\break \bar "" \relative c''' {

		e,!([ f] a) \tuplet 3/2 { d,4( c'2) } d,4-- c'4.--\> d,4-- e,2\fermata--\!\p r8

		e8[(\> f] d4) c1\ppp\fermata

		<>^\markup \column {"sim."}
		\kappaBoxNotesOld #4 #5 {c8^( [\< d]} 
		\repeat tremolo 4  {c32\> d} 
		\kappaBoxNotesOld #4 #5 {c8[ d]} 
		c8\!) s8

		d8[( f] d4 c2.) c1\fermata r4

		\tuplet 5/4 {e4(\pp f a f e)} r8 \tuplet 5/4 {e4(\p f a f e)} r4

		c1\ppp\fermata r2\fermata

	} 	\break \bar "" \relative c' {

		<>^\markup \column {"sim."}
		\kappaBoxNotesOld #4 #5 {c8^( [\< d]} 
		\repeat tremolo 4  {c32\> d} 
		\kappaBoxNotesOld #4 #5 {c8[ d]} 
		c8\!) s8

		\tuplet 6/4 {c4_( \< e f a bes\mp\> a)} c,2\p\fermata d4( f d) c4.

		<>^\markup \column {"sim."}
		\kappaBoxNotesOld #4 #5 {c8^( [\< d]} 
		\repeat tremolo 4  {c32\> d} 
		\kappaBoxNotesOld #4 #5 {c8[ d\!])} 
		c8([\< e f a] bes \tuplet 3/2 {d4 ees\mp\> d)} f,1\p r4
		c8([\< e f a] bes \tuplet 3/2 {d4 ees\mp\> d)} f,2.\p r8

	} 	\break \bar "" \relative c' {

		\tempo \markup \fontsize #2 { "Accel. gradually to about " \note #"4" #1 "= 160 ca" }

		e8([\< f a bes] d[ ees g\mp\> ees]) d2\p \tuplet 3/2 {ees4( g ees) } d2 r8

		f,8[\<( a] bes \tuplet 3/2 {d8[ ees g]} aes8[\mf\> g] ees) d4.\mp r8

		\tuplet 5/4 {a8[(\< bes d ees g]} aes8[\mf\> g] ees d8.) 

		bes8(\mp\< \tuplet 3/2 {d8[ ees g]} aes8\mf\> \tuplet 3/2 {g[ ees d]) }

		bes8(\mp\< \tuplet 3/2 {d8[ ees g]} \tuplet 3/2 {aes8[\mf\> g ees])\! }
	
	} 	\break \bar "" \relative c'' {

		r8 d8[(\< ees g ees]) \tuplet 5/4 {d8[( ees g aes g])}
		\tuplet 6/4 {ees8[( g aes g ees d])}
		\tuplet 7/4 {ees8[( g aes g ees g aes])}
		r8
		\tuplet 7/4 {c4->( aes8[ g ees g aes])}
		c16[(->\f aes g aes]) c16[(-> aes g aes]) c16[(-> aes g aes])
		\tempo \markup \fontsize #2 { \note #"4" #1 "= 160 ca" }
		\tuplet 3/2 { c8->[( aes g] } \tuplet 3/2 { ees[ g aes])} 
		\tuplet 3/2 { c8( des4-> } c8) 
	
	} 	\break \bar "" \relative c''' {
	
		r8 
		\tuplet 7/4 { aes[( ees g aes c aes g)]}
		\tuplet 7/4 { ees[( g aes c aes g ees)]}

		bes16[( d ees g] aes[ c]) des8->( c16[ aes g ees])

		d16[(\< ees g aes] c8) des-> r8 aes16[( g ees g]) aes8-.-> r8 ees'2--->\ff r4

		d,16[( ees g aes])  \tuplet 3/2 {c4---> aes8(}

		ees16[ g aes c)] \tuplet 3/2 {des4---> aes8(}


	} 	\break \bar "" \relative c''' {

		g16[ aes]) \tuplet 3/2 {ees4---> aes8(} aes16[( g ees g]) aes8-.-> r8

		g'2--->\fff r4 ees-.-> r4 d'1\fermata--->\sfz 
		
		\tempo  \markup \fontsize #2 { "Original tempo, " \note #"4" #1 "= 92 ca"}

		r2 g,1\f r4 g2.--\mf r8 a,!2\mp-- r4 c,2.--\p r4 c,1\pp\fermata

		r2 \tuplet 3/2 {a'1(\p g2)} r1 
		c,4--\<( \tuplet 3/2 {<< {bes'1 a2)} {s2 s2\> s2\!} >> } 

	} 	\break \bar "" \relative c'' {
	
	bes1\fermata
		s4
		<>^\markup \column {"speed up into tremolo," "then slow back down"}
		\kappaBoxNotesOld #4 #5 {bes8([\< c]} 
		\repeat tremolo 4  {bes!32 c} 
		\kappaBoxNotesOld #4 #5 {bes8([ c]} 
		bes8) 
		s4 \tuplet 3/2 {d4( ees2\mp\>} d4)
		s8

		bes4.(\p d2)\fermata r4 f,4.-- d'4.-- c2\fermata  r4 f,4.( c'2)

		r4 bes4.-- a'2-- g,4.-- a4-- c2-- r4 

		f,2( c'2.) r4 f,1 r1 f1\pp\fermata

	} \bar "|."
}

%|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
%|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
%|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
%|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||


fluteTwoBWithThreeB = \relative c'' {
\tempo  \markup \fontsize #2 { \note #"4" #1 = 132 ca, or faster, accel. until M}
 \kappaMeterOn 4/4
 #(set-accidental-style 'modern)

% A: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLineSpecial "A" \relative c' {
 	f1\pp\< |
 	f'8--\f r8 r4 r4 f4--\mp |
 	R1 |
 	f8-- r8 r4 f-- f-- |
}
% B: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLineSpecial "B" \relative c'' {
	r8 f4.-- f4-- f4-- |
	f4 f f2 |
	r4 f4-- f4. f8-. |
	f4.-- f8-- f4.-- f8-- |
}
% C: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLineSpecial "C" \relative c'' {
	f4-- f-- f-- f-- |
	f8-- f4.-- f4-- f4-- |
	f4-- f-- f-- f-- |
	f4-- f-- f-- f-- |
}
% D: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLineSpecial "D" \relative c'' {
	f4-- f2. |
	f,4.-- f8-- r2 |
	f4-- f-- f8-- r8 r4 |
	r8 f'8--\pp\< f-- f-- f-- f-- f-- f-.->\f |
}
% E: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLineSpecial "E" \relative c''' {
	f2. f4---> |
	r4 f,2\mp f4 |
	r8 f8--\pp\< f-- f-- f-- f-- f-- f-.->\f |
	f8--\mp f4.-- f4-- f-- |
}
% F: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLineSpecial "F" \relative c'' {
	f4-- f-- f-- f-- |
	f1 |
	f4-- f-- f-- f-- |
	r8 f8--\pp\< f-- f-- f-- f-- f-- f-.->\f |
}
% G: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLineSpecial "G" \relative c'' {
	f4--\mp f2 r4 |
	f4-- f2. |
	r8 f8--\pp\< f-- f-- f-- f-- f-- f-.->\f |
	f,1\mp |
}
% H: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLineSpecial "H" \relative c'' {
	r8 f8--\pp\< f-- f-- f-- f-- f-- f-.->\f |
	f,8--\mf f4.-- f8-- f4.-- |
	r8 f'8--\pp\< f-- f-- f-- f-- f-- f-.->\f |
	f,8--\mf f4.-- f4-- f4-- |
}
% I: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLineSpecial "I to P"
\kappaMeterOff

\relative c' {
  r1
  \tempo  \markup \fontsize #2 {"freely, faster"}
  <>^\markup \column {"Listen to the clarinet for a few seconds, then repeat, playing" 
    "each of these 4 notes on final accented note of the clarinet's repeated rhythm."
  	"Continue until clarinet stops."}
  \kappaBoxNotesOld #6 #6 {f1\p f'8-.->\f r8 r4 r2 f'1\mf\> \bar "" f,8-.->\f r8 r4 r2}
  s2
  \continueLine {s2 s1*2}
}

\bar "|."

}