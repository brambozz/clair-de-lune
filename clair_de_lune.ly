\version "2.20.0"
\language "english"

upper = \relative {
  \clef treble
  \key df \major
  \time 9/8
  \new Voice

  r8 \change Staff = "lower" <f' af>( \change Staff = "upper" <f' af>8~ 4. <df f>~) |
  <df f>8( <c ef> <df f> <c ef>2.~) |
  <c ef>8 <bf df> <c ef> 
  <<
    { \voiceOne \tuplet 2/3 {df f~} \tuplet 2/3 {f df} }
    \new Voice { \voiceTwo bf2. }
  >> \oneVoice
}

lower = \relative c {
  \clef treble
  \key df \major

  r8 s8 s <f' af>2.
}

\score {
  \new PianoStaff \with { instrumentName = "Piano" }
  <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}

