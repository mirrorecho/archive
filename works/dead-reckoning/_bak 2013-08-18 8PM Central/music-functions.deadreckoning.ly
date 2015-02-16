addCueStaff = #(define-music-function (parser location myStaffContext quoteVoice quoteClef cueName length)   
  (string? string? string? string? ly:music?)
  #{
        \new Staff \with {
          \remove "Time_signature_engraver"
          alignAboveContext = $myStaffContext
          fontSize = #-4
          \override StaffSymbol #'staff-space = #(magstep -4)
          \override StaffSymbol #'thickness = #(magstep -4)
        }
        { 
          \clef $quoteClef
          <>^$cueName
          \quoteDuring $quoteVoice $length }
  #}
)

addDoubleCueStaff = #(define-music-function (parser location myStaffContext quoteVoiceUpper quoteClefUpper quoteVoiceLower quoteClefLower cueName length)   
  (string? string? string? string? string? string? ly:music?)
  #{
        \new StaffGroup \with {
          alignAboveContext = $myStaffContext
          fontSize = #-4
          \override StaffSymbol #'staff-space = #(magstep -4)
          \override StaffSymbol #'thickness = #(magstep -4)
          \override SystemStartBracket #'stencil = ##f
        }
        << 
          \new Staff \with {
            \remove "Time_signature_engraver"
          }
          { \clef $quoteClefUpper <>^$cueName \quoteDuring $quoteVoiceUpper $length }
          \new Staff \with {
            \remove "Time_signature_engraver"
          }
          { \clef $quoteClefLower \quoteDuring $quoteVoiceLower $length }
        >>
  #}
)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% BOXES YAY!

% below is based on based on bracketed passages code here: http://lsr.dsi.unimi.it/LSR/Item?id=377

#(define-markup-command (left-bracket layout props spaceAbove spaceBelow) 
  (number? number?)
"Draw left hand bracket"
(let* ((th 0.3) ;; todo: take from GROB
  (width (* 4.9 th)) ;; todo: take from GROB
  (mySpacing (cons (- 0 spaceBelow) spaceAbove))
  ) ;; todo: take line-count into account
  (ly:bracket Y mySpacing th width)))

leftBracket = {
\once\override BreathingSign #'text = #(make-left-bracket-markup 4 4)
\once\override BreathingSign #'break-visibility = #end-of-line-invisible
\once\override BreathingSign #'Y-offset = ##f
% Trick to print it after barlines and signatures:
\once\override BreathingSign #'break-align-symbol = #'custos
\breathe 
}


#(define-markup-command (right-bracket layout props spaceAbove spaceBelow) 
(number? number?)
"Draw right hand bracket"
(let* ((th .3);;todo: take from GROB
(width (* 4.4 th)) ;; todo: take from GROB
  (mySpacing (cons (- 0 spaceBelow) spaceAbove))
  ;(ext '(-4.4 . 4.4))
  ) ;; todo: take line-count into account
  (ly:bracket Y mySpacing th (- width))))

rightBracket = {
\once\override BreathingSign #'text = #(make-right-bracket-markup 4 4)
\once\override BreathingSign #'Y-offset = ##f
\breathe
}

%%%%%%%%%%%%% 



boxNotes = #(define-music-function (parser location music spaceAbove spaceBelow caption)
  (ly:music? number? number? string?)
  #{

      <>^\markup $caption

    \once\override BreathingSign #'text = #(make-left-bracket-markup spaceAbove spaceBelow)
    \once\override BreathingSign #'break-visibility = #end-of-line-invisible
    \once\override BreathingSign #'Y-offset = ##f
    % Trick to print it after barlines and signatures:
    \once\override BreathingSign #'break-align-symbol = #'custos
    \breathe 

        $music

    \once\override BreathingSign #'text = #(make-right-bracket-markup spaceAbove spaceBelow)
    \once\override BreathingSign #'Y-offset = ##f
    \breathe
  #})

partOnly = #(define-music-function (parser location music)   
  (ly:music?)
  (if (= showPartStuff 1)
  #{
        $music
  #}
  #{
      {}
  #}
  )
)

scoreOnly = #(define-music-function (parser location music)   
  (ly:music?)
  (if (= showScoreStuff 1)
  #{
        $music
  #}
  #{
      {}
  #}
  )
)

bubbleLine = #(define-music-function (parser location display universalVoice music)   
  (number? ly:music? ly:music?)
  (if (= display 1)
  #{
    <<
      \new Voice {
        $music
        }
      $universalVoice
    >>
  #}
  #{
      {}
  #}
  )
)

ranAddBarNumber = {
  \override Staff.BarLine #'transparent = ##t
  \once \override Staff.TimeSignature #'break-visibility = ##(#f #f #f) 
  \time 1/8 s8 |
  \once \override Staff.TimeSignature #'break-visibility = ##(#f #f #f) 
  \time 4/4 |
  \override Staff.BarLine #'transparent = ##f
}

nastyNote = {
  \once \override Staff.NoteHead  #'style = #'triangle
}

nastyLongNote = \relative c'''' {
  \relative c'''' {\nastyNote g1 ~ ^"*"}
}

nastyShortNote = \relative c'''' {
  \nastyNote g2 ^"*"
}