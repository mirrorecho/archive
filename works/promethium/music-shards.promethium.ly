%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% strikes

strikeNote = {
  g16-.->
}

strikeRoot = {
  g16-.-> g-.-> r8 r4
}

strikeMinorSecond = {
  aes16-.-> aes-.-> r8 r4
}

strikeMajorSecond = {
  a16-.-> a-.-> r8 r4
}

strikeMinorThird = {
  bes16-.-> bes-.-> r8 r4
}

strikeMajorThird = {
  b16-.-> b-.-> r8 r4
}

strikeFourth = {
  c16-.-> c-.-> r8 r4
}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% worms (starting on A:)

oneWorm = {a8 bes}

oneWormMiddle = {d bes}

wormyUpTwo = {
  \oneWorm
  \transpose c f \oneWorm
}

wormyWiggle = {
  \wormyUpTwo
  \oneWormMiddle
}

wormyUpThree = {
  \oneWorm
  \transpose c f \wormyUpTwo
}

wormyUpFour = {
  \oneWorm
  \transpose c f \wormyUpThree
}

upInterval = {a8 d}


noteHeadCrazy   = {
\once \override NoteHead  #'stencil = #ly:text-interface::print
\once \override NoteHead #'text = #(markup "!!!") }

noteHeadCrazyLong   = {
\once \override NoteHead  #'stencil = #ly:text-interface::print
\once \override NoteHead #'text = #(markup "*******************") }

scienceFigure = \relative c {
  \times 2/3 {cis8-. d-. fis-.} \times 2/3 {g-. b-. c!-.} \times 2/3 {e-. f!-. e-.} \times 2/3 {c-. b-. g-.}
}

scienceFigureTwo = \relative c'' {
  \times 2/3 {bes8-. a-. f-.} \times 2/3 {e-. c-. b!-.}
}

scienceFigureThree = \relative c'' {
   \times 2/3 {c8-- des-- ees--} \times 2/3 {f-- ges-- f--} \times 2/3 {ees-- des c} 
}
