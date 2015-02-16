slowMove = \relative c'' { \kappaBoxNotes #4 #4 {e8-- b--} 
		<>^\markup {
		    \column {
		        \line { "repeat 5 or 6 times," }
		        \line { "slowing down" }
		    }
		}
		\continueLine {s2.}  } 

tremGrind = \relative c' {
		%<>^"speed up into tremolo" \continueLine {s2} 
		s16
		\kappaBoxNotes #4 #5 {des8( c} 
		<>^"speed up into tremolo" \continueLine {s4.} 
		\repeat tremolo 4  {des!32 c)} s16 
	}

riseUp =  \relative c' { \tuplet 5/4 {a2(\< b4) a( d)\!}  \bar ""
		\tuplet 6/4 {a4(\< e') a,( fis') a,(\!\> \once \override Script #'padding = #2 g'\!)\fermata} }

clarinetIII = \relative c'' { 
% A: ------------------------------------------------------------------------------------------------------------------------------------------------------
\kappaMeterOff
#(set-accidental-style 'neo-modern)
\tempo  \markup \fontsize #2 {"freely, " \note #"4" #1 "= 60 ca"}

\newLine "A" \relative c' {
	d1\p  
	\unique "C.III.two.a" \tremGrind 
	\tuplet 3/2 {f4( e2 ~} e2)  
	\unique "C.III.two.a" { \tremGrind } 
} \kappaXBar

% B: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "B"  \relative c' {
	\unique "C.III.one.b" { \slowMove }
	f4( e1)  \tuplet 3/2 {f8( e4 ~} e2)
	\unique "C.III.one.b" { \slowMove } 
} \kappaXBar

% C: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "C" \relative c' {
	e2. \tuplet 3/2 {f8( e4)} 
	r8 f4( e2) s8 
	d1\fermata d1 \kappaXBar
}

% D: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "D" \relative c' {
	b1 
	\unique "C.III.three.a" \relative c'' \tuplet 7/4 {g4(\< a) g( c)\!\> (g d') g,\!\fermata} 
	\tuplet 3/2 {f'4( e8 ~} e2.) 
	b1 \kappaXBar
}
% E: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "E" \relative c' {
	e1 
	\tuplet 5/4 {b2. c4( b) } r8 c(\> b2) \tuplet 3/2 {c8( b4)\!\ppp }
	\relative c'' {d4.-- b2\fermata s8} \kappaXBar
}

% F: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "F" \relative c' {
	f4.-- e2\!\p\fermata s8 
	\unique "C.III.three.b" \relative c' {s16 f4.( e'2) s16} 
	f4( e2\fermata) s4 
	\tuplet 3/2 {f'8( e4 ~} e2) s4
	\kappaXBar
}
% G: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "G" \relative c'' {
	\tuplet 3/2 {a2 b,1} 
	\unique "C.III.two.a" \tremGrind 
	a1 \unique "C.III.two.a" \transpose d d' \tremGrind \kappaXBar
}

% H: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "H" \relative c' {
	\tuplet 3/2 {b2 a'1} 
	\unique "C.III.two.a" \tremGrind
	g8( fis d4) g,8( fis4.)
	\unique "C.III.two.a" \tremGrind \kappaXBar
}

\pageBreak
%%%%%%% PAGE 2 %%%%%%%%%%%%%%%
\kappaMeterOn 4/4
% I: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "I" \relative c' {
 	c1^\markup \column {"Sing and dance!"} |  
	a1 | 
	\unique "C.III.two.a" \relative c' {
		d8--->\f r8 \repeat tremolo 8 {des32 c} des8---> c---> | 
		r4 \repeat tremolo 12 {des32(\p\< c)} <>\! } |
}

% J: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "J" 
	\unique "C.III.two.a" \relative c' {
		r4 d8--->\f r \repeat tremolo 4 {des32\mp\< c} d4--->\f } | 
	\relative c' { a1 | 
	\unique "C.III.three.a" \riseUp
}

% K: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "K" \relative c' {
	\unique "C.III.two.a" {
		r4 d8--->\f r des---> c---> r4 |  
		\repeat tremolo 14 {des32\> c} r8\! } | 
	d2. r4 | a1 |
}
% L: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "L" \relative c' {
	\unique "C.III.three.a" \riseUp 
	f8( e4.~ e2) | 
	c8( b~ b2) r4  |
}
% M: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "M" \relative c'' {
	c1^\markup \column {"Ignore all sense and reason."} |  
	\unique "C.III.one.b" {c4( b8) e-- b-- e-- b4} | 
	R1 | 
	r4 c8( b~ b2)   |
}
% N: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "N" \relative c' {
	r4 f8( e~ e2) | 
	\unique "C.III.three.a" { \tuplet 6/4 { a2(\< b4) a( d) a( }  \bar ""
		e'4 a4.\!\f\>) d,4.\!\fermata }   | 
	f8( e4.~ e2) |
}
% O: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "O" 
	\unique "C.III.one.b" \relative c' {e8-- b-- e-- b-- r4 e'8-- b-- } | 
	\unique "C.III.two.a" \relative c' { d8( \repeat tremolo 14 {des32 c)}} | 
	\relative c' { c8( b4.~ b2) | g1 |
}
% P: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "P" \relative c
\unique "C.III.one.a" {
	f8( e4.~ e2) | f8( e4.~ e4) r4 | d4( e2.) | d1
	} \bar "|." %         :-)
}