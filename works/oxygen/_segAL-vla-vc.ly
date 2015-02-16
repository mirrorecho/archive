%{segALViolaCelloOne = \relative c'{d8( c d c d, f) d'( g, f d) f( g c d) f,( d e d) e( f c' d) g,( f c' d c e, d) g( d' c) g( d e d e f d f g) e( d') a( f g a f e d e) a( d d, e d) }
segALViolaCelloTwo = \relative c'{c8( f, e d e c d c d g d) g( f d f) a( c d a g f) c'( d) f,( a g e d c) f( g c, d e g a f e f) d( f g a e) a( d a d) e,( f a d a d) g,( a) }
segALViolaCelloThree = \relative c'{a8( d g, a) d( c) c,( d g) d'( c g a) f( d f e g e d f a) f( d f e f e g c, d) g( d') g,( f g d') g,( f e d e f d') g,( a f g d) d'( d, e d) e( f d) }
segALViolaCelloFour = \relative c'{g8( d e f a g f c) g'( a g) d'( g, f g f g a) f( a g f) c'( d) e,( d e a c d a d g, f) d'( g, a) d( g, f e) d( e f) d'( d,) e( d e g a) f( d f a d) }
segALViolaCelloFive = \relative c'{f,8( a c g e d c) c'( a g a f d f) c'( d) f,( e d e) a( f d f e c' a) d( a) d,( c f g a g) e( g f e f a d) g,( f a) f( d f a e g d f g d f) }
segALViolaCelloSix = \relative c'{f,8( g a e f c) g'( f) d'( c g d f a f c' a) e( g e d) g( f a g f g c) d( c) c,( d a' g a d f, a d) a( d) f,( e d e f g f g e f) g( a c, d e) }
segALViolaCelloSeven = \relative c'{d,8( e d e g a) c( a c g d' c d) g,( a f d' c d) c( d f, a g) d( e d f c) a'( f c f g d) g( f d f g f a f g f) a( d) a( d) a( d) d,( e a d a) }
segALViolaCelloEight = \relative c'{f,8( e f) d'( c d a d) g,( f g a f c' d g,) d( f c' d f,) d( f c' d) a( d g, f c) c'( a c d) g,( f d f a d) e,( f d e d e f e f e d) a'( g d a' g) }
%}

segALViolaCelloOne = \relative c'{d8( c d c d, f) d'( g, f d) f( g c d) f,( d e d) e( f c' d) g,( f c' d c e, d) g( d' c) g( d e d e f d f g) e( d') a( f g a f) %{e( d e a d d, e d)%} R1 } 
segALViolaCelloTwo = \relative c'{c8( f, e d e c d c d g d) g( f d f) a( c d a g f) c'( d) f,( a g e d c) f( g c, d e g a f e f) d( f g a e) %{a( d a d) e,( f a d a d) g,( a)%} r2 R1 }
segALViolaCelloThree = \relative c'{a8( d g, a) d( c) c,( d g) d'( c g a) f( d f e g e d f a) f( d f e f e g c, d) %{g( d') g,( f g d') g,( f e d e f d') g,( a f g d) d'( d, e d) e( f d)%} r8 R1*3 }
segALViolaCelloFour = \relative c'{g8( d e f a g f c) g'( a g) d'( g, f g f g a) f( a g f) c'( d) e,( d e a c d a d g, f) d'( g, a) %{d( g, f e) d( e f) d'( d,) e( d e g a) f( d f a d)%} r8 r4 R1*2 }

segALViolaCelloFive = \relative c'{f,8( a c g e d c) c'( a g a f d f) c'( d) f,( e d e) a( f d f e c' a) d( a) d,( c f g a g) e( g f e f a d) %{g,( f a) f( d f a e g d f g d f)%} r4 r2 | R1 }
segALViolaCelloSix = \relative c'{f,8( g a e f c) g'( f) d'( c g d f a f c' a) e( g e d) g( f a g f g c) d( c) c,( d a' g a d f, a d) %{a( d) f,( e d e f g f g e f) g( a c, d e)%} r8 R1 R1 }
segALViolaCelloSeven = \relative c'{d,8( e d e g a) c( a c g d' c d) g,( a f d' c d) c( d f, a g) d( e d f c) a'( f c f g d) g( f d f g f a f g f) %{a( d) a( d) a( d) d,( e a d a)%} r8 r4 R1 }
segALViolaCelloEight = \relative c'{f,8( e f) d'( c d a d) g,( f g a f c' d g,) d( f c' d f,) d( f c' d) a( d g, f c) c'( a c d) %{g,( f d f a d) e,( f d e d e f e f e d) a'( g d a' g)%} r4 r2 R1*2 }