\version "2.22.1"
\header {
	title = "La marimorena"
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
	\time 2/4
	\key a \major
}

violinTutti = \new Voice \relative c'' {
	\tempo Allegro
	r4 e8 a | a a a gis | b a fis gis | a b a gis | \break
	fis e e a | a gis a fis | e4 e8 e | e e d cis |
	b8 a4. |
}

violinUno = \new Voice \relative c'' {
	\set Score.currentBarNumber = #10
	a8 a a b | cis cis4. | e8 e e b | d b4. |
	d8 d cis d | e fis e d | cis4 b | b8 a4. | \break
	a8 a a b | cis cis4. | e8 e e b | d b4. |
	d8 d cis d | e fis e d | cis4 b | b8 a4. |
	\bar ":|."
}

violinDos = \new Voice \relative c'' {
	cis,8 cis cis e | a a4. | cis8 cis cis cis | b gis4. |
	b8 b a b | cis d cis b | a4 gis | e8 cis4. |
	cis8 cis cis e | a a4. | cis8 cis cis cis | b gis4. |
	b8 b a b | cis d cis b | a4 gis | e8 cis4. |
}

violinTres = \new Voice \relative c'' {
	a,2 | e' | a, | e' | 
	a, | e' | a, | e' |
	a, | e' | a, | e' |
	a, | e' | a, | e' |
}

\score {
	\new StaffGroup <<
		\new Staff \with { instrumentName = "Tutti" }
		<< \global \violinTutti >>
	>>
\layout { }
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