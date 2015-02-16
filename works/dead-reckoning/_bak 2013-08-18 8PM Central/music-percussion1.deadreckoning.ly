cymbalsSectionOne = {
    a4->\ff^"(crash), l.v. throughout" ^"yarn mallets" r4 r2 |
    R1*2 |
    a4->r4 r2 |
    % -----------------------------------
    % 6/8
    f8\mf^"(china)" r8 r8 r4. |
    f8 r8 r8 r4. |
  r4. r8 r4\fermata
  R2.*2  |
    %R2.*3 | % 6/8 section
    a4->\ff^"(crash)"^\fermata r4 r2 |
    R1*2 |
    %<>^"[ ** add hits? ** ]"
    R1*5|
    s1 s1 r1
}

marimbaUpperOne = \relative c {
  \clef bass 
  r2
  s2
  s1 |
    <bes bes'>4-> r4 r2 |
    R1 |
    \clef treble
    % -----------------------------------
    % 6/8
    ees'8\mf  r8 r8 r8 r8 a8 |
    a8 r8 r8 r8 r8 g'8 |
    g8 r8 r8 ees'8-> bes4-> \fermata |
    R2.*2 | 
    % -----------------------------------
    % 4/4
    r1^\fermata |
    \bellLineTopHits r2 |
    R1

    \relative c' {
      <ais b>8\mp <ais b> <ais b> <ais b>
      <ais b> <ais b> <ais b> <ais b>  |
      ees'2:32 bes8 bes bes bes |
      bes8 bes bes bes 
      <e dis> <e dis> <e dis> <e dis> |
      <e dis> <e dis> <e dis> <e dis>
      <dis ais'> <dis ais'> <dis ais'> <dis ais'> |
      <ais' b> <ais b> <ais b> <ais b>^"slowing down"
      ais ais ais ais |
      <ais b>[ <ais b>] <ais b>[ <ais b>] <ais b>[ <ais b>]
      <ais dis>[\> <ais dis>] <ais dis> dis[ dis] dis
      <dis ais'>[ <dis ais'>] <dis ais'>[ <dis ais'>] 
      <dis ais'>[ 
            <dis ais'>] <dis ais'>[ <dis ais'>] 
      \boxNotes {
      ais'[ ais]\pp s8
      } #6 #4 "repeat until A, slowing down"
      %^"repeat... [ ** add bell rolls with splashes? ** ]"
      \hideNotes r4 \unHideNotes
    }
}

marimbaLowerOne = \relative c {
  \clef bass 
    <<\marimbaBoomOne s2 >>
    \clef bass
  <a a'>4-> r4 r2 | R1 |
  R2.*2  |
  r4. r8 r4\fermata
  R2.*2  |
  r1\fermata
   \clef treble \bellLineBottomHits r2 |
    R1*6 |
    s1 s1 r1
}