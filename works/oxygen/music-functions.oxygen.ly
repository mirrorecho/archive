bubbleLine = #(define-music-function (parser location display universalVoice music)   
  (number? ly:music? ly:music?)
  (if (= display 1)
  #{
    <<
      $universalVoice
      \new Voice {
        $music
        }
    >>
  #}
  #{
    {}
  #}
  )
)

% TO DO... HIDE STRINGS FOR FASTER RENDERING
bubbleLineStrings = #(define-music-function (parser location display universalVoice music)   
  (number? ly:music? ly:music?)
  (if (= showStrings 1)
    (if (= display 1)
      #{
      <<
        $universalVoice
        \new Voice {
          $music
          }
      >>
      #}
      #{
       {}
      #}
    )
    #{
      {}
    #}
  )
)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ARROWS YAY!


startArrow = #(define-music-function (parser location textStart textEnd) 
  (string? string?)
  #{
  \once \override TextSpanner #'bound-padding = #1.0
  \once \override TextSpanner #'style = #'line
  \override TextSpanner #'font-shape = #'upright
  \once \override TextSpanner #'(bound-details right arrow) = ##t
  \once \override TextSpanner #'(bound-details left text) = \markup \rounded-box $textStart
  \once \override TextSpanner #'(bound-details right text) = $textEnd
  \once \override TextSpanner #'(bound-details right padding) = #0.6
  \once \override TextSpanner #'(bound-details right stencil-align-dir-y) = #CENTER
  \once \override TextSpanner #'(bound-details left stencil-align-dir-y) = #CENTER
  \once \override TextSpanner #'style = #'dashed-line
  \once \override TextSpanner #'dash-fraction = #0.66
  \once \override TextSpanner #'thickness = #3.3
  <>^\startTextSpan
   #})


noteHeadGo  = {
\once \override NoteHead  #'stencil = #ly:text-interface::print
\once \override NoteHead #'text = \markup {  
  \fontsize #6 {
      \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } 
    }
  }
}

stopArrow = {
  <>\stopTextSpan
}

startArrowStaff = {
    \stopStaff
    \override Staff.StaffSymbol #'line-positions = #'(-0.2 0 0.2)
    \startStaff
}

stopArrowStaff = {
    \stopStaff
    \override Staff.StaffSymbol #'line-positions = #'(-4 -2 0 2 4)
    \startStaff
}

arrowQuarterNote = {
    s8..
  \once \override Stem #'transparent = ##t
  \once \override Flag #'transparent = ##t
  \relative c'' {\noteHeadGo g32}
}

arrowQuarterNoteBass = {
    s8..
  \once \override Stem #'transparent = ##t
  \once \override Flag #'transparent = ##t
  \relative c {\noteHeadGo b32}
}

arrowMeasure = {
  s2 \arrowQuarterNote s4
}

arrowMeasureBass = {
  s2 \arrowQuarterNoteBass s4
}

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

boxArrow = #(define-music-function (parser location music spaceAbove spaceBelow caption)
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
    \startArrowStaff
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

dyn = #(define-event-function (parser location args) (markup?)
         (make-dynamic-script args))

n = #(make-dynamic-script (markup #:text #:italic "n." ) )

ranInstrumentSwitch = #(define-music-function (parser location instrumentName instrumentDisplayName)
  (string? string?)
  #{
    \instrumentSwitch $instrumentName
    <>^\markup $instrumentDisplayName
  #})

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% INSTRUMENTS

\addInstrumentDefinition #"triangle"
  #`((shortInstrumentName . "tri.")
     (clefGlyph . "clefs.percussion")
     (middleCPosition . 6)
     (clefPosition . 2)
     (instrumentCueName . ,(make-bold-markup "triangle"))
     (midiInstrument . "triangle"))

  \addInstrumentDefinition #"suspended cymbal"
  #`((shortInstrumentName . "sus cym")
     (clefGlyph . "clefs.percussion")
     (middleCPosition . 6)
     (clefPosition . 2)
     (instrumentCueName . ,(make-bold-markup "sus cym"))
     (midiInstrument . "drums"))