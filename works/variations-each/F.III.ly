pentaLine = \relative c'' {c4( d) e16[( g8.] ~ g4)}
pentaLineShort = \relative c'' {c4( d) e16[( g8.])}
pentaLineShortA = \relative c'' {c4( d) e16[( a8.])}
pentaLineShortD = \relative c'' {d4( e) g16[( d'8.])}

downLine = \relative c''' { \tuplet 3/2 {r8 g[( fis!]} \tuplet 3/2 {d8 a4)} }
downLineC = \relative c''' { \tuplet 3/2 {r8 c[( b]} \tuplet 3/2 {g8 d4)} }

downSquare = \relative c'' {c8( b4) g16( d'8.~ d4)}
downSquareDown = \relative c''' {c8( b4) g16( d8.~ d4)}

tremFour = \relative c''' { \repeat tremolo 14 {bes!32( f)} }
tremDim = \relative c''' { \repeat tremolo 14 {b32( f)}  }

fluteIII = \relative c'' { 
\kappaMeterOn 4/4
#(set-accidental-style 'modern)
% A: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "A" 
	 	c1^\markup \column {"Spin in circles. Play fragments from" 
 	 						"the music as you catch them whirling" 
 	 						"past your gaze."} |  
	<< \pentaLine {s2.\< s4 \!\mf} >> | 
	\relative c''' { 
		c4( a) g16( e8.~ e4) | r4 g8( a) c4.-- f8---> |
}
% B: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "B" \relative c''' {
	r8 f4.~-> f4 c,16( a8.) | 
	\unique "F.III.two.a"  \relative c''' { <>\mf \repeat tremolo 12 {aes32( ees)} bes'4-- } |
	\unique "F.III.one.b"  {r8 \downSquare} |
	\pentaLineShort c4 |
}
% C: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "C" 
	\unique "F.III.two.a" \relative c''' {\repeat tremolo 14 {aes32(\mf ees)} r8 }  | 
	\relative c'' { c8( f4.) g16( c8.~ c4) | g2 f4( e) | r4 a( g2) |
}
% D: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "D" \relative c'' {
	a8( c f4) g16( c8.) f4---> | g2( g,2) | 
	\unique "F.III.two.a" \relative c''' {\repeat tremolo 8 {aes32(\f ees)} aes8-- r8 r4 } | 
	\unique "F.III.one.b" \relative c'' { g4 a16( c8.~ c8 b) c4 } |
}
% E: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "E" 
	\unique "F.III.three.a" \relative c'' { a8( c) e'4-- c16( a8. g4) } | 
	\relative c'' { e4( g2.) | 
	d16( a8.~a4) g'4.( fis8) | 
	\unique "F.III.two.a" \relative c''' {c8-- c4.-- \repeat tremolo 8 {aes32( ees)}} | 
}
% F: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "F" 
	% USE A CROSS SLUR HERE (for last 3 bars... because I can)??
	\unique "F.III.two.a" {\transpose b a \tremDim r8 }| 
	\relative c''' { g2 b,4-- c-- | 
	r4 e16(\< g8.) e16( g8.) e4--\! | 
	d4 a16( d8.) d8( fis4 e8) | 
}
% G: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "G" 
	\unique "F.III.one.b" { r8 \downSquareDown } 
	\unique "F.III.three.b" \relative c'' { \tuplet 3/2 {e4(\> a,2)} \tuplet 3/2 {e'4( d2)\!\p} } 
	\relative c'' { c8( d e16 g8.) a8( c4.) | 
	g2\mp\> c,\!\p  |
}
% H: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "H"
	\unique "F.III.two.a" { \tremFour r8 |
		\relative c''' { \repeat tremolo 14 {c32( g)} } r8 } |
	\unique "F.III.three.b" \relative c''{ \tuplet 3/2 {e4( fis,2)} e'4( g,4~  \bar ""
			\tuplet 3/2 {g4) e'2(} a,2) }

\pageBreak
%%%%%%% PAGE 2 %%%%%%%%%%%%%%%
\kappaMeterOff
#(set-accidental-style 'neo-modern)
\tempo  \markup \fontsize #2 {"freely, expressive, faster"}
% I: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "I"
%% ACCEL OR RIT...
	\relative c''' { \tuplet 3/2 {r8 g4(\<} \tuplet 3/2 {d8 a4)}  d4.\!\mp s8 }
	\unique "F.III.two.a" { << {s16 \relative c'' { \repeat tremolo 14 {f32( c)} } } {s2..\< s8\f}  >> }
	 \relative c'' { \downLine  a4(\<  fis!8 g\!)
	\relative c''' {\tuplet 5/4 {b!8( c e\mf c b} \tuplet 3/2 {g4\>) d( a)\!}}
\kappaXBar }
% J: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "J"
	\relative c' { e4\!\p \tuplet 3/2 {e8( fis!4} \tuplet 3/2 {g8) b( c} a4) } 
	\unique "F.III.two.a" {s16 <>\< \tremFour s16\! }
	\relative c'' { \tuplet 5/4 {g8(\< b c e) a(} c4)\!\mf\> c,4--\! } 
	\relative c''' {s16 
		\override Score.SpacingSpanner.strict-note-spacing = ##t 
		\kappaBoxNotes #4 #4 {g8( d)} s16
		\override Score.SpacingSpanner.strict-note-spacing = ##f
		<>^"repeat, speading up" \continueLine {s8 s2} } 
\kappaXBar

% K: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "K" \relative c'' {
	\pentaLineShortA a4--
	\unique "F.III.two.a" {s16 \relative c''' { <>\f \repeat tremolo 14 {bes!32( ees,!)} } s16}
	\pentaLineShortD a'8( a,) 
	\unique "F.III.three.b" \relative c''' { \tuplet 3/2 {a4( b,2)} a'8( d,) a'( e)} \kappaXBar
}
% L: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "L"  \relative c'' {
	\tuplet 5/4 {e4( c8 b4)} \tuplet 3/2 {e4( c8} b'4)
	e,4 c'8( b4) \tuplet 3/2 {c8( b4} g8)
	\unique "F.III.one.b" { s8 << \downSquareDown {s4. s4.\< s8\mf } >> }  
	<< { s8 s8\p\< s4} \downLineC >>  c4.(\mf a8)
\kappaXBar }
% M: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "M" \relative c'' {
% MED-SLOW TEMPO
	\tempo  \markup \fontsize #2 {"ritard. gradually until end"}
	\downLineC g4( a)
	\unique "F.III.one.b" { s8 \downSquare }
	\downLineC d4 e16( g8.)
	\unique "F.III.one.b" { \downSquare s8 } \kappaXBar
}
% N: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "N"
	\unique "F.III.two.a" {s16 <>\mf \tremDim s16}
	\relative c'' {c8( b') \downLineC
		\pentaLineShort r2\fermata
	}
	\unique "F.III.one.b" { s8 \downSquareDown } \kappaXBar

% N: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "O" \relative c'' {
	c8( b') \downLineC g,8[( a])
	\unique "F.III.two.a" {s16 \tremFour s16}  
	\tuplet 3/2 {c8( b4)}  \tuplet 3/2 {g8(\> d4)} e4( g)\!\p
	}
	\unique "F.III.two.a" {s16 \transpose bes f {<>\f \tremFour} s16}  \kappaXBar

% N: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "P" \relative c''' {
	s16 \kappaBoxNotes #4 #4 { g32( d) s16 } 
		<>^"repeat, slowing down" 
		\continueLine {s2} \kappaBoxNotes #4 #4 {g8( d8)} s16
	c4.( d4. e4) 
	g2~ g8 a,4.\fermata
	\unique "F.III.two.a" \relative c''' { <>\ff\fermata \tremFour  f8-.-> }   \bar "|."
}

}