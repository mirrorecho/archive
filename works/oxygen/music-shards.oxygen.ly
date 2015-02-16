%\include "oxygen-music-generated-lines1.ly"
\include "music-narrator.oxygen.ly"
\include "segment-shells.oxygen.ly"

\include "_segA-vln.ly"
\include "_segC-vln-vla-1.ly"
\include "_segC-vln-vla-2.ly"
\include "_segD-vln-vla.ly"
\include "_segH-vln.ly"
\include "_segH-vla-vc.ly"
\include "_segM-vln-vla.ly"
\include "_segV-vla-vc.ly"

\include "_segAU-vln-vla.ly"
\include "_segAC-vln-vla.ly"
\include "_segAC-vc-cb.ly"
\include "_segBH-vln.ly"
\include "_segBH-vla-vc.ly"
\include "_segBI-vln-vla.ly"

\include "_segAR-vln.ly"
\include "_segAQ-vla-vc.ly"
\include "_segAM-vln.ly"
\include "_segAM-vla-vc.ly"
\include "_segAL-vln.ly"
\include "_segAL-vla-vc.ly"

tracerDuoF = \relative c'' {
	b1~ b1~ b1~ b1~ b1~ b1~ b1~ b1~ b1~ b1~ b1~ b1~ 
}
tracerDuoO = \relative c' {
	<e b'>1~ <e b'>1~ <e b'>2. 
	<d b'>4~ | <d b'>1~ <d b'>8
	<d a'>2..~ <d a'>1~  <d a'>2. 
	<e a>4~ <e a>1~ <e a>1~ <e a>1
	<a e'>1~  <a e'>1~ <a e'>1~ <a e'>4 
	<g e'>2.~ <g e'>1 
	<g d'>1~ <g d'>1~ | <g d'>4 <a d>2.~^"*t"
}
tracerDuoV = \relative c' {
	<a d>4 <d a'>2.~ <d a'>1~ <d a'>1~ <d a'>1~ <d a'>2
	<c a'>2~ <c a'>1~ <c a'>1~ <c a'>1~ <c a'>1~ <c a'>4 
	<c g'>2.~ | <c g'>4
	<d g>2.~^"*t" | 
}
tracerDuoAF = \relative c' {
	 <d g>8^"*t" <g d'>2..~ <g d'>1~ <g d'>1~ <g d'>4.
	 <f d'>8~ <f d'>2~ <f d'>1 
	 <f c'>1~ <f c'>2..
	 <g c>8~ <g c>1~  <g c>2..
	 <c g'>8~ <c g'>1~ <c g'>1~ <c g'>1~ <c g'>2.
	 <bes g'>4~^"keep this Bb?" <bes g'>1 
	 <bes f'>1~^"*t" 
}
tracerDuoAH = \relative c'' {
	<bes f'>8^"*t" <c f>2..~ <c f>1~ <c f>2
	<f, c'>2~^"adding Es and Bs"  <f c'>1~ <f c'>1~ <f c'>1~ <f c'>1~ <f c'>2~ <f c'>8~ 
	<f c' e>4.~ <f c' e>2.~ 
	<f c' f>4~ <f c' f>1~ <f c' f>1~ <f c' f>2. 
	<f  e'>4~ <f e'>1 
	<f d'>1~ <f d'>2.. 
	<f e'>8~ <f e'>1~ <f e'>1~ <f e'>4. <f d'>8~ <f d'>2~^"*t"
}
tracerDuoAS = \relative c' {
	<f d'>1~^"*t" <f d'>1
	<g d'>1~ <g d'>1~ <g d'>4
	<g c>2.~ <g c>1~ <g c>2~ <g c>8
	<c g'>4.~ <c g'>1
	<c a'>1~  <c a'>8~
	<d a'>2..~ <d a'>1~ <d a'>4.
	<d g>8~ <d g>2~ <d g>1~^"*t"
}
tracerDuoAN = \relative c'' {
	<d g>2.^"*t" <g d'>4~ <g d'>1~ <g d'>1~ <g d'>2
	<g e'>2~ <g e'>1~ <g e'>2.
	<a e'>4~ <a e'>1~ <a e'>1~ <a e'>1~ 
	<a d>1~ <a d>1~ <a d>1~ 
	<d a>1~ <d a>1~ <d a>1 
}
 cloudsF = \relative c' { 
 	<b' c e f g b>1 <b c e f g b>1 <b c e f g b>1 <b c e f g b>1 <b c e f g b>1 <b c e f g b>1 <b c e f g b>1
 	<b, c e f g b c e f g b>1 <b c e f g b c e f g b>1 <b c e f g b c e f g b>1 <b c e f g b c e f g b>1 <b c e f g b c e f g b>1
 }
cloudsO = \relative c' { 
 	<e, f g a b b c e f g a b e> <e f g a b b c e f g a b e> <e f g a b b c e f g a b e> <e f g a b b c e f g a b e> <e f g a b b c e f g a b e>
 	<e f g a b b c e f g a b e> <e f g a b b c e f g a b e> <e f g a b b c e f g a b e> <e f g a b b c e f g a b e> <e f g a b b c e f g a b e>
 	<a c d e f g a> <a c d e f g a> <a c d e f g a> <a c d e f g a> <a c d e f g a> <a c d e f g a> <a c d e f g a> <a c d e f g a>
 }

 cloudsV = \relative c' { 
 	<c d e f g a> <c d e f g a> <c d e f g a> <c d e f g a> <c d e f g a> <c d e f g a> <c d e f g a> <c d e f g a> <c d e f g a> <c d e f g a> <c d e f g a>
 }

cloudsAF = \relative c' { 
 	<g c d e f g> <g c d e f g> <g c d e f g> <g c d e f g> <g c d e f g> <g c d e f g> <g c d e f g> <g c d e f g> 
 	<c, e f g c e f g c> <c e f g c e f g c> <c e f g c e f g c> <c e f g c e f g c> <c e f g c e f g c> <c e f g c e f g c> <c e f g c e f g c> 
 }

cloudsAH = \relative c' { 
	<c e f g c e f g c> <c e f g c e f g c>  <c e f g c e f g c>  <c e f g c e f g c>  <c e f g c e f g c>  <c e f g c e f g c>  <c e f g c e f g c>  <c e f g c e f g c> 
	<f c' e f g c> <f c' e f g c> <f c' e f g c> <f c' e f g c> <f c' e f g c> <f c' e f g c> <f c' e f g c> <f c' e f g c> <f c' e f g c> <f c' e f g c> 
 }

cloudsAS = \relative c' { 
	<f g a c e f g> <f g a c e f g> <f g a c e f g> <f g a c e f g> <f g a c e f g> <f g a c e f g> <f g a c e f g> 
	<c d e f g a> <c d e f g a> <c d e f g a> <c d e f g a> <c d e f g a> <c d e f g a> 
 }

cloudsAN = \relative c' { 
	<g c d e f g> <g c d e f g> <g c d e f g> <g c d e f g> <g c d e f g> <g c d e f g> <g c d e f g> <g c d e f g> 
	<d f g a c d e f g a c d> <d f g a c d e f g a c d> <d' f g a c d> <d e f g a d> <d e f g a d> <a b c d e f> <a b c d e f>
 }


lineF = \relative c {<b' b'>1~ <b b'>1~ <b b'>1~ <b b'>1~ <b b'>1~ <b b'>1~ <b b'>1~ <b b'>1~ <b b'>1~ <b b'>1~ <b b'>1~ <b b'>~^"*t"}

lineO = \relative c { <b' b'>4^"*t" <e, e' e'>2.~ <e e' e'>1~ <e e' e'>~ <e e' e'>~ <e e' e'>~ <e e' e'>~ <e e' e'>~ <e e' e'>~ <e e' e'>~ <e e' e'>~
	<e e' e'>4~ <a, a' a' a'>2.~ <a a' a' a'>1~ <a a' a' a'>~ <a a' a' a'>~ <a a' a' a'>~ <a a' a' a'>~ <a a' a' a'>~ <a a' a' a'>~^"*t" }

lineV = \relative c { <a a' a' a'>8^"*t" <d d' d' d'>2..~ <d d' d' d'>1~ <d d' d' d'>~ <d d' d' d'>~ <d d' d' d'>~ 
	<d d' d' d'>~ <d d' d' d'>~ <d d' d' d'>~ <d d' d' d'>~ <d d' d' d'>~ <d d' d' d'>~^"*t" }

lineAF = \relative c { <d d' d' d'>8^"*t" <g, g' g' g'>2..~ <g g' g' g'>1~ <g g' g' g'>~ <g g' g' g'>~ <g g' g' g'>~ <g g' g' g'>~ <g g' g' g'>~ <g g' g' g'>~ 
	<g g' g' g'>~ <g g' g' g'>8  <c, c' c' c' c'>2..~ <c c' c' c' c'>1~ <c c' c' c' c'>~ <c c' c' c' c'>~ <c c' c' c' c'>~ <c c' c' c' c'>~^"*t" }

lineAH = \relative c { <c, c' c' c' c'>~^"*t" <c c' c' c' c'>~ <c c' c' c' c'>2~  <f f' f' f' f'>2~ <f f' f' f' f'>1~ <f f' f' f' f'>~ <f f' f' f' f'>~ <f f' f' f' f'>~ <f f' f' f' f'>~ 
	<f f' f' f' f'>2.~ <bes, bes' bes' bes'>4~ <bes bes' bes' bes'>1~ <bes bes' bes' bes'>~ <bes bes' bes' bes'>~ <bes bes' bes' bes'>~ <bes bes' bes' bes'>~
	<bes bes' bes' bes'>~ <bes bes' bes' bes'>~ <bes bes' bes' bes'>~ <bes bes' bes' bes'>~^"*t" }

lineAS = \relative c { <bes, bes' bes' bes'>4~^"*t" <f' f' f' f' f'>2.~ <f f' f' f' f'>1~ <f f' f' f' f'>~ <f f' f' f' f'>~ <f f' f' f' f'>~ <f f' f' f' f'>~ <f f' f' f' f'>~ 
	<f f' f' f' f'>8~  <c' c' c' c'>2..~  <c c' c' c'>1~    <c c' c' c'>~  <c c' c' c'>~  <c c' c' c'>~  <c c' c' c'>~^"*t" }

lineAN = \relative c { <c c' c' c'>4~^"*t" <g g' g' g'>2.~ <g g' g' g'>1~ <g g' g' g'>~ <g g' g' g'>~ <g g' g' g'>~ <g g' g' g'>~ <g g' g' g'>~ <g g' g' g'>~ 
	<g g' g' g'>2~ <g g' g' g'>8~   <d' d' d'>4.~ <d d' d'>1~  <d d' d'>~  <d d' d'>~  <d d' d'>~  <d d' d'>~  <d d' d'>~ 
}

branchF = \relative c {R1*12 }

branchO = \relative c {
	R1 | r4 e2.( | b'2. a4~) | a2.. a8 | a8-> a4.~-> a4 g8 g8-> | g2.. f8 | f8-> f4.~-> f4-> f4->~ | f8 f4-> f8~ f4  e8 e8-> | e1-> |  
	r4 e2( d4~ | d2) r4 e4~( | e8 <d d'>2..) | r8 d'4.( c2~ | c2) r8 c8 c8-> c8->~ | c8 b8 b4->~ b8 b4.->~ | b4 r4 e2( | d4.) d8 d8-> d4-> c8 |
	c4-- c8->( b4--) b4-- b8--->~^"*t" |
}

branchV = \relative c' {
	b8^"*t" a^"time with bass" a-> a->~ a2~ | a1 | r8 d4.~(  d4 a4~ | a8 g4.~ g4 d4~ | d2.) d4( |
		a'4. g8~ g2~ | g4) r4 d4.( a'8~ | a8 g4.~ g2) | g8 g4->-- g8->--~ g4. f8--~ | f8 f4. e8 e4-> e8~ | 
		e8 g8 g8-> g8~-> g4 d4~^"*t" |
}

branchAF = \relative c' {
	d,8^"*t" c4.->\f b'4. c8 | c4-- c4-- b8 b4---> b8 | a8 a4---> a4-- a4-- g8 | 
	<g g,>4.-> <g g,>4.-> <g g,>4-> | <g g,>4.-> <g g,>8 <g g,>8 <g g,>4. | <g g,>8 <g g,>4. <g g,>4. <g g,>8~ |
	<g g,>4 <g g,>4 <g g,>4. <g g,>8~ | <g g,>4 <g g,>4 <g g,>4. <g g,>8~ | <g g,>4 <g g,>4. <g g,>4 <g g,>8~ |
	<g g,>8 c,4.(\ff^"big" g'4. f'8~ | f4 e2.) | \clef treble r8  e8 e8-> e8--~e d8 d8-> d8--~ | d8 d4-- d8~ d2~ | d2~^"pull back here a little to bring excitement later" d8 c8 c4-> |
	c4( g'4 f8) f8 f8-> f8--~^"*t"  | 
}

branchAH = \relative c' {
	\clef treble
	f4^"*t" e8-> e4-> d4-- d8--~ | d2 d4. d8~ | d8 c8 c4-> c2->~^"moment" |
	c2 c2~ | c2 c4.( g'8~ | g4 f2.) | 
	f4( e'8) e8--~e e4 <d d,>8~ | <d d,>4. <d d,>8~ <d d,>8 <d d,>4 <d d,>8~ | 
	<d d,>8 <d d,>4. <c c,>8 <c c,>8-> <c, c,>4--->^"big" | g4. f'4. e'4~ | e8 d'4.~ d2~^"extends into duo D" |
	d1 | r2 r8 g,4.~ | g4. f8~ f4.f8 | f8 f4.~ f8 e4 e8~ | e2..~ g,8~( |
		g4. f8~ f4 e4)  | e2. d4~^"*t" |
}

branchAS = \relative c' {
	d1~^"*t" | d2 r2 | r8 e e e~ e4 d8 d~ | d1~ | 
	d2 e8 e4.~ | e2~ e8 e8 e4~ | e4. d8~ d d4.~ | d8 d2.. | d1~( | 
		d8 g2..~ | g4 f2.) | r8 e e e->~ e2~ | e4 f8 f f2 | 
}

branchAN = \relative c' {
	e4 e2.~ | e2 d4 d4~ | d4 d2.~ | d4 g2.~( | g4  f2.~ | f4) r8 f f4 f~ | f8 e4.~ e8 r4 e8~ | e d4.~ d2~ |
	d4. e8 e e4. | d4 d2.~ | d2 r8 e e e~ | e4 d d2~ | d8 e e4 e2 | d4 d2.~ | d4 r4 r2 |
}



cloudA = {
	% violins only
	<b' c e f g b >1 ^"each note doubled"
	<b c e f g b >1
	<b c e f g b >1
	<b c e f g b >1
	
}
cloudC = {
	% segment move down into this...
	<g b c e f g b>1 ^"f and g single, the remainder double" ^"2 voices with figure or holding tones"
	<f g b c e f g b>1
	<e f g b c e f g b>1
}
cloudD = {
	% aslo segment down into this...
	\relative c'
	<b c e f g b c e f g b >1 ^"segments to all single except bs double" ^"4 and then 6 with figure"
	<b c e f g b c e f g b >1
	<b c e f g b c e f g b >1
	<b c e f g b c e f g b >1
	<b c e f g b c e f g b >1
}


figureSeed = {
	g4.( f8~ f4 e4~ | 
	e8) f4.( e4. c8~ | 
	c4) g'4~( g8 f4. |
	e4.) f8~( f4 e4~ |
	e8 c4.)	g'4.( f8~ | 
	f4 e4~ e8) f4.( | 
	e4. c8~ c4) g'4~(  |
	g8 f4. e4.) f8~( | 
	f4 e4~ e8 c4.) |
}

shardFigureOne = {
	g'8 g g f f f e e e f f f e e e c c c
}

pairSeedOne = {
	< e b' >2( < d b' > |
	< d a' > < e a >) |
}

pairSeedFlat = {
	< c g' >2( < bes g' > |
	< bes f' > < c f >) |
}

pairSeed = \pairSeedOne