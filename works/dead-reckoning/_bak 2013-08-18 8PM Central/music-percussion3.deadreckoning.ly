cymbalsSectionThree = {
	<> ^\fermata 
	a1:32->\fff^"(crash)"  |
	% 6/8
	R2. |
	f8->\f ^"(china, crash)" r r a4.:32 |
	R2.*2 |
	a2:32 r2 |
	R1*9 |
	s1 s1 s1 r1
}


marimbaUpperThree = {
	<> ^\fermata 
	r1 | 
	\transpose cis bes, \marimbaBStart
	R2. |
	\transpose cis bes, \marimbaBStart
	\transpose cis bes, \marimbaBStart
	% ---- 4/4
	R1 |
	\transpose cis b, {\marimbaAStart}
		\transpose cis a, {\marimbaAEnd}
	\transpose cis a, {\marimbaAStart
		\marimbaAEnd}
	\transpose cis a, {\marimbaAEnd \marimbaAEnd \marimbaAEnd \marimbaAEnd}
	\transpose cis a, {\marimbaAEnd \marimbaAEnd \marimbaAEnd \marimbaAEnd}
	\transpose cis a, {\marimbaAEnd \marimbaAEnd \marimbaAEnd \marimbaAEnd}
	R1*3 |
	c1:32 \> |
	f2.:32 |
	ges1:32 |
	ges'2.:32 |
	aes2.:32 |
	c:32 |
	des1:32 |
	c'1:32 \ppp ^\parenthesize \fermata
}

marimbaLowerThree = \relative c {
	<> ^\fermata 
	r1 |
	<>\f s2.*4 |
	% 4/4
	R1
	<>\mf s1*3 |
	<>\> s1*2 |
	r8 c\mp r c r c r c |
     c1:32 |
     g'1:32 |
     R1 |
     s1 s1 s1 r1
}