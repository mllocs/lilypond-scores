\version "2.16.1"

\include "../shared/LilyJAZZ.ily"
\include "../shared/common.ly"

\header {
  title    = \markup { \fontsize #3 \override #'(font-name . "LilyJAZZ Text") "Samdu 3" }
  composer = \markup { \fontsize #1 \override #'(font-name . "LilyJAZZ Text") "Unknown" }
  tagline  = \markup { \fontsize #1 \override #'(font-name . "LilyJAZZ Text") "(For E♭ instruments.)" }
}

melody = \relative c'' {
  \jazzOn
  \clef treble
  \key f \major
  \time 4/4

  \set Score.markFormatter = #format-mark-box-alphabet

  \mark \default
  r4 r8 c8 e8 g8 \times 2/3 { a8 g8 c8 } |
  r4 r8 c,8 e4 g8 f8 |
  r4 r8 c'4. ef,8 c8 |
  r4 r8 c8 e4 g8 c8 | \break

  r4 r8 bf8 r8 g8 f8 c8 |
  \times 2/3 { ef8 c8 f8 } f2( f8) e8 |
  r8 c'8 r8 bf g8 f8 ef8 c8 |
  \times 2/3 { f8 c8 e8 } e2 e8 c8 | \break

  r8 c'8 r8 bf g8 f8 ef8 c8 |
  g'8 g8 f8 f8 e8 e8 c8 c8 |
  bf4 g4 bf8 g8 b8 c8 |
  r8 e8 ef8 d8 r8 e8 f8 g8 \bar "||" \break
}

\score {
  \melody
}
