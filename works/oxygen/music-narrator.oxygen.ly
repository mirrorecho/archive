narratorOne = {g'8 g g f f f e e e f f f e e e c c c g' g g f f f e e e f f f e c c c g' g g f f f e e e f f f e e e c c g' g g f f e e e f f f e e e c c c g' g g f f f e e e f f f e e e c c c g' g g f f f e e e f f f e e c c c g' f f f e e e f f f e e e c c c g' g g f f f e e e f f e e e c c g' g g f f f e e e f f f e c c c g' g g f f f e e f f e e e c c g' g g f f f e e e f f f e e c c c g' g g f f f e f f e e c g' g g f f f e e e f f f e e e c g' g g f e e e f f f e e c c c g' f f f e e e f f f e c c c g' g g f f f e f f e e c g' g g f f f e e e f f e e e c c c g' g g f f e e e f f e e e c c c g' g f f f e e e f f f e e c g' f f f e e e f f f e e e c c c g' g g f f f e e e f f f e e c c c g' g g f f f e e f f f e c g' g f f f e e f f f e e e c c g' g g f e f f f e c c c g' g g f f f e e f f f e e e c c g' g g f f f e e e f f e e c c c g' g g f f f e e e f f f e e e c c g' g g f f f e e e f f f e e e c g' g g f f f e e e f f f e e e c c c g' g g f f f e e e f f e e c c g' g g f f f e e f f f e e e c c c g' g g f f f e e e f f f e c c c g' g g f f f e e e f f f e e e c c g' g g f f f e e e f f f e e c c g' g g f f f e e e f f f e c c c g' g g f f f e e e f f f e e e c c c g' g g f f f e e e f f e e e c c c g' g g f f f f e e f f f f e e e e c c c c g' g g f f f e e e f f f e e e c c c g' g g f f f e e e f f f e e e c c c c g' g g g f f f f e e e f f f e e e c c c g' g g f f f e e e f f f e e e c c c g' g g f f f e e e f f e e e e c c c c g' g g g f f f f e e e e f f e e e e c c c c g' g g g f f e e e e f f f f e e e e c c c g' g g g f f f f e e e e f f f f e e e e c c c g' g g g f f f f e e e e f f f f e e e e c c c c g' g g g f f f f e e e e f f f f e e e e c c c c }

narratorF = \relative c'' {
R1*8
%{g'8 g g f f f e e | 
e f f f e e e c | 
c c g' g g f f f |
e e e f f f e c | 
c c g' g g f f f |
e e e f f f e e |
e c c g' g g f f |
e e e f f f e e | %}
e8\pp c c c g' g g f |
f f e e e f f f |
e e e c c c g' g |
g f f f e e e f |
} narratorO = \relative c'' {
f\mp f e e c c c g' |
f f f e e e f f |
f e e e c c c g' |
g g f f f e e e |
f f e e e c c g' |
g g f f f e e e | 
f f f e c c c g' |
g g f f f e e f |
f e e e c c g' g |
g f f f e e e f |
% HERE's M:
f,\p f e e c c c g' |
g g f f f e f f |
e e c g' g g f f |
f e e e f f f e |
e e c g' g g f e |
e e f f f e e c |
c c g' f f f e e |
e f f f e c c c |
} narratorV = \relative c' {
g'\pp g g f f f e f |
f e e c g' g g f |
f f e e e f f e |
e e c c c g' g g |
f f e e e f f e |
e e c c c g' g f |
f f e e e f f f |
e e c g' f f f e |
e e f f f e e e |
c c c g' g g f f |
f e e e f f f e |
} narratorAF = \relative c' {
e\mf c c c g' g g f |
f f e e f f f e |
c g' g f f f e e |
f f f e e e c c |
g' g g f e f f f |
e c c c g' g g f |
f f e e f f f e |
e e c c g' g g f |
% here's AC
<< \relative c'' {f f e e e f f e |
e c c c g' g g f |
f f e e e f f f |
e e e c c g' g g |
f f f e e e f f |
f e e e c g' g g |
f f f e e e f f |}
\\ \relative c' {f f e e e f f e |
e c c c g' g g f |
f f e e e f f f |
e e e c c g' g g |
f f f e e e f f |
f e e e c g' g g |
f f f e e e f f |}
>>
} narratorAH = {
<<\relative c'' {f e e e c c c g' |
g g f f f e e e |
f f e e c c g' g |
g f f f e e f f |
f e e e c c c g' |
g g f f f e e e |
f f f e c c c g' |
g g f f f e e e |
f f f e e e c c |
g' g g f f f e e |}
\\ \relative c' {
f e e e c c c g' |
g g f f f e e e |
f f e e c c g' g |
g f f f e e f f |
f e e e c c c g' |
g g f f f e e e |
f f f e c c c g' |
g g f f f e e e |
f f f e e e c c |
g' g g f f f e e |}
>>
% here's AE:
\relative c'' {
e f f f e e c c |
g' g g f f f e e |
e f f f e c c c |
g' g g f f f e e |
e f f f e e e c |
c c g' g g f f f |
e e e f f e e e |
c c c g' g g f f |
}
} narratorAS = \relative c'' {
f f e e f f f f |
e e e e c c c c |
g' g g f f f e e |
e f f f e e e c |
c c g' g g f f f |
e e e f f f e e |
e c c c c g' g g |
%here's AQ:
g, f f f f e e e |
f f f e e e c c |
c g' g g f f f e |
e e f f f e e e |
c c c g' g g f f |
f e e e f f e e |
} narratorAN = \relative c' {
e e c c c c g' g |
g g f f f f e e |
e e f f e e e e |
c c c c g' g g g |
f f e e e e f f |
f f e e e e c c |
c g' g g g f f f |
f e e e e f f f |
f e e e e c c c |
g' g g g f f f f |
e e e e f f f f |
e e e e c c c c |
g' g g g f f f f |
e e e e f f f f |
e e e e c c c c }






narratorOneMeasures = \relative c' {
g'8 g g f f f e e | 
e f f f e e e c | 
c c g' g g f f f |
e e e f f f e c | 
c c g' g g f f f |
e e e f f f e e |
e c c g' g g f f |
e e e f f f e e |
e c c c g' g g f |
f f e e e f f f |
e e e c c c g' g |
g f f f e e e f |
f f e e c c c g' |
f f f e e e f f |
f e e e c c c g' |
g g f f f e e e |
f f e e e c c g' |
g g f f f e e e | 
f f f e c c c g' |
g g f f f e e f |
f e e e c c g' g |
g f f f e e e f |
f f e e c c c g' |
g g f f f e f f |
e e c g' g g f f |
f e e e f f f e |
e e c g' g g f e |
e e f f f e e c |
c c g' f f f e e |
e f f f e c c c |
g' g g f f f e f |
f e e c g' g g f |
f f e e e f f e |
e e c c c g' g g |
f f e e e f f e |
e e c c c g' g f |
f f e e e f f f |
e e c g' f f f e |
e e f f f e e e |
c c c g' g g f f |
f e e e f f f e |
e c c c g' g g f |
f f e e f f f e |
c g' g f f f e e |
f f f e e e c c |
g' g g f e f f f |
e c c c g' g g f |
f f e e f f f e |
e e c c g' g g f |
f f e e e f f e |
e c c c g' g g f |
f f e e e f f f |
e e e c c g' g g |
f f f e e e f f |
f e e e c g' g g |
f f f e e e f f |
f e e e c c c g' |
g g f f f e e e |
f f e e c c g' g |
g f f f e e f f |
f e e e c c c g' |
g g f f f e e e |
f f f e c c c g' |
g g f f f e e e |
f f f e e e c c |
g' g g f f f e e |
e f f f e e c c |
g' g g f f f e e |
e f f f e c c c |
g' g g f f f e e |
e f f f e e e c |
c c g' g g f f f |
e e e f f e e e |
c c c g' g g f f |
f f e e f f f f |
e e e e c c c c |
g' g g f f f e e |
e f f f e e e c |
c c g' g g f f f |
e e e f f f e e |
e c c c c g' g g |
g f f f f e e e |
f f f e e e c c |
c g' g g f f f e |
e e f f f e e e |
c c c g' g g f f |
f e e e f f e e |
e e c c c c g' g |
g g f f f f e e |
e e f f e e e e |
c c c c g' g g g |
f f e e e e f f |
f f e e e e c c |
c g' g g g f f f |
f e e e e f f f |
f e e e e c c c |
g' g g g f f f f |
e e e e f f f f |
e e e e c c c c |
g' g g g f f f f |
e e e e f f f f |
e e e e c c c c }

narratorOneCondensed = \relative c' {
g'4.( f8~ f4 e4~ | 
e8) f4.( e4. c8~ | 
c4) g'4(~ g8 f4. |
e4.) f8~( f4 e8 c8~ | 
c4) g'4~( g8 f4. |
e4.) f8~( f4 e4~ |
e8 c4) g'8~( g4 f4 |
e4.) f8~ f4 e4 |
e8 c c c g' g g f |
f f e e e f f f |
e e e c c c g' g |
g f f f e e e f |
f f e e c c c g' |
f f f e e e f f |
f e e e c c c g' |
g g f f f e e e |
f f e e e c c g' |
g g f f f e e e | 
f f f e c c c g' |
g g f f f e e f |
f e e e c c g' g |
g f f f e e e f |
f f e e c c c g' |
g g f f f e f f |
e e c g' g g f f |
f e e e f f f e |
e e c g' g g f e |
e e f f f e e c |
c c g' f f f e e |
e f f f e c c c |
g' g g f f f e f |
f e e c g' g g f |
f f e e e f f e |
e e c c c g' g g |
f f e e e f f e |
e e c c c g' g f |
f f e e e f f f |
e e c g' f f f e |
e e f f f e e e |
c c c g' g g f f |
f e e e f f f e |
e c c c g' g g f |
f f e e f f f e |
c g' g f f f e e |
f f f e e e c c |
g' g g f e f f f |
e c c c g' g g f |
f f e e f f f e |
e e c c g' g g f |
f f e e e f f e |
e c c c g' g g f |
f f e e e f f f |
e e e c c g' g g |
f f f e e e f f |
f e e e c g' g g |
f f f e e e f f |
f e e e c c c g' |
g g f f f e e e |
f f e e c c g' g |
g f f f e e f f |
f e e e c c c g' |
g g f f f e e e |
f f f e c c c g' |
g g f f f e e e |
f f f e e e c c |
g' g g f f f e e |
e f f f e e c c |
g' g g f f f e e |
e f f f e c c c |
g' g g f f f e e |
e f f f e e e c |
c c g' g g f f f |
e e e f f e e e |
c c c g' g g f f |
f f e e f f f f |
e e e e c c c c |
g' g g f f f e e |
e f f f e e e c |
c c g' g g f f f |
e e e f f f e e |
e c c c c g' g g |
g f f f f e e e |
f f f e e e c c |
c g' g g f f f e |
e e f f f e e e |
c c c g' g g f f |
f e e e f f e e |
e e c c c c g' g |
g g f f f f e e |
e e f f e e e e |
c c c c g' g g g |
f f e e e e f f |
f f e e e e c c |
c g' g g g f f f |
f e e e e f f f |
f e e e e c c c |
g' g g g f f f f |
e e e e f f f f |
e e e e c c c c |
g' g g g f f f f |
e e e e f f f f |
e e e e c c c c }