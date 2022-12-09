\version "2.22.1"
\header {
	title = "Campanas de Belén"
	subtitle = "Villancico popular andaluz"
	composer = "Autor desconocido"
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
	\time 4/4
	\tempo "Allegro"
	\key g \major
}

violinUno = \new Voice \relative c'' {
	g4 g8 g g4 fis8 g |
}

violinDos = \new Voice \relative c'' {
	d,2 d |
}

violinTres = \new Voice \relative c'' {
	g,2 g |
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
