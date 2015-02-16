


aboveLineOne = {
  \times 2/3 {<f ees'>4( aes <ees d'>}
  \times 2/3 {<des c'>4 ges8[ <des bes'>8~] <des bes'>4)} 
  <bes f'>( <ees c'>2.)
}

lowLineOne = {
  c8( aes' g f) f( des bes ges') 
  <aes, ees'>4( <bes f'>2.)
}

superHighLine = \relative c'''
  {
    r2^"very high top octave!" b8 c b g ~ | 
    g4 a4 r2 
  }

  repeatDown = \relative c'' {ees8 bes a ees'8 bes a ees'8 bes a ees'8 bes a}

  bellLineTop = \relative c''' {ees8(-> bes a ees'-> ~ ees2)}

  bellLineBottom = \relative c'' {ees8(-> aes, d ees-> ~ ees2)}

bellLineTopHits = \relative c''' {ees8 bes a! ees'-> }
bellLineBottomHits = \relative c'' {ees8 aes, d ees-> }


bellOneTop = \relative c''' {ces}
bellThreeTop = \relative c''' {ces[ ges8 f8]}
bellFourTop = \relative c''' {ces[ ges8] f8[ ces']}

bellOneBottom = \relative c'' {b2}
bellThreeBottom = \relative c'' {b8[ e,8 ais]}
bellFourBottom = \relative c'' {b8[ e,8] ais[ b]}

marimbaStart =  \relative c' {  cis'8 \change Staff="marimbaLower" <b,, fis'> \change Staff="marimbaUpper"
  bis'' \change Staff="marimbaLower" <b,, fis'> \change Staff="marimbaUpper"
  gis'' \change Staff="marimbaLower" <b,, fis'> \change Staff="marimbaUpper" }

marimbaAStart = {
  << \marimbaStart {s8[ s8] s8[ s8] s8[ s8]} >>
}

marimbaBoomOne = {
  r2 \repeat tremolo 8 { <a a'>32_\p\< ( \change Staff="marimbaUpper" <bes bes'> } \change Staff="marimbaLower" |  
    \repeat tremolo 16 {\voiceOne <a a'>32_\ff   {\change Staff = "marimbaUpper" \voiceTwo <bes bes'>)}} \change Staff = "marimbaLower"  |
}

marimbaBStart = {
  << \marimbaStart {s8[ s8 s8] s8[ s8 s8]} >>
}

marimbaAEnd = \relative c' {
  cis'8[ \change Staff="marimbaLower" <b,, fis'>] \change Staff="marimbaUpper"
}

marimbaALine = \relative c' {
  \marimbaAStart cis' 
}

trainLine = \relative c'{c8 aes' g f}
pianoTrainLine = <<\trainLine {s8( s4 s8)}>>

afterTrainLine = \relative c' {f8 des bes ges'}
pianoAfterTrainLine = <<\afterTrainLine {s8( s4 s8)}>>

pianoALine = \relative c' {
  ges'8[ ces,] f[ ces] ees[ ces] des
}
pianoALineTwoStart = \relative c' {aes[ des] g,[ des']}
pianoALineTwo = \relative c' {
  \pianoALineTwoStart f,[ des' ees,]
}

mainLineOne = \relative c'' {\times 2/3 {ees4 aes, d}}
mainLineOneSlur = \relative c'' {\times 2/3 {ees4( aes, d)}}
mainLineTwo = \relative c'' {\times 2/3 {c4 aes8} bes4}
mainLineTwoSlur = \relative c'' {\times 2/3 {c4( aes8} bes4)}

pianoMainLineOne = << \transpose c c' \mainLineOne 
  \relative c'' \times 2/3 {f4( s ees)}>>

pianoMainLineTwo = << \transpose c c' \mainLineTwo 
  \relative c'' {\times 2/3 {des( s8} des4)}>>

moveLineOneHits = \relative c'' {bes8 ees aes,} 
moveLineOne = \relative c'' {bes8( ees aes,)} 
moveLineTwoA = \relative c'' {g'( des aes)} 
moveLineTwoB = \relative c'' {g'( f des)} 
