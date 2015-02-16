%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\include "music-flute1.deadreckoning.ly"
\include "music-flute2.deadreckoning.ly"
\include "music-flute3.deadreckoning.ly"
\include "music-clarinet1.deadreckoning.ly"
\include "music-clarinet2.deadreckoning.ly"
\include "music-clarinet3.deadreckoning.ly"
\include "music-percussion1.deadreckoning.ly"
\include "music-percussion2.deadreckoning.ly"
\include "music-percussion3.deadreckoning.ly"
\include "music-piano1.deadreckoning.ly"
\include "music-piano2.deadreckoning.ly"
\include "music-piano3.deadreckoning.ly"


oneShow = 1
twoShow = 1
threeShow = 1

emptySectionOne  ={
  \tempo  \markup \fontsize #2.2 { \note #"4" #1 = 104 ca}
  s1*4 \bar "||" 
  \time 6/8 s2.*5 \bar "||" 
  \time 4/4 s1*8 \bar "||" 
  \cadenzaOn 
    <> \tempo \markup \fontsize #1.6 { \rounded-box \bold "everyone freely until A" }
    s1*8 \hideNotes r8 \unHideNotes
    \cadenzaOff \ranAddBarNumber \break \bar "||"
  % 22 measures of 4/4
}

emptySectionTwo = {
  \mark \markup {\fontsize #3.3 \bold \circle {"A"}}
  s1 \bar "||" %
  \tempo  \markup \fontsize #2.2 { \note #"4" #1 = 132 ca}
  \time 7/8 s2.. %^"[ ** shouldn't this be big uni? ** ]"
   | s2.. |  \bar "||" 
  \time 4/4 s1  \bar "||" 
  \time 7/8 s2.. | s2..  \bar "||" 
  \time 4/4 s1*2  \bar "||" 
  \time 7/8 s2.. | s2..  \bar "||" 
  \tempo  \markup \fontsize #2.2 { \note #"4" #1 = 92 ca}
  \time 4/4 s1*7  \bar "||" 
  \time 7/8 s2..*2  \bar "||" 
  \time 4/4 s1  \bar "||" 
  %\tempo "Rit."
  \time 6/8 s2.*9 \bar "||" 
  <> \tempo \markup \fontsize #1.6 { \rounded-box \bold "everyone freely until B" }
  \cadenzaOn s1*6 
  \hideNotes r8 \unHideNotes \cadenzaOff \ranAddBarNumber \break \bar "||"
}

emptySectionThree = {
  \tempo  \markup \fontsize #2.2 { \note #"4" #1 = 112 ca}
  \mark \markup {\fontsize #3.3 \bold \circle {"B"}}
  s1 \bar "||"
  \time 6/8 
  %\tempo "Accel."
  s2.*4 \bar "||"
  \time 4/4
  s1*10 \bar "||" % 24 measures of 4/4
  <> \tempo \markup \fontsize #1.6 { \rounded-box \bold "everyone freely" }
  \cadenzaOn s1*7
  \override Staff.BarLine  #'transparent = ##f
  \cadenzaOff \hideNotes r8 \unHideNotes \bar "|."
}
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

compassUpperOne = {
  % BOOM 1 --------------------------------------------------------------
  
  s1*4
  %{
  \clef bass
  <bes,, bes'>1-> ~ |
  <bes bes'>1 |
  \clef treble
  \bellLineTop 
  % BOOM 2 --------------------------------------------------------------
  \clef bass
  <bes bes'>1-> |
  %}


  s2.*5 % up and down
  s1*7  % trills up twice
  %{
  \clef treble
  \relative c'' {
    r2 \times 2/3 {aes'4( des, g} |
    f4) b,8( dis1) 
    bes2( f2)
    \times 2/3 {ees'4( bes a'} g2 f4)
    \times 2/3 {ees4 aes d,} c2 
    \times 2/3 {bes4 ees, a} \times 2/3 {g ees f} 
    c2 g'4 
    \times 2/3 {bes4 ees aes,} \times 2/3 {g'8[ des aes]} 
    \times 2/3 {bes4 ees aes,} \times 2/3 {g'8[ f des] } 
  }
  %}
}
compassLowerOne = {
  % BOOM 1 --------------------------------------------------------------
  \clef bass
  
  s1*4
  %{

  \ottava #-1
  <a,,, a'>1-> ~|
  <a a'>1 |
  \ottava #0
  \clef treble
  \bellLineBottom
  % BOOM 2 --------------------------------------------------------------
  \clef bass
  \ottava #-1
  <a a'>1-> |
  \ottava #0
  %}

  s2.*5 % up and down
  s1*8  % trills up twice
  %{
  \relative c {
  r4 <ais b dis>1
  s8
  <bes ees bes'>1( <bes ees bes'>)(
  \hideNotes r1) s4 \unHideNotes
  aes1 bes!2. |
  b2. ges2. |
  
  }
%}
}

compassUpperTwo = {
  %{
  s1 ^"low b / cis bang" |
  s2..*2 ^ "highlighting fifth fanfare hits" |
  s1 ^ "fis to des to aes" |
  s2..*2
  s1*2
  s2..*2
  s1*7
  s2..*2 ^"back to fis"
  s1^"G" 
  s2. ^"lowest is G, with f-c small fanfares"
  %}
}

compassLowerTwo = {
}

compassUpperThree = {
}
compassLowerThree = {
}

  %{ 
  \clef treble
  \bellLineTop |
  r8 des''' ges c ~ c4 bes |
  %}
  %{
  \clef treble
  \bellLineBottom
  r8 des''' ges c ~ c2 |
  %}

%\parallelMusic #'(pianoUpperThree pianoLowerThree) \pianoSectionThree