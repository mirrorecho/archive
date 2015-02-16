\include "music-functions.oxygen.ly"
\include "music-ideas.oxygen.ly"
\include "music-shards.oxygen.ly"
\include "segment-shells.oxygen.ly"

global = {
  %\key c \major
  \override TupletBracket #'bracket-visibility = ##t % WHY DOESN't THIS WORK UNIVERALLY?
  \numericTimeSignature
  \time 4/4
  \tempo  \markup \fontsize #3.3 { \note #"4" #1 = 100 ca}
  \engraveGlobal
  %\tempo 
}



\include "music-strings.oxygen.ly"



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% FLUTE 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fluteOne = \relative c'' { 
  %\remove Bar_engraver
  \global
  \bubbleLine \segFShow \segFUniversal {
    R1*5 | e1~(\p | e8 c4.~ c4.) r8 |
    e1~( | e8 c4.~ c2~ | c4) r4 r2 |
    r4 r8 c8~( c4\mp g'4~ | g8 f4.) r2 |
  }
  \bubbleLine \segOShow \segOUniversal {
    r4 e4\mp\> ~ e4 ~ e8\!\n r8 | <<f1 {s2..\mp\> s8\!\n}>> | r8 <<{e4. ~ e2} {s4.\mp\> s4. s8\!\n } >> | r4 <<{f4 ~ f2 } {s4\mp\> s4. s8\n} >> |
    r4 <<{e4 ~ e2 } {s4\mp\> s4. s8\n} >>  | r4 f4\mp\> ~ f2 ~ | f4\!\n r8 <<{e8 ~ e2 } {s8\mp\> s4. s8\n} >> | r4 <<{f4 ~ f2 } {s4\mp\> s4. s8\n} >> |
    r8 <<{e4. ~ e2 } {s4.\mp\> s4. s8\n} >> | r8 <<{f4. ~ f2 } {s4.\mp\> s4. s8\n} >> | r4 e4\mp\> ~ e2 ~ | e2. ~ e4\!\n |
    R1*6
  }
  \bubbleLine \segVShow \segVUniversal \relative c''' {
    d1\p\< ~ | d2.\mp\!\> r4\! | d1\p\< ~ | d2.\mp\!\> r4\! | d1\p\< ~ | d2.\mp\!\> r4\! | 
    d1\p\< ~ | d2.\mp\!\> r4\! | d1\p\< ~ | d2.\mp\!\> r4\! | << d1 {s2.\p\< s8\mf} >>

  }
  % AF ---------------------------------------------
  \bubbleLine \segAFShow \segAFUniversal \relative c'' {
    r2 d'2\mf ~ | d1 | r8 d4. ~ d2 ~ | d2 r2 | d1 ~ | d4 r4  d2  ~ | d1 | r2 d2 ~ | d1 |
    R1*6
  }
  % AH ---------------------------------------------
  \bubbleLine \segAHShow \segAHUniversal \relative c'' {
    R1*2 | r2 \boxArrow {\times 2/3 {f4\mp( c'2} | \times 2/3 {b8) b-- g--} \times 2/3 {g8-- f-- f( } e4.)} #5 #4 "freely, repeat"
    s8 | s2 \arrowQuarterNote s4 | s2 \arrowQuarterNote s4 | s2 \arrowQuarterNote s4 | s2 \arrowQuarterNote s4 |
    \stopArrowStaff
    r2 r4 f'4\f ~ | f2 r4 e,4\< ~ | e8 d'4.\ff ~ d2\> ~ | d2\mf r4 e4 ~ | e2. r4 | d1 ~ | d2. r8 e8 ~ | e2. r4 | e1(\> ~ | e4. d8)\mp\! r2 |
  }
  % ---------------------------------------------
  \bubbleLine \segASShow \segASUniversal \relative c''' {
    d1\< ~ | d2\mf\> r2\! | << d1 {s2\mp\< ~ s2\mf\>}>> | r2\!  d2(\mp\< ~ | d4\mf\> c2.) | 
    r2\! c2\mp\<( ~ | c2\mf\!\> ~ c8 g4.\!) | r2 r4  g4\mp\<( | a1 ~ | a2\mf\>) r2\! |
    a1\mp\<( ~ | a4.\mf\!\> g8 ~ g2) | R1\!
  }
  \bubbleLine \segANShow \segANUniversal {
    \segRestAM
    %\segRestAL
    r4 r8 e8\ppp e e4. | d4 d2.~ | d2 r4 d,4( ~ | d2 d'2~ | d8 e) e4 e2( | d4) d2.~ | d4 r4 r2 |
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% FLUTE 2 (& piccolo)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fluteTwo = \relative c'' { 
  \global
  \bubbleLine \segFShow \segFUniversal {
    R1*5| r2 r4 e4~\p | e1 |
    r2 r4 e4~ | e1 | r4 e2.( | 
    d1) | r2 e4.( f8) |
  }
  \bubbleLine \segOShow \segOUniversal \relative c'' {
    r2  r4 r8 g'8\mp\> ~ | g2 ~ g8\n\! r8 f4\mp\> ~ | f2 ~ f4\n\! r8 g8\mp\> ~ | g2 ~ g4.\!\n r8 | 
    f2\mp\> ~ f4\n\! r8 g8\mp\> ~ | g2 ~ g4.\n\! ~ r8 | f2\mp\> ~ f4\n\! r8 g8\mp\> ~ | g2 ~ g4\n\! r8 f8\mp\> ~ | 
    f2 ~ f8\n\! r8 g4\mp\> ~ | g2 ~ g4\n\! r8 f8\mp\> ~ | f1 ~ | f2 ~ f4\n\! r4 |
    R1*6
  }
  \bubbleLine \segVShow \segVUniversal {
    R1 d1\p\< ~ | d2.\mp\!\> r4\! | d1\p\< ~ | d2.\mp\!\> r4\! | d1\p\< ~ | d2.\mp\!\> r4\! |
    d1\p\< ~ | d2.\mp\!\> r4\! | <<{d1\p\< ~ | d1} {s1\p\< | s2. s8\!\mf} >> |
  }
  % ---------------------------------------------
  \bubbleLine \segAFShow \segAFUniversal \relative c'' {
    R1 | r2 g'2\mf ~ | g2. r4 | g1 ~ | g4 r4 r8 g4. ~ | g1 ~ | r2 g2 ~ | g1 ~ | g4 r4 | r8 g4. ~ | g1 |
    R1*5
  }
  %AH:
  \bubbleLine \segAHShow \segAHUniversal \relative c''{
    R1*2 | r2 \boxArrow {c'4.\mp( b8 ~ | b4) \times 2/3 {g4 f e)} r8} #5 #4 "freely, repeat"
    s8 | s2 \arrowQuarterNote s4 | s2 \arrowQuarterNote s4 | s2 \arrowQuarterNote s4 | s2 \arrowQuarterNote s4 |
    \stopArrowStaff
    r2 r4 f'4\f ~ | f2 r4 e,4\< ~ | e8 d'4.\ff ~ d2\> ~ | d2\mf r4 f,4 ~ | f2. r4 | f1 ~ | f2. r8 f8 ~ | f2. r4 | 
    <<{f1( ~ | f2 r2} {s1\> | s4. s8\mp\! s2}>> |
  }
  % AS ---------------------------------------------
  \bubbleLine \segASShow \segASUniversal \relative c'' {
    f1\< ~ | f2\mf\> r2\! | << g1 {s2\mp\< ~ s2\mf\>}>> | r2\!  g2\mp\< ~ | g1\mf\> | 
    r2\! g2\mp\<( ~ | g2\mf\!\> ~ g8 c,4.\!) | r2 r4  c4\mp\<( ~ | c1 ~ | c8\mf\> d4.) r2\! |
    d1\mp\< ~ | d1\mf\!\> | R1\!
  }
  \bubbleLine \segANShow \segANUniversal {
    \segRestAM
    \relative c' {| r2 r4 d4\ppp ~ | d1 ~ | d2 r8 e' e e~( | e4 d d,2 ~ | d2) r4 d4 ~ | d1 ~ | d2 r2 |}
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% OBOE 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
oboeOne = \relative c'' { 
  \global
  \bubbleLine \segFShow \segFUniversal {
    R1*7
    r4 r8 f8~\pp f2~ | f2 r4 r8 f8~( |
    f4 e2.) | r2 a2~ | a4 |
  }
  \bubbleLine \segOShow \segOUniversal \relative c'' {
    R1 | r2 e2\ppp\< ~ | e1\p\!\> ~ | e2\! r2 |
    r2 e2\ppp\< ~ | e1\p\!\> ~ | e2\! r2 |
    r2 e2\ppp\< ~ | e1\p\!\> ~ | e2\! r2 |
    R1*8
  }
  \bubbleLine \segVShow \segVUniversal {
    r8 d4.\pp\< ~ d2 ~ | d1\> ~ | d2.\! r4 | R1*8
  }
  % ---------------------------------------------
  \bubbleLine \segAFShow \segAFUniversal \relative c'' {
    r4 \boxNotes { \times 2/3 {g2( f4} e8) r8 } #4 #4 "" |
    \startArrowStaff
    <>^"freely, repeat"
    s2. \arrowQuarterNote |     s2. \arrowQuarterNote |     s2. \arrowQuarterNote |
    s2. \arrowQuarterNote |     s2. \arrowQuarterNote |     s2. \arrowQuarterNote |
    s2. \arrowQuarterNote | 
    \stopArrowStaff
    R1
    \relative c'' {c1\<\mp ~ | c2\mf\> r2\! | c1\<\mp ~ | c2\mf\> r2\! | c1\<\mp ~ | c2\mf\> r2\! |}
  }
  %AH -------------------------------------
  \bubbleLine \segAHShow \segAHUniversal \relative c'' {
    c1\p\< ~ | c2\mf\!\> r2\! | f1\p\< ~ | f2\mf\!\> r2\! | f1\p\< ~ | f2\mf\!\> r2\! | f1\p\< ~ | f2\mf\!\> r2\! |
    e'2.\mp\< f4\ff\! ~ | f2. r4 | r8 d4.(  e4 d | g,2) r4  f( ~ | f2 ~ f8 c4. | f2) r4 e4( ~ | e8 f4. ~ f4. c8 ~ | c4 f4) r2 |
    e4.( f8 ~ f2 | c4. f8 ~ f2) |
  }
  % ---------------------------------------------
  \bubbleLine \segASShow \segASUniversal \relative c'' {
    \boxArrow { \times 4/5 {g'4\p( f8 e c} a4) r8} #5 #5 "freely, repeat" s8 |
    \arrowMeasure \arrowMeasure \arrowMeasure \arrowMeasure \arrowMeasure \arrowMeasure
    \stopArrowStaff
    \boxArrow { a4\p( \times 2/3 {g4 f e) } r8} #5 #5 "freely, repeat" s8
    \arrowMeasure \arrowMeasure \arrowMeasure \arrowMeasure \arrowMeasure
    \stopArrowStaff
  }
  \bubbleLine \segANShow \segANUniversal {
    \segRestAM
    \segRestAL
  }

}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% OBOE 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
oboeTwo = \relative c'' { 
  \global
  \bubbleLine \segFShow \segFUniversal {
    R1*7
    R1 | R1  | r2 r8 f4.(\pp |
      e1) | R1
  }
  \bubbleLine \segOShow \segOUniversal \relative c' {
    r2 e2\ppp\< ~ | e1\p\!\> ~ | e2\! r2 |
    e'1\ppp\<\! ~ | e1\p\> | R1\!
    e,1\ppp\<\! ~ | e1\p\> | R1\!
    e1\ppp\<\! ~ | e1\p\> <>\! | R1*7
  }
  \bubbleLine \segVShow \segVUniversal {
    \segRestV
  }
  % ---------------------------------------------
  \bubbleLine \segAFShow \segAFUniversal \relative c'' {
    r8 \boxNotes { \times 2/3 {f4( e2} c4) r8 } #4 #4 "" |
    \startArrowStaff
    <>^"freely, repeat"
    s2. \arrowQuarterNote |     s2. \arrowQuarterNote |     s2. \arrowQuarterNote |
    s2. \arrowQuarterNote |     s2. \arrowQuarterNote |     s2. \arrowQuarterNote |
    s2. \arrowQuarterNote | 
    \stopArrowStaff
    R1*2
    c1\<\mp ~ | c2\mf\> r2\! | c1\<\mp ~ | c2\mf\> r2\! | c1\mp |
  }
  % AH ---------------------------------------------
  \bubbleLine \segAHShow \segAHUniversal {
    R1 c1\p\< ~ | c2\mf\!\> r2\! | f1\p\< ~ | f2\mf\!\> r2\! | f1\p\< ~ | f2\mf\!\> r2\! | f1\p\< ~ | 
    f2\mp r4 f'4\ff\! ~ | f2. e,4( ~ | e8 f8) r4 f4( c | f2. e4) | r2 e8( f4. | g4. f8 ~ f2) |
    r2 e4.( f8 ~ | f4 g ~ g8 f4. | f2) r8 e4.( |  f4. g8 ~ g4 f4) |
  }
  % ---------------------------------------------
  \bubbleLine \segASShow \segASUniversal \relative c'' {
    \boxArrow { \times 2/3 {f4\p( e c} g4. a8) | r8} #5 #5 "freely, repeat"
    s4. \arrowQuarterNote s4
    \arrowMeasure \arrowMeasure \arrowMeasure \arrowMeasure \arrowMeasure
    \stopArrowStaff
    \boxArrow { g4.\p( e8 f4) r8} #5 #5 "freely, repeat" s8
    \arrowMeasure \arrowMeasure \arrowMeasure \arrowMeasure \arrowMeasure
    \stopArrowStaff
  }
  \bubbleLine \segANShow \segANUniversal {
    \segRestAM
    \segRestAL
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% CLARINET 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clarinetOne = \relative c'' { 
  \global
  \bubbleLine \segFShow \segFUniversal {
    R1*7
    b'1~\<(\n | b2\!\p\> g4. f8)\n <>\!   |
    r4 b4~(\< b8 a4.\p~ | a1) | R1
  }
  \bubbleLine \segOShow \segOUniversal {
   e4 \n\< ~ e4 \!\mp  f2\<\n ~ | f4.\!\mp r8 e2\n\< ~ | e8 ~ e4.\!\mp r8 f4.\n\< ~  | f4 ~ f4\!\mp ~ f8 r8 e4\<\n ~ | e4 ~ e4\!\mp ~ e8 r8 f4\n\< ~ |
   f4 ~ f4\mp\! ~ f8 r8 e4\n\< ~| e4. ~ e8\mp\~  r8  f4.\n\< ~ | f4 ~ f4\!\mp ~ f8 r8 e4\n\< ~ | e8 ~ e4.\mp | r8 f4.\n\< ~ | f8 ~ f4.\mp\! r8 e4.\n\< ~  | 
   e4 ~ e4\!\mp\> ~ e2 ~ | e2 r2\!\n |
   <<e1 {s2\pp\< s4.\mp\!\> s8\!} >> | R1 | e1\pp\<( | d1\!\mp\> ~ | d2) r2\! | R1 |
  }
  % V ---------------------------------------------
  \bubbleLine \segVShow \segVUniversal \relative c' {
    r8 a\mf a-> a->~ a2~ | a4 r4 r2 | r8 d4.~(  d4 a4~ | a8 g4.~ g4) r4 | R1 |
    a4.(\p\< g8~\mf g2~ | g4) r4 r2 | a8\p\<( g4.~ g2)\mf | g8 g4->-- g8->--~ g4. f8--~ | f8 f4. r2 | 
    R1 |
  }
  % AF ---------------------------------------------
  \bubbleLine \segAFShow \segAFUniversal \relative c''' {
    R1*9
    \relative c'' {c1\<\mp ~ | c2\mf\> r2\! | c1\<\mp ~ | c2\mf\> r2\! | c1\<\mp ~ | c2\mf\> r2\! |}
  }
  % AH ---------------------------------------------
  \bubbleLine \segAHShow \segAHUniversal \relative c'' {
    R1*3 \boxArrow {e4(\mp b'4.) g8-- g( f8 ~ | f8) r8} #5 #4 "freely, repeat"
    s4 \arrowQuarterNote s4
    \arrowMeasure \arrowMeasure \arrowMeasure
    \stopArrowStaff
    r2 r4 c,4--->\ff | bes4.---> f'8---> ~ f4 bes4---> | r8 d'4.-> ~ d2\> ~ | 
    d4\mp\! r4 d,2\< ~ | d1\mf ~ | d2 r2 | d2( ~ d4. e8  ~ | e2) r4 e4 ~ | e2. r4 | e4.( d8 ~ d2) |
  }
  % ---------------------------------------------
  \bubbleLine \segASShow \segASUniversal \relative c'' {
    r2 \boxArrow { \times 4/5 {e8(\p c a g f ~} | f4) r8} #5 #5 "freely, repeat"
    s8 \arrowQuarterNote s4
    \arrowMeasure \arrowMeasure \arrowMeasure \arrowMeasure \arrowMeasure
    \stopArrowStaff
    \boxArrow { \times 4/5 {a8(\p g f e s } c4) r8} #5 #5 "freely, repeat" s8
    \arrowMeasure \arrowMeasure \arrowMeasure \arrowMeasure \arrowMeasure
  }
  \bubbleLine \segANShow \segANUniversal {
    \segRestAM
    \segRestAL
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% CLARINET 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clarinetTwo = \relative c'' {
  \global
  \bubbleLine \segFShow \segFUniversal \relative c'' {
    R1*7
    r2 e2~(\<\n | e2~ e4.\!\>\p d8~ | d2\!\pp) r2 | d1~(\< | d4 e2.\!)\mp |
  }
  \bubbleLine \segOShow \segOUniversal \relative c'' {
    g'2\n\< ~ g4. ~ g8\!\mp | r8 f4.\n\< ~ f4 ~ f4\!\mp ~ | f8 r8 g4\n\< ~ g4. ~ g8\mp\! ~ | g4 r8 f8\n\< ~  f2 ~ | 
    f4\!\mp r8 g8\n\< ~ g4. ~ g8\mp\! ~ | g4 r8 f8\n\< ~ f2 ~ | f4.\!\mp r8 g4.\n\< ~ g8\!\mp ~ | g4 r8 f8\n\< ~ f4. ~ f8\mp\! ~ |
    f8 r8 g4\n\< ~ g4 ~ g4~\mp\! ~ | g8 r8 f4\n\< ~ f4. ~ f8\mp\!\> ~ | f1 ~ | f8\n r8 r4 r2 |
    <<a1 {s2\p\< s4.\mp\!\> s8\!} >> | R1 | g1\pp\< ~ | g1\!\mp\> ~ | g2 r2\! | R1 |
  }
  % V ---------------------------------------------
  \bubbleLine \segVShow \segVUniversal \relative c' {
    r2 a2\p\< | a1\mf | R1 | r4 g4~\p\<( g4 d4~\mf | d2.) d4( |
    a'4. g8) r2 | r2 d4.( a'8~ | a8 g4.) r2 | R1 | r2 e8 e4-> e8~ | 
    e8 g8 g8-> g8~-> g2 |
  }
  % ---------------------------------------------
  \bubbleLine \segAFShow \segAFUniversal {
    R1*10
    c1\<\mp ~ | c2\mf\> r2\! | c1\<\mp ~ | c2\mf\> r2\! | R1
  }
  \bubbleLine \segAHShow \segAHUniversal \relative c'' {
    R1*3 r8 \boxArrow {b4(\mp \times 2/3 {g4 f e)} | r8} #5 #4 "freely, repeat"
    \arrowMeasure \arrowMeasure \arrowMeasure \arrowMeasure
    \stopArrowStaff
    r2 r4 bes4--->\ff | g4.---> bes8---> ~ bes4 e'4---> | r8 bes4.-> ~ bes2\> ~ | 
    bes4\mp\! r4 f2\< ~ | f1\mf ~ | f2 r2 | f1  ~ | f2) r4 f4 ~ | f2. r4 | f1 |
  }
  % ---------------------------------------------
  \bubbleLine \segASShow \segASUniversal \relative c'' {
    r2 \boxArrow { \times 2/3 {a4(\p e' c ~ } | c8 \times 2/3 {a4 g) r}} #5 #5 "freely, repeat"
    s4.
    \arrowMeasure \arrowMeasure \arrowMeasure \arrowMeasure \arrowMeasure
    \stopArrowStaff
    \boxArrow { \times 2/3 {c,4(\p g' d8 c8 ~} c8) r8} #5 #5 "freely, repeat" s4
    \arrowMeasure \arrowMeasure \arrowMeasure \arrowMeasure \arrowMeasure
  }
  \bubbleLine \segANShow \segANUniversal {
    \segRestAM
    \segRestAL
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% BASSOON 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
bassoonOne = \relative c { 
  \global
  \clef bass
  \bubbleLine \segFShow \segFUniversal {
    \segRestF
  }
  \bubbleLine \segOShow \segOUniversal \relative c {
    R1 | r4 e2.(\p\< | b'2\mf\!\>) r2\! | a2\pp\< ~ a4.\mf\! a8-- | a-- a4.\> ~ a4\! r4 | 
    r2 g4.\pp\<( f8\mf\!) | f-- f4.-- ~ f4 f-- ~ | f8 f4-- r8 r2 | R1*10 |

  }
  \bubbleLine \segVShow \segVUniversal {
    R1 | r2 d'2~\p\< | d2\!\> r2\! | R1*8
  }
  % AF ---------------------------------------------
  \bubbleLine \segAFShow \segAFUniversal \relative c {
    R1 g1\<\mp ~ | g2\mf\> r2\! | g1\<\mp ~ | g2\mf\> r2\! | g1\<\mp ~ | g2\mf\> r2\! | g1\<\mp ~ | g2\mf\> r2\! | 
    c1\<\mp ~ | c2\mf\> r2\! | c1\<\mp ~ | c2\mf\> r2\! | c1\<\mp ~ | c2\mf\> r2\! |  
  }
  % AH ---------------------------------------------
  \bubbleLine \segAHShow \segAHUniversal \relative c' {
    R1 | r2 g2\p\< ~ | g1\mf\!\> | r2\! c2\p\< ~ | c1\mf\!\>  | r2\! c2\p\< ~ | c1\mf\!\> | r2\! c2\p\< ~ | c2\mf\!\> r4\! bes,,4->\ff ~ |
    bes2 r4 bes4 ~ | bes2 r4 bes4-> ~ | bes1\> ~ | bes2.\mf r4 | bes1 ~ | bes1 | r4 bes2. ~ | bes2. r4 | bes1 | 
    
  }
  % ---------------------------------------------
  \bubbleLine \segASShow \segASUniversal \relative c {
    r2 f2\mp\< ~ | f1\mf\> | r2\! f2\mp\< ~ | f1\mf\> | r2\! f2\mp\< ~ | f1\mf\> | 
    r2\! r8 d'4.\p\< ~ | d8\f\> d4. ~ d2 | R1\! |
    r2 \clef tenor g2\pp\<( ~ | g4\f\> f2.) | R1\! |

  }
  \bubbleLine \segANShow \segANUniversal \relative c' {
    r2 e2\pp\<( ~ | e2\mf\> d4) r4\! |
    r4 d2.\pp\< ~ | d4\mf\> r4\! r2 |
    r4 f2.\pp\< ~ | f4\mf\> r4\! r4 f4\pp\<( ~ |
        f8 e4.\mp\> ~ e8) r8\! r4 | R1
    \segRestAL
  }

}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% BASSOON 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
bassoonTwo = \relative c, { 
  \global
  \clef bass
  \bubbleLine \segFShow \segFUniversal {
    \segRestF
  }
  \bubbleLine \segOShow \segOUniversal \relative c' {
    R1 | R1 | r8 b4.\pp\<( ~ b4\mf\!\> a4\! ~ | a2) r2 | r4 a4\pp\<( ~ a g8\mf\!) g-- |
    g2.\> r4\! | R1 | r4 r8 f8--\mf ~ f4 e8-- e---> | e1--->\> ~ | e2\p\! r2 | R1*8
  }
  \bubbleLine \segVShow \segVUniversal {
    \segRestV
  }
  % AF ---------------------------------------------
  \bubbleLine \segAFShow \segAFUniversal \relative c {
    R1*2 g1\<\mp ~ | g2\mf\> r2\! | g1\<\mp ~ | g2\mf\> r2\! | g1\<\mp ~ | g2\mf\> r2\! | 
    c1\<\mp ~ | c2\mf\> r2\! | c1\<\mp ~ | c2\mf\> r2\! | c1\<\mp ~ | c2\mf\> r2\! |  R1
  }
  \bubbleLine \segAHShow \segAHUniversal \relative c {
    r2 c2\p\< ~ | c1\mf\!\> | r2\! f2\p\< ~ | f1\mf\!\>  | r2\! f2\p\< ~ | f1\mf\!\> | r2\! f2\p\< ~ | f1\mf\!\> | r2\! r4 bes,,4->\ff ~ |
    bes2 r4 bes4 ~ | bes2 r4 bes4-> ~ | bes1\> ~ | bes2.\mf r4 | bes1 ~ | bes1 | r4 bes2. ~ | bes2. r4 | bes1 | 
  }
  % ---------------------------------------------
  \bubbleLine \segASShow \segASUniversal \relative c {
    R1 | r2 f2\mp\< ~ | f1\mf\> | r2\! f2\mp\< ~ | f1\mf\> | r2\! f2\mp\< ~ | f1\mf\> | 
    R1 | << d'1 {s2\pp\< s4.\f\> s8\pp\!} >> | R1 R1 |
    r2 e2\pp\<( ~ | e4\mf f8) r8 r2 |
  }
  \bubbleLine \segANShow \segANUniversal {
    \segRestAM
    \segRestAL
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% HORN 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
hornOne = \relative c' { 
  \global
  \bubbleLine \segFShow \segFUniversal {
    \segRestF
  }
  \bubbleLine \segOShow \segOUniversal {
    r4 b2.\pp ~ | b1 ~ | b2.  r4 | 
    r2 b2\ppp\<( ~ | b8 a4.\p ~ a2 ~ | a1) | R1 | R1 |
    r2 a2\ppp\<( ~ | a1 ~ | e'1\mp ~ | e4) r4 r2 |
    r2 e2\pp\< ~ | e4 e2.\mp\!\> ~ | e2 r2\! | R1 | d1\pp\< ~ | d4\mp d2. |
  }
  \bubbleLine \segVShow \segVUniversal {
    \segRestV
  }
  % AF ---------------------------------------------
  \bubbleLine \segAFShow \segAFUniversal \relative c' {
    R1  | d2\p\<( f4.\mp e8) | r4 d2.\p\<( ~ | d2. c4\mp | g'4.) r8 r8 d4.\p\<( | c2 ~ c4.  f8\mf ~ | f4 e4) r2 | c1\p\<( ~ | 
        c2 ~ c8 f4\f e8 ~ | e8 c8) r4 r4 g'4\p\<( ~ | g1 ~ | g4. c,8\mf ~ c8 g'4.) | R1 | f1\p\< ~ | f1\mp\> <>\! |

  }
  % AH ---------------------------------------------
  \bubbleLine \segAHShow \segAHUniversal \relative c' {
    r2 g'\p\< ~ | g1 ~ | g2\f\! r4 
    \boxNotes {e4(\p | c ~ \times 2/3 {c f e)} r8 } #4 #4 ""
    \startArrowStaff
    s8^"freely, repeat"  | s2 \arrowQuarterNote s4 | s2 \arrowQuarterNote s4 | s2 \arrowQuarterNote s4 | s2 \arrowQuarterNote s4 | 
    \stopArrowStaff
    %BI
    r2 r4 c--\f\< | g4.-- e'8---> ~ e4 e'4--->\ff\! ~ | e8 r8 r4 c2\mf ~ | c1 ~ | c4 r4 f,2 ~ | f1 ~ | f4 r4 f2 ~ | f2. r8 g8\<( ~ | 
        g4. f8\!\> ~ f4) r4\! | f1\mp |
  }
  % ---------------------------------------------
  \bubbleLine \segASShow \segASUniversal \relative c' {
    r4 a'2.\p\< ~ | a1\mp\> | R1\! | R1*10 |
  }
  \bubbleLine \segANShow \segANUniversal {
    \segRestAN
  }

}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% HORN 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
hornTwo = \relative c' { 
  \global
  \bubbleLine \segFShow \segFUniversal {
    \segRestF
  }
  \bubbleLine \segOShow \segOUniversal {
    r4 e,2.\pp ~ | e1 ~ e2. r4 | R1 | 
    r8 d4.\p ~ d2 ~ | d1 | R1 | R1 |
    r2 e2\ppp\<( ~ | e1 ~ | a1\mp ~ | a4) r4 r2 |
    r2 a2\pp\<( ~ | a4 g2.\mp\!\> ~ | g2) r2\! | R1 | g1\pp\<( ~ | g4\mp a2.) |
  }
  \bubbleLine \segVShow \segVUniversal {
    \segRestV
  }
  % AF ---------------------------------------------
  \bubbleLine \segAFShow \segAFUniversal \relative c' {
    R1 g1\p\<( | c8\mp g'4) r8 r2 | g,4.\p\<( f8 ~ f2 ~  | f4. f'8\mp e) r8 r4 | f,1\p\<( ~ | f2 f'4.\mf e8 ~ | e4) r4 r4 g,4\p\<( ~ |
        g1 ~ | g8 c4.->\f g'4.->) r8 | r2 c,2\p\<( ~ | c1 | f4.\mf e8 ~ e4) r4 | c1\p\< ~ | c1\mp\> <>\! |
  }
  \bubbleLine \segAHShow \segAHUniversal \relative c' {
    r2 e\p\< ~ | e1 ~ | e2\f\! r2 |
    s8 \boxNotes {\times 2/3 {f2(\p e4)} r8 } #4 #4 ""
    \startArrowStaff
    s4^"freely, repeat"  | s2 \arrowQuarterNote s4 | s2 \arrowQuarterNote s4 | s2 \arrowQuarterNote s4 | s2 \arrowQuarterNote s4 | 
    \stopArrowStaff
    %BI
    r2 r4 c,--\f\< | c'4.-- f8---> ~ f4 c4--->\ff\! ~ | c8 r8 r4 f2\mf ~ | f1 ~ | f4 r4 d2 ~ | d1 ~ | d4 r4 e2 ~ | e2. r4 | 
    d2.\< e4 | <>\! <<{e1} {s2.\> s4\mp}>>
  }
  % ---------------------------------------------
  \bubbleLine \segASShow \segASUniversal \relative c' {
    r2 r4 f4\p ~ | <<{f1 ~ | f2 r2} {s2\< s2\mp\> | s2 s2\!} >> | R1*10 |
  }
  \bubbleLine \segANShow \segANUniversal {
    \segRestAN
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% HORN 3
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
hornThree = \relative c' { 
  \global
  \bubbleLine \segFShow \segFUniversal {
    \segRestF
  }
  \bubbleLine \segOShow \segOUniversal {
    R1*2 | r2 r4 b4\p ~ | b1 ~ | b8 r8 r4 r2 | R1 |
    r2 r4 a4 ~ | a1 ~ | a1 | R1 | 
    %M (B)
    R1*8
  }
  \bubbleLine \segVShow \segVUniversal {
    \segRestV
  }
  % AF ---------------------------------------------
  \bubbleLine \segAFShow \segAFUniversal \relative c' {
    R1 | r2 d2\p\<( ~ | d4. f8\mp ~ f4 e) | r2 r4 d4\p\<( ~ | d2 ~ d8 f4.\mp | e8) r8 r4 r4 c\p\< ~ | c1 ~ | c4 c4\mf( g'4.) r8 |
    r2 c,4.\p\<(  g'8 ~ | g2 ~ g4. f8\f ~ | f4 e4 ~ e4) r4 | r4 g2.\p\<( ~ | g2. f4\mp ~ | f8 e4.) r2 | R1
  }
  \bubbleLine \segAHShow \segAHUniversal \relative c' {
    r2 f\p\< ~ | f1 ~ | f2\f\! r4 
    \boxNotes {g4\p( ~ | g8 \times 2/3 {f4 e4) r4} } #4 #4 ""
    \startArrowStaff
    s4.^"freely, repeat"  | s2 \arrowQuarterNote s4 | s2 \arrowQuarterNote s4 | s2 \arrowQuarterNote s4 | s2 \arrowQuarterNote s4 | 
    \stopArrowStaff
    %BI
    r2 r4 f,--\f\< | g4.-- c8---> ~ c4 e'4--->\ff\! ~ | e8 r8 r4 e,2\mf ~ | e1 ~ | e4 r4 e2 ~ | e1 ~ | e4 r4 e2 ~ | e2. r4 | e1\> ~ | e1\mp\!
  }
  % ---------------------------------------------
  \bubbleLine \segASShow \segASUniversal \relative c' {
    R1 | g'1\p\< ~ | g1\mp\> <>\! | R1*10 |
  }
  \bubbleLine \segANShow \segANUniversal {
    \segRestAN
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% HORN 4
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
hornFour = \relative c' { 
  \global
  \bubbleLine \segFShow \segFUniversal {
    \segRestF
  }
  \bubbleLine \segOShow \segOUniversal {
    R1*2 | r4 e,4\ppp\<( ~ e d\p ~ | d1 ~ | d8) r8 r4 r2 | 
    r2 d2\ppp\<( ~ | d2.\p e4 ~ | e1) | R1 | R1 | 
    %M (B)
    R1*8
  }
  \bubbleLine \segVShow \segVUniversal {
    \segRestV
  }
  % AF ---------------------------------------------
  \bubbleLine \segAFShow \segAFUniversal \relative c' {
    R1*2 | g1\p\<( | f'4.\mp e8 ~ e4) r4 | r4 f,2.\p\<( ~ | f8 c'4.\mp | g'4.) r8 | r2 f,4.\p\<( g8 ~ | g2 ~ g4. f'8\mf ~ | 
        f4 e4) r2 | c1\p\<( ~ | c2 ~ c8 f4.\mf | e2) r2 | c1\p\< ~ | c2 c8\mp( g'4.) | R1
  }
  \bubbleLine \segAHShow \segAHUniversal \relative c' {
    r2 d\p\< ~ | d1 ~ | d2\f\! r2 |
    s8 \boxNotes {c4(\mp e8 c4.)-\parenthesize \fermata} #4 #4 ""
    s8
    \startArrowStaff
    <>^"freely, repeat" | s2 \arrowQuarterNote s4 | s2 \arrowQuarterNote s4 | s2 \arrowQuarterNote s4 | s2 \arrowQuarterNote s4 | 
    \stopArrowStaff
    %BI
    r2 r4 c,--\f\< | f4.-- f'8---> ~ f4 f4--->\ff\! ~ | f8 r8 r4 c2\mf ~ | c1 ~ | c4 r4 c2 ~ | c1 ~ | c4 r4 c2 ~ | c2. r4 | c1\> ~ | c1\mp\!
  }
  % ---------------------------------------------
  \bubbleLine \segASShow \segASUniversal \relative c' {
    R1 | r2 f2\p\< ~ | f1\mp\> <>\! | R1*10 |
  }
  \bubbleLine \segANShow \segANUniversal {
    \segRestAN
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% TRUMPET 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
trumpetOne = \relative c' { 
  \global
  \bubbleLine \segFShow \segFUniversal {
    \segRestF
  }
  \bubbleLine \segOShow \segOUniversal {
    \segRestO
  }
  \bubbleLine \segVShow \segVUniversal {
    \segRestV
  }
  % ---------------------------------------------
  \bubbleLine \segAFShow \segAFUniversal \relative c'' {
    R1*8 |
    << c1 {s2.\p\< s4 \mf } >> | r2 g4.\p\< | f'8->\f ~ | f4\> r4\! r2 | R1*4
  }
  \bubbleLine \segAHShow \segAHUniversal \relative c'{
    r2 c'4.(\p\< g8\mf ~ | g4 f4 ~ f8  c'4. ~ | c2.)  r4  | r2 e,4( f4 ~ | f8 c'4.) c,4.( c'8 ~ | c1) | 
    r2 c,4.( g'8 ~ | g4  c2. ~ | c2) r4 c4--\f\< | c4-- r8 c8-- ~ c4 e->\ff ~ | e8 d4. ~\> d2\mf |
    R1 | d2\mp\< ~  d8 g4.\mf\! ~ | g4. f8 ~ f4.  r8 |
    d2\mp\< ~ d4. e8\mf\! ~ | e2.\> r4\! | R1 | R1 |
  }
  % ---------------------------------------------
  \bubbleLine \segASShow \segASUniversal {
    \segRestAS
  }
  \bubbleLine \segANShow \segANUniversal {
    \segRestAN
  }

}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% TRUMPET 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
trumpetTwo = \relative c' { 
  \global
  \bubbleLine \segFShow \segFUniversal {
    \segRestF
  }
  \bubbleLine \segOShow \segOUniversal {
    \segRestO
  }
  \bubbleLine \segVShow \segVUniversal {
    \segRestV
  }
  % AF ---------------------------------------------
  \bubbleLine \segAFShow \segAFUniversal \relative c'' {
    R1*8 |
    << c1 {s2.\p\< s4 \mf } >> | R1 | f4\mp\<( e2.\f)  | R1*4
  }
  % AH ---------------------------------------------
  \bubbleLine \segAHShow \segAHUniversal {
    R1*2 |  r4 e4(\mf c4 c'4 ~ | c1) | r2 r4 r8 g8( ~ | g4 f4 ~ f8 c'4. ~ | c1)  |
    R1 | f,4.( e8 ~ e4) c'4--\f\< | c4-- r8 c8-- ~ c4 e->\ff ~ | e8 d4. ~\> d2\mf |
    R1*2 | d2(\mp\< ~ d4. f8)\mf\! | f8-- f4.( ~ f8 e4) r8 | d2(\mp\< ~ d4. g,8)\mf\! ~ | g4.\> r8\! r2 | R1
  }
  % ---------------------------------------------
  \bubbleLine \segASShow \segASUniversal {
    \segRestAR
    \segRestAQ
  }
  \bubbleLine \segANShow \segANUniversal {
    \segRestBF
    \segRestBG
    \segRestAL
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% TROMBONE 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
tromboneOne = \relative c { 
  \global
  \clef bass
  \bubbleLine \segFShow \segFUniversal {
    \segRestF
  }
  \bubbleLine \segOShow \segOUniversal {
    \segRestO
  }
  \bubbleLine \segVShow \segVUniversal {
    \segRestV
  }
  % ---------------------------------------------
  \bubbleLine \segAFShow \segAFUniversal \relative c {
    r2 r8 b'4\p\<( c8) | c4--\mf c( b8)  r8 r4 | a8-- a4-- a8-- ~ a8 a4( g8) | R1*6 |
    r8 c,4.->\f( g'4. f'8 ~ | f4) r4 r2
    R1*4
  }
  \bubbleLine \segAHShow \segAHUniversal \relative c' {
    R1 | \clef tenor
    c2(\p\< ~ c8 e4.\mf\! | f4) r4 r4  c4( ~ | c1 ~ | c8 e4. c2) |
    r2 c2( ~ | c1 ~ | c4 f4 ~ f8 e4.) | r2 r4 \clef bass c,4--->\ff |
    g'4.---> f'8---> ~ f4 r4 |
    r8 c,4. ~ c4 r4 | c1->\> ~ | c1\mf | r4 r8 c8 ~ c2 ~ | c1 ~ | c2 r2 | c1 ~ | c1
  }
  % ---------------------------------------------
  \bubbleLine \segASShow \segASUniversal {
    \segRestAR
    \segRestAQ
  }
  \bubbleLine \segANShow \segANUniversal {
    \segRestAN
  }

}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% TROMBONE 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
tromboneTwo = \relative c, { 
  \global
  \clef bass
  \bubbleLine \segFShow \segFUniversal {
    \segRestF
  }
  \bubbleLine \segOShow \segOUniversal {
    \segRestO
  }
  \bubbleLine \segVShow \segVUniversal {
    \segRestV
  }
  % ---------------------------------------------
  \bubbleLine \segAFShow \segAFUniversal \relative c' {
    R1 | r2 b8\mf  b4-- b8( | a8) r8 r4 r2 | R1*6 |
    r8 g,4.->\f ~ g2 | r4 g2.-> | R1*4 |
  }
  \bubbleLine \segAHShow \segAHUniversal \relative c' {
    R1 | r2 \clef tenor c2(\p\< ~ | c2. g'4\mf\! ~ | g8 f4.)  r2 | c1( ~ | c2  ~ c8 e4. | f4. e8) r2 |
    r4 c2. ~ | c2  r4 \clef bass f,,4--->\ff |
    c'4.---> f8---> ~ f4 r4 |
     r8 f,4. ~ f4 r4 | f1->\> ~ | f1\mf | r4 r8 f8 ~ f2 ~ | f1 ~ | f2 r2 | f1 ~ | f1
  }
  % ---------------------------------------------
  \bubbleLine \segASShow \segASUniversal {
    \segRestAR
    \segRestAQ
  }
  \bubbleLine \segANShow \segANUniversal {
    \segRestAN
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% TUBA
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
tuba = \relative c, { 
  \global
  \clef bass
  \bubbleLine \segFShow \segFUniversal {
    \segRestF
  }
  \bubbleLine \segOShow \segOUniversal {
    \segRestO
  }
  \bubbleLine \segVShow \segVUniversal {
    \segRestV
  }
  % AF ---------------------------------------------
  \bubbleLine \segAFShow \segAFUniversal \relative c {
    R1 | g2\mp( d'2 ~ | d2) r2 | g,1( | d'1) | r2 g,2 ~ | g1 | r2 g2\< ~ | g2.\! r4 |
    r8 c,4.\f-> ~ c2 | r4 c2.->
    R1*4
  }
  % AH ---------------------------------------------
  \bubbleLine \segAHShow \segAHUniversal \relative c, {
    R1 | R1 | r2 f2->\f ~ | f1  | r2 f2-> ~ | f1 |
    r4 c'8(\mp\< e f g c) d->\f ~ | d4. d8-> ~ d d4-> d8-> ~ | d d4.-> r4 bes,,4->\ff ~ |
    bes2 r4 bes4 ~ | bes2 r4 bes4-> ~ | bes1\> ~ | bes2.\mf r4 | bes1 ~ | bes1 | r4 bes2. ~ | bes2. r4 | bes1 | 
  }
  % ---------------------------------------------
  \bubbleLine \segASShow \segASUniversal {
    \segRestAS
  }
  \bubbleLine \segANShow \segANUniversal {
    \segRestAN
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% TIMPANI
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
timpani = \relative c, { 
  \global
  \clef bass
  \bubbleLine \segFShow \segFUniversal {
    \segRestF
  }
  \bubbleLine \segOShow \segOUniversal {
    \slurDashed
    r2 e2:32\ppp\<(^"soft mallets" | e1:32\p\!\>)(  | e2:32\!) r2 | 
    <<d1:32 {s2\ppp\< s4.\p\!\> s8\!}>> |
    r2 d2:32\ppp\<( | d1:32\p\!\>)(  | d2:32\!) r2 | 
    r2 e2:32\ppp\<( | e1:32\p\!\>)(  | e2:32\!) r2 | 
    R1*8
    \slurSolid
  }
  \bubbleLine \segVShow \segVUniversal {
    \segRestV
  }
  % AF and AC---------------------------------------------
  \bubbleLine \segAFShow \segAFUniversal \relative c {
    r4 g2.:32\pp\< | g4\mp\! r4 r2 | R1 | g4 r4 r2 | R1 | r2 g4 r4 | R1 | r2 g4 r4 |
    R1 | r8 c4\f r8 r2 | R1 | r4 r8 c8\mf r2 | R1 | r2 c4\mp r4 | R1
  }
  \bubbleLine \segAHShow \segAHUniversal {
    \slurDashed
    R1 | R1 | r2 f4->\f^"l.v."  r4 | R1 | r2 f4  r4 | R1*3 |
    c'2:32\mp\< r4 <bes c>4->\ff | g'4 r4 bes,2:32(\f\> | 
    bes1:32\mf\!)( | bes1:32)( | bes1:32)( | bes1:32)( | bes1:32)( | bes1:32)( | bes1:32\>)( | bes2:32\p\! r2 |

  }
  % ---------------------------------------------
  \bubbleLine \segASShow \segASUniversal {
    \segRestAS
  }
  \bubbleLine \segANShow \segANUniversal \relative c' {
    \slurDashed
    %AM
    r4 g2.:32\ppp(  | g1:32)( | g1:32)( | g1:32)( | g1:32)( | g1:32)( | g1:32)( | g1:32)
    %AL
    r2 r8 d4.:32( | d1:32)( d1:32)( d1:32) | R1*3
  }

}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% PERCUSSION 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
percussionOne = \relative c' { 
  \global
  \bubbleLine \segFShow \segFUniversal {
    R1*7
    {
      e4\pp^"motor on" r4 r4  e4 | R1 | r4 e4 r2 | e4 r4 r2 | r2 e4 r8 f'8|
    }
  }
  \bubbleLine \segOShow \segOUniversal \relative c'' {
    R1*10 
    \slurDashed
    <a e'>1:32\pp( <a e'>1:32)( <a e'>1:32)( <a e'>4:32) 
    <g e'>2.:32( <g e'>1:32) 
    <g d'>1:32( <g d'>1:32)( | <g d'>4:32) <a d>2.:32( %ideally slur should continue...
  }
  \bubbleLine \segVShow \segVUniversal {
    \slurDashed
    r4 <d a'>2.:32( <d a'>1:32)( <d a'>1:32)( <d a'>1:32)( <d a'>2:32)
    <c a'>2:32( <c a'>1:32)( <c a'>1:32)( <c a'>1:32)( <c a'>1:32)( <c a'>4:32)
    <c g'>2.:32( | <c g'>4:32)
    <d g>2.:32( | %ieally slur should tie over
  }
  % ---------------------------------------------
  \bubbleLine \segAFShow \segAFUniversal {
    \segRestAX
    \segRestAC
  }
  \bubbleLine \segAHShow \segAHUniversal \relative c'' {
    \slurDashed
    <f c'>1:32(\mp\< <f c'>1:32)( <f c'>1:32)( <f e'>1:32)(\mf\! <f e'>1:32)( <f e'>1:32)( <f e'>1:32)( <f e'>1:32)(\< <f e'>2.:32)( <f f'>4:32)(\ff\!
      <f f'>1:32) | r8 <f f'>8->\> <f f'> <f f'> <f f'> <f f'> <f f'> <f f'> | 
    <f f'>\mf\! <f f'> <f f'> <f f'>-> <f f'> <f f'> <e e'>-> <f f'> |
    <f f'> <f f'>-> <f f'> <f f'> <e e'>-> <c c'>-> <f f'> <f f'> | 
    <f f'> <f f'> <f f'> <f f'>-> <f f'> <f f'> <e e'>-> <f f'> |
    <f f'> <f f'>-> <f f'> <f f'> <e e'>-> <f f'> <f f'> <f f'> | 
    <f f'> <f f'> <f f'> <f f'> <f f'> <f f'>-> <f f'> <f f'> |
    <e e'>->\> <f f'> <f f'> <f f'>-> <f f'> <e e'>-> <f f'> <f f'> | 
    <f f'> <f f'> <f f'> <d d'>\mp\!  <d d'>  <d d'>  <d d'>  <d d'> |
  }
  % ---------------------------------------------
  \bubbleLine \segASShow \segASUniversal \relative c'' {
    \slurDashed
    R1 | << <f d'>1:32 {s2\mp\< ~ s2\mf\>}>> | 
    r2\! <g d'>2:32\mp\<( | <g d'>2:32\mf\!\>) r2\! |
    r2\! <g c>2:32\mp\<( | <g c>2:32\mf\!\>) r2\! |
    r2 r8 <c, g'>4.:32\mp\<( | <c g'>2.:32\mf\>) r4\! |
    R1 | r8 <d a'>4.:32\mp\<( <d a'>2:32\mf\>) | R1\!
    r2 <d g>2:32\mp\<( | <d g>2:32\mf\!\>) r2\! |
  }
  \bubbleLine \segANShow \segANUniversal {
    \segRestBF
    \segRestBG
    \segRestAL
  }



}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% PERCUSSION 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
percussionTwo = \relative c' { 
  \global
  
  \bubbleLine \segFShow \segFUniversal {
    \ranInstrumentSwitch "triangle" "triangle"
    b4\p r4 r2 | R1*7 |
    | r2 b4\pp r4 | R1 | r2 r4 b4 | R1
  }
  \bubbleLine \segOShow \segOUniversal {
    r2 r4 r8 b | R1 | r2 r4 r8 b | R1 | r2 r4 r8 b | R1 | r2 r4 r8 b | 
    \ranInstrumentSwitch "suspended cymbal" "to susp. cymbal"
    R1 | R1 | 
    R1 | R1 | R1 | R1 | R1 | R1 | R1 | R1 | R1 | 
  }
  \bubbleLine \segVShow \segVUniversal {
    \slurDashed
    R1*9 | << {b1:32^"soft mallets"( | b1:32) | } {s1\pp\< | s2.. s8\mf\!} >>
  }
  % ---------------------------------------------
  \bubbleLine \segAFShow \segAFUniversal {
    \slurDashed
    <>^"*dampen"
    R1*7
    b1:32\p\<( b1:32 | b8:32\f) r8^"*dampen" r4 r2 |
    R1*5 |
  }
  \bubbleLine \segAHShow \segAHUniversal {
    \slurDashed
    R1 | r2 b2:32(\p\< | b2:32)\mf\! r2^"*dampen" | R1*4 | << {b1:32(  b2.:32) r4^"dampen"} {s1\p\< | s2 s4\f\~ s4} >>  |
    R1*8 |
    r4 << b2.:32^"l.v., to tri" {s4\p\< s4.\mf\!\> s8\!} >>
    \ranInstrumentSwitch "triangle" ""
  }
  % ---------------------------------------------
  \bubbleLine \segASShow \segASUniversal {
    R1 | R1 b4\mp^"tri." r8 b8 r2 |r8 b8 r4 r2 | r4 b4 r8 b8 r4 | r4 r8 b8 r4 b4 | r2 r8 b8 r4 |
    %AQ
    r8 b8 r4 r2 | b4 r4 r2 | r8 b8 r4 b4 r4 | r4 b4 r8 b8 r4 | r4 r8 b8 r4 b4 |r2 b4 r4 |
  }
  \bubbleLine \segANShow \segANUniversal {
    \segRestAN
  }

}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% HARP
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
harpTop = \relative c' { 
  \global
  \bubbleLine \segFShow \segFUniversal {
    % SEG A
    \slurDashed
    \repeat tremolo 16 {b'32(\p ces} |
    \repeat tremolo 16 {b32 ces} |
    \repeat tremolo 16 {b32 ces} |
    \repeat tremolo 16 {b32 ces} |
    % SEG C
    \repeat tremolo 4 {b32 ces)} g4\mp r8[ f8] r4|
    r4 r8[ f8] r2 |
    r4 r8[ g8] r4 f4

    % SEG D
    \repeat tremolo 16 {b'32(\p ces} |
    \repeat tremolo 16 {b32 ces)} |
    R1*3 
    \slurSolid
  }
  \bubbleLine \segOShow \segOUniversal \relative c'{
    R1*2 |  r2 <c c'>4\p r4 | r2 r8 <e e'>8 r4 | R1 | r2 r8 <e e'>8 r4 | 
    r2 <c c'>4 r4 | r2 r8 <e e'>8 r4  | r2 <c c'>4 r4 | R1*9 |
  }
  \bubbleLine \segVShow \segVUniversal {
    \segRestV
  }
  % ---------------------------------------------
  \bubbleLine \segAFShow \segAFUniversal \relative c'{
    R1 | r4 <e e'>4\mf r4 r8 <e e'>8 | <c c'> <g' g'> r4 r2 |
    R1*12
  }
  \bubbleLine \segAHShow \segAHUniversal \relative c'' {
    R1*3 | r8 f8 f f r4 f8 f | f4 r4 r2 | r4 f8 f f r8 r4 | f8 f f r8 r2 | r4 f8 f f r8 r4 | f8 f f r8 r2 |
    <g g'>8\f \change Staff = "harpBottom" <g,, g'> \change Staff = "harpTop" <g'' g'> \change Staff = "harpBottom" <f,, f'> \change Staff = "harpTop"
    <f'' f'> \change Staff = "harpBottom" <f,, f'> \change Staff = "harpTop" <f'' f'> \change Staff = "harpBottom" <f,, f'> \change Staff = "harpTop" |
    <f'' f'> \change Staff = "harpBottom" <f,, f'> \change Staff = "harpTop" <f'' f'> \change Staff = "harpBottom" <f,, f'> \change Staff = "harpTop"
    <f'' f'> \change Staff = "harpBottom" <f,, f'> \change Staff = "harpTop" <f'' f'> \change Staff = "harpBottom" <f,, f'> \change Staff = "harpTop" |
    <g'' g'>8 \change Staff = "harpBottom" <g,, g'> \change Staff = "harpTop" <g'' g'> \change Staff = "harpBottom" <f,, f'> \change Staff = "harpTop"
    <f'' f'> \change Staff = "harpBottom" <f,, f'> \change Staff = "harpTop" <f'' f'> \change Staff = "harpBottom" <f,, f'> \change Staff = "harpTop" |
    <f'' f'> \change Staff = "harpBottom" <f,, f'> \change Staff = "harpTop" <f'' f'> \change Staff = "harpBottom" <f,, f'> \change Staff = "harpTop"
    <f'' f'> \change Staff = "harpBottom" <f,, f'> \change Staff = "harpTop" <f'' f'> \change Staff = "harpBottom" <f,, f'> \change Staff = "harpTop" |
    <g'' g'>8 \change Staff = "harpBottom" <g,, g'> \change Staff = "harpTop" <g'' g'> \change Staff = "harpBottom" <f,, f'> \change Staff = "harpTop"
    <f'' f'> \change Staff = "harpBottom" <f,, f'> \change Staff = "harpTop" <f'' f'> \change Staff = "harpBottom" <f,, f'> \change Staff = "harpTop" |
    <f'' f'> \change Staff = "harpBottom" <f,, f'> \change Staff = "harpTop" <f'' f'> \change Staff = "harpBottom" <f,, f'> \change Staff = "harpTop"
    <f'' f'> \change Staff = "harpBottom" <f,, f'> \change Staff = "harpTop" <f'' f'> \change Staff = "harpBottom" <f,, f'> \change Staff = "harpTop" |
    <f'' f'> \change Staff = "harpBottom" <f,, f'> \change Staff = "harpTop" <g'' g'> \change Staff = "harpBottom" <g,, g'> \change Staff = "harpTop"
    <g'' g'> \change Staff = "harpBottom" <f,, f'> \change Staff = "harpTop" <f'' f'> \change Staff = "harpBottom" <f,, f'> \change Staff = "harpTop" |
    <f'' f'>\> \change Staff = "harpBottom" <f,, f'> \change Staff = "harpTop" <f'' f'> \change Staff = "harpBottom" <f,, f'> \change Staff = "harpTop"
    <f'' f'> \change Staff = "harpBottom" <f,, f'> \change Staff = "harpTop" <f'' f'> \change Staff = "harpBottom" <f,, f'> \change Staff = "harpTop" |
    <f'' f'> \change Staff = "harpBottom" <f,, f'> \change Staff = "harpTop" <f'' f'> \change Staff = "harpBottom" <g,, g'> \change Staff = "harpTop"
    <g'' g'> \change Staff = "harpBottom" <g,, g'> \change Staff = "harpTop" <f'' f'> \change Staff = "harpBottom" <f,, f'>\mp \change Staff = "harpTop" |
  }
  % ---------------------------------------------
  \bubbleLine \segASShow \segASUniversal \relative c' {
    \boxArrow { s16 \times 4/5 {
      \stemUp
        \change Staff = "harpBottom" f,,8[\mf f'8 \change Staff = "harpTop" \stemDown f' f' g]->} r8
        \stemNeutral
        \arpeggioArrowDown <a c e f>8\arpeggio  s16
        } #4 #4 "freely, repeat" s8
      \arrowMeasure \arrowMeasure \arrowMeasure \arrowMeasure \arrowMeasure \arrowMeasure
      \stopArrowStaff
    
    \boxArrow \relative c' { 
        \stemDown
        \override TupletBracket #'bracket-visibility = ##t 
        \times 2/3 { <d d'>8\mf \change Staff = "harpBottom" \stemUp g,, g' \change Staff = "harpTop"} 
        \stemNeutral
        g'8 c, <g' g'>4->
        \arpeggioArrowDown <e f g a c>8\arpeggio
        } #4 #4 "            freely, repeat" s8
        \arrowMeasure \arrowMeasure \arrowMeasure \arrowMeasure \arrowMeasure
        \stopArrowStaff
  }
  \bubbleLine \segANShow \segANUniversal \relative c''  {
    \segRestBF
    \segRestBG
    %AL
    R1 | r2 f4\pp r4 | e r f r | e r r2 | r2 f4 r | e r f r | e r r2 | }
}

harpBottom = \relative c { 
  \global
  \clef bass
  \bubbleLine \segFShow \segFUniversal { \segRestF }
  \bubbleLine \segOShow \segOUniversal {
    R1*2 | r2 <e b'>4 r4 | r2 r8 <e b'>8 r4 | R1 | r2 r8 <e b'>8 r4 | 
    r2 <e b'>4 r4 | r2 r8 <e b'>8 r4  | r2 <e b'>4 r4 | 
    R1*9
  }
  \bubbleLine \segVShow \segVUniversal {
    \segRestV
  }
  % ---------------------------------------------
  \bubbleLine \segAFShow \segAFUniversal {
    R1*15
  }
  \bubbleLine \segAHShow \segAHUniversal \relative c' {
    R1*2  R1 | r8 \clef treble f8 f f r4 f8 f | f4 r4 r2 |r4 f8 f f r8 r4 | f8 f f r8 r2 | r4 f8 f f r8 r4 | f8 f f r8 r2 |
    s1*9
  }
  % ---------------------------------------------
  \bubbleLine \segASShow \segASUniversal {
    \clef bass
    \boxArrow {s2..} #4 #4 "" s8
      \arrowMeasureBass \arrowMeasureBass \arrowMeasureBass \arrowMeasureBass \arrowMeasureBass \arrowMeasureBass
      \stopArrowStaff
    \boxArrow {s2..} #4 #4 "" s8
      \arrowMeasureBass \arrowMeasureBass \arrowMeasureBass \arrowMeasureBass \arrowMeasureBass 
      \stopArrowStaff
  }
  \bubbleLine \segANShow \segANUniversal {
    \segRestAN
}
}

