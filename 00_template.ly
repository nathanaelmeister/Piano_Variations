\version "2.22.1"

\header {
  title = ""
  tagline = ##f
}

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4

  
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4

  
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

