\version "2.22.1"
\header {
	title = "Fum, fum, fum"
	subtitle = "Villancico popular catalán"
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
	\tempo Allegretto
	\key f \major
}

violinUno = \new Voice \relative c'' {
	d8. cis16 d8 f | e d cis a | d4 cis | d r4 |
	d8. cis16 d8 f | e d cis a | d4 cis | d r8 c16 c |
	f8 f e e | f8 f e e | f8 f e e | f4 r8 e16 f |
	\time 3/4
	g8. f16 e8 d cis a |
	\time 2/4
	d8. c16 d8 f | e d cis a | d4 cis | d r8 c16 c |
	f8 f e e | f8 f e e | f8 f e e | f4 r8 e16 f |
	\time 3/4
	g8. f16 e8 d cis a |
	\time 2/4
	d8. c16 d8 f | e d cis a | d4 cis | d r4 |
	\bar ":|."
}

violinDos = \new Voice \relative c'' {
	r2 | r2 | bes4 a | a r4 |
	r2 | r2 | bes4 a | a r4 |
	a4 bes | a bes | a bes | a8 bes a4 |
	\time 3/4
	bes4 bes a |
	\time 2/4
	a4 bes | bes a | bes a | a r4 |
	a4 bes | a bes | a bes | a8 bes a4 |
	\time 3/4
	bes4 bes a |
	\time 2/4
	a4 bes | bes a | bes a | a r4 |
	\bar ":|."
}

violinTres = \new Voice \relative c'' {
	r2 | r2 | e,4 a | d, r4 |
	r2 | r2 | e4 a | d, r4 |
	f4 g | f g | f g | f8 c f4 |
	\time 3/4
	d4 d e |
	\time 2/4
	d4 d | d e | e a, | d r4 |
	f4 g | f g | f g | f8 c f4 |
	\time 3/4
	d4 d e |
	\time 2/4
	d4 d | d e | e a, | d r4 |
	\bar ":|."
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