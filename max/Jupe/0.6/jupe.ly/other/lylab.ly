\version "2.16.2"

  #(set! paper-alist (cons '("10x13" . (cons (* 10 in) (* 13 in))) paper-alist))



% -----------------------------------------------------------------------------------------------------
% NEXT:
% for any branch + line, 



% -----------------------------------------------------------------------------------------------------
% COMPRESS MULTI MEASURE RESTS:
% FROM HERE: http://lilypond.1069038.n5.nabble.com/new-snippet-combine-multimeasure-rests-td144688.html

% doesn't work if rests are spread across variables. Can this be fixed?

#(define (add-durations dur1 dur2) 
         (let* ((len1 (ly:duration-length dur1)) 
                (len2 (ly:duration-length dur2)) 
                (mult (ly:moment-div (ly:moment-add len1 len2) len1))) 
               (ly:make-duration (ly:duration-log dur1) 
                                 (ly:duration-dot-count dur1) 
                                 (* (ly:duration-scale dur1) (ly:moment-main mult))))) 

#(define (combinable-rest? rest) 
         (and (ly:music? rest) 
              (or (eq? 'MultiMeasureRestMusic (ly:music-property rest 'name)) 
                  (eq? 'SkipEvent (ly:music-property rest 'name))) 
              (null? (ly:music-property rest 'articulations)))) 

#(define (combine-rests rest1 rest2) 
         (make-music (ly:music-property rest1 'name) 
           'duration (add-durations (ly:music-property rest1 'duration) 
                                    (ly:music-property rest2 'duration)) 
           'articulations '())) 

#(define (consolidator curr rest) 
         (if (and (combinable-rest? curr) 
                  (not (null? rest))) 
             (if (and (combinable-rest? (car rest)) 
                      (eq? (ly:music-property curr 'name) (ly:music-property (car rest) 'name))) 
                 (consolidator (combine-rests curr (car rest)) 
                               (cdr rest)) 
                 (if (eq? 'BarCheck (ly:music-property (car rest) 'name)) 
                     (consolidator curr (cdr rest)) 
                     (cons curr rest))) 
         (cons curr rest))) 

#(define (accumulate-result output input) 
         (if (null? input) 
             output 
             (let ((done output) 
                   (curr (car input)) 
                   (rest (cdr input))) 
                  (if (null? rest) 
                      (append done (list curr)) 
                      (let ((prev (consolidator curr rest))) 
                           (accumulate-result (append done (list (car prev))) (cdr prev))))))) 

#(define (condense music) 
         (let* ((output music) 
               (elts (ly:music-property output 'elements)) 
               (elt (ly:music-property output 'element))) 
              (if (pair? elts) 
                  (ly:music-set-property! output 'elements (map condense (accumulate-result '() elts)))) 
              (if (ly:music? elt) 
                  (ly:music-set-property! output 'element (condense elt))) 
              output)) 

combineMMRests = 
#(define-music-function (parser location music) (ly:music?) 
                        (condense music)) 

% -----------------------------------------------------------------------------------------------------





  \paper {
    #(set-paper-size "10x13")
    system-system-spacing #'basic-distance = #12
    system-system-spacing #'padding = #9
  }  

#(set-global-staff-size 16)


  \header {
    title = "LyLab"
    %instrument = "Orchestra"
    composer = "Randall West"
    tagline = "Copyright 2013 Randall West. All rights reserved."
  }

engraveGlobal = {
  \compressFullBarRests
}

\slurTestOne = {
  b4 b b b(
}

\slurTestTwo = {
  b4) b b b
}


\skipThree = {
  s1*1
}

lylabStaffOne =  \new Staff 
{
  \engraveGlobal 
  %s1*6
  <<\slurTestOne \skipThree>> <<\slurTestTwo \skipThree>>
}

lyRestTestOne = {
  \combineMMRests
  R1*3
}

lyRestTestTwo = {
  \combineMMRests
  R1*3
}

lyMyRest = {\combineMMRests \lyRestTestOne  \lyRestTestTwo}

lylabStaffTwo =  \new Staff 
{
  \engraveGlobal 
  <<{s1*6} 
    {
      \combineMMRests \lyMyRest
    }
  >>
}


\score {
  <<
    \lylabStaffOne
    \lylabStaffTwo
  >>
  \layout { 
  \context {
    %\Staff \RemoveEmptyStaves
    \override VerticalAxisGroup #'remove-first = ##t}
  }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}

