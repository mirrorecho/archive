clarinetOneA = \relative c' { 
\kappaMeterOn 4/4
#(set-accidental-style 'modern)
% A: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLineCutout "A"
 \cutout {s1} | a'2.( f4) |  \cutout { s1 } | r2 f2 

% B: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "B"
 a2.( f4) |  \cutout {s1*2} |  a4( f) a( f) |

% C: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLineCutout "C"
\cutout {s1*4}

% D: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLineCutout "D"
\cutout {s1} | f4( a) a( f) | \cutout {s1*2} |
%\startCutout s1 \stopCutout | d16 d d d d d d d d d d d d4 | c1

% E: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "E"
R1 |  \cutout {s1*2} | r2 g4--\mp g-- |

% F: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLineCutout "F"
\cutout {s1} | e1 | \cutout {s1*2} |

% G: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLineCutout "G"
\cutout {s1} | d'2 b | \cutout {s1} | d,2. r4 |


% H: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLineCutout "H"
\cutout {s1} | d2 g8( fis4.) | \cutout {s1} | g1\> <>\! |

\pageBreak
%%%%%%% PAGE 2 %%%%%%%%%%%%%%%
\kappaMeterOn 4/4
#(set-accidental-style 'modern)
% I: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "I"
<<R1 {s2.. s8\p} >> | % SOMETHING?
\cutout {s1} | d4( e) d2 | r4 d2( e4) |

% J: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "J"
d4( e) d2 | \cutout {s1} | 
cis8( d) fis( g ~ g2) | r4 cis,8( d) fis( g b4) |

% K: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "K"
g4-- fis2 r4 | fis8( g) b( e ~ e4) c-- | \cutout {s1*2} |

% L: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "L" \relative c' {
	fis8(\< g) b( c) e( c) b( g) | 
	b8(\!\< c) e( f) a2\!\> <>\! | \cutout {s1*2} |
}
% M: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "M"
\relative c' {
	e2( f) | a2.( g4) | \cutout {s1*2} |

% N: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLineCutout "N"
\cutout {s1}  | e2( c) | r2 r4 f | \cutout {s1}  |

% O: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "O"
e2 r4 f | a4( f) a( f) | \cutout {s1*2} |

% P: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLineCutout "P"
\cutout {s1*4}  \bar "|."
} % relative c' from M
}

% _________________________________________________________________________________________________________________________________________________________
% _________________________________________________________________________________________________________________________________________________________


clarinetOneB = \relative c'' { 
\kappaMeterOn 4/4
#(set-accidental-style 'modern)
% A: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "A" \relative c'' {
 \cutout {s1}  | e8-- r8 r4 r4 e8-- b-- |  
 \cutout {s1} | e8-- r8 r4 d8-- b-- e-- b-- |  
}

% B: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLineCutout "B"
\cutout {s1*4}

% C: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "C" \relative c' {
	r4 e-- e-- e-- | \cutout {s1*2} | e4-- r e-- e-- |
}
% D: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLineCutout "D" \relative c'' {
	\cutout {s1} | b4.( e8) e4.( b8) | \cutout {s1*2} |
	%\startCutout s1 \stopCutout | d16 d d d d d d d d d d d d4 | c1
}
% E: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "E" \relative c'' {
	e2. b4--\p |  \cutout {s1*2} | r2 a'4--\mp a-- |
}

% F: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLineCutout "F" \relative c'' {
	\cutout {s1} |e4( b d) r | \cutout {s1*2} |
}

% G: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLineCutout "G" \relative c'' {
	\cutout {s1} | d8-- fis-- g-- b-- g-- fis-- d-- a-- | 
	\cutout {s1} | d,8-- fis-- g-- b-- g-- fis-- d-- a-- |
}
% H: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLineCutout "H" \relative c' {
	\cutout {s1} | r4 e-- e-- e-- | 
	\cutout {s1} | fis4-- d8-- fis-- a-- b-- c-- e-- |
}

\pageBreak
%%%%%%% PAGE 2 %%%%%%%%%%%%%%%
\kappaMeterOn 4/4
#(set-accidental-style 'modern)
% I: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "I" \relative c' {
	<<R1 {s2.. s8\p} >> | 
	\cutout {s1} | 
	e4-- a2 fis4-- | 
	r4 e4-- e-- e-- |
}

% J: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "J" \relative c' {
	r4 fis8---> g---> b4-- e-- | \cutout {s1} | 
	r2 fis,8(\< g) b( e)\! | r4 fis--\> fis2 <>\! |
}

% K: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "K" \relative c'' {
	r4 d--\< d-- d-- | g--\!\> g-- g-- d--\! | \cutout {s1*2} |
}
% L: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "L" \relative c' {
	r4 fis8--\< b-- fis8-- b-- fis8-- b-- | 
	c8( g) g( c) c(\!\> b4 d8)\! | \cutout {s1*2} |
}

% M: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "M" \relative c' {
	fis1 | \cutout {s1*3} |
}
% N: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLineCutout "N" \relative c' {
	\cutout {s1}  | fis1 | r2 r4 a4 | \cutout {s1}  |
}
% O: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLineCutout "O" \relative c''' {
	\cutout {s1} | a4-- e-- e8-- b-- e-- b-- | \cutout {s1*2} |
}

% P: ------------------------------------------------------------------------------------------------------------------------------------------------------
\newLine "P"
R1 | R1 | R1 | R1  \bar "|."

}