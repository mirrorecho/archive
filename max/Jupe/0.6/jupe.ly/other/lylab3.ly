\version "2.17.26"
#(define hInches 1)
#(define vInches 3)
shard = {c''4 c c c c c c c}



#(set! paper-alist (cons '("custom" . (cons (* hInches in) (* vInches in))) paper-alist))
#(set-global-staff-size 20)


\paper {
  #(set-paper-size "custom")
  system-system-spacing #'basic-distance = #2
  system-system-spacing #'padding = #2
  top-margin = 0\mm
  right-margin = 0\mm
  bottom-margin = 0\mm
  left-margin = 0\mm
  indent = 0\mm
  page-count = 1 
  ragged-bottom=##f
}  

\header {
  tagline = ##f
}


\score {
  {
    \override Score.BarNumber #'break-visibility = #'#(#f #f #f)
    \numericTimeSignature
    \once \override Staff.TimeSignature #'stencil = ##f 
    \cadenzaOn s32 \cadenzaOff
    \shard
  }
}

