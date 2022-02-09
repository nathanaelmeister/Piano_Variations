\version "2.22.1"

\header {
  title = "Merrily we roll along"
  subtitle = "Thema"
  subsubtilte = \markup \null
  tagline = ##f
  composer = "amerikanisches Volkslied"
}

upper = \relative c' {
  \clef treble
  \key c \major
  \time 4/4

  e4 d c d
  e e e2
  d4 d d2
  e4 g g2
  e4 d c d
  e4 e e2
  d4 d e d
  c1 \bar "|." 
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4

  c1
  c
  g'
  c,
  c
  c
  g' 
  e \bar "|."
}

\score {
  \new PianoStaff <<
    %\set PianoStaff.instrumentName = #"Piano  "
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}

