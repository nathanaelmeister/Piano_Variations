\version "2.22.1"

\paper {
  ragged-lasst = ##f
}

\header {
  title = "Merrily we roll along"
  subtitle = "Variation 1"
  subsubtilte = \markup \null
  tagline = ##f
  composer = "amerikanisches Volkslied"
}

upper = \relative c' {
  \clef treble
  \key c \major
  \time 4/4

  s1*8 \bar "|."

}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4

  c1
  c
  g'
  c, \break
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

