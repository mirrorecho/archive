pianoUpperThree = \relative c' { 
\clef bass
  \hideNotes g1^\fermata  \unHideNotes |
  % 6/8 ------------------------
  s2.*4
  % 4/4 -------------------------
  \clef treble
  \repeat tremolo 16 {b'32( <ais fis'>}
  %<>^"[ ** bring this stuff in before ** ]"
  \repeat tremolo 12 {b32 <ais fis'>)} r4
  <<e'8-> \\ {\repeat tremolo 16 {a,32( gis)}} >> |
  <<d'8-> \\ {\repeat tremolo 16 {g,32( fis)}} >> |
  <<d'8-> \\ {\repeat tremolo 16 {g,32( fis)}} >> |
  <g d'>1 |
  %<> ^"[clarinet + marinba rolls on c]"
  %f8 e d c g4 d'4 ~ |  d4. g8 fis e d4 | a8 e'4.  g4 fis |
  <a e'>2 \repeat tremolo 8 {a32( bes)} 
  r2 g' |
  %\repeat tremolo 16 {a32 bes)} | 
  <aes, ees'>4 <bes d> <c c'> <ees! bes'> 
  <f c'>4 <c' g'>2. |
  % everyone free part starts: ______________
  <aes! ees'!>4 \> <bes! d> <c c'> 
  \ottava #1 <ees! bes'!> <aes ees'>4 
  <>^"slow down until end" <ees! bes'!>2. 
 % <c g' c>2.^"top octave!" <c a'>4 |
   \repeat tremolo 4 {f32
  %_"temolos pianissimo, everything else fortissimo... cool but this is really the very end along with the other top register stuff" 
  ( ges!32)} <aes! c>4 <c c'>2 
 % ^"very end, trick walking down, very high pno register, very low flute"
 r4 <c g' c>4 r4 <c aes'!>4 
r4 ges'!4  r4 <c, g' c>4 
 r4 <c aes'!>4 r4 ges'!4 
 r4 <c, g' c>4 \ppp
 \ottava #0
}


pianoLowerThree = \relative c' { 

  \relative c, {
  \clef bass \ottava #-1
  \repeat tremolo 16 { <a, a'>32^\ff (  {\change Staff = "pianoUpper"  <bes' bes'> }} \change Staff = "pianoLower" 
   |  
  \repeat tremolo 12 { <a, a'>32  {\change Staff = "pianoUpper"  <bes' bes'>  }} \change Staff = "pianoLower" 
    \repeat tremolo 12 { <a, a'>32  {\change Staff = "pianoUpper"  <bes' bes'>  }} \change Staff = "pianoLower" 
    \repeat tremolo 12 { <a, a'>32  {\change Staff = "pianoUpper"  <bes' bes'>  }} \change Staff = "pianoLower" 
    \repeat tremolo 12 { <a, a'>32  {\change Staff = "pianoUpper"  <bes' bes'> ) }} \change Staff = "pianoLower" 
   \ottava #0
 }
 R1 |
  \relative c {
 <b e fis>2. <b e a>4-> |
 <c g'? d'>1-> |
 <d a'? e'>1-> |
 <c g'? d'>1-> |
 \repeat tremolo 16 {b'32( c)}
    %R1 | <d a' e'>1 | <f c' g'>1 %could also be <e b fis>
  f,4
    <bes c f>4 <f c' g'>2 | 
    <f c' g'>2  \clef treble  <aes c aes'> ~ | 
    <aes c aes'> <aes des aes'>2 ~  |
    <aes des aes'>2 <aes des aes'>2
    <ges des'>4 <aes! ees'!> <bes! f'> <f' c'>
    <ges! des'!>4 <aes! ees'!> <bes! f'> <f' c'>
  }
 % r2 <b fis' b>2 |
 \relative c'' {
     \clef treble <ees! ees'!>4 <des! des'!>2.
    <aes' des>4 r4 <des, bes'>4 r4 
    <ges! des'!>4 r4  <aes! des!>4 r4 
    <des,! bes'!>4 r4  <ges! des'!>4 r4 
    <aes! des!>4 r4 

  }

}