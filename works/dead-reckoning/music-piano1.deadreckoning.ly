pianoUpperOne = {
  \clef bass
  \hideNotes f,4 ( s2.  | g2 g4 ) \unHideNotes  r4
  %s1 s2. r4
  \clef treble
  <>\f
  \bellLineTop 
  \clef bass
  \hideNotes 
  
  f2 ( g2 ) 

  \unHideNotes

  
    % -----------------------------------
    % 6/8
    \clef treble
    \relative c' {
      %<> ^ "[ ** simplify ** ]"
      <>\mf
      \repeat tremolo 6 {ees32->( d)} bes'4. | %bes'4( a8) |
      \repeat tremolo 6 {a32->( bes)} f'4. | %f'4( g8) 
      \repeat tremolo 6 {g32->( aes)} ees'8---> b4--->\fermata |
      %<> ^"nice, bring back"
      <bes, d ees>4.\<  <c, des aes'> |
      \clef bass
      <f, d'> <c c'>\! |
      s1^\fermata |
      \clef treble
      <>\f
      %<> ^"[ ** 16ths? bring back! ** ]"
      \relative c''' {ees8( bes a! ees'-> 
            ~ ees2 ~ ees1)
      }


      %\relative c'' {r8 des( ges c ~ c2) } |
      
      \repeat tremolo 8 {f32->( ges)}
      << \repeat tremolo 8 {ais32->( b)} \\ gis8-> >> |
      <aes des f>2->
      << <a'' bes>8-> \\ {\repeat tremolo 8 {d,32->(\> ees}
      \repeat tremolo 8 {d32 ees\!\p)}} >>
      \repeat tremolo 8 {c,->(\f\> des)}
      << cis'8-> \\ {\repeat tremolo 8 {f,32->( ges)}} >>
      <des aes' c>2 |
      <des ges bes>2 
      <aes' c aes'>2\mp |
      
      <ais dis ais'>1\>
      <c f bes>2.
      <f bes!>2
      <a bes! d ees>2
      <g g'>4.
      \ottava #1
      \times 2/3 {
        <c ees! aes!>1\p\>
        <f bes!>2
      }
      <ees! a bes!>2
      \times 2/3 {
        <ees! g bes!>1
        <c g' c>2 ~
      }
      <c g' c>4.
      <ees! bes'! b! ees!>2
      <g aes! ees!>
      <aes! bes! ees!>
      <des f g>\ppp ^\fermata
      \ottava #0
    }

    %{
        \clef treble
        \superHighLine
        % 3 bars
        \repeatDown ees'8 bes a4 ~ | 
        a4 ees'8 bes a ees'8 bes a |
        %}

}

pianoLowerOne = { 
  \relative c,,{
    << {
  \clef bass \ottava #-1
  \repeat tremolo 16 {\voiceOne <a a'>32   {\change Staff = "pianoUpper" \voiceTwo <bes' bes'>}} \change Staff = "pianoLower" 
  \repeat tremolo 12 {\voiceOne <a, a'>32  {\change Staff = "pianoUpper" \voiceTwo <bes' bes'> }} \change Staff = "pianoLower" 

  r4 |  
  } {s2\ff\> s2 | s2. s4\mp}
  >>
  \ottava #0

  \clef treble
  %<> ^"[ ** 16ths? ** ]"
  \bellLineBottom

  \clef bass \ottava #-1
  \repeat tremolo 16 {\voiceOne <a, a'>32  {\change Staff = "pianoUpper" \voiceTwo <bes' bes'> }} \change Staff = "pianoLower" 
    \ottava #0
   |  
  }
    % -----------------------------------
    % 6/8

  \relative c { 
    <c g'>2. |
    <d a'>2. |
    \clef treble
    <g' d'>4. ees'8---> aes,4---> \fermata |
    
    \clef bass
    <aes, ees'>4. <ges, des' aes'> |
    <ees d'> <aes, aes'> |
    \ottava #-1
  %-- could use this fermata
  %<>^\fermata |
  \repeat tremolo 16 {\voiceOne <a, a'>32^\ff   {\change Staff = "pianoUpper" \voiceTwo <bes' bes'>}} \change Staff = "pianoLower" 
    \ottava #0 \clef treble
          \relative c'' {ees8 aes, d ees->
            ~ ees2 ~ ees1)
      }
    \clef bass
    <des aes' des>2->
    <e b'>-> |
    <a, e' a>-> 
    \clef treble
    \relative c' {<d a' bes>2->} | 
    r2 | \clef bass
      \relative c, { <des aes' des>2 | 
      <e b' fis'> <fis cis' gis'> |
      <e b' fis'> <des' aes' des> | 

      <fis b cis>1 
      <aes ees'>2.
      \clef treble
      <bes ees bes'>2
      <bes! ees! bes'!>2
      <f' c' f>4.
      \times 2/3 {
        <g d' g>1
        <g d' ees!>2
      }
      <aes! ees'! aes!>2
      \times 2/3 {
        <bes! f'>1
        <bes! f'>2 ~
      }
      <bes! f'>4.
    <ees! bes' b!>2
    <bes'! b! ees!>
    <des ges>
    \ottava #1
    <ges bes> \fermata
    \ottava #0
    } 

  }

  
  %circular thingy...
  %{
    r4 r8 ees8 aes, d ees4 ~ | 
    ees4 aes, ~ aes d ~ | 
    d2 d8 ees aes, d |
    %}
}