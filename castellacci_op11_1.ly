#(define (tie::tab-clear-tied-fret-numbers grob)
   (let* ((tied-fret-nr (ly:spanner-bound grob RIGHT)))
      (ly:grob-set-property! tied-fret-nr 'transparent #t)))

\version "2.14.0"
\paper {
   indent = #0
   print-all-headers = ##t
   ragged-right = ##f
   ragged-bottom = ##t
}
\layout {
   \context { \Score
      \override MetronomeMark.padding = #'5
   }
   \context { \Staff
      \override TimeSignature.style = #'numbered
      \override StringNumber.transparent = ##t
   }
   \context { \TabStaff
      \override TimeSignature.style = #'numbered
      \override Stem.transparent = ##t
      \override Beam.transparent = ##t
      \override Tie.after-line-breaking = #tie::tab-clear-tied-fret-numbers
   }
   \context { \TabVoice
      \override Tie.stencil = ##f
   }
   \context { \StaffGroup
      \consists "Instrument_name_engraver"
   }
}
TrackAVoiceAMusic = #(define-music-function (parser location inTab) (boolean?)
#{
   \tempo 4=90
   \clef #(if inTab "tab" "treble_8")
   \key g \major
   \time 2/4
   \oneVoice
   \partial 8 <e'\2>16 <g'\1>16 |
   <d'\2>16 <fis'\1>16 <c'\2>16 <e'\1>16 <b\3>16 <d'\2>16 <ais\3>16 <cis'\2>16 
   <d'\2 b\3 >16 <g\4>16 <b\3>16 <d'\2>16 <g'\1>8 <b\2 g\3 >8 
   <fis,\6 d'\2 >16 ^(<c'\2>16) <b\2>16 <c'\2>16 <a\3 fis,\6 >16 <b\2>16 <c'\2>16 <d'\2>16 |
   <g,\6 c'\2 >16 ^(<b\2>16) <ais\3>16 <b\2>16 <g,\6 g\3 >8 <b,\5>16 <d'\2>16
                                %5
   <c\5>16 <e'\1>16 <b,\5>16 <d'\2>16 <a,\5>16 <c'\2>16 <g,\6>16 <b\2>16 | 
   <fis,\6 d'\2 >16 ^(<c'\2>) <b\2>16 <c'\2>16 <a\3 fis,\6 >16 <b\2>16 <c'\2>16 <a\3>16 
   <g,\6 c'\2 >16 ^(<b\2>) <ais\3>16 <b\2>16 <g,\6 g\3 >16 <a\3>16 <b\2>16 <g\3>16 
   <fis,\6 a\3 >16 ^(<g\3>16) <fis\4>16 <e\4>16 <d\4 fis,\6 >8 <b,\5>16 <d'\2>16 
   <c\5>16 <e'\1>16 <b,\5>16 <d'\2>16 <c\5>16 <e'\1>16 <d\4>16 <fis'\1>16
                                %10
   <g,\6 g'\1 >16 ^(<fis'\1>16) <e'\1>16 <d'\2>16 <g,\6 cis'\2 >16 <d'\2>16 <e'\1>16 <d'\2>16
   <c'\2 fis,\6 >16 ^(<b\2>16) <a\3>16 <b\2>16 <fis,\6 c'\2 >16 <d'\2>16 <e'\1>16 <fis'\1>16 
   <g,\6 g'\1 >16 ^(<fis'\1>16) <e'\1>16 <d'\2>16 <g,\6 cis'\2 >16 <d'\2>16 <e'\1>16 <d'\2>16 
   <c'\2 fis,\6 >16 ^(<b\2>16) <a\3>16 <b\2>16 <fis,\6 c'\2 >16 <d'\2>16 <e'\1>16 <fis'\1>16 
   <g\3>16 <g'\1>16 <fis\4>16 <fis'\1>16 <e\4>16 <e'\1>16 <d\4>16 <d'\2>16
                                %15
   <e\4>16 <e'\1>16 <d\4>16 <d'\2>16 <c\5>16 <c'\2>16 <b,\5>16 <b\2>16 
   <d\4>16 (<fis\4>16) <a\3>16 <d'\2>16 <d\4>8 <e'\2>16 <g'\1>16 
   <d'\2>16 <fis'\1>16 <c'\2>16 <e'\1>16 <b\3>16 <d'\2>16 <ais\3>16 <cis'\2>16 
   <d'\2 b\3 g,\6 >8 <g'\1>16 (<fis'\1>16) <e'\1>16 <d'\2>16 <c'\2>16 <b\2>16 
   <c'\2 a\3 fis,\6 >8 <a'\1>16 <g'\1>16 <fis'\1>16 <e'\1>16 <d'\2>16 <c'\2>16
                                %20
   <c'\2 g,\6 >16 ^(<b\2>16) <ais\3>16 <b\2>16 <g\3 g,\6 >8 <b,\5>16 <d'\2>16 
   <c\5>16 <e'\1>16 <b,\5>16 <d'\2>16 <a,\5>16 <c'\2>16 <g,\6>16 <b\2>16 
   <d'\2 fis,\6 >16 <c'\2>16 <b\2>16 <c'\2>16 <a\3 fis,\6 >16 <b\2>16 <c'\2>16 <a\3>16 
   <g,\6 c'\2 >16 <b\2>16 <ais\3>16 <b\2>16 <g,\6 g\3 >16 <a\3>16 <b\2>16 <g\3>16 
   <fis,\6 a\3 >16 ^(<g\3>16) <fis\4>16 <e\4>16 <d\4 fis,\6 >8 <b,\5>16 <d'\2>16
                                %25
   <c\5>16 <e'\1>16 <b,\5>16 <d'\2>16 <c\5>16 <e'\1>16 <d\4>16 <fis'\1>16 
   <g,\6 g'\1 >16 <fis'\1>16 <e'\1>16 <d'\2>16 <cis'\2 g,\6 >16 <d'\2>16 <e'\1>16 <d'\2>16 
   <c'\2 fis,\6 >16 <b\2>16 <a\3>16 <b\2>16 <c'\2 fis,\6 >16 <d'\2>16 <e'\1>16 <fis'\1>16 
   <g'\1 g,\6 >16 <fis'\1>16 <e'\1>16 <d'\2>16 <cis'\2 g,\6 >16 <d'\2>16 <e'\1>16 <d'\2>16 
   <c'\2 fis,\6 >16 <b\2>16 <a\3>16 <b\2>16 <c'\2 fis,\6 >16 <d'\2>16 <e'\1>16 <fis'\1>16
                                %30
   <g'\1 g,\6 b\2 g\3 >8 <e'\2>16 <g'\1>16 <d'\2>16 <fis'\1>16 <c'\2>16 <e'\1>16 
   <d'\2 b\3 d\4 >8 <b\2 g\3 >8 <c'\2 a\3 d\4 >8 <d'\2 b\3 >8 
   <b\2 b,\5 d\4 g\3 >8 <b\2 d\4 g\3 >8 <b\2 b,\5 d\4 g\3 >8 <dis'\2>8 
   <c\5 e'\1 c'\2 g\3 >8 <g\3 e'\1 c'\2 >8 <c\5 e'\1 c'\2 g\3 >8 <fis'\1>16 <g'\1>16 
   <d'\2 b\3 g\4 g,\6 >8 <d'\2 b\3 g\4 >8 <d'\2 b\3 g,\6 g\4 >8 <dis'\2>8
                                %35
   <c\5 e'\1 c'\2 g\3 >8 <g\3 e'\1 c'\2 >8 <c\5 e'\1 c'\2 g\3 >8 <fis'\1>16 (<g'\1>16)
   <g,\6 d'\2 b\3 g\4 >4 r8 <d'\2>8 
   <cis'\2 a\3 e\4 a,\5 >8 <a'\1>16 <g'\1>16 <fis'\1 a,\5 >16 <e'\1>16 <d'\2>16 <cis'\2>16 
   <d'\2 a\3 d\4 fis,\6 >8 <b'\1>16 <a'\1>16 <g'\1 fis,\6 >16 <fis'\1>16 <e'\1>16 <dis'\2>16 
   \slashedGrace <fis'\1>8 <g,\6 e'\1 >16 <dis'\2>16 <e'\1>16 <fis'\1>16 <g,\6 a'\1 >16 <g'\1>16 <b\2>16 <e'\1>16 
   <d'\2 a,\5 a\3 fis\4 >4 <cis'\2 a\3 e\4 a,\5 >8 <a\3>8 
   <a'\1 a,\5 >16 <g'\1>16 <fis'\1>16 <g'\1>16 <fis'\1 a,\5 >16 <e'\1>16 <d'\2>16 <cis'\2>16 
   <d\4 d'\2 >16 <a\3>16 <fis\4>16 <a\3>16 <d\4>16 <fis\4>16 <a\3>16 <d'\2>16 
   <a'\1 a,\5 >16 <g'\1>16 <fis'\1>16 <g'\1>16 <fis'\1 a,\5 >16 <e'\1>16 <d'\2>16 <cis'\2>16 
   <e'\1 d\4 >16 <d'\2>16 <a\3>16 <fis\4>16 <d\4>8 <a\3>8 
   <b\2 g,\6 g\3 >8 <b\2 d\4 g\3 >8 <cis'\2 a,\5 a\3 >8 <cis'\2 e\4 a\3 >8 
   <d'\2 a\3 fis\4 d\5 >8 <d'\2 a\3 fis\4 >8 <e'\1 cis'\2 a\3 a,\5 >8 <e'\1 cis'\2 a\3 >8 
   <fis'\1 d\4 a\3 d'\2 >8 <fis'\1 a\3 d'\2 >8 <a'\1 a,\5 >16 <gis'\1>16 <g'\1>16 <e'\1>16 
   <d'\2 d\5 fis\4 a\3 >8 <cis'\2>8 \slashedGrace <e'\2>8 ( <d'\2) d\4 >16 <cis'\2>16 \slashedGrace <e'\2>8 ( <d'\2) d\4 >16 <cis'\2>16 
   <d'\2 d\5 fis\4 a\3 >8 <cis'\2>8 \slashedGrace <e'\2>8 ( <d'\2) d\4 >16 <cis'\2>16 \slashedGrace <e'\2>8 ( <d'\2) d\4 >16 <cis'\2>16 
   <d'\2 d\5 fis\4 a\3 >8 <b\2>8 \slashedGrace <d'\2>8 ( <c'\2) d\4>16 <b\2>16 \slashedGrace <d'\2>8 ( <c'\2) d\4  >16 <b\2>16
                                % 51
   <fis,\6 d\4 a\3 c'\2 >8 <b\2>8 \slashedGrace d'_( <c'\2) d\4>16 <b\2>16 \slashedGrace d'8_( <c') d >16 <b\2>16 
   <c'\2 a\3 d\4 fis,\6 >4 r8 <e'\2>16 <g'\1>16 
   <d'\2>16 <fis'\1>16 <c'\2>16 <e'\1>16 <b\3>16 <d'\2>16 <ais\3>16 <cis'\2>16 
   <d'\2 b\3 >16 <g\4>16 <b\3>16 <d'\2>16 <g'\1>8 <b\2 g\3 >8 
   <d'\2 fis,\6 >16 <c'\2>16 <b\2>16 <c'\2>16 <a\3 fis,\6 >16 <b\2>16 <c'\2>16 <d'\2>16 
   <g,\6 c'\2 >16 <b\2>16 <ais\3>16 <b\2>16 <g\3 g,\6 >8 <b,\5>16 <d'\2>16 
   <c\5>16 <e'\1>16 <b,\5>16 <d'\2>16 <c\5>16 <e'\1>16 <d\4>16 <fis'\1>16 
   <g'\1 g,\6 >16 <fis'\1>16 <e'\1>16 <d'\2>16 <cis'\2 g,\6 >16 <d'\2>16 <e'\1>16 <d'\2>16 
   <fis,\6 c'\2 >16 <b\2>16 <a\3>16 <b\2>16 <fis,\6 c'\2 >16 <d'\2>16 <e'\1>16 <fis'\1>16 
   <g,\6 g'\1 >16 <fis'\1>16 <e'\1>16 <d'\2>16 <cis'\2 g,\6 >16 <d'\2>16 <e'\1>16 <d'\2>16
                                %61
   <c'\2 fis,\6 >16 ^(<b\2>16) <a\3>16 <b\2>16 <fis,\6 c'\2 >16 <d'\2>16 <e'\1>16 <fis'\1>16 
   <g\3>16 <g'\1>16 <fis\4>16 <fis'\1>16 <e\4>16 <e'\1>16 <d\4>16 <d'\2>16 
   <d\4>16 <d'\2>16 <c\5>16 <c'\2>16 <b,\5>16 <b\2>16 <a,\5>16 <a\3>16 
   <g,\6 g\3 >4 r8 <a\3>16 <b\2>16 
   <c'\2 a\3 fis,\6 d\4 >8 <c'\2 a\3 d\4 >8 <c'\2 a\3 fis,\6 d\4 >8 <d'\2>8
                                % 66
   <b\2 g,\6 d\4 g\3 >8 <b\2 d\4 g\3 >8 <b\2 g,\6 d\4 g\3 >8 <g'\1>8 
   <fis'\1 d\4 d'\2 a\3 >8 <fis'\1 d'\2 a\3 >8 <fis'\1 d\4 d'\2 a\3 >8 <a'\1>8 
   <d\4 g'\1 g,\6 g\3 >8 <d\4 g'\1 g\3 >8 <d\4 g'\1 g,\6 g\3 >8 <a\3>16 <b\2>16 
   <d\4 c'\2 a\3 fis,\6 >8 <d\4 c'\2 a\3 >8 <d\4 c'\2 a\3 fis,\6 >8 <d'\2>8 
   <b\2 g,\6 g\3 d\4 >8 <b\2 g\3 d\4 >8 <b\2 g,\6 g\3 d\4 >8 <g'\1>8 
   <fis'\1 d'\2 a\3 d\4 >8 <fis'\1 d'\2 a\3 >8 <fis'\1 d'\2 a\3 d\4 >8 <a'\1>8
                                %72
   <g'\1 g,\6 b\2 g\3 >4 r8 <fis'\1>16 (<a'\1>16)
   <g,\6 g'\1 b\2 g\3 >8 <fis'\1>16 (<a'\1>16) <g,\6 g'\1 b\2 g\3 >8 <fis'\1>16 (<a'\1>16)
   <g'\1 g,\6 b\2 g\3 >4 r8 <fis'\1>16 ^(<a'\1>16)
   <g,\6 g'\1 b\2 g\3 >8 <fis'\1>16 (<a'\1>16) <g,\6 g'\1 b\2 g\3 >8 <fis'\1>16 (<a'\1>16)
   <g,\6 g'\1 b\2 g\3 >4 <g,\6 g'\1 b\2 g\3 >4 
   <g'\1 b\2 g\3 g,\6 >4 r4 
   \bar "|."
   \pageBreak
#})
TrackAVoiceBMusic = #(define-music-function (parser location inTab) (boolean?)
#{
#})
TrackALyrics = \lyricmode {
   \set ignoreMelismata = ##t
   
   \unset ignoreMelismata
}
TrackAStaff = \new Staff <<
   \context Voice = "TrackAVoiceAMusic" {
      \removeWithTag #'chords
      \removeWithTag #'texts
      \TrackAVoiceAMusic ##f
   }
   \context Voice = "TrackAVoiceBMusic" {
      \removeWithTag #'chords
      \removeWithTag #'texts
      \TrackAVoiceBMusic ##f
   }
>>
TrackATabStaff = \new TabStaff \with { stringTunings = #`( ,(ly:make-pitch 0 2 NATURAL) ,(ly:make-pitch -1 6 NATURAL) ,(ly:make-pitch -1 4 NATURAL) ,(ly:make-pitch -1 1 NATURAL) ,(ly:make-pitch -2 5 NATURAL) ,(ly:make-pitch -2 2 NATURAL) ) } <<
   \context TabVoice = "TrackAVoiceAMusic" {
      \removeWithTag #'chords
      \removeWithTag #'texts
      \TrackAVoiceAMusic ##t
   }
   \context TabVoice = "TrackAVoiceBMusic" {
      \removeWithTag #'chords
      \removeWithTag #'texts
      \TrackAVoiceBMusic ##t
   }
>>
TrackAStaffGroup = \new StaffGroup <<
   \TrackAStaff
>>
\score {
   \TrackAStaffGroup
   \header {
      title = "Les Étrennes No. 1 (op. 11)" 
      composer = "Luigi Castellacci" 
   }
}
