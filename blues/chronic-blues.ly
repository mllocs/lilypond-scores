\version "2.16.1"

\include "../shared/LilyJAZZ.ily"
\include "../shared/common.ly"

\header {
  title    = \markup { \fontsize #3 \override #'(font-name . "LilyJAZZ Text") "Chronic Blues" }
  composer = \markup { \fontsize #1 \override #'(font-name . "LilyJAZZ Text") "Coltrane" }
}


<<
  \set Score.proportionalNotationDuration = #(ly:make-moment 1 8)

  \chords { 
    \set chordChanges = ##t
    c1:7  c1:7 c1:7    c1:7 
    f1:7  f1:7 c1:7    a1:79
    d1:m7 g1:7 c1:maj7 c1:maj7
  }

  \relative c''' {
    \jazzOn
    \clef treble
    \key c \major
    \time 4/4
    
    r1
    r2 r4 a8 af8 |
    g8 ef8 d8 c8 f8 d8 bf8 g8 |
    ef'8 c8 a8 f8 d'8 b8 g8 e8 | \break

    c4 r4 r2 |
    r1 |
    r1 |
    r1 | \break

    r1 |
    r1 |
    r1 |
    r1 \bar "|." \break
  }
>>
