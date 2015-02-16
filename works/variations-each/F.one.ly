fluteOneA = \relative c'' { 
\kappaMeterOn 4/4
#(set-accidental-style 'modern)
% --------------------------------------------------------------------
\newLine "A" \relative c'' {
	\tempo  \markup \fontsize #2 { \note #"4" #1 = 104 ca}
	r2 a\pp |  %g2\pp a) | 
	\cutout { s1*3 }
}

% --------------------------------------------------------------------
\newLineCutout "B" \relative c'' {
 	\cutout {s1} | g2( e2) | r2 r4 a | \cutout {s1}  |
}

% --------------------------------------------------------------------
\newLine "C" \relative c'' {
	g2 r4 a | \cutout {s1*3 } |
}

% --------------------------------------------------------------------
\newLineCutout "D" \relative c'' {
\cutout {s1*2} | a1 | g1 |
%\startCutout s1 \stopCutout | d16 d d d d d d d d d d d d4 | c1
}
% --------------------------------------------------------------------
\newLine "E"
R1 | \cutout {s1*2} | r2 b4-- c-- |

% --------------------------------------------------------------------
\newLine "F"
a'4( c, a'2) |  \cutout {s1*3} |

% --------------------------------------------------------------------
\newLine "G"
g2.\> r4\! | g8( fis4.)  d2 | \cutout {s1*2} |


% --------------------------------------------------------------------
\newLine "H"
d,2. r4 | g8( fis4.) a2 | d2\> a2\! | e'1\> <>\! |

\pageBreak
%%%%%%% PAGE 2 %%%%%%%%%%%%%%%
\kappaMeterOn 4/4
% --------------------------------------------------------------------
\newLineCutout "I"
#(set-accidental-style 'modern)
 \cutout {s1} | r4 fis,2( g4) | \cutout {s1*2} |

% --------------------------------------------------------------------
\newLineCutout "J"
\cutout {s1} | e4\mp e8( fis!) r2 | \cutout {s1} | r4 e8( fis!) a( e' d4) |

% --------------------------------------------------------------------
\newLineCutout "K"
\cutout {s1} | a8( b) d( g ~ g4) e-- | \cutout {s1} | fis,8( g) b( c) e( c b4 ) |

% --------------------------------------------------------------------
\newLineCutout "L"
\cutout {s1*2} | r4 c'2\> a,4\!\pp | \cutout {s1} | 

% --------------------------------------------------------------------
\newLineCutout "M"
\relative c'' {
\cutout {s1} | c2.( a4) | \cutout {s1} | r2 a |

% --------------------------------------------------------------------
\newLine "N"
c2.( a4) | \cutout {s1*2} | c4( a) c( a) |

% --------------------------------------------------------------------
\newLineCutout "O"
\cutout {s1} | c4( a) c( a) | \cutout {s1} | d,1 |

% --------------------------------------------------------------------
\newLine "P"
r4 g2( a4 ) | \cutout {s1*2} | g1  \bar "|."
} % relative c' from M

}

%|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
%|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
%|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
%|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||



fluteOneB = \relative c'' { 
\kappaMeterOn 4/4
#(set-accidental-style 'modern)
% --------------------------------------------------------------------
\newLine "A" \relative c'' {
 	\tempo  \markup \fontsize #2 { \note #"4" #1 = 104 ca}
 	%\tuplet 3/2 {g4(\pp b c)} a'4( \tuplet 3/2 {b8 c g)} | \cutout {s1} | 
 	%\tuplet 3/2 {g,4( b c)} g'4 \tuplet 3/2 {c8( b g)} | \cutout {s1} |
 	\tuplet 3/2 {r4 b(\pp c)} b'4~( \tuplet 3/2 {b8 f e)} | \cutout {s1} | 
 	\tuplet 3/2 {r4 b( c)} b'4~( \tuplet 3/2 {b8 c b)} | \cutout {s1} |
}

% --------------------------------------------------------------------
\newLine "B" \relative c'' {
	\tuplet 3/2 {r4 f(\< b} c4 d) | g,4(\!\> d) r\! a' | \cutout {s1*2}
}

% --------------------------------------------------------------------
\newLine "C" \relative c'' {
	\tuplet 3/2 {g4( b c)} r4 d | \tuplet 3/2 {c8(\< e f } a4) \tuplet 3/2 {c8(\! b g} a4) | 
	g4(\> g,) r8\! b4. | % used to be d4 here .. change back?
	\cutout {s1} |
}
% --------------------------------------------------------------------
\newLineCutout "D" \relative c'' {
	\cutout {s1} | 
	\tuplet 3/2 {a8(\< b c) } c4 \tuplet 3/2 {c8( b g } d'4)\! | 
	\tuplet 3/2 {r4 e(\> f) } d4( g,4)\! | \cutout {s1} |
}
% --------------------------------------------------------------------
\newLine "E" \relative c'' {
	r4 d2 \tuplet 3/2 {d8( c b) } | \cutout {s1} | 
	b8( c \tuplet 3/2 {e8) b'( c } e4 d)  | r2 d4-- d-- |
}


% --------------------------------------------------------------------
\newLine "F" \relative c''' {
	a1 \cutout {s1*3} |
}
% --------------------------------------------------------------------
\newLineCutout "G" \relative c''' {
	\cutout {s1} | d4 \tuplet 3/2 {g,8( fis d) } d2 | \cutout {s1*2} |
}


% --------------------------------------------------------------------
\newLine "H" \relative c' {
 	d2 \tuplet 3/2 {g8(\< b c} 
 	\tuplet 3/2 {d8) g( b } | 
	c8\!\> b4.) b2\! | 
	d,2 b | b4( c'2.) |
}

\pageBreak
%%%%%%% PAGE 2 %%%%%%%%%%%%%%%
\kappaMeterOn 4/4
% --------------------------------------------------------------------
\newLineCutout "I" \relative c''' {
	#(set-accidental-style 'modern)
	\cutout {s1} | r4 \tuplet 3/2 {b4( g fis! } d8 b) | \cutout {s1*2} |
}

% --------------------------------------------------------------------
\newLineCutout "J" \relative c' {
	\cutout {s1} | e2\mp d'4 g8( fis) | \cutout {s1} | 
	r4 \tuplet 3/2 {e8([\< fis g)] } \tuplet 3/2 {a8([ b cis] } d4)\!\> <>\! |
}

% --------------------------------------------------------------------
\newLineCutout "K" \relative c'' {
	\cutout {s1} | \tuplet 3/2 {a8( b d) } d8( g~ g4) g-- | 
	\cutout {s1} | \tuplet 3/2 {b,8( c d) } b8( c~ c4) c-- |
}

% --------------------------------------------------------------------
\newLineCutout "L" \relative c'' {
	\cutout {s1} | 
	\once \override DynamicLineSpanner.staff-padding = #2.6
	\tuplet 3/2 {d8([\< g b)] } \tuplet 3/2 {g8([ b c)]} c4\!\> \tuplet 3/2 {c8( b g)\! } | 
	\cutout {s1} | \tuplet 3/2 {c,4( b g~} g4) r | % something more unique here...?
}
	

% --------------------------------------------------------------------
\newLineCutout "M" \relative c'' {
	\cutout {s1*2} | 
	\tuplet 3/2 {c4( b g)} \tuplet 3/2 {c4( b g)} |
	\cutout {s1} | 
}

% --------------------------------------------------------------------
\newLine "N" \relative c'' {
	\tuplet 3/2 {c4( b g~} g4 b) | \cutout {s1*3} |
}

% --------------------------------------------------------------------
\newLineCutout "O" \relative c'' {
	\cutout {s1} | 
	\tuplet 3/2 {a8( b c)} \tuplet 3/2 {a8( b c)} \tuplet 3/2 {c4( b g)} |
	\cutout {s1} | 
	\tuplet 3/2 {g8(\< b c)} \tuplet 3/2 {g'8( b c)} \tuplet 3/2 {d8( g4~} g4)\!

}

% --------------------------------------------------------------------
\newLine "P" \relative c''' {
	r4 \tuplet 3/2 {
			\once \override DynamicLineSpanner.staff-padding = #3
		c4(\> b g } 
			a8 c,)\! | 
	\cutout {s1*2}  | 
	\tuplet 3/2 {g4( b c)} g'2 \bar "|."
}
}