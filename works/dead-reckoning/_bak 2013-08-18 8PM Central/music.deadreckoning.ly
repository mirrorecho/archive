\include "music-functions.deadreckoning.ly"
\include "music-ideas.deadreckoning.ly"
\include "music-shards.deadreckoning.ly"
\include "music-globals.deadreckoning.ly"





globalStart = {
  %\key c \major
  \numericTimeSignature
  \time 4/4
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% FLUTE 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
flute = \relative c'' { 
  %\remove Bar_engraver
  \globalStart
  \bubbleLine \oneShow \relative c' {\fluteSectionOne} \emptySectionOne
  \bubbleLine \twoShow \relative c' {\fluteSectionTwo} \emptySectionTwo
  \bubbleLine \threeShow \relative c' {\fluteSectionThree} \emptySectionThree
} 
\addQuote "flute" { \flute }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% CLARINET
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clarinet = \relative c'' { 
  \globalStart
  \bubbleLine \oneShow \relative c' {\clarinetSectionOne} \emptySectionOne
  \bubbleLine \twoShow \relative c' {\clarinetSectionTwo} \emptySectionTwo
  \bubbleLine \threeShow \relative c' {\clarinetSectionThree} \emptySectionThree
}
\addQuote "clarinet" { \clarinet }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% CYMBALS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
cymbals = { 
  \globalStart
  \clef percussion
  \bubbleLine \oneShow \relative c' {\cymbalsSectionOne} \emptySectionOne
  \bubbleLine \twoShow \relative c' {\cymbalsSectionTwo} \emptySectionTwo
  \bubbleLine \threeShow  \relative c' {\cymbalsSectionThree} \emptySectionThree
}
\addQuote "cymbals" { \cymbals }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% MARIMBA
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%\parallelMusic #'(marimbaUpperOne marimbaLowerOne) \marimbaSectionOne
%\parallelMusic #'(marimbaUpperTwo marimbaLowerTwo) \marimbaSectionTwo
%\parallelMusic #'(marimbaUpperThree marimbaLowerThree) \marimbaSectionThree
marimbaUpper = { 
  \globalStart
  \bubbleLine \oneShow \relative c' {\marimbaUpperOne} \emptySectionOne
  \bubbleLine \twoShow \relative c' {\marimbaUpperTwo} \emptySectionTwo
  \bubbleLine \threeShow \relative c' {\marimbaUpperThree} \emptySectionThree
}
\addQuote "marimbaUpper" { \marimbaUpper }

marimbaLower = { 
  \globalStart
  \bubbleLine \oneShow \relative c' {\marimbaLowerOne} \emptySectionOne
  \bubbleLine \twoShow \relative c' {\marimbaLowerTwo} \emptySectionTwo
  \bubbleLine \threeShow \relative c' {\marimbaLowerThree} \emptySectionThree
}
\addQuote "marimbaLower" { \marimbaLower }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% PIANO
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%\parallelMusic #'(pianoUpperOne pianoLowerOne) \pianoSectionOne
%\parallelMusic #'(pianoUpperTwo pianoLowerTwo) \pianoSectionTwo
%\parallelMusic #'(pianoUpperThree pianoLowerThree) \pianoSectionThree
pianoUpper = { 
  \globalStart
  \bubbleLine \oneShow \relative c' {\pianoUpperOne} \emptySectionOne
  \bubbleLine \twoShow \relative c' {\pianoUpperTwo} \emptySectionTwo
  \bubbleLine \threeShow \relative c' {\pianoUpperThree} \emptySectionThree
}
\addQuote "pianoUpper" {\pianoUpper}

pianoLower = { 
  \globalStart
  \clef bass
  \bubbleLine \oneShow \relative c' {\pianoLowerOne} \emptySectionOne
  \bubbleLine \twoShow \relative c' {\pianoLowerTwo} \emptySectionTwo
  \bubbleLine \threeShow \relative c' {\pianoLowerThree} \emptySectionThree
}
\addQuote "pianoLower" {\pianoLower}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% COMPASS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

compassUpper = { 
  \globalStart
  \bubbleLine \oneShow \relative c' {\compassUpperOne} \emptySectionOne
  \bubbleLine \twoShow \relative c' {\compassUpperTwo} \emptySectionTwo
  \bubbleLine \threeShow \relative c' {\compassUpperThree} \emptySectionThree
}
\addQuote "compassUpper" {\compassUpper}

compassLower = { 
  \globalStart
  \clef bass
  \bubbleLine \oneShow \relative c' {\compassLowerOne} \emptySectionOne
  \bubbleLine \twoShow \relative c' {\compassLowerTwo} \emptySectionTwo
  \bubbleLine \threeShow \relative c' {\compassLowerThree} \emptySectionThree
}
\addQuote "compassLower" {\compassLower}