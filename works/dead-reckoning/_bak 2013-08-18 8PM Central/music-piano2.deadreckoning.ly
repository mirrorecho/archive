pianoUpperTwo = \relative c' {
  \clef bass
  \hideNotes g1^\fermata  \unHideNotes |
 <>\mf
 \clef treble
 \pianoALine | %7/8
  \pianoALine | %7/8
\relative c' {des 4 \repeat tremolo 8 {c32( des32)} ees4 }| %4/4
\clef bass
  \pianoALineTwo | %7/8
  \pianoALineTwo | %7/8
  \pianoALineTwoStart \transpose c f, \trainLine | %4/4

  %^"[ ** 4th notes rising ** ]"
\clef treble

  \trainLine \repeat tremolo 8 {d'?32( ees)  } %{f( des bes ges')%} |

    \transpose c g \pianoALineTwo  | %7/8
    \transpose c g \pianoALineTwo |
    \transpose c g \pianoALineTwoStart \trainLine | %4/4
    \pianoMainLineOne \pianoMainLineTwo
    <bes' f'>4(    <ees c'>2.) |
    \pianoMainLineOne \pianoMainLineTwo
    <c g'>8( <f d'>2..) |
    \transpose c d {\pianoMainLineOne \pianoMainLineTwo}
    \transpose c d' \pianoTrainLine g8( ees c aes') |
    f[ des] bes[ ees] des[ ges,] c %7/8
    f,[ des'] bes[ ees] des[ ges,] <des c'>
    <b ais' b>4 <b fis'> <dis dis'> ais' | %4/4
    % 6/8-------------------------
    <<cis8-> \\ \repeat tremolo 12 {fis,32( g)}>>
    <<cis8-> \\ \repeat tremolo 12 {fis,32( g)}>>
    %cis8\mp fis b, a' fis b, |
    %cis8 fis b, b' g b, |
    \transpose bes g \moveLineOne e4.-- |
    <> ^\markup { \rounded-box "freely until B" }
    <bes d>2.---> |
    <<bes'8-> \\ \repeat tremolo 6 {ees,32( d)}>> <<ees'8-> \\ \repeat tremolo 6 {aes,32( g)}>> | 
    \repeat tremolo 6 {aes32( g)} ees'4.-- |
    g8( d g,) c( bes aes) |
    g( d' a') g( f ees) |
    d( a' d,) g( f ees) |

    % everyone free
    d[\mp\> a' d,] g[ f ees]
    d'[ a d,] g[ f ees]
    d[ a' e'] d[ c bes] \ottava #1
    a[ d a'] g[ f ees]
    d[ a' e'] 
\boxNotes {
          \times 2/3 {d,[\pp a' e'] }
        } #7 #4 "repeat until B, slowing down"
    \hideNotes r4 \unHideNotes
\ottava #0
    %<c g'>4( <f d'>2.) |

  %{
  r2 r4 <g g'> |
  r2 r4 <g g'> |
  s1^"G phryg" |
  s1 |
  s1^"D phryg" |
  s1 |
  s1^"moving to A phryg" |
  s1 ^"at the end, big bang a/bes tremolo with high hits; speeds up and grows into most active tremolos on higher a/bes at togetherneess, then go into main line with even more active/metered feel" 
  %}
}

pianoLowerTwo = \relative c' {
  \clef bass
  \relative c,, {
  \ottava #-1
  << {
  \repeat tremolo 16 { <ais ais'>32^\ff( \change Staff = "pianoUpper" <b' b'>) } \change Staff = "pianoLower" 
  }
  {s4 s8 s8 s4 s4} >>
  }
  \ottava #-0
  |  
  des,2.. | 
  <<{aes'4 ges4 ~ ges4.} \\ {ees2 ~ ees4.} >> |
  <aes, ees'>4 <bes f'>2. |
  f2.. | 
  <<{bes4 aes4 ~ aes4.} \\ {bes,2 ~ bes4.} >> |
  R1*2 |
  \clef treble \relative c' {
    R2.. | R2.. |
    R1
    \pianoTrainLine \pianoAfterTrainLine |
    \relative c' {<aes ees'>4( <bes f'>2.)} |
    \pianoTrainLine f8( des bes4) |
    <aes ees'>8( <c g'>2..) |
    d8( bes' a g) g( ees c aes') |
    <bes, f'>4( <c g'>2.) |
  }
  R2.. | R2.. | %7/8
  \relative c {
    \clef bass
    b2 cis | % 4/4

    d2. |
    a2. |
    <g d'>2. |
    <aes ees'>2. |
    <aes ees'>4. bes'4. |
    % 6/8
    <<
    {f'4. c}
    \\
    {g2.}
     >>
     R2.*3
  }
  \relative c'' {
    \clef treble s2.*2 r1 s4 s4. 
    r8[ c bes]
    f4.( c'2.) 
    <ees, f d'>4. <a' bes c> c
  }
  %everyone freely:
}
  %free 

  %{
  ees'4(^"doubles marimba/flute sometimes" c ~ c2) |
  ees4( c ~ c2) |
  %}
