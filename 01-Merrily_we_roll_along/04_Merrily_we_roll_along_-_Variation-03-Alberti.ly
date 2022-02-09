\version "2.22.1"

\paper {
  ragged-lasst = ##f
}

\header {
  title = "Merrily we roll along"
  subtitle = "Variation 1"
  subsubtilte = "simple Alberti-Bass"
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

  c4 g' e g | %01
  c, g' e g | %02
  b, g' d g | %03
  c, g' e g | %04
  \break
  c, g' e g | %05
  c, g' e g | %06
  b, g' d g | %07
  c,1 \bar "|."

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

