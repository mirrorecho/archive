fluteSectionOne = \relative c''' {

\relative c'''' {\nastyNote g1\ff\> ~ ^"*" ^"* = a very loud, high, nasty sound"
    \nastyNote g2 r2\p
}

<>\f
\bellLineTop 
\relative c'''' {\nastyNote g2.\ff ^"*" r4}

    % -----------------------------------
    % 6/8
%<> ^"[ ** bring back ** ]"
    ees8(\f d c bes a) r |
    ees'8( d c bes f' bes,) |
    aes8( g f) ees'-.-> bes4--->\fermata |
	R2. |
	R2. |
    % 4/4 -------------------------------
    <>
    r1^\fermata |
	\bellLineTop
	\relative c'' {r8 des( ges c ~ c2) } |

    \times 2/3 {r4 des(\> c} \times 2/3 {bes4 aes ges} |
    \times 2/3 {f4 ees4) r4} \times 2/3 {ees4( d c} |
    \times 2/3 {bes f bes)} \times 2/3 {r4 des(\mf c} |
    \times 2/3 {bes aes ges)} r2 |

	\relative c'' {
    r2 \times 2/3 {aes4( des g} |
        % everyone free --------------
    f4) b,8(\> dis1) 
    bes2(\mp f2)
    \times 2/3 {ees'!4( bes! a'!} g2\> f4)
    \times 2/3 {ees!4( aes d,} c2 )
    \times 2/3 {bes!4\p( ees,! a!)} \times 2/3 {g( ees! f)} 
%    <> ^" [ ** should this have gone low instead? ] "
    c2\>( g'4 )

    \times 2/3 {bes!4( aes!2} 

    %\times 2/3 {g'8[ des! aes!]} 
    g2\pp )

    %\times 2/3 {bes!4 ees,! aes!} 
    %\times 2/3 {bes!4 (ees,! des!)} 
    des2 \fermata
%%} 
    %\times 2/3 {g'8[ f des!] } 

  }

}