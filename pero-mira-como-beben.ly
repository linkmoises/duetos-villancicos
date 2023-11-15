\version "2.22.1"
\header {
	title = "Los peces en el río"
	subtitle = "Villancico popular extremeño"
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
	\tempo "Allegro"
	\key g \major
}

violinUno = \new Voice \relative c'' {
	g'4 g8 g | g4 fis8 e | fis e fis dis | b2 |
	a4 a8 a | a4 g8 fis | g8 fis g8 fis | e2 | 
	g'4 g8 g | g4 fis8 e | fis e fis dis | b2 |
	a'4 a8 a | a4 g8 fis | g8 fis g8 fis | e4. e16 fis | 
	g8 g g g | g4 g8 g | a g a g | fis4 fis8 fis16 g |
	a8 g a g | fis4 fis8 e | dis e fis g | e4 e |
	g4 g8 g | g4 g8 g | a g a g | fis4. g8 |
	a8 g a g | fis4 fis8 e | dis e fis g | e2 |
	\bar ":|."
}

violinDos = \new Voice \relative c'' {
	b4 b8 b | b4 a8 g | a g a fis | dis2 |
	c'4 c8 c | c4 b8 a | b a b a | g2 | 
	b4 b8 b | b4 a8 g | a g a fis | dis2 |
	c'4 c8 c | c4 b8 a | b a b a | g4. g16 a | 
	b8 b b b | b4 b8 b | c b c b | a4 a8 a16 b |
	c8 b c b | a4 a8 g | fis g a b | g4 g |
	b8 b b b | b4 b8 b | c b c b | a4. b8 |
	c b c b | a4 a8 g | fis g a b | g2 |
	\bar ":|."
}

violinTres = \new Voice \relative c'' {
	e,2 | e | b | b |
	b | b | e | e |
	e | e | b | b |
	b | b | e | e |
	e | e | e | b |
	b | b | b | e |
	e | e | e | b |
	b | b | b | e |
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
%%\midi { }
}