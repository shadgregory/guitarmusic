\version "2.24.4"

\paper {
   indent = #0
   print-all-headers = ##t
   ragged-right = ##f
   ragged-bottom = ##t
 }

melody = \relative c'' {
  \clef "treble_8"
  \key a \major
  \time 3/8
  \tempo "Allegretto Grazioso."
  \repeat volta 2 {
    cis,16 a e e' cis a |
    cis16 a e e' cis a |
    b gis e d' _( b ) gis
    cis16 a e e' cis a |
    cis16 a e e' cis a |
    cis16 a e e' cis a |
    b gis e d' _( b ) gis |
    a4 r8 |
  }
  \repeat volta 2 {
    b16 gis e d' _( b ) gis
    cis16 a e e' cis a |
    b gis e d' _( b ) gis
    cis16 a e e' cis a |
    dis a fis fis' dis a |
    e' b gis gis' _(e) b |
    dis a fis fis' dis a |
    <e' b gis> eis _(fis) eis d b |
    cis16 a e e' cis a |
    cis16 a e e' cis a |
    b gis e d' _(b) gis
    cis a e e' cis a |
    cis a e e' cis a |
    cis a e e' cis a |
    b gis e d' _( b ) gis |
    a4 r8
  }
  \key d \major
  \repeat volta 2 {
    fis'16 d a a' _(fis) d
    fis16 d a a' _(fis) d
    e cis a g' _(e) cis
    fis16 d a a' _(fis) d
    fis16 d a a' _(fis) d
    fis16 d a a' _(fis) d
    e cis a g' _(e) cis
    d4 r8 
  }
  \repeat volta 2 {
    e16 cis a g' _(e) cis
    fis16 d a a' _(fis) d
    e16 cis a g' _(e) cis
    fis16 d a a' _(fis) d
    gis e b b' _(gis) e
    a e cis cis' _(a) e
    gis e b b' _(gis) e
    a gis b _(a) g e
    fis d a a' _(fis) d
    fis d a a' _(fis) d
    e cis a g' _(e) cis
    fis d a a' _(fis) d
    fis d a a' _(fis) d
    fis d a a' _(fis) d
    e cis a g' _(e) cis
    d4 r8
  }
}

bass = \relative c'' {
  a,,4 r8
  a4 r8
  e4 r8
  a4 r8
  a4 r8
  a4 r8
                                % 7
  e4 r8
  a4 r8
                                % second section
                                % 9
  e4 r8
  a4 r8
  e4 r8
  a4 r8
                                % 13
  fis4 r8
  e4 r8
  fis4 r8
  e4 r8
  a4 r8
  a4 r8
                                % 19
  e4 r8 %19
  a4 r8 %20
  a4 r8 %21
  a4 r8 %22
  e4 r8 %23
  a4 r8 %24
  d4 r8 
  d4 r8
  a4 r8
  d4 r8
  d4 r8
  d4 r8
  a4 r8
  d4 r8
  %%
  a4 r8
  d4 r8
  a4 r8
  d4 r8
  e,4 r8
  a4 r8
  e4 r8
  a4 r8
  d4 r8
  d4 r8
  a4 r8
  d4 r8
  d4 r8
  d4 r8
  a4 r8
  d4 r8
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
    title = "Les Étrennes #8"
    composer = "Luigi Castellacci"
  }
  \layout { }
  \midi { }

}