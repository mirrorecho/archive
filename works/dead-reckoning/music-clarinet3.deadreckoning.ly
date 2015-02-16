clarinetSectionThree = \relative c''' {
  <>^\fermata
  \nastyNote
  \relative c'''' {\nastyNote g1\ff ~ ^"*" } |
	aes2.->\f | 
  bes2.-> |
  ces2.-> | 
  ges4.-> r4. |

  \relative c'''' {\nastyNote g2\ff ~ ^"*" } | r2 |
	
	%\override Staff.Barline #'bar-extent = #'(-1 . 1)
  \relative c' {
    <> ^\markup { \rounded-box "freely until end" }
    <>\mf
    \times 2/3 {e2( b'1)}
        r8 \times 4/5 {gis8( a g fis e} b4 fis'8 ~ | fis2)
        r8 d'4(\mp g,8 ~ g4) \times 2/3 { c4( fis e } d4 ~ | d4)
        a8( e'2) a,8( e1\>)
        r8 \times 2/3 {f4\p( e d} c8 bes4) |
        aes2. r8 g8(\> ~ | 
        g2. aes4 ~ | 
        aes2.) bes1\pp ^\parenthesize \fermata
        s4
        c1 ^\parenthesize \fermata s2
        c1\ppp ^\parenthesize \fermata s2
        c1 ^\parenthesize \fermata
  }
}