fluteNasty = {\relative c'''' {a2.:32\fff\>^"flz." <>\!\f r4}}
tripleToes = \relative c''' {
	\tuplet 3/2 {a8( b c)} 
}

fluteI = \relative c'' { #(set-accidental-style 'modern)
\kappaMeterOn 4/4
% A: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "A" \relative c'' {
 	c1^\markup \column {"Perform every other measure with" 
 	 						"your eyes and mouth closed."} | 
		c2.( a4) | g1  |  r2 a2 | 
}

% B: ------------------------------------------------------------------------------------------------------------------------------------------------------
%\override Staff.TimeSignature #'break-visibility = ##(#f #f #t) \time 4/4
\newLine "B" \relative c'' {
	c2.( a4) |
	\unique "F.I.two.a"  { \fluteNasty } |
	\unique "F.I.one.b" { <>\< \tripleToes \tripleToes \tripleToes a'4\> <>\! } |
	c,4( a )c( a) |
}

% C: ------------------------------------------------------------------------------------------------------------------------------------------------------
%variable for c4( a) c( a) blip??
\newLine "C"
	\unique "F.I.two.a" { \fluteNasty } | 
	\relative c'' { c4( a) c( a) | 
	g2( e) | 
	d1 |
}

% D: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "D" \relative c'' {
	r4 g2( a4) | 
	a4( c) c( a)  | 
	\unique "F.I.two.a" { \transpose a aes {\fluteNasty} } | 
	\unique "F.I.one.b" {g4 \transpose c c, {  \tripleToes \tripleToes \tripleToes}} |  | 
}
% E: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "E"
%{
\override Staff.TimeSignature #'break-visibility = ##(#f #f #t) 
\kappaMeterOff
\unique "FI.two.b" { s1 s1 } s1 s1 \kappaXBar
%}
\unique "F.I.three.a" {\relative c' {c2\ppp \tuplet 3/2 {a'8( c,4 ~} c4)} } | 
b8( c <>) << e2. {s2\< s4\!\mp} >> | 
b8\pp( c <>) << e2. {s2\< s4\!\mp} >> | 
\unique "F.I.two.a" \relative c''' {r2 aes4-- aes4--} | 


% F: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "F"
% USE A CROSS SLUR HERE (for last 3 bars... because I can)
	\unique "F.I.two.a" { \fluteNasty } | 
	\relative c''' { g2( c,) | 
		r4 b8(\< c e4) b8( c)\!  | 
		e8( b'4. ~ b2) } |

% G: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "G"
	\unique "F.I.one.b" {<>\> \tripleToes  \tripleToes \tripleToes  <>\! \tripleToes}
	\unique "F.I.three.b" \relative c'' { s16 d8[( g,) d'( g,)] <g \xNote d'>4.\fermata ^"sing d" s16 } 
	\relative c'' {c8( b4.) g2 | 
		g8( fis4. ~ fis4 ) r4 } |


% H: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "H"
	\unique "F.I.two.a" {\fluteNasty \relative c'''' {aes2:32\ff^"flz." g4.:32\f r8} }  |
	\unique "F.I.three.b" { s8 d4. g,2 
		\bar "" d'2 g,2 } |

\pageBreak
%%%%%%% PAGE 2 %%%%%%%%%%%%%%%
\kappaMeterOn 4/4
% I: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "I" \relative c'' {
	<< R1 {s2.. s8\p} >> | %SOMETHING HERE?
	\unique "F.I.two.a" \relative c''' {a4\< a'2:32\!\ff\>^"flz." r4\!\f} | 
	b4( g) fis2 | 
	r4 fis2( g4) |
}
% J: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "J" \relative c'' {
	b4( g) fis2 | \unique "F.I.two.a" {\fluteNasty} | e8( fis) a8( e'8 ~ e2) | 
	\relative c''' {r4 e g( b,!) } |
}
% K: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "K" \relative c'' {
	b4-- a2 r4 | 
	\unique "F.I.two.a" {\transpose a aes \fluteNasty} | 
	d4-- g,2 r4 | 
	\unique "F.I.three.b" {<g \xNote d'>1^\markup {\column {
			"in the following music, play this g and" 
			"sing d wherever either pitch occurs"}} |
	}
}
% L: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "L" \relative c'' {
	a8(\< b) d( e) g( e) d( b)\! | 
	d8(\< e) g( a) << c2 {s4..\!\> s16\!} >> | 
	\unique "F.I.one.b" \relative c''' {\tuplet 3/2 {a8( b, c)}  \transpose c c, { 
		\once \override DynamicLineSpanner.staff-padding = #3.2
		<>\> \tripleToes \tripleToes <>\!\pp \tripleToes} }| 
	g,2. r4 |
}
% M: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "M"
\relative c'' {
	g2( a) | 
	\unique "F.I.one.b" \relative c'' { 
		\transpose c c, {\once \override DynamicLineSpanner.staff-padding = #3.2 <>\< \tripleToes \tripleToes <>\> \tripleToes} <>\! \tuplet 3/2 {b8( c d)}
		%\tuplet 3/2 {c4( e f)} a4( \tuplet 3/2 {b8 c g)}  % (had this before)
	}
	g1 | 
	\unique "F.I.one.b"  \transpose c c, {\once \override DynamicLineSpanner.staff-padding = #3.2 <>\< \tripleToes \tripleToes <>\> \tripleToes <>\! \tripleToes} |
}
% N: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "N" \relative c'' {
	\unique "F.I.two.a" {\fluteNasty} | g2( e) | r2 r4 a | 
	\unique "F.I.one.b" \transpose c c, {\once \override DynamicLineSpanner.staff-padding = #3.2 <>\< \tripleToes \tripleToes <>\> \tripleToes <>\! \tripleToes} |
}
% O: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "O" \relative c'' {
	g2 r4 a | 
	\unique "F.I.two.a" {\transpose a aes \fluteNasty}  | 
	g2( e) | 
	\unique "F.I.two.a" {\transpose a aes \fluteNasty}  |
}
% p: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "P" \relative c'' {
	c8( b4.~ b2) | a4( c) c( a) | a1 | \unique "F.I.two.a" {\fluteNasty}   \bar "|."
}  % relative c'' from M

}