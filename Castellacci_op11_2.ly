\version "2.24.4"

\paper {
   indent = #0
   print-all-headers = ##t
   ragged-right = ##f
   ragged-bottom = ##t
 }

melody = \relative c'' {
  \clef "treble_8"
  \key g \major
  \time 3/4
  \partial 16*4 g,16_ ( a) b c |
  d8\f d d\p b c e | % 1
  d8 d d g16_ (fis) e d_ (c) b |
  c8 c c e d c |
  <b g d>8 d16_ (c) b_ (c) a b g_ (a) b c | % 4
  d8 d d g \slashedGrace fis g e |
  \slashedGrace d16 (cis16) b cis d cis8 a a' g |
  g16_ (fis) e d cis b a g r4 |
  r8 a16 d r8 dis8 e d |
  <e, gis b>8\f <e gis b> <e gis b> e'16 \mf _(f) e d c b | % 9
  <e, a c>8\f <e a c> <e a c> e'16 \mf d c b a g |
  <a, d a'>8 <a' d, > <a, d a'> d'16 e d_ (c) b a |
  <d, g b>8 <d g b> <d g b> g16_ (a) b c d e | % 12
  d8 d d b c e |
  d8 d d g16 fis e d c b |
  c8 c c e d c |
  <d, g b>8 d'16_ (c) b_ (c) a b g8 r8 | %16
  g4 r4 b16 c cis d |
  <a d>8 <a d> <a d> fis' e d |
  cis16_ (d) e fis a_ (g) fis e d_ (cis) b a | % 19
  r8 a16 d r8 dis e d |
  d16 c b c a8 cis d c |
  c16_ (b) ais b g8 g'16 fis e d_ (c) b |
  <a c>16 r16 <gis b> r16 <a c> r <b d> r <c e> r16 <d b> r16 | % 23
  <g, b>16 r16 <b d> r16 <e g> r <d fis> r <c e> r16 <d b> r16 |
  <a c>16 r16 <gis b> r16 <a c> r <b d> r <c e> r16 <d b> r16 |
  <g, b>16 r16 <b d> r16 <e g> r <d fis> r <c e> r16 <d b> r16 |
  e16 c g a r4 e'16 r16 g16 r16 |
  d8 g16_ (fis) e d_ (c) b r4 | % 28
  r8 a16 d fis_ (g) a g fis_ (e) d c |
  b8 c cis d e d | % 30
  e16 c g c r4 e16 r16 g r16 |
  d8 g16 fis e d_ (c) b r4 |
  r8 a16 d fis e d c b a g fis | % 33
  g8 g g g16_ (a) b c_ (d) e |
  d8 d d b c e |
  d8 d d g16 fis e d_ (c) b | %36
  c8 c c e d c | % 37
  <d, g b>8 d'16_ (c) b_ (c) a b g_ (a) b c |
  d8 d d4 \slashedGrace fis8 g8 e |
  \slashedGrace d cis16 b cis d cis8 a a' g |
  g16_ (fis) e d cis_ (b) cis g r4 |
  r8 a16 d r8 dis8 e d |
  <e, gis b>8 <e gis b>8 <e gis b>8 e'16 f e d_ (c) b|
  <e, a c>8 <e a c>8 <e a c>8 e'16 d c_ (b) a g|
  <a, d a'>8 <a d a'>8 <a d a'>8 d'16 e d_ (c) b a|
  <d, g b>8 <d g b>8 <d g b>8 g16_ (a) b c_ (d) e|
  d8 d d b c e |
  d8 d8 d8 g16_ (fis) e d_ (c) b |
  c8 c c e d c | % 49
  <b g d>8 d16_ (c) b_ (c) a b g8 g |
  c8 c c e d c | % 51
  <d b>8 f e d c b |
  c8 c c e d c | % 53
  b8 b b f' e d |
  c8 c c e d c |
  b4 r4 g16 a b c |
  d8 cis d cis d cis |
  d8 b r4 r4 |
  c8 g' f e d c | % 59
  <d, g b g'>4.\fermata  g8_ (a) b | % 60
  c8 c c e d c |
  b8 b b f' e d |
  c8 c c e d c |
  <b d,>8 f' e d c b |
  c8 c c e d c | % 65
  b8 b b f' e d |
  c8 c c e d b |
  c4 r4 g16_ (a) b c | % 68
  d8 d d b c e |
  d8 d d g16_ (fis) e d_ (c) b |
  c8 c c e d c |
  <d, g b>8 d'16_ (c) b_ (c) a b g_ (a) b c |
  d8 d d g \slashedGrace fis g e |
  cis8 cis cis a'16 g fis e d cis |
  d16 e fis g a_ (gis) g fis a_ (g) e cis |
  d8 \slashedGrace e d16 c d8 d16 e d c b a |
  gis8 b e e16 f e d c b |
  a8 c e e16 d c b a g |
  fis8 a d d16 e d c b a |
  <g b>8 d'16_ (c) b_ (c) a b g_ (a) b c | % 80
  d8 d d b c e |
  d8 d d g16_ (fis) e d_ (c) b |
  c8 c c  e d c |
  b8 d16_ (c) b_ (c) a b r8 <d fis> |
  b8 d16_ (c) b_ (c) a b r8 <d fis> |
  <g b, g>4\ff <g, d b> <g b, d> |
  <g b, d>4 r4
}

bass = \relative c'' {
  \partial 16*4 r4 |
  b,,16 g' d g b,8 g' a c | % 1
  b,16 g' d g b,8 r8 r4 |
  fis16 a' d, a' fis,8 c'' b a |
  g,4 r4 r4 | % 4
  b16 g' d g b4 r4 |
  a,4 a a |
  d r4 fis16^ (e) d cis|
  d16^ (fis) r8 d8 r8 r4 |
  e,4 e r4 | % 9
  a4 a r4 |
  fis8 a fis4 r4 |
  g4 g4 r4 |
  b16 g' d g b,8 g' a c |
  b,16 g' d g b,8 r8 r4 | % 14
  fis16 a' d, a' fis,8 c'' b a |
  g,4 r4 b8 r8 |
  g8 \slashedGrace a' g16 fis g gis a ais r4 |
  fis,4 fis4 r4 |
  a4 a a |
  d16 fis r8 d r8 r4 |
  fis,4 fis fis |
  g4 g g |
  r16 d'16 r16 d16 r16 d16 r16 d16 r16 d16 r16 d16 |
  r16 d16 r16 d16 r16 d16 r16 d16 r16 d16 r16 d16 |
  r16 d16 r16 d16 r16 d16 r16 d16 r16 d16 r16 d16 |
  r16 d16 r16 d16 r16 d16 r16 d16 r16 d16 r16 d16 | % 26
  c4 e16 g c g r16 g r g | % 27
  b,4 r4 a'16^ (g) fis e |
  d16^ (fis) r8 d4 d4 |
  g,16 g' a, g' ais, g' b, g' c, g' b, g' |
  c,4 e16 g c g r16 g r16 g |
  b,4 r4 a'16^ (g) fis e |
  d16^ (fis) r8 d4 d4 |
  g,16 d' b d g,4 r4 |
  b16 g' d g b,8 g' a c |
  b,16 g' d g b4 r4 |
  fis,16 a' d, a' fis,8 c'' b a |
  g,4 r4 r4 |
  b16 g' d g b,8 g' r4 |
  a,4 a a |
  d4 r4 fis16 (e) d cis |
  d16 (fis) r8 d8 r4 r8 |
  e,4 e4 r4 |
  a4 a4 r4 |
  fis8 a fis4 r4 |
  g4 g4 r4 |
  b16 g' d g b,8 g' a c |
  b,16 g' d g b,8 r8 r4|
  fis16 a' d, a' fis,8 c'' b a |
  g,4 r4 g8 r8 | % 50
  c16 g' e g c,8 g' f e |
  g,8 a' g f e d |
  c16 g' e g c,8 g' f e |
  g,16 g' d g g,8 a' g fis |
  c16 g' e g c,8 g' f e |
  g,16 d' b d g,8 r4 r8 |
  b16 g' ais, g' b, g' ais, g' b, g' ais, g' | % 57
  b4 g8 d b g |
  c16 g' e g d g c, g' b, g' a, g' |
  g,4. r4 r8 | % 60
  c16 g' e g c,8 g' f e |
  g,16 g' d g g,8 a' g f |
  c16 g' e g c,8 g' f e |
  g,8 a' g f e d |
  c16 g' e g c,8 g' f e |
  g,16 g' d g g,8 a' g f |
  c16 g' e g c,8 g' f d |
  c16 g' e g c,8 r8 r4 |
  b16 g' d g b,8 g' a c |
  b,16 g' d g b,4 r4 |
  fis16 a' d, a' fis,8 c'' b a |
  g,4 r4 r4 |
  b16 g' d g b,4 r4 |
  a16 a' e a a,4 a4 |
  d4 d a |
  d4 d d |
  e,4 e e |
  a4 a a |
  fis4 fis fis |
  g4 r4 r4 | % 80
  b16 g' d g b,8 g' a c |
  b,16 g' d g b,4 r4 |
  fis16 a' d, a' fis,8 c'' b a |
  g,4 r4 d'8 a' |
  g,4 r4 d'8 a' |
  g,4 g g | % 86
  \partial 4*2 g4 r4 |
}

music = {
  <<
    \override Staff.NoteCollision.merge-differently-headed = ##t
    \context Voice = "1" { \voiceOne \melody }
    \context Voice = "2" { \voiceTwo \bass }
  >>
}

\score {
  \new Staff \music
  \header{
    title = "Les Étrennes #2 (Polacca)"
    composer = "Luigi Castellacci"
  }
  \layout { }
  \midi { }

}