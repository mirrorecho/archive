
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% VIOLIN I 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
violinIOne = \relative c' { 
  \global \bubbleLineStrings \segFShow \segFUniversal {
  <>\ppp^"sul pont"
  \segAViolinOne
  \segCViolinViolaONEOne
  \segCViolinViolaTWOOne
  \segDViolinViolaOne
  }
  \bubbleLineStrings \segOShow \segOUniversal {
    \segHViolinOne
    \segMViolinViolaOne
  }
  \bubbleLineStrings \segVShow \segVUniversal \relative c' {
  R1*9 | <<{r2 e2\pp^"normal" ~ | e1 } {s2 s2\< | s2.. s8\!\mf}>>
  }
  % ---------------------------------------------
  \bubbleLineStrings \segAFShow \segAFUniversal {
    <>^"1st stand unis."
    \set Staff.shortInstrumentName = #"s.1"
    \segAUViolinViolaOne
    \segACViolinViolaOne
  }
  \bubbleLineStrings \segAHShow \segAHUniversal {
    \segBHViolinOne
    \segBIViolinViolaOne
  }
  % AS---------------------------------------------
  \bubbleLineStrings \segASShow \segASUniversal  {
    <>^"(1st stand div 1)"
    \set Staff.shortInstrumentName = #"1"
    <>\mp
    \segARViolinOne
    \relative c' {R1 | r2 d2\pp\<( ~ | d8 g4.\f\!\> ~ g2\!) | 
      s8 \boxNotes { 
        r8 \times 2/3 {a4\p\<( e' d\mf ~ } d8) c8-- |
        c8-- \times 2/3 {g'4( f e8 c'8 ~} c8[]) \times 2/3 {f8( e c ~}  
                c8) g'2.\>-\parenthesize \fermata
      } #6 #5 "solo, out of time, freely"
      s8\!
    }
  }
  \bubbleLineStrings \segANShow \segANUniversal {
  <>\p^"in time, sul pont"
  \segAMViolinOne
  <>\ppp\!
  \segALViolinOne
  }


}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% VIOLIN I 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
violinITwo = \relative c' { 
  \global \bubbleLineStrings \segFShow \segFUniversal {
  <>\ppp^"sul pont"
  \segAViolinTwo
  \segCViolinViolaONETwo
  \segCViolinViolaTWOTwo
  \segDViolinViolaTwo
  }
  \bubbleLineStrings \segOShow \segOUniversal {
  \segHViolinTwo
  \segMViolinViolaTwo
  }
  \bubbleLineStrings \segVShow \segVUniversal \relative c'{
  R1*9 | <<{r2 e2\pp^"normal" ~ | e1 } {s2 s2\< | s2.. s8\!\mf}>>
  }
  % ---------------------------------------------
  \bubbleLineStrings \segAFShow \segAFUniversal {
    \stopStaff s1*15 
  }
  \bubbleLineStrings \segAHShow \segAHUniversal {
    s1*18
  }
  % AS ---------------------------------------------
  \bubbleLineStrings \segASShow \segASUniversal {
    \startStaff
    <>^"(1st stand div 2)"
    <>\mp
    \segARViolinTwo
    R1 | << d1 {s2.\f\> s8\pp\!} >> | R1 |
    r2 g2\pp\< | r8 e--\mf e-- e-> ~ << e2 {s4.\> s8\!\pp} >> | 
    r4 f8--\mf f8-- f2\> <>\! |
  }
  \bubbleLineStrings \segANShow \segANUniversal {
    <>\p^"sul pont"
    \segAMViolinTwo
    <>\ppp\!
    \segALViolinTwo
  }


}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% VIOLIN I 3
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
violinIThree = \relative c' { 
  \global \bubbleLineStrings \segFShow \segFUniversal {
  <>\ppp^"sul pont"
  \segAViolinThree
  \segCViolinViolaONEThree
  \segCViolinViolaTWOThree
  \segDViolinViolaThree
  }
  \bubbleLineStrings \segOShow \segOUniversal {
  \segHViolinThree
  \segMViolinViolaThree
  }
  \bubbleLineStrings \segVShow \segVUniversal \relative c'{
  R1*9 | <<{r2 g2\pp^"normal" ~ | g1 } {s2 s2\< | s2.. s8\!\mf}>>
  }
  % ---------------------------------------------
  \bubbleLineStrings \segAFShow \segAFUniversal {
    <>^"2nd stand unis."
    \set Staff.shortInstrumentName = #"s.2"
    \segAUViolinViolaTwo
    \segACViolinViolaTwo
  }
  \bubbleLineStrings \segAHShow \segAHUniversal {
    \segBHViolinTwo
    \segBIViolinViolaTwo
  }
  % AS ---------------------------------------------
  \bubbleLineStrings \segASShow \segASUniversal {
    <>^"(2nd stand div 1)"
    \set Staff.shortInstrumentName = #"3"
    <>\mp
    \segARViolinThree
    \segRestAQ
  }
  \bubbleLineStrings \segANShow \segANUniversal {
    <>\p^"sul pont"
    \segAMViolinThree
    <>\ppp\!
    \segALViolinThree
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% VIOLIN I 4
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
violinIFour = \relative c' { 
  \global \bubbleLineStrings \segFShow \segFUniversal {
  <>\ppp^"sul pont"
  \segAViolinFour
  \segCViolinViolaONEFour
  \segCViolinViolaTWOFour
  \segDViolinViolaFour
  }
  \bubbleLineStrings \segOShow \segOUniversal {
  \segHViolinFour
  \segMViolinViolaFour
  }
  \bubbleLineStrings \segVShow \segVUniversal \relative c'{
  R1*9 | <<{r2 g2\pp^"normal" ~ | g1 } {s2 s2\< | s2.. s8\!\mf}>>
  }
  % ---------------------------------------------
  \bubbleLineStrings \segAFShow \segAFUniversal {
    \stopStaff s1*15 
  }
  \bubbleLineStrings \segAHShow \segAHUniversal {
    s1*18
  }
  % AS ---------------------------------------------
  \bubbleLineStrings \segASShow \segASUniversal {
    \startStaff
    <>^"(2nd stand div 2)"
    <>\mp
    \segARViolinFour
    \segRestAQ
  }
  \bubbleLineStrings \segANShow \segANUniversal {
    <>\p^"sul pont"
    \segAMViolinFour
    <>\ppp\!
    \segALViolinFour
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% VIOLIN I 5
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
violinIFive = \relative c' { 
  \global \bubbleLineStrings \segFShow \segFUniversal {
  <>\ppp^"sul pont"
  \segAViolinFive
  \segCViolinViolaONEFive
  \segCViolinViolaTWOFive
  \segDViolinViolaFive
  }
  \bubbleLineStrings \segOShow \segOUniversal {
  \segHViolinFive
  \segMViolinViolaFive
  }
  \bubbleLineStrings \segVShow \segVUniversal \relative c'{
  R1*9 | <<{r2 e2\pp^"normal" ~ | e1 } {s2 s2\< | s2.. s8\!\mf}>>
  }
  % ---------------------------------------------
  \bubbleLineStrings \segAFShow \segAFUniversal {
    <>^"3rd stand unis."
    \set Staff.shortInstrumentName = #"s.3"
    \segAUViolinViolaThree
    \segACViolinViolaThree
  }
  \bubbleLineStrings \segAHShow \segAHUniversal {
    \segBHViolinThree
    \segBIViolinViolaThree
  }
  % ---------------------------------------------
  \bubbleLineStrings \segASShow \segASUniversal {
    <>^"(3rd stand div 1)"
    \set Staff.shortInstrumentName = #"5"
    <>\mp
    \segARViolinFive
    \segRestAQ
  }
  \bubbleLineStrings \segANShow \segANUniversal {
    <>\p^"sul pont"
    \segAMViolinFive
    <>\ppp\!
    \segALViolinFive
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% VIOLIN I 6
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
violinISix = \relative c' { 
  \global \bubbleLineStrings \segFShow \segFUniversal {
  <>\ppp^"sul pont"
  \segAViolinSix
  \segCViolinViolaONESix
  \segCViolinViolaTWOSix
  \segDViolinViolaSix
  }
  \bubbleLineStrings \segOShow \segOUniversal {
  \segHViolinSix
  \segMViolinViolaSix
  }
  \bubbleLineStrings \segVShow \segVUniversal \relative c'{
  R1*9 | <<{r2 e2\pp^"normal" ~ | e1 } {s2 s2\< | s2.. s8\!\mf}>>
  }
  % ---------------------------------------------
  \bubbleLineStrings \segAFShow \segAFUniversal {
    \stopStaff s1*15 
  }
  \bubbleLineStrings \segAHShow \segAHUniversal {
    s1*18
  }
  % ---------------------------------------------
  \bubbleLineStrings \segASShow \segASUniversal {
    \startStaff
    <>^"(3rd stand div 2)"
    <>\mp
    \segARViolinSix
    \segRestAQ
  }
  \bubbleLineStrings \segANShow \segANUniversal {
    <>\p^"sul pont"
    \segAMViolinSix
    <>\ppp\!
    \segALViolinSix
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% VIOLIN II 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
violinIIOne = \relative c' { 
  \global \bubbleLineStrings \segFShow \segFUniversal {
  <>\ppp^"sul pont"
  \segAViolinSeven
  \segCViolinViolaONESeven
  \segCViolinViolaTWOSeven
  \segDViolinViolaSeven
  }
  \bubbleLineStrings \segOShow \segOUniversal {
  \segHViolinSeven
  \segMViolinViolaSeven
  }
  \bubbleLineStrings \segVShow \segVUniversal \relative c'{
  R1*9 | <<{r2 g'2\pp^"normal" ~ | g1 } {s2 s2\< | s2.. s8\!\mf}>>
  }
  % ---------------------------------------------
  \bubbleLineStrings \segAFShow \segAFUniversal {
    <>^"1st stand unis."
    \set Staff.shortInstrumentName = #"s.1"
    \segAUViolinViolaFour
    \segACViolinViolaFour
  }
  \bubbleLineStrings \segAHShow \segAHUniversal {
    \segBHViolinFour
    \segBIViolinViolaFour
  }
  % AS ---------------------------------------------
  \bubbleLineStrings \segASShow \segASUniversal {
    <>^"(1st stand div 1)"
    \set Staff.shortInstrumentName = #"1"
    <>\mp
    \segARViolinSeven
    \segRestAQ
  }
  \bubbleLineStrings \segANShow \segANUniversal {
    <>\p^"sul pont"
    \segAMViolinSeven
    <>\ppp\!
    \segALViolinSeven
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% VIOLIN II 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
violinIITwo = \relative c' { 
  \global \bubbleLineStrings \segFShow \segFUniversal {
  <>\ppp^"sul pont"
  \segAViolinEight
  \segCViolinViolaONEEight
  \segCViolinViolaTWOEight
  \segDViolinViolaEight
  }
  \bubbleLineStrings \segOShow \segOUniversal {
  \segHViolinEight
  \segMViolinViolaEight
  }
  \bubbleLineStrings \segVShow \segVUniversal \relative c'{
  R1*9 | <<{r2 g'2\pp^"normal" ~ | g1 } {s2 s2\< | s2.. s8\!\mf}>>
  }
  % ---------------------------------------------
  \bubbleLineStrings \segAFShow \segAFUniversal {
    \stopStaff s1*15 
  }
  \bubbleLineStrings \segAHShow \segAHUniversal {
    s1*18
  }
  % AS ---------------------------------------------
  \bubbleLineStrings \segASShow \segASUniversal {
    \startStaff
    <>^"(1st stand div 2)"
    <>\mp
    \segARViolinEight
    \segRestAQ
  }
  \bubbleLineStrings \segANShow \segANUniversal {
    <>\p^"sul pont"
    \segAMViolinEight
    <>\ppp\!
    \segALViolinEight
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% VIOLIN II 3
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
violinIIThree = \relative c' { 
  \global \bubbleLineStrings \segFShow \segFUniversal {
  <>\ppp^"sul pont"
  \segAViolinNine
  \segCViolinViolaONENine
  \segCViolinViolaTWONine
  \segDViolinViolaNine
  }
  \bubbleLineStrings \segOShow \segOUniversal {
  \segHViolinNine
  \segMViolinViolaNine
  }
  \bubbleLineStrings \segVShow \segVUniversal \relative c' {
  R1*9 | <<{r2 c2\pp^"normal" ~ | c1 } {s2 s2\< | s2.. s8\!\mf}>>
  }
  % ---------------------------------------------
  \bubbleLineStrings \segAFShow \segAFUniversal {
    <>^"2nd stand unis."
    \set Staff.shortInstrumentName = #"s.2"
    \segAUViolinViolaFive
    \segACViolinViolaFive
  }
  \bubbleLineStrings \segAHShow \segAHUniversal {
    \segBHViolinFive
    \segBIViolinViolaFive
  }
  % ---------------------------------------------
  \bubbleLineStrings \segASShow \segASUniversal {
    <>^"(2nd stand div 1)"
    \set Staff.shortInstrumentName = #"3"
    <>\mp
    \segARViolinNine
    \segRestAQ
  }
  \bubbleLineStrings \segANShow \segANUniversal {
    <>\p^"sul pont"
    \segAMViolinNine
    <>\ppp\!
    \segALViolinNine
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% VIOLIN II 4
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
violinIIFour = \relative c' { 
  \global \bubbleLineStrings \segFShow \segFUniversal {
  <>\ppp^"sul pont"
  \segAViolinTen
  \segCViolinViolaONETen
  \segCViolinViolaTWOTen
  \segDViolinViolaTen
  }
  \bubbleLineStrings \segOShow \segOUniversal {
  \segHViolinTen
  \segMViolinViolaTen
  }
  \bubbleLineStrings \segVShow \segVUniversal \relative c' {
  R1*9 | <<{r2 c2\pp^"normal" ~ | c1 } {s2 s2\< | s2.. s8\!\mf}>>
  }
  % ---------------------------------------------
  \bubbleLineStrings \segAFShow \segAFUniversal {
     \stopStaff s1*15 
  }
  \bubbleLineStrings \segAHShow \segAHUniversal {
    s1*18
  }
  % ---------------------------------------------
  \bubbleLineStrings \segASShow \segASUniversal {
    \startStaff
    <>^"(2nd stand div 2)"
    <>\mp
    \segARViolinTen
    \segRestAQ
  }
  \bubbleLineStrings \segANShow \segANUniversal {
    <>\p^"sul pont"
    \segAMViolinTen
    <>\ppp\!
    \segALViolinTen
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% VIOLIN II 5
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
violinIIFive = \relative c' { 
  \global \bubbleLineStrings \segFShow \segFUniversal {
  <>\ppp^"sul pont"
  \segAViolinEleven
  \segCViolinViolaONEEleven
  \segCViolinViolaTWOEleven
  \segDViolinViolaEleven
  }
  \bubbleLineStrings \segOShow \segOUniversal {
  \segHViolinEleven
  \segMViolinViolaEleven
  }
  \bubbleLineStrings \segVShow \segVUniversal \relative c'{
  R1*9 | <<{r2 f2\pp^"normal" ~ | f1 } {s2 s2\< | s2.. s8\!\mf}>>
  }
  % ---------------------------------------------
  \bubbleLineStrings \segAFShow \segAFUniversal {
    <>^"3rd stand unis."
    \set Staff.shortInstrumentName = #"s.3"
    \segAUViolinViolaSix
    \segACViolinViolaSix
  }
  \bubbleLineStrings \segAHShow \segAHUniversal {
    \segBHViolinSix
    \segBIViolinViolaSix
  }
  % ---------------------------------------------
  \bubbleLineStrings \segASShow \segASUniversal {
    <>^"(3rd stand div 1)"
    \set Staff.shortInstrumentName = #"5"
    <>\mp
    \segARViolinEleven
    \segRestAQ
  }
  \bubbleLineStrings \segANShow \segANUniversal {
    <>\p^"sul pont"
    \segAMViolinEleven
    <>\ppp\!
    \segALViolinEleven
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% VIOLIN II 6
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
violinIISix = \relative c' { 
  \global \bubbleLineStrings \segFShow \segFUniversal {
  <>\ppp^"sul pont"
  \segAViolinTwelve
  \segCViolinViolaONETwelve
  \segCViolinViolaTWOTwelve
  \segDViolinViolaTwelve
  }
  \bubbleLineStrings \segOShow \segOUniversal {
  \segHViolinTwelve
  \segMViolinViolaTwelve
  }
  \bubbleLineStrings \segVShow \segVUniversal \relative c'{
  R1*9 | <<{r2 f2\pp^"normal" ~ | f1 } {s2 s2\< | s2.. s8\!\mf}>>
  }
  % ---------------------------------------------
  \bubbleLineStrings \segAFShow \segAFUniversal {
    \stopStaff s1*15 
  }
  \bubbleLineStrings \segAHShow \segAHUniversal {
    s1*18
  }
  % ---------------------------------------------
  \bubbleLineStrings \segASShow \segASUniversal {
    \startStaff
    <>^"(3rd stand div 2)"
    <>\mp
    \segARViolinTwelve
    \segRestAQ
  }
  \bubbleLineStrings \segANShow \segANUniversal {
    <>\p^"sul pont"
    \segAMViolinTwelve
    <>\ppp\!
    \segALViolinTwelve
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% VIOLA 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
violaOne = \relative c' { 
  \global \clef alto \bubbleLineStrings \segFShow \segFUniversal {
  \segRestA
  <>\ppp^"sul pont"
  \segCViolinViolaONEThirteen
  \segCViolinViolaTWOFourteen
  \segDViolinViolaThirteen
  }
  \bubbleLineStrings \segOShow \segOUniversal {
  \segHViolaCelloOne
  \segMViolinViolaThirteen
  }
  \bubbleLineStrings \segVShow \segVUniversal {
  \segVViolaCelloOne
  }
  % ---------------------------------------------
  \bubbleLineStrings \segAFShow \segAFUniversal {
    <>^"1st stand unis."
    \set Staff.shortInstrumentName = #"s.1"
    \segAUViolinViolaSeven
    \clef treble
    \segACViolinViolaSeven
  }
  \bubbleLineStrings \segAHShow \segAHUniversal {
    \segBHViolaCelloOne
    \segBIViolinViolaSeven
  }
  % ---------------------------------------------
  \bubbleLineStrings \segASShow \segASUniversal {
    <>^"(1st stand div 1)"
    \set Staff.shortInstrumentName = #"1"
    \clef alto
    r2 d2\mp\< | d1\f\!\>( ~ | d8 e8\!) r4 r2 | R1 | 
    d2\mp\< e8--\f e4.\> ~ | e2 r2\! | R1 |
    <>\p
    \segAQViolaCelloOne
  }
  \bubbleLineStrings \segANShow \segANUniversal {
    <>^"sul pont"
    \segAMViolaCelloOne
    <>\ppp\!
    \segALViolaCelloOne
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% VIOLA 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
violaTwo = \relative c' { 
  \global \clef alto \bubbleLineStrings \segFShow \segFUniversal {
  \segRestA
  <>\ppp^"sul pont"
  \segCViolinViolaONEFourteen
  \segCViolinViolaTWOFourteen
  \segDViolinViolaFourteen
  }
  \bubbleLineStrings \segOShow \segOUniversal {
  \segHViolaCelloTwo
  \segMViolinViolaFourteen
  }
  \bubbleLineStrings \segVShow \segVUniversal {
  \segVViolaCelloTwo
  }
  % ---------------------------------------------
  \bubbleLineStrings \segAFShow \segAFUniversal {
    \stopStaff s1*15 
  }
  \bubbleLineStrings \segAHShow \segAHUniversal {
    s1*18
  }
  % ---------------------------------------------
  \bubbleLineStrings \segASShow \segASUniversal {
    \startStaff
    <>^"(1st stand div 2)"
    R1*5 | e2\mp\< ~ e8 | e8--\f e4\> ~ | e4. r8\! r2 |
    <>\p
    \segAQViolaCelloTwo
  }
  \bubbleLineStrings \segANShow \segANUniversal {
    <>^"sul pont"
    \segAMViolaCelloTwo
    <>\ppp\!
    \segALViolaCelloTwo
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% VIOLA 3
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
violaThree = \relative c' { 
  \global \clef alto \bubbleLineStrings \segFShow \segFUniversal {
  \segRestA
  R1  % this is the beginning of segment C
  <>\ppp^"sul pont"
  \segCViolinViolaTWOFifteen
  \segDViolinViolaFifteen
  }
  \bubbleLineStrings \segOShow \segOUniversal {
  \segHViolaCelloThree
  \segMViolinViolaFifteen
  }
  \bubbleLineStrings \segVShow \segVUniversal {
  \segVViolaCelloThree
  }
  % ---------------------------------------------
  \bubbleLineStrings \segAFShow \segAFUniversal {
    <>^"2nd stand unis."
    \set Staff.shortInstrumentName = #"s.2"
    \segAUViolinViolaEight
    \clef treble
    \segACViolinViolaEight
  }
  \bubbleLineStrings \segAHShow \segAHUniversal {
    \segBHViolaCelloThree
    \clef treble
    \segBIViolinViolaEight
  }
  % AS ---------------------------------------------
  \bubbleLineStrings \segASShow \segASUniversal \relative c' {
    <>^"(2nd stand div 1)"
    \set Staff.shortInstrumentName = #"3"
    \segRestAR
    \clef alto
    <>\p
    \segAQViolaCelloThree
  }
  \bubbleLineStrings \segANShow \segANUniversal {
    <>^"sul pont"
    \segAMViolaCelloThree
    <>\ppp\!
    \segALViolaCelloThree
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% VIOLA 4
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
violaFour = \relative c' { 
  \global \clef alto \bubbleLineStrings \segFShow \segFUniversal {
  \segRestA
  R1  % this is the beginning of segment C
  <>\ppp^"sul pont"
  \segCViolinViolaTWOSixteen
  \segDViolinViolaSixteen
  }
  \bubbleLineStrings \segOShow \segOUniversal {
  \segHViolaCelloFour
  \segMViolinViolaSixteen
  }
  \bubbleLineStrings \segVShow \segVUniversal {
  \segVViolaCelloFour
  }
  % ---------------------------------------------
  \bubbleLineStrings \segAFShow \segAFUniversal {
    \stopStaff s1*15 
  }
  \bubbleLineStrings \segAHShow \segAHUniversal {
    s1*18
  }
  % ---------------------------------------------
  \bubbleLineStrings \segASShow \segASUniversal {
    \startStaff
    <>^"(2nd stand div 2)"
    \segRestAR
    <>\p
    \segAQViolaCelloFour
  }
  \bubbleLineStrings \segANShow \segANUniversal {
    <>^"sul pont"
    \segAMViolaCelloFour
    <>\ppp\!
    \segALViolaCelloFour  
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% CELLO 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
celloOne = \relative c { 
  \global \clef bass \bubbleLineStrings \segFShow \segFUniversal {
  R1*7
  r4 e2.\<\p( | b'1\!\>~\mp | b4\!) r4 r2 | 
  r4 r8 f8\mp f8->  f4.-- | e4-- e2. |
  }
  \bubbleLineStrings \segOShow \segOUniversal {
  \segHViolaCelloFive
  \segRestM
  }
  \bubbleLineStrings \segVShow \segVUniversal {
  \clef tenor
  \segVViolaCelloFive
  }
  % ---------------------------------------------
  \bubbleLineStrings \segAFShow \segAFUniversal \relative c {
  \clef bass
  d8( c4.\f b'4.) r8 | R1 | r2 r4 r8 <g g,>8-- | 
    %repeated G's solo:
  <g g,>4.-> <g g,>4.-> <g g,>4-> | <g g,>4.-> <g g,>8-> <g g,>8-> <g g,>4.-> | <g g,>8-> <g g,>4.-> <g g,>4.-> <g g,>8->~ |
  <g g,>4 <g g,>4-> <g g,>4.-> <g g,>8->~ | <g g,>4 <g g,>4->  <g g,>4.-> <g g,>8-> ~ | <g g,>4 <g g,>4-> ~ <g g,>8 <g g,>4.-> 
  \segACCelloBassOne
  }
  \bubbleLineStrings \segAHShow \segAHUniversal \relative c' {
  %AH CELLO SOLO ----------------------------------------------------------------
  f4\f e8-> e4-> d4-- d8--~ | d2 d4. d8~ | d8 c8 c4-> c2->~ |
  c2 c2~ | c2 c,4.( g'8~ | g4 f2.) | 
  f4( e'8) e8--~e e4 <d d,>8~ | <d d,>4. <d d,>8~ <d d,>8 <d d,>4.-> | 

  \relative c, {r2 r4 \clef bass  f4->\ff^\downbow ~ | f4. f8-> ~ f2 ~ | 
    f8 \boxArrow {\times 4/5 {g'8[( f e f e])} c8( bes4 | c4) } #4 #4 "freely, repeat"
    s4 \arrowQuarterNoteBass s4 | <>\> \arrowMeasureBass <>\mf\! \arrowMeasureBass \arrowMeasureBass \arrowMeasureBass \arrowMeasureBass \arrowMeasureBass 
    \stopArrowStaff
  }
  }
  % ---------------------------------------------
  \bubbleLineStrings \segASShow \segASUniversal {
  R1 | R1 | r8 e'\mp\< e---> e~\f\! e4 d8---> d~ | d1~\> | d2 r2\! | R1 | 
  e4.\mp\< d8\f\> ~ d8 d4. <>\! |
  <>\p
  \clef tenor
  \segAQViolaCelloFive
  }
  \bubbleLineStrings \segANShow \segANUniversal \relative c' {
    e4\mf e2.\> ~ | e4\pp\! r4 d4\mp\< d4 ~ | d4\mf\> d4 ~ d4\pp\! r4 |
    d4\p\<( g2.\mf ~ | g4\> f4 ~ f4\pp) r4 |
    r4 r8 f8--\mp\<  f4-- f4(\!\> ~ | f8 e8) r4\! r4 r8 e8(\< ~ |
        e8 d4.\!\> ~ d2) |
    <>\ppp\!^"sul pont"
    \clef bass
    \segALViolaCelloFive
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% CELLO 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
celloTwo = \relative c { 
  \global \clef bass \bubbleLineStrings \segFShow \segFUniversal {
  R1*8 | r2 b2~\p\<( | b'4 g2.~\!\>\mp | g4. f8\!) r2 | R1
  }
  \bubbleLineStrings \segOShow \segOUniversal {
  \segHViolaCelloSix
  \segRestM
  }
  \bubbleLineStrings \segVShow \segVUniversal {
    \clef tenor
    \segVViolaCelloSix
  }
  % ---------------------------------------------
  \bubbleLineStrings \segAFShow \segAFUniversal \relative c{
    R1*6 | r2 f2\p\< ~ | f1 |
    \clef bass
    \segACCelloBassTwo
  }
  \bubbleLineStrings \segAHShow \segAHUniversal {
    \clef tenor
    \segBHViolaCelloFive
    \relative c, {r2 r4 \clef bass f4->\ff^\downbow ~ | f4. f8-> ~ f2 ~ | 
      f4 \boxArrow { bes4 f'4.( c8 ~ | c4) } #4 #4 "freely, repeat"
      s4 \arrowQuarterNoteBass s4 | <>\> \arrowMeasureBass <>\mf\! \arrowMeasureBass \arrowMeasureBass \arrowMeasureBass \arrowMeasureBass \arrowMeasureBass 
      \stopArrowStaff
  }
  }
  % ---------------------------------------------
  \bubbleLineStrings \segASShow \segASUniversal {
  \segRestAR
  <>\p
  \clef tenor
  \segAQViolaCelloSix
  }
  \bubbleLineStrings \segANShow \segANUniversal {
    <>^"sul pont"
    \segAMViolaCelloFive
    <>\ppp\!
    \clef bass
    \segALViolaCelloSix
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% CELLO 3
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
celloThree = \relative c { 
  \global \clef bass \bubbleLineStrings \segFShow \segFUniversal {
  R1*8 | <e, a\harmonic \parenthesize \tweak #'font-size #-4 e''>2\<~(\pp  <e a\harmonic>4.\!\mp <d g\harmonic>8~\! |  
  <d g\harmonic>4) r4 r2  | r2 <d g\harmonic>2~(\<\pp | <d g\harmonic>4 <e a\harmonic>2.)\!\mp |
  }
  \bubbleLineStrings \segOShow \segOUniversal {
  \segHViolaCelloSeven
  \segRestM
  }
  \bubbleLineStrings \segVShow \segVUniversal {
    \clef tenor
    \segVViolaCelloSeven
  }
  % ---------------------------------------------
  \bubbleLineStrings \segAFShow \segAFUniversal \relative c {
    R1*6 | r2 c2\p\< ~ | c1 |
    \clef bass
    \segACCelloBassThree
  }
  \bubbleLineStrings \segAHShow \segAHUniversal {
    \clef tenor
    \segBHViolaCelloSix
    \clef bass
    \relative c, {r2 r4 \clef bass f4->\ff^\downbow ~ | f4. f8-> ~ f2 ~ | 
      f2 \boxArrow { g'4.( f8) | \times 2/3 {e4( c2)} } #4 #4 "freely, repeat"
      \arrowQuarterNoteBass s4 | <>\> \arrowMeasureBass <>\mf\! \arrowMeasureBass \arrowMeasureBass \arrowMeasureBass \arrowMeasureBass \arrowMeasureBass 
      \stopArrowStaff
    }
  }
  % ---------------------------------------------
  \bubbleLineStrings \segASShow \segASUniversal {
  \segRestAR
  <>\p
  \clef tenor
  \segAQViolaCelloSeven
  }
  \bubbleLineStrings \segANShow \segANUniversal {
    <>^"sul pont"
    \segAMViolaCelloSix
    <>\ppp\!
    \clef bass
    \segALViolaCelloSeven
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% CELLO 4
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
celloFour = \relative c { 
  \global \clef bass \bubbleLineStrings \segFShow \segFUniversal {
    R1*9 | d1~\<\pp\harmonic | d1\!\p\harmonic  | R1 
  }
  \bubbleLineStrings \segOShow \segOUniversal {
    \segHViolaCelloEight
    \segRestM
  }
  \bubbleLineStrings \segVShow \segVUniversal {
    \clef tenor
    \segVViolaCelloEight
  }
  % ---------------------------------------------
  \bubbleLineStrings \segAFShow \segAFUniversal \relative c {
    R1*6 | r2 e2\p\< ~ | e1 |
    \clef bass
    \segACCelloBassFour
  }
  \bubbleLineStrings \segAHShow \segAHUniversal {
    \clef tenor
    \segBHViolaCelloSix
    \clef bass
    \relative c, {r2 r4 \clef bass f4->\ff^\downbow ~ | f4. f8-> ~ f2 ~ | 
      f2. \boxArrow { c'8-- c-- | c4.---> \times 2/3 {bes8-- bes-- bes---> ~ } bes4  } #4 #4 "freely, repeat"
      s8 | <>\> \arrowMeasureBass <>\mf\! \arrowMeasureBass \arrowMeasureBass \arrowMeasureBass \arrowMeasureBass \arrowMeasureBass 
      \stopArrowStaff
    }
  }
  % ---------------------------------------------
  \bubbleLineStrings \segASShow \segASUniversal {
  \segRestAR
  <>\p
  \clef tenor
  \segAQViolaCelloEight
  }
  \bubbleLineStrings \segANShow \segANUniversal {
    <>^"sul pont"
    \segAMViolaCelloSeven
    <>\ppp\!
    \clef bass
    \segALViolaCelloEight
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% BASS 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
bassOne = \relative c { 
  \global \clef bass \bubbleLineStrings \segFShow \segFUniversal {
  \segRestF
  }
  \bubbleLineStrings \segOShow \segOUniversal {
  <a\harmonic \parenthesize \tweak #'font-size #-3 e''>1\p^"(sul E), rebow as needed" ~
  a1\harmonic ~ a1\harmonic ~ a1\harmonic ~ a1\harmonic ~ a1\harmonic ~ a1\harmonic ~ a1\harmonic ~
  a1\harmonic ~ a1\harmonic
  R1*2 | r8 d'4.\mf( c2~ | c2) r8 c8 c8-> c8->~ | c8 b8 b4->~ b8 b4.->~ | b4 r4 e2(\> | d4.)\! r8 r2 |
  R1
  }
  \bubbleLineStrings \segVShow \segVUniversal {
  \segRestV
  }
  % ---------------------------------------------
  \bubbleLineStrings \segAFShow \segAFUniversal \relative c' {
  r8 g4.\mp\< ~ g2 | g1\mf-> |  g-> ~ | g2. g4-> ~ | g1 ~ | r8 g4.-> ~ g2 ~ | g1-> | R1
  \clef tenor
  \transpose c c' \segACCelloBassFive
  }
  \bubbleLineStrings \segAHShow \segAHUniversal \relative c {
    \clef bass c1\mf^"rebow as needed)" ~ | c1 ~ | c2 f2 ~ | f1 ~ | f1 ~ | f1 ~ | f1 ~ | f1 ~ | 
    f2. bes,4->\ff ~ | bes4. bes8-> ~ bes2 ~ | 
    bes4. \boxArrow { f'4. c'4 ~ | c8 bes2  } #4 #4 "freely, repeat"
    s4. | <>\> \arrowMeasureBass <>\mf\! \arrowMeasureBass \arrowMeasureBass \arrowMeasureBass \arrowMeasureBass \arrowMeasureBass 
    \stopArrowStaff
  }
  % AS ---------------------------------------------
  \bubbleLineStrings \segASShow \segASUniversal \relative c {
    r4 f2.\mf^"(rebow as needed)" ~ | f1 ~ | f1 ~ | f1 ~ | f1 ~ | f1 ~ | f1 ~ | 
    f8 c'4.\mp ~ c2 ~ | c1 ~ | c1 ~ | c1 ~ | c1\> ~ | c1\p\! ~ |
  }
  \bubbleLineStrings \segANShow \segANUniversal \relative c' {
    \clef tenor 
    r4 g'2.\harmonic\mp^"(sul G)" ~ | g1\harmonic ~ | g1\harmonic ~ | g1\harmonic ~ | g1\harmonic ~ | g1\harmonic ~ | g1\harmonic ~ | g1\harmonic ~ | 
    g2\harmonic ~ g8\harmonic <g,\harmonic \parenthesize \tweak #'font-size #-3 d''>8\p^"(sul D)" ~ g4\harmonic ~  | g1\harmonic ~ | g1\harmonic ~ | g1\harmonic\> ~ | g1\harmonic\pp ~ |
    R1*2
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% BASS 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
bassTwo = \relative c, { 
  \global \clef bass \bubbleLineStrings \segFShow \segFUniversal {
  \segRestF
  }
  \bubbleLineStrings \segOShow \segOUniversal {
    R1*10
    r2 r4 e4~(\mf | e8 <d d'>2..) | R1*3 | r2 e2( | d4.) d8 d8-> d4-> c8 |  c4-- c8->( b8-- ~ b) b4.-- |
  }
  \bubbleLineStrings \segVShow \segVUniversal {
  \segRestV
  }
  % ---------------------------------------------
  \bubbleLineStrings \segAFShow \segAFUniversal \relative c' {
  r8 g4.\mp\< ~ g2 | g1\mf-> |  g-> ~ | g2. g4-> ~ | g1 ~ | r8 g4.-> ~ g2 ~ | g1-> | R1
  \clef tenor
  \transpose c c' \segACCelloBassSix
  }
  \bubbleLineStrings \segAHShow \segAHUniversal \relative c {
    \clef bass c1\mf^"rebow as needed)" ~ | c1 ~ | c2 f2 ~ | f1 ~ | f1 ~ | f1 ~ | f1 ~ | f1 ~ | 
    f2. bes,4->\ff ~ | bes4. bes8-> ~ bes2 ~ | 
    bes2 \boxArrow { \times 2/3 {bes4( f') c( } | bes4.)  } #4 #4 "freely, repeat"
    s8 \transpose c ces \arrowQuarterNoteBass s4 | <>\> \arrowMeasureBass <>\mf\! \arrowMeasureBass \arrowMeasureBass \arrowMeasureBass \arrowMeasureBass \arrowMeasureBass 
    \stopArrowStaff
  }
  % AS ---------------------------------------------
  \bubbleLineStrings \segASShow \segASUniversal \relative c {
    r4 f2.\mf^"(rebow as needed)" ~ | f1 ~ | f1 ~ | f1 ~ | f1 ~ | f1 ~ | f1 ~ | 
    f8 c'4.\mp ~ c2 ~ | c1 ~ | c1 ~ | c1 ~ | c1\> ~ | c1\p\! ~ |
  }
  \bubbleLineStrings \segANShow \segANUniversal \relative c' {
    \clef tenor 
    r4 g'2.\harmonic\mp^"(sul G)" ~ | g1\harmonic ~ | g1\harmonic ~ | g1\harmonic ~ | g1\harmonic ~ | g1\harmonic ~ | g1\harmonic ~ | g1\harmonic ~ | 
    g2\harmonic ~ g8\harmonic <g,\harmonic \parenthesize \tweak #'font-size #-3 d''>8\p^"(sul D)" ~ g4\harmonic ~  | g1\harmonic ~ | g1\harmonic ~ | g1\harmonic\> ~ | g1\harmonic\pp ~ |
    R1*2
  }
}