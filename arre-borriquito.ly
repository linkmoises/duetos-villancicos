\version "2.22.1"
\header {
	title = "Arre borriquito"
	subtitle = "Villancico popular español"
	composer = "Ricardo Boronat"
	tagline = ##f
}

\paper {
	#(set-paper-size "letter")
	top-margin = 25
	left-margin = 25
	right-margin = 25
	bottom-margin = 25
	print-page-number = false
}

\markup \vspace #2 %

global= {
	\time 2/4
	\tempo Allegretto
	\key g \major
}

violinUno = \new Voice \relative c'' {
	r2 |
}

violinDos = \new Voice \relative c'' {
}

violinTres = \new Voice \relative c'' {
}

\score {
	\new StaffGroup <<
		\new Staff \with { instrumentName = "Violín 1" }
		<< \global \violinUno >>
		\new Staff \with { instrumentName = "Violín 2" }
		<< \global \violinDos >>
		\new Staff \with { instrumentName = "Violín 3" }
		<< \global \violinTres >>
	>>
\layout { }
%%\midi { }
}