%{
segAViolinOne = \relative c'{g''8( f e b') b,( c b) b'( e, f c f b e, f e b) b'( e, b) b'( c, b) e( e e e) e( e e e b) }
segAViolinTwo = \relative c'{f'8( c b e) c( b) f'( c f e g b g b) e,( f e f) c( b c f c) b'( g f) b,( g' f) c( f c) }
segAViolinThree = \relative c'{e'8( f c b) b'( e, f e b e f) g( c,) b'( g b e, c) f( e f c f b,) b'( b b b) b( b b b) }
segAViolinFour = \relative c'{g''8( b) b,( c g') b,( c b e b') b,( e f g) b( g b e, g) c,( g' f g b, c) g'( f g b b, c f) }
segAViolinFive = \relative c'{f'8( e b' g e f c) g'( f c b c e c f g c,) g'( b c, e b') b,( g' f b g b) b,( f' c b) }
segAViolinSix = \relative c'{b''8( b, c g' f c) g'( b g) f( e) b'( e, f) c( f c b b' g e b) g'( c, b c b c) b( c b e) }
segAViolinSeven = \relative c'{c'8( g' f e) b'( g e) b( c b) b'( e, b c b) e( f e f b) g( e) c( e) b( e e e e e e e) }
segAViolinEight = \relative c'{b''8( g b) f( g f e f g) b( e, b) b'( f g c,) f( g e f b g e f) c( b) g'( f c b g' b) }
segAViolinNine = \relative c'{c'8( b e f e b') b,( c b c) g'( f g e) b( c b c b) e( b) e( f c f c f) c( f g) b( g) }
segAViolinTen = \relative c'{e'8( b' g) b,( c e) b'( g b g b g f b, c b) g'( b b,) f'( c b) b'( g b g b) b,( c g' f g) }
segAViolinEleven = \relative c'{b'8( c f c b) b'( g f c g' f c b) g'( e) b'( g f g b f g b) f( g) b,( c f g b) b,( c) }
segAViolinTwelve = \relative c'{b'8( e g b) f( g b) e,( b') b,( c b c b) b'( b, b') b,( c g') b,( b' e, b' e, f c b) g'( f g f) }
%}

% MODIFIED IN ORDER TO ADD HELD TONES!
segAViolinOne = \relative c'{g''8( f e b') b,( c b) b'( e, f c f b e, f e b) b'( e, b) b'( c, b) e~(\<^"normal" | e2~ e4.~\!\> b8\!) <>^"sul pont" }
segAViolinTwo = \relative c'{f'8( c b e) c( b) f'( c f e g b g b) e,( f e f) c( b c f c) b'( g f) b,( g' f) c( f c) }
segAViolinThree = \relative c'{e'8( f c b) b'( e, f e b e f) g( c,) b'( g b e, c) f( e f c f b,) | b2~\<^"normal" b2\!\> <>\!^"sul pont"}
segAViolinFour = \relative c'{g''8( b) b,( c g') b,( c b e b') b,( e f g) b( g b e, g) c,( g' f g b, c) %{g'( f g b b, c f)%} r4. r2 }
segAViolinFive = \relative c'{f'8( e b' g e f c) g'( f c b c e c f g c,) g'( b c, e b') b,( g' f b g b) %{b,( f' c b)%} r2 }
segAViolinSix = \relative c'{b''8( b, c g' f c) g'( b g) f( e) b'( e, f) c( f c b b' g e b) %{g'( c, b c b c) b( c b e)%} r4 R1 }

segAViolinSeven = \relative c'{c'8( g' f e) b'( g e) b( c b) b'( e, b c b) e( f e f b) g( e) c( e) | b( e4.~\<^"normal" e2\!\>) <>\!^"sul pont"}
segAViolinEight = \relative c'{b''8( g b) f( g f e f g) b( e, b) b'( f g c,) f( g e f b g e f) c( b) g'( f c b g' b) }
segAViolinNine = \relative c'{c'8( b e f e b') b,( c b c) g'( f g e) b( c b c b) e( b) e( f c f c f) c( f g) b( g) }
segAViolinTen = \relative c'{e'8( b' g) b,( c e) b'( g b g b g f b, c b) g'( b b,) f'( c b) b'( g b g b) %{b,( c g' f g)%} r8 r2 }
segAViolinEleven = \relative c'{b'8( c f c b) b'( g f c g' f c b) g'( e) b'( g f g b f g b) f( g) b,( c f g b) %{b,( c)%} r4 }
segAViolinTwelve = \relative c'{b'8( e g b) f( g b) e,( b') b,( c b c b) b'( b, b') b,( c g') %{b,( b' e, b' e, f c b) g'( f g f)%} r2 R1 }
