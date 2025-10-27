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
   \tempo 4=120
   \clef #(if inTab "tab" "treble_8")
   \key e \major
   \time 6/8
   \oneVoice
                                % 1
   <e,\6 b\2 >8 <b'\1>8 <gis'\1>8
   \override TextSpanner.bound-details.left.text = "II "
   <fis'\1 b,\5 >8 \startTextSpan
   \times 2/3 {<e'\2>16 <fis'\1>16 <e'\2>16 }
   <cis'\2>8 \stopTextSpan |
                                % 2
   <b\2 e,\6 >8 <gis\3>8 <cis'\2>8 <e,\6 b\2 >4 r8 
   <b,\5 b\2 >8 <gis\3>8 <b\2>8 <cis'\2 cis\5 >8 <ais\3>8 <cis'\2>8
                                % 4
   \override TextSpanner.bound-details.left.text = "IV "
   <d'\2 d\4 >8 <b\2>8
   <d'\2>8
   \startTextSpan
   <b'\1 dis'\2 b\3 dis\5 >4 r8
   \stopTextSpan |
   \override TextSpanner.bound-details.left.text = "II " 
   <e,\6 b\2 >8 <b'\1>8 <gis'\1>8
   <b,\5 fis'\1 >8 \startTextSpan
   \times 2/3 {<e'\2>16 <fis'\1>16 <e'\2>16 } <cis'\2>8 \stopTextSpan |
   <b\2>8 <gis\3>8 <fis\4>8 <e\4>8 <fis\4>8 <gis\3>8 |
                                % 7
   \times 2/3 {<b\2 e,\6 >16 <cis'\2>16 <b\2>16 } <gis\3>8 <b\2>8 \times 2/3 {<cis'\2>16 <dis'\2>16 <cis'\2>16 } <gis\3>8 <cis'\2>8  |
   <b~\2 e,\6 >4 <b,\5>8 <a,\5>4 <b,\5>8 |
   <e,\6 b\2 >8 <b'\1>8 <gis'\1>8 |
                                % 9
   <b,\5 fis'\1 >8 
   \startTextSpan
   \times 2/3 {<e'\2>16 <fis'\1>16 <e'\2>16 } <cis'\2>8
   \stopTextSpan | 
   <b\2 e,\6 >8 <gis\3>8 <b\2>8 <cis'\2>8 <gis\3>8 <cis'\2>8 |
   \times 2/3 {<dis'\2 b,\5 >16 <e'\1>16 <dis'\2>16 } <c'\3>8 <dis'\2>8 \times 2/3 {<e'\1>16 <fis'\1>16 <e'\1>16 } <cis'\2>8 <e'\1>8 |
                                % 12
   <gis'\1>4 <dis'\2 gis\4 c'\3 >8 <fis'\1>4 <dis'\2 a\3 >8 | 
   <b\2 e,\6 >8 <b'\1>8 <gis'\1>8 <fis'\1 b,\5 >8
   \startTextSpan
                                % 13
   \times 2/3 {<e'\2>16 <fis'\1>16 <e'\2>16 } <cis'\2>8 \stopTextSpan |
                                %14
   <b\2 e,\6 >8 <gis\3>8 <fis\4>8 <e\4>8 <fis\4>8 <gis\3>8 
   \times 2/3 {<b\2 e,\6 >16 <cis'\2>16 <b\2>16 } <gis\3>8 <b\2 b,\5 >8 \times 2/3 {<cis'\2 cis\5 >16 <dis'\2>16 <cis'\2>16 } <gis\3>8 <cis'\2>8 % 15
                                % 16
   <e,\6 b\2 >8 <b,\5>8 <b,\5>4 r8 <c'\2>8
                                % 17
   \times 2/3 {<cis'\2 fis,\6 >16 <dis'\2>16 <cis'\2>16 } <c'\3>8 <cis'\2 fis\4 >8 <a'\1 b\3>8 <gis'\1>8 <cis'\2>8
                                % 18
   <gis'\1 a\3 >8 <fis'\1>8 <e'\1>8 <dis'\2>16 <fis'\1>16 <e'\1>8 <cis'\2>8
                                % 19
   \times 2/3 {<cis'\2>16 <dis'\2>16 <cis'\2>16 } <b\2>8 <gis\3>8 <b\2>8 <cis'\2>8 <gis'\1 dis'\2 a\3 >8
                                % 20
   <e'~\2 b~\3 gis~\4 >4. <e'\2 gis\4 b\3 >4 r8
   \pageBreak
   %% section 2
   \repeat volta 2 {
      <gis'\1 e'\2 e,\6 >8. <dis'\2 fis'\1 >16 <e'\1 cis'\2 >8 <dis'\2 c'\3 >8 <e'\1 cis'\2 >8 <dis'\2 fis'\1 >8 | %21
      <gis'\1 e'\2 e,\6 >8. <dis'\2 fis'\1 >16 <e'\1 cis'\2 >8 <dis'\2 c'\3 >8 <e'\1 cis'\2 >8 <dis'\2 fis'\1 >8 | %22
      <gis'\1 e'\2 e,\6 >8. <dis'\2 g'\1 >16 <gis'\1 e'\2 >8 <a'\2 cis''\1 >8  <b'\1 gis'\2 >8 <a'\1 fis'\2 >8 
      <gis'~\1 e'~\2 e,\6 >4. <gis'\1 e'\2 >8 <e'\2>8 <fis'\1>8 
      <gis'\1 b,\5 >8 <dis'\2>8 <e'\1>8 \times 2/3 {<fis'\1>16 <gis'\1>16 <fis'\1>16 } <e'\1>8 <dis'\2>8 %25
      <cis\5 e'\1 >8 <cis'\2>8 <dis'\2>8 \times 2/3 {<e'\1>16 <fis'\1>16 <e'\1>16 } <dis'\2>8 <cis'\2>8 
      <dis'\2 dis\4 >8 <cis'\2>8 <c'\2>8 <cis'\2>8 <c'\2>8 <a\3>8 
      \times 2/3 {<c'\2 gis\3 >16 <cis'\2>16 <c'\2>16 } <ais\3>8 <c'\2>8 <gis\3>4 <gis\3>8 
      <gis'\1 e'\2 e,\6 >8. <fis'\1 dis'\2 >16 <e'\1 cis'\2 >8 <dis'\2 c'\3 >8 <e'\1 cis'\2 >8 <fis'\1 dis'\2 >8 |
      <gis'\1 e'\2 e,\6 >8. <fis'\1 dis'\2 >16 <e'\1 cis'\2 >8 <dis'\2 c'\3 >8 <e'\1 cis'\2 >8 <fis'\1 dis'\2 >8 %30
      <gis'\1 e'\2 e,\6 >8. <g'\1 dis'\2 >16 <e'\2 gis'\1 >8 <a'\2 cis''\1 >8  <b'\1 gis'\2 >8 <a'\1 fis'\2 >8 
      <gis'~\1 e'~\2 e,\6 >4. <gis'\1 e'\2 >4 <gis'\1>16 <a'\1>16
                                % 33
      <cis gis'\1>8 <cis'\3>8 <dis'\2>8 <f'\2>8 <fis'\2>8 <gis'\1>8
      <b'\1 fis'\2 cis'\3 >8 <a'\1>8 <gis'\1>8 \times 2/3 {<fis'\1>16 <gis'\1>16 <fis'\1>16 } <e'\2>8 <fis'\1>8
                                % 35
      <gis'\1>8. <e'\2>16 <cis'\2>8 <e'\2 fis\4 c'\3 >8. <dis'\2>16 <e'\2 fis\4 c'\3 >8
   }
   \alternative {
     {
       <cis'~\2 gis~\3 e~\4 >4. <cis'\2 gis\3 e\4 >4 r8 
     }
     {
       <cis'\2 gis\3 e\4 >4. <b'\1 dis'\2 b\3 dis\5 >4. 
     }
   }
   %% repeat section 1
   <b\2 e,\6 >8 <b'\1>8 <gis'\1>8 <fis'\1 b,\5 >8 \times 2/3 {<e'\2>16 <fis'\1>16 <e'\2>16 } <cis'\2>8 |
   <b\2>8 <gis\3>8 <a\3>8 <e\4>8 <fis\4>8 <gis\3>8 |
   \times 2/3 {<b\2 e,\6 >16 <cis'\2>16 <b\2>16 } <gis\3>8 <b\3 b,\5 >8 \times 2/3 {<cis'\2 cis\5 >16 <dis'\2>16 <cis'\2>16 } <gis\3>8 <cis'\2>8 |
                                % 41
   <b~\2 e,\6 >4 <b,\5>8 <a,\5>4 <b,\5>8 |
                                % 42
   <b\2 e,\6 >8 <b'\1>8 <gis'\1>8 <fis'\1 b,\5 >8 \times 2/3 {<e'\2>16 <fis'\1>16 <e'\2>16 } <cis'\2>8 |
   <b\2 e,\6 >8 <gis\3>8 <b\2 b,\5 >8 <cis'\2 cis\5 >8 <gis\3>8 <cis'\2>8 |
   \times 2/3 {<dis'\2 gis,\6 >16 <e'\1>16 <dis'\2>16 } <c'\3>8 <dis'\2 gis,\6 >8 \times 2/3 {<e'\2 cis\5 >16 <fis'\2>16 <e'\2>16 }
   <cis'\2>8 <e'\1>8 | %%44
   \override TextSpanner.bound-details.left.text = "IV "
   \startTextSpan
   <gis'\1>4
   <dis'\2 c'\3 gis\4 >8
   \stopTextSpan
   \override TextSpanner.bound-details.left.text = "II "
   \startTextSpan
   <fis'\1>4
   <dis'\2 a\3 >8 \stopTextSpan | %45
   <e,\6 b\2 >8 <b'\1>8 <gis'\1>8 <b,\5 fis'\1 >8 \times 2/3 {<e'\2>16 <fis'\1>16 <e'\2>16 } <cis'\2>8 
   <b\2 e,\6 >8 <gis\3>8 <a\3>8 <e\4>8 <fis\4>8 <gis\3>8 
   \times 2/3 {<b\2 e,\6 >16 <cis'\2>16 <b\2>16 } <gis\3>8 <b\2>8 \times 2/3 {<cis'\2>16 <dis'\2>16 <cis'\2>16 } <gis\3>8 <cis'\2>8 
   <b~\2 e,\6 >4 <b,\5>8 <b,\5>4 <c'\2>8 
   \times 2/3 {<cis'\2 fis,\6 >16 <dis'\2>16 <cis'\2>16 } <c'\2 f\4 >8 <cis'\2 gis\3 >8 <a'\1>8 <gis'\1>8 <cis'\2>8 %50
   <gis'\1 a\3 >8 <fis'\1>8 <e'\2>8 <dis'\2>16 <fis'\1>16 <e'\2>8 <cis'\2>8 %51
                                %52
   \times 2/3 {<cis'\2 b,\5 >16 <dis'\2>16 <cis'\2>16 } <b\3>8 <gis\3 b,\5 >8 <cis'\2 a,\5 >8 <dis'\2>8 <gis'\1 dis'\2 a\3 b,\5 >8
                                %53
   <e'~\2 b~\3 gis~\4 e,\6 >4. <e'\2 b\3 gis\4 >4 r8 |
                                % 54
   \partial 4 <e\4>4 | 
   %% section 3
   \tempo 4=115
   \time 6/8
   \repeat volta 2 {
                                % 55
      <fis\4>4 <e,\6 cis'\2 a\3 >8 <e,\6 cis'\2 a\3 >4 <e\4>8 | 
      <gis\3>4 <e,\6 e'\1 c'\2 >8 <e,\6 e'\1 c'\2 >4 <fis\4>16 <gis\3>16 
      <fis\4>8\staccato <e\4>8\staccato <fis\4>8\staccato <a\3>8\staccato <cis'\2>8\staccato <gis'\1>8\staccato
      <fis'~\1>4 <cis'\2 a\3 >8 <cis'\2 a\3>8 <e'\2>8 <cis'\2>8 
      <cis'\2 a\3 dis\4 >8 r8 <cis'\2 dis\4 a\3 >8 <cis'\2 a\3 dis\4 >8 <fis\4>8 <a\3>8
                                % 60
      <cis'\2 gis\3 d\4 >8 r8 <cis'\2 gis\3 d\4 >8 <cis'\2 gis\3 d\4 >8 <b\2>8 <gis\3>8
                                % 61
      <fis'\1 cis'\2 b,\5 >8 r8 <fis'\1 cis'\2 b,\5 >8 <cis'\2 fis'\1 b,\5 >8 <a'\1>8 <fis'\1 b,\5 >8 
      <b,\5 e'~\1 d'\2 >8 <cis\5>8 <b,\5>8 <gis,\6>8 <fis,\6>8 <e,\6>8 | 
      <fis~\4>4 <cis'\2 e,\6 a\3 >8 <fis\4 cis'\2 e,\6 a\3 >4 <e\4>8 |
      <gis\3>4 <c'\2 e'\1 e,\6 >8 <c'\2 e'\1 e,\6 >4 <fis\4>16 <gis\3>16 |
      <fis\4>8\staccato <e\4>8\staccato <fis\4>8\staccato <a\3>8\staccato <cis'\2>8\staccato <gis'\1>8\staccato | %%65
      <fis'~\1>8 <cis'\2 ais\3 >8 <cis'\2 ais\3 >8 <fis'\1>8 <e'\2>8 <cis'\2>8 
      <cis'\2 dis\4 a\3 >8 r8 <cis'\2 dis\4 a\3 >8 <cis'\2 dis\4 a\3 >8 <gis\3>8 <a\3>8 
      <fis'\1 fis\4 a\3 cis'\2 >8 r8 <fis'\1 cis'\2 a\3 fis\4 >8 <fis'\1 fis\4 cis'\2 a\3 >8 <e'\2>8 <cis'\2>8 
      <cis'\2 fis\4 d\5 >4 <fis\4>8 <cis'\2 dis\4 gis\3 >4 <cis'\2 dis\4 gis\3 >8 
    }
   \alternative {
     {
       <cis\5 e\4 a\3 >8 <e\4>8 <e\4>8 <e\4>4 <e\4>8 
     }
     {
       <cis\5 e\4 a\3 >4. <a\4 e'\2 a'\1 cis'\3 >4 r8 
     }
   }
   <e,\6 b\2 >8 <b'\1>8 <gis'\1>8 <fis'\1 b,\5 >8 \times 2/3 {<e'\2>16 <fis'\1>16 <e'\2>16 } <cis'\2>8 | 
   <e,\6 b\2 >8 <gis\3>8 <fis\4>8 <e\4>8 <fis\4>8 <gis\3>8 |
   \times 2/3 {<e,\6 b\2 >16 <cis'\2>16 <b\2>16 } <gis\3>8 <b,\5 b\2 >8 \times 2/3 {<cis'\2 cis\5 >16 <dis'\2>16 <cis'\2>16 } <gis\3>8 <cis'\2>8 |
                                % 75
   <b\2 e,\6 gis\3 >4 <b,\5>8 <a,\5>4 <b,\5>8 |
                                % 76
   <b\2 e,\6 >8 <b'\1>8 <gis'\1>8 <fis'\1 b,\5 >8 \times 2/3 {<e'\2>16 <fis'\1>16 <e'\2>16 } <cis'\2>8 |
                                % 77
   <b\2 e,\6 >8 <gis\3>8 <b\2>8 <cis'\2>8 <gis\3>8 <cis'\2>8 |
                                % 78
   \times 2/3 {<dis'\2 gis,\6 >16 <e'\1>16 <dis'\2>16 }
   <c'\3>8 <dis'\2 gis,\6>8
   \times 2/3 {<e'\1 cis\5>16 <fis'\1>16 <e'\1>16 }
   <cis'\2>8 <e'\1 >8 |
                                % 79
   <gis'~\1>4 <dis'\2 c'\3 gis\4 gis'\1 >8 <fis'~\1>4 <dis'\2 a\3 fis'\1 >8 
                                % 80
   <e,\6 b\2 >8 <b'\1>8 <gis'\1>8 <b,\5 fis'\1 >8 \times 2/3 {<e'\2>16 <fis'\1>16 <e'\2>16 } <cis'\2>8
                                % 81
   <e,\6 b\2 >8 <gis\3>8 <fis\4>8 <e\4>8 <fis\4>8 <gis\3>8 
   \times 2/3 {<b\2 e,\6 gis\3 >16 <cis'\2>16 <b\2>16 } <gis\3>8 <b\2 b,\5 >8 \times 2/3 {<cis'\2 cis\5 >16 <dis'\2>16 <cis'\2>16 } <gis\3>8 <cis'\2>8 
   <e,\6 b~\2 gis\3 >4 <b,\5>8 <b,\5>4 <c'\2>8 | %% 83
   \times 2/3 {<cis'\2 gis,\6 >16 <dis'\2>16 <cis'\2>16 } <c'\2>8 <cis'\2 e\4 >8 <a'\1 b\2 >8 <gis'\1>8 <cis'\2>8 | %%84
   <gis'\1 a\3 fis,\6 >8 <fis'\1>8 <e'\2>8 <dis'\2>16 <fis'\1>16 <e'\2>8 <cis'\2>8 %% 85
   \times 2/3 {<cis'\2 b,\5 >16 <dis'\2>16 <cis'\2>16 } <b\2>8 <gis\3>8 <b\2>8 <cis'\2>8 <gis'\1 dis'\2 a\3 >8 %% 86
   <e'~\2 b~\3 gis~\4 >4. <e'\2 gis\4 b\3 >4 r8 %% 87
   <e,\6 b\2 >8 <b'\1>8 <gis'\1>8 <b,\5 fis'\1 >8
   \startTextSpan
   \times 2/3 {<e'\2>16 <fis'\1>16 <e'\2>16 } <cis'\2>8
   \stopTextSpan | %88
   <b\2 b,~\5 gis\3 >8 <gis\3>8 <cis'\2>8 <b\2 b,\5 >4 r8 %89
                                % 90
   <b,\5>8 <b\2>8 <gis\3>8 \times 2/3 {<fis\4>16 <gis\3>16 <fis\4>16 } <b,\5>8 <b\2>8
                                % 91
   <e\4 b,\5 >4 <b,\5>8 <e\4 e'\1 b\2 gis\3 e,\6 >8 r8 r8
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
      \TrackAVoiceAMusic ##f
   }
   \context Voice = "TrackAVoiceBMusic" {
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
   \TrackATabStaff
>>
\score {
   \TrackAStaffGroup
   \header {
      title = "Sparklets" 
      composer = "Walter E. Miles" 
   }
}
