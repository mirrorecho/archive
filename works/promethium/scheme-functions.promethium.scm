
(define noteMap
	'(
		("c" . (0 . 0))
		("ces" . (0 . -1/2))
		("cis" . (0 . 1/2))
		("d" . (1 . 0))
		("des" . (1 . -1/2))
		("dis" . (1 . 1/2))
		("e" . (2 . 0))
		("ees" . (2 . -1/2))
		("eis" . (2 . 1/2))
		("f" . (3 . 0))
		("fes" . (3 . -1/2))
		("fis" . (3 . 1/2))
		("g" . (4 . 0))
		("ges" . (4 . -1/2))
		("gis" . (4 . 1/2))
		("a" . (5 . 0))
		("aes" . (5 . -1/2))
		("ais" . (5 . 1/2))
		("b" . (6 . 0))
		("bes" . (6 . -1/2))
		("bis" . (6 . 1/2))
	)
)

; ADD HARP OCTAVES HERE?
(define allStrikes1 '(
	;VOICE 		I: 1 			2			3			4			5			6			7
	("pic.1" 	. (("c" . 6)	("f" . 5)	("bes" . 4)	("ees" . 5)	("aes" . 4)	("aes" . 4)	("ges" . 4)))
	("fl.2" 	. (("g" . 6)	("f" . 6)	("bes" . 5)	("bes" . 5)	("aes" . 5)	("des" . 5)	("des" . 4)))
	("ob.1" 	. (("b" . 5)	("e" . 6)	("a" . 5)	("b" . 5)	("gis" . 5)	("a" . 4)	("fis" . 4)))
	("ob.2" 	. (("aes" . 5)	("des" . 6)	("f" . 5)	("c" . 5)	("aes" . 4)	("aes" . 4)	("f" . 4)))
	("cl.1" 	. (("c" . 6)	("c" . 6)	("ges" . 5)	("des" . 6)	("f" . 5)	("c" . 5)	("e" . 4)))
	("cl.2" 	. (("g" . 5)	("f" . 5)	("bes" . 4)	("bes" . 4)	("ees" . 4)	("des" . 4)	("ees" . 4)))
	("bsn.1" 	. (("bes" . 2)	("ees" . 3)	("ges" . 3)	("ees" . 3)	("f" . 3)	("des" . 4)	("des" . 4)))
	("bsn.2" 	. (("aes" . 2)	("des" . 3)	("aes" . 2)	("bes" . 2)	("e" . 3)	("a" . 3)	("d" . 4)))
	("hn.1" 	. (("b" . 4)	("e" . 4)	("gis" . 4)	("cis" . 4)	("gis" . 4)	("b" . 4)	("fis" . 4)))
	("hn.2" 	. (("a" . 4)	("d" . 4)	("fis" . 4)	("b" . 4)	("fis" . 4)	("a" . 4)	("d" . 4)))
	("hn.3" 	. (("bes" . 4)	("ees" . 4)	("aes" . 3)	("c" . 4)	("f" . 4)	("bes" . 4)	("e" . 4)))
	("hn.4" 	. (("aes" . 4)	("des" . 4)	("des" . 4)	("bes" . 3)	("ees" . 4)	("aes" . 4)	("des" . 4)))
	("tpt.1" 	. (("c" . 5)	("d" . 5)	("bes" . 4)	("c" . 5)	("aes" . 4)	("aes" . 4)	("ges" . 4)))
	("tpt.2" 	. (("g" . 4)	("c" . 5)	("f" . 4)	("b" . 4)	("g" . 4)	("b" . 4)	("f" . 4)))
	("tbn.1" 	. (("bes" . 3)	("f" . 4)	("f" . 4)	("bes" . 3)	("aes" . 3)	("bes" . 3)	("ees" . 4)))
	("tbn.2" 	. (("a" . 3)	("c" . 4)	("f" . 3)	("c" . 4)	("e" . 3)	("b" . 3)	("d" . 4)))
	("tba"	 	. (("aes" . 3)	("f" . 3)	("bes" . 3)	("bes" . 2)	("ees" . 3)	("c" . 4)	("des" . 4)))
	("timp" 	. (("g" . 2)	("f" . 2)	("f" . 2)	("des" . 3)	("ges" . 3)	("des" . 3)	("ges" . 3)))
	("hp.1" 	. (("c" . 4)	("cis" . 5)	("g" . 4)	("dis" . 6)	("gis" . 4)	("cis" . 5)	("fis" . 4)))
	("hp.2" 	. (("b" . 3)	("cis" . 4)	("a" . 3)	("ais" . 5)	("dis" . 4)	("gis" . 4)	("cis" . 4)))
	("vln.I" 	. (("g" . 3)	("e" . 5)	("g" . 3)	("d" . 5)	("e" . 5)	("gis" . 4)	("fis" . 4)))
	("vln.II" 	. (("g" . 3)	("ees" . 5)	("g" . 3)	("ees" . 5)	("ees" . 5)	("bes" . 4)	("f" . 4)))
	("vla"	 	. (("c" . 3)	("c" . 3)	("a" . 4)	("d" . 4)	("fis" . 4)	("b" . 3)	("e" . 4)))
	("vc"	 	. (("c" . 2)	("c" . 2)	("fis" . 2)	("dis" . 4)	("gis" . 3)	("a" . 3)	("dis" . 4)))
	("cb"	 	. (("g" . 2)	("c" . 3)	("f" . 3)	("b" . 3)	("e" . 4)	("cis" . 5)	("cis" . 5)))
	
	("perc"	 	. (("b" . 4)	("b" . 4)	("b" . 4)	("b" . 4)	("b" . 4)	("b" . 4)	("b" . 4)))
))


(define risingLines '(
	;VOICE 		I: 1 			2			3			4			
	("rising" 	. (("cis" . 4)	("d" . 4)	("e" . 4)	("fis" . 4)))
	("response"	. (("a" . 4)	("gis" . 4)))
	("ground"	. (("b" . 2)	("b" . 3)	("b" . 5)	("b" . 5)	("b" . 5)	("b" . 5)	("b" . 5)))
	
	("cloud.1" 	. (("g" . 4)	("aes" . 4)	("bes" . 4)	("c" . 5)))
	("cloud.2" 	. (("aes" . 4)	("bes" . 4)	("c" . 5)	("g" . 4)))
	("cloud.3" 	. (("b" . 4)	("c" . 5)	("g" . 4)	("a" . 4)))
	("cloud.4" 	. (("c" . 5)	("g" . 4)	("a" . 4)	("b" . 4)))
	("cloud.5" 	. (("a" . 4)	("a" . 4)	("gis" . 4)	("gis" . 4)))
	("cloud.6" 	. (("ais" . 4)	("b" . 4)	("b" . 4)	("ais" . 4)))

	("keeprising"	. (
		("g" . 4)	("aes" . 4)	("bes" . 4)	;#s 1 - 3 
		("c" . 4)	("des" . 4)	("ees" . 4)	;#s 4 - 6 
		("f" . 4)	("ges" . 4)	("aes" . 4) ;#s 7 - 9 
		("bes" . 4)	("b" . 4)	("cis" . 4)	;#s 10 - 12 
		("dis" . 4)	("e" . 4)	("fis" . 4)	;#s 13 - 15
		("gis" . 4)	("a" . 4)	("b" . 4)	;#s 16 - 18
		("cis" . 4)	("d" . 4)	("e" . 4)	;#s 19 - 21
		("fis" . 4)	("g" . 4)	("a" . 4)	;#s 22 - 24
		("b" . 4)	("c" . 4)	("d" . 4)	;#s 25 - 27
		("e" . 4)	("f" . 4)	("g" . 4)	;#s 28 - 30
		("a" . 4)	("bes" . 4)	("c" . 4)	;#s 31 - 33
		("d" . 4)	("ees" . 4)	("f" . 4)	;#s 34 - 36
		))

))


; see http://lilypond.org/doc/v2.12/input/lsr/lilypond-snippets/Pitches


(define ranDataDottedNote
	(lambda (data line index duration durationDots)
		(let* 
			(
				; this is the note data in a readable format based on the data, voice, and index
				; e.g. ("bes" . 4)
				(myNotePair (list-ref 
					(assoc line data)
					index
					))

				(myOctave (cdr myNotePair))

				(lyOctave (- myOctave 4)) ; ly counts middle c as 0
				
				; this is a pair for the pitch class that ly needs: e.g. (6 . -1/2):
				(lyPitchClassPair (cdr (assoc (car myNotePair) noteMap))) 

				; this makes the ly pitch!
				(lyPitch (ly:make-pitch lyOctave (car lyPitchClassPair) (cdr lyPitchClassPair) ))

				(lyDuration (ly:make-duration duration durationDots))

				; this makes the ly note based off of the pitch ans duration
				(lyNote (make-music 'NoteEvent 'duration lyDuration 'pitch lyPitch))

				; for some reason this is needed:
				(lyChord (make-music 'EventChord 'elements (list lyNote)))

				(lyMusic (make-sequential-music
					(list lyChord)
				))

			)
			#{ {\relative f {$lyMusic }} #}
		)
	)
)

(define ranDataNote
	(lambda (data line index duration)
		(ranDataDottedNote data line index duration 0)
	)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; OLD JUNK:

;(define myFlute1 
;	(list-ref 
;		(assoc "fl1" allStrikes1)
;		2
;	)
;)

;(define testFlute
;	(getLyPitch 
;		(car myFlute1)
;		(cdr myFlute1)
;	)
;)


;(define getLyPitch
;	(lambda (pitch octavesLeft)
;		(cond 
;			((> octavesLeft 3)
 ;       		(getLyPitch 
;					(string-append pitch "'")
;					(- octavesLeft 1)
;        		)
;        	)
;			((< octavesLeft 3)
;        		(getLyPitch 
;					(string-append pitch ",")
;					(+ octavesLeft 1)
 ;       		)
;        	)
;			((= octavesLeft 3)
 ;       		pitch
;        	)
;		)
;    )
;)

