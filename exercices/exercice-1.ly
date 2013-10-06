\version "2.16.1"

\include "../shared/LilyJAZZ.ily"
\include "../shared/common.ly"

\header {
  title    = \markup { \fontsize #3 \override #'(font-name . "LilyJAZZ Text") "Excercice 1" }
  composer = \markup { \fontsize #1 \override #'(font-name . "LilyJAZZ Text") "Piero" }
}


melody = \relative c'' {
  \jazzOn
  \clef treble
  \key c \major
  \override Score.SpacingSpanner #'strict-note-spacing = ##t
  \set Score.proportionalNotationDuration = #(ly:make-moment 1 16)
  \time 4/4

  c8 d8 e8 f8 g8 a8 b8 c8 | 
  d8 b8 g8 e8 c4 r4 |
  c8 e8 g8 b8 d8 c8 b8 a8 |
  g8 f8 e8 d8 c4 r4 | \break

  c8 d8 e8 f8 g8 a8 bf8 c8 | 
  d8 bf8 g8 e8 c4 r4 |
  c8 e8 g8 bf8 d8 c8 bf8 a8 |
  g8 f8 e8 d8 c4 r4 | \break

  c8 d8 ef8 f8 g8 a8 bf8 c8 | 
  d8 bf8 g8 ef8 c4 r4 |
  c8 ef8 g8 bf8 d8 c8 bf8 a8 |
  g8 f8 ef8 d8 c4 r4 | \break
}

\score {
  \melody
}
