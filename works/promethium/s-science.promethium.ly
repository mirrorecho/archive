%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SCIENCE AND CLIMBING:

sciencePushingUniversal = {
  \bar "||"
  \time 4/4
  \mark \markup {\fontsize #3.3 \bold \circle {"D"}}
  s1*2
  \bar "||"
  \time 2/4 
  s2 
  \bar "||"
  \time 3/4
  s2.
  \bar "||"
  \time 4/4
  s1*2}




climeUpRest = {
  R1*2 |
}


climeUpTopNote = \relative c''' {des1~ :32 \ff ^"Flz." | des1 :32 | }

climeUpHighGliss = {
	\override NoteHead #'style = #'cross
  \relative c' {g1(\f \glissando |  \parenthesize c''') ( ^"sul IV as high as possible"}
	\revert NoteHead #'style 
}

climeUpMidGliss = \transpose g c, \climeUpHighGliss 
climeUpLowGliss = \transpose g e,, \climeUpHighGliss 


climeUpFluteOne =  \climeUpTopNote
climeUpFluteTwo =  \transpose c g \climeUpTopNote
climeUpTrumpetOne = \transpose c b, \climeUpTopNote % ???? mute this with straight mute?
climeUpTrumpetTwo = \transpose c fis, \climeUpTopNote % ???? mute this with straight mute?

scienceStartRest = { R1*2 | R2 | R2. |}

sciencePushingRest = {
  \scienceStartRest
  \climeUpRest
}

sciencePushingFluteOne = {  
  R1*2 <>\mf \scienceFigureTwo | R2. |
  \climeUpFluteOne 
}
sciencePushingFluteTwo = {
  R1*2 <>\mf \scienceFigureTwo | R2. |
}
sciencePushingOboeOne = \relative c'' {
  <>\mf fis8-. g-. a-. b-. e,-. e-. e-. e-. | 
  e-. e-. e-. e-. a-. bes-. c-. d-. | f-.-> r8 r4 |
  | R2. | 
  \climeUpRest
}
sciencePushingOboeTwo = {
  <>\mf e8-. e-. e-. e-. e-. f-. g-. a-. | 
  b-. c-. d-. e-. e-. e-. e-. e-. | f-.-> r8 r4 |
  | R2. |
  \climeUpRest
} 
sciencePushingClarinetOne = \relative c' {
  <>\mf \transpose c c' \scienceFigure | fis8-. r8 r4 r2 | 
  \transpose c c' \scienceFigureTwo
  | R2.
  \climeUpRest
} 
sciencePushingClarinetTwo = \relative c' {
    R1 <>\mf \transpose c f' \scienceFigure | R2 | R2.
    \climeUpRest
}
sciencePushingBassoonOne = \relative c {
  <>\mf \scienceFigure | fis8-. r8 r4 r4 gis,8-.->\f r8 | 
  \clef tenor
  <>\mf
  \scienceFigureTwo
  | R2.
  \climeUpRest
}
sciencePushingBassoonTwo = \relative c {
  r2 r4 gis8-.->\f r| 
  \clef tenor <>\mf \transpose c f \scienceFigure
  | R2 R2. | \climeUpRest
}
sciencePushingHornOne = {
  R1*2  | R2 | des2.\mf | c8-- r8 r4 r2 | R1 |
} 
sciencePushingHornTwo = {
    R1*2  | R2 | aes2.\mf | c8-- r8 r4 r2 | R1 |
}
sciencePushingHornThree = {
    R1*2  | R2 | des2.\mf | c8-- r8 r4 r2 | R1 |
}
sciencePushingHornFour = {
    R1*2  | R2 | aes2.\mf | c8-- r8 r4 r2 | R1 |
}
sciencePushingTrumpetOne = \relative c'''{  
  R1*2 | R2 | 
  \times 2/3 {g8--\f g-- g--} \times 2/3 {g-- g-- g--} \times 2/3 {g-- g-- g--} 
  \climeUpTrumpetOne 
}
sciencePushingTrumpetTwo = {  
  R1*2 | R2 |
  <>\f
  \scienceFigureThree
  \climeUpTrumpetTwo 
}
sciencePushingTromboneOne = \sciencePushingRest 
sciencePushingTromboneTwo = \sciencePushingRest 
sciencePushingTuba = \sciencePushingRest 
sciencePushingTimpani = \sciencePushingRest
sciencePushingPercussionOne = {\ranInstrumentSwitch "brake drum" "brake drum"
  b8\mf b b b b b b b |
  b16-> b16-> b8 b b b b b b | 
  b16-> b16-> b8 b8 b8 | 
  b16-> b16-> b8 b b b b  |
  b4 r4 r2 | R1
}
sciencePushingPercussionTwo = \sciencePushingRest

sciencePushingHarpTop = \sciencePushingRest
sciencePushingHarpBottom = \sciencePushingRest

sciencePushingViolinI = {  r2 r4 g4->\mf^\bartok | r2 r4 g4->^\bartok | g4->^\bartok r4 | R2. \climeUpHighGliss}
sciencePushingViolinII = {  r2 r4 g4->\mf^\bartok | r2 r4 g4->^\bartok | g4->^\bartok r4 | R2. \climeUpHighGliss}
sciencePushingViola = {  \relative c {r2 r4 c4->\mf^\bartok | r2 r4 c4->^\bartok c4->^\bartok r4 | R2.} \climeUpMidGliss}
sciencePushingCello = {  \relative c, {r2 r4 c4->\mf^\bartok | r2 r4 c4->^\bartok  | c4->^\bartok r4 | R2.} \climeUpLowGliss}
sciencePushingBass = {  \relative c {r2 r4 aes4->\mf^\bartok | r2 r4 aes4->^\bartok | g4->^\bartok r4 | R2.} \climeUpLowGliss}

