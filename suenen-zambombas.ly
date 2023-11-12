\version "2.22.1"
\header {
	title = "Suenen las zambombas"
	subtitle = "Villancico popular zaragozano"
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
	\time 2/4
	\tempo Allegro
	\key f \major
}

violinUno = \new Voice \relative c'' {
	c4. bes8 | a4 g a f | r4 r8 c8 | f4. g8 |
	g2 | r2 | bes4. a8 | g4 bes | 
	a c | r2 | bes4. a8 | g4 a | 
	f2 |
	\bar "|."
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
\midi { }
}