\version "2.22.1"

\paper {
  ragged-lasst = ##f
}

\header {
  title = "Merrily we roll along"
  subtitle = "Variation 2"
  subsubtilte = "(simple chords)"
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

  <c e g>1 | %01
  <c e g>  | %02
  <b d g>  | %03
  <c e g>  | %04
  \break
  <c e g>  | %05
  <c e g>  | %06
  <b d g>  | %07
  <c e g>  \bar "|."

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

