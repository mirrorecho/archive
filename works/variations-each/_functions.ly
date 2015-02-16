
%-----------------------------------------------------------------------------------------------

%functions to re-color everying:
#(define (override-color-for-all-grobs color)
  (lambda (context)
   (let loop ((x all-grob-descriptions))
    (if (not (null? x))
     (let ((grob-name (caar x)))
      (ly:context-pushpop-property context grob-name 'color color)
      (loop (cdr x)))))))

#(define (override-stencil-for-all-grobs stencilOn)
  (lambda (context)
   (let loop ((x all-grob-descriptions))
    (if (not (null? x))
     (let ((grob-name (caar x)))
      (ly:context-pushpop-property context grob-name 'stencil stencilOn)
      (loop (cdr x)))))))

 % "|" = {} %% ??? WTF?

startCutoutBox = {
    \stopStaff
    \override Staff.StaffSymbol #'line-positions = #'(
        -24
        -19 -18.5 -18 -17.5 -17 -16.5 -16 -15.5 -15 -14.5 -14 -13.5 -13 -12.5 -12 -11.5 -11 -10.5 -10
        -9.5 -9 -8.5 -8 -7.5 -7 -6.5 -6 -5.5 -5 -4.5 -4 -3.5 -3 -2.5 -2 -1.5 -1 -.5 0 
        .5 1 1.5 2 2.5 3 3.5 4 4.5 5 5.5 6 6.5 7 7.5 8 8.5 9 9.5 10
        10.5 11 11.5 12 12.5 13 13.5 14 14.5 15 15.5 16 16.5 17 17.5 18 18.5 19
        24
        )
    \override Staff.StaffSymbol #'thickness = #4
    \override Staff.StaffSymbol #'color = #(x11-color 'grey69)
    \startStaff
    \applyContext #(override-color-for-all-grobs (x11-color 'grey69)) % doesn't seem to do anything
}

startCutout = {
    \stopStaff
    \applyContext #(override-color-for-all-grobs (x11-color 'grey69))
    \override Staff.StaffSymbol #'line-positions = #'(
        -24 -23.5 -23 -22.5 -22 -21.5 -21 -20.5 20 
        -19.5 -19 -18.5 -18 -17.5 -17 -16.5 -16 -15.5 -15 -14.5 -14 -13.5 -13 -12.5 -12 -11.5 -11 -10.5 -10
        -9.5 -9 -8.5 -8 -7.5 -7 -6.5 -6 -5.5 -5 -4.5 -4 -3.5 -3 -2.5 -2 -1.5 -1 -.5 0 
        .5 1 1.5 2 2.5 3 3.5 4 4.5 5 5.5 6 6.5 7 7.5 8 8.5 9 9.5 10
        10.5 11 11.5 12 12.5 13 13.5 14 14.5 15 15.5 16 16.5 17 17.5 18 18.5 19 19.5 20
        20.5 21 21.5 22 22.5 23 23.5 24
        )
    \override Staff.StaffSymbol #'thickness = #4
    \override Staff.StaffSymbol #'color = #(x11-color 'grey69)
    \startStaff
}

stopCutout = {
    \stopStaff
    \applyContext #(override-color-for-all-grobs (x11-color 'grey0))
    \override Staff.StaffSymbol #'line-positions = #'(-4 -2 0 2 4)
    \override Staff.StaffSymbol #'thickness = #1
    \override Staff.StaffSymbol #'color = #(x11-color 'grey0)
    \startStaff
}

cutout = #(define-music-function (parser location musicSkips ) 
  (ly:music?)
  #{
      \startCutout
      $musicSkips
      \stopCutout
  #})

cutoutBox = #(define-music-function (parser location musicSkips ) 
  (ly:music?)
  #{
      \startCutoutBox
      %;\override Staff.StaffSymbol #'color = #(x11-color 'ForestGreen)
      $musicSkips
      \stopCutout
  #})

%------------------------------------------------------------------------------------

makeArrow  = {
\once \override Rest  #'stencil = #ly:text-interface::print
\once \override Rest.staff-position = #-3.3
\once \override Rest #'text = \markup {  
  \fontsize #11 {
      \general-align #Y #DOWN { \arrow-head #X #RIGHT ##t } 
    }
  }
  r4
}

startContinueLine = {
    \stopStaff
    \override Staff.StaffSymbol #'line-positions = #'(
        -0.4 -0.3 -.2 -.1 0 .1 .2 .3 .4 
        )
    \startStaff
}

stopContinueLine = {
    \stopStaff
    \override Staff.StaffSymbol #'line-positions = #'(-4 -2 0 2 4)
    \startStaff
}

continueLine = #(define-music-function (parser location music) 
  (ly:music?)
  #{
    \startContinueLine
    << { $music }  { s8 \makeArrow } >>
    \stopContinueLine
  #})

%------------------------------------------------------------------------------------

%for the regular parts, unique function does nothing...
unique = #(define-music-function (parser location partName music) 
  (string? ly:music?)
  #{
    $music
  #})

%------------------------------------------------------------------------------------
% override kappaTimeX to make it exactly 4/1

kappaTimeX = {
      \override Staff.TimeSignature #'stencil = #(lambda (grob)
      (parenthesize-stencil (grob-interpret-markup grob kappaTimeXMarkup) 0.1 0.4 0.4 0.1 ))
      \time 4/1
}

kappaMeterOff = #(define-music-function (parser location)
  ()
#{
  #(set-accidental-style 'modern)
  \override Staff.TimeSignature #'break-visibility = ##(#f #f #t) 
  \kappaTimeX
#})

kappaMeterOn = #(define-music-function (parser location time-sig-fraction) 
  (pair?)
    #{
      #(set-accidental-style 'modern)
      \override Staff.TimeSignature #'break-visibility = ##(#f #f #t) 
      \kappaTimeMeter $time-sig-fraction
#})

%-----------------------------------------------------------------------------------------------

newLineCutout = #(define-music-function (parser location lineLetter) 
  (string?)
  #{
    \break
   #})

newLine = #(define-music-function (parser location lineLetter) 
  (string?)
  #{
    \break
    \mark \markup {
        \fontsize #3.3 \bold \circle $lineLetter
    } 
   #})

newLineSpecial = #(define-music-function (parser location lineLetter) 
  (string?)
  #{
    \bar "||"
    \mark \markup {
        \fontsize #3.3 \bold \circle $lineLetter
    } 
   #})



kappaBoxNotes = #(define-music-function (parser location spaceAbove spaceBelow music)
  (number? number? ly:music?)
  #{

       \stopStaff
    \override Staff.StaffSymbol #'line-positions = #'(
        -12 -4 -2 0 2 4 14
        )
    \startStaff

        $music
 
 \stopStaff
    \override Staff.StaffSymbol #'line-positions = #'(-4 -2 0 2 4)
    \startStaff

  #})

kappaBoxNotesOld = #(define-music-function (parser location spaceAbove spaceBelow music)
  (number? number? ly:music?)
  #{

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

kappaXBar = \bar ""