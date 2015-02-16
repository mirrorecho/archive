clarinetSectionOne = \relative c''' {
\relative c'''' {\nastyNote g1\ff\> ~ ^"*" ^"* = a very loud, high, nasty sound"
    \nastyNote g2 r2\p
}

<>\f
\bellLineBottom 
\relative c'''' {\nastyNote g2.\ff ^"*" r4}

    % -----------------------------------
    % 6/8
    
    <>\mf
    %<>^"[ ** bring back ** ]"
    \repeat tremolo 12 {d32( ees )} 
    \repeat tremolo 6 {a,( bes )} 
    \repeat tremolo 6 {d,32( ees )} 
    c4-- r8 ees-.-> aes,4--->\fermata |
    R2. |
	R2. |
    % 4/4 -------------------------
	r1^\fermata |
	\bellLineBottom
	\relative c' {r8 ees4.( ~ ees4 aes4)} |
    <> ^\markup { \rounded-box "freely until A, slowing down" } 
    %\override Staff.Bar
    \times 4/5 {bes8( ees bes ) aes' ( des, ~} des4) r8 ces( |
    fes bes,4 aes8 ) r8 
    \times 2/3 {ees8( bes'4 ~ } bes8 ~ | 
    bes2) r8 bes( f'4 ~ | | 
    f4.) 
\boxNotes {
    \times 2/3 {bes,4( ees bes ~ } bes8 ~ | bes2)
     } #4 #5 "repeat until A, slowing down" 
    %^"repeat [ ** enough of an echo? ** ]"
    s2 |
    s1 
    s1 ^"..."
    s1 ^"... repeating"

}