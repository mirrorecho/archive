#(load "scheme-functions.promethium.scm")

startSpacer = {
  \textLengthOn
  <>^"                                "
}

stopSpacer = \textLengthOff


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

combineMusic = #(define-music-function (parser location musicOne musicTwo) 
  (ly:music? ly:music?)
  #{
   {<<
      \context Voice $musicOne
      \context Voice  $musicTwo
    >>}
#})

timeSpan = #(define-music-function (parser location text) 
	(string?)
  #{
   \textLengthOn %; does this do anything for tempo marks????
   %;\once \override Score.RehearsalMark #'self-alignment-X = #LEFT
	 %;\once \override Score.RehearsalMark #'X-offset = #2
   %;\mark \markup { \rounded-box \bold $text }
   \tempo \markup \fontsize #1.6 { \rounded-box \bold $text }
   \textLengthOff
#})

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




stopArrow = {
	<>\stopTextSpan
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

ranInstrumentSwitch = #(define-music-function (parser location instrumentName instrumentDisplayName)
	(string? string?)
  #{
  	\instrumentSwitch $instrumentName
  	<>^\markup $instrumentDisplayName
  #})



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

%{
boxNotesStartArrow = #(define-music-function (parser location music spaceAbove spaceBelow caption arrowStartText arrowStopText)
	(ly:music? number? number? string? string? string?)
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
%}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% SEE: http://lists.gnu.org/archive/html/lilypond-user/2012-01/msg00411.html
cadenzaRest = #(define-music-function (parser location fermata? music) 
	(boolean? ly:music?)

  (let ((fermata (make-music 'MultiMeasureTextEvent
                             'tweaks (list
                                      ;; Set the 'text based on the 'direction
                                      (cons 'text (lambda (grob)
                                                    (if (eq?
(ly:grob-property grob 'direction) DOWN)
                                                        (markup
#:musicglyph "scripts.dfermata")
                                                        (markup
#:musicglyph "scripts.ufermata"))))
                                      (cons 'outside-staff-priority 40)
                                      (cons 'outside-staff-padding 0))))
        (lst (list
        #{
          \set Timing.measureLength = #(ly:music-length music)
          $(mmrest-of-length music)
          \unset Timing.measureLength
        #})))
 (make-sequential-music
  (if fermata?
  (cons fermata lst)
  lst))))

cadenzaNotes =
#(define-music-function (parser location music cad-music) (ly:music? ly:music?)
  (let* ((mus-len (ly:music-length  cad-music))
         (num (ly:moment-main-numerator mus-len))
         (denom (ly:moment-main-denominator mus-len))
        )
 (make-sequential-music
  (list
   #{
     \set Timing.measureLength = #(ly:music-length cad-music)
     \scaleDurations #(cons num denom) $music
     \unset Timing.measureLength
   #}))))

cadenzaNotes =
#(define-music-function (parser location music cad-music) (ly:music? ly:music?)
  (let* ((mus-len (ly:music-length  cad-music))
         (num (ly:moment-main-numerator mus-len))
         (denom (ly:moment-main-denominator mus-len))
        )
 (make-sequential-music
  (list
   #{
     \set Timing.measureLength = #(ly:music-length cad-music)
     \scaleDurations #(cons num denom) $music
     \unset Timing.measureLength
   #}))))
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%% 
addSoloLine = #(define-music-function (parser location soloMusic altriMusic soloInstrumentName soloShortInstrumentName)
	(ly:music? ly:music? string? string?)
  #{
	  <<
	    \new Staff \with { 
	      %{
        fontSize = #-2
	      \override StaffSymbol #'staff-space = #(magstep -2)
	      \override StaffSymbol #'thickness = #(magstep -2)
        %}
	      alignAboveContext = #"celloStaff"
	      instrumentName = $soloInstrumentName
	      shortInstrumentName = $soloShortInstrumentName
	      } {
	        $soloMusic
	     }
		{
	      $altriMusic
	    }
	  >>
 
  #})

#(define-markup-command (bartokpizz layout props) ()
  (interpret-markup layout props
    (markup #:stencil
      (ly:stencil-translate-axis
        (ly:stencil-add
          (make-circle-stencil 0.7 0.1 #f)
          (ly:make-stencil
            (list 'draw-line 0.1 0 0.1 0 1)
            '(-0.1 . 0.1) '(0.1 . 1)))
        0.7 X))))

bartok = \markup \bartokpizz


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