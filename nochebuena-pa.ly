\version "2.22.1"
\header {
	title = "Nochebuena Panameña"
	subtitle = "Villancico panameño (tamborito)"
	composer = "Margarita Sevillano (1928 - 2001)"
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
	\key c \major
}

violinSolo = \new Voice \relative c'' {
	\tempo Moderato
	r4 a8 gis | 
	\repeat volta 2 {
		a8. gis16 a8 gis | a4 f8 f | bes8. a16 g8 f | e c c' c |
		c8. c16 c8 c | g'8. e16 c8 c | c8. d16 c8 bes | 
	}
	\alternative {
		{ a8 f a gis | }
		{ a8 f4. | }
	}
}

violinUno = \new Voice \relative c'' {
	\set Score.currentBarNumber = #11
	r4 a8 gis | 
	\repeat volta 8 {
		a8. gis16 a8 gis | a4 f8 f | bes8. a16 g8 f | e c e4 | 
		g, c | bes c | bes c | 
	}
	\alternative {
		{ f4 a8 gis | }
		{ a8 f4. | }
	}
	\bar "|."
}

violinDos = \new Voice \relative c'' {
	r2 | 
	\repeat volta 8 {
		r2 | r2 | r2 | r4 c8 c |
		c8. c16 c8 c | g'8. e16 c8 c | c8. d16 c8 bes | 
	}
	\alternative {
		{ a8 f r4 | }
		{ a8 f4. | }
	}
}

violinTres = \new Voice \relative c'' {
	r4 c, | 
	\repeat volta 8 {
		f4 c | f c | bes f' | c e8 e | 
		e8. e16 e8 e | bes8. c16 e8 e | e8. f16 e8 g |
	}
	\alternative {
		{ f8 c c4 | }
		{ c8 a4. | }
	}
}

\score {
	\new StaffGroup <<
		\new Staff \with { instrumentName = "Violin Solo" }
		<< \global \violinSolo >>
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