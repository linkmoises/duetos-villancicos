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

violinTutti = \new Voice \relative c'' {
	\set Score.currentBarNumber = #21
	\repeat volta 2 {
	r4 c8 c | c8. c16 c8 c | g'8. e16 c8 c | c8. d16 c8 bes | 
	}
	\alternative {
		{a8 f r4  | }
		{a8 f4.\fermata | }
	}
	\bar "|."
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
			\addlyrics { %% cantalante 1
				Me voy | pa ra Pa na | má y~a pa | sar la no che | bue na |
				\repeat unfold 8 {\skip 1}
				Un na |
			}
			\addlyrics { %% cantalante 2
				\skip 1 \skip 1 | ci mi ento po | ndré y~a la | puer ta de mi | ca sa |
				\repeat unfold 8 {\skip 1}
				Y con |
			}
			\addlyrics { %% cantalante 3
				\skip 1 \skip 1 | gu ras de pa | pel y~una es | tre lli ta de | pla ta |
				\repeat unfold 8 {\skip 1}
				Y con |
			}
			\addlyrics { %% cantalante 4
				\skip 1 \skip 1 | los tres re yes | magos y~uno ne | gro y o tro | blan co |
				\repeat unfold 8 {\skip 1}
				Y el |
			}
			\addlyrics { %% cantalante 5
				\skip 1 \skip 1 | otro des co lo | rido y~sin co | lor de ter mi | na do |
				\repeat unfold 8 {\skip 1}
				Y un |
			}
			\addlyrics { %% cantalante 6
				\skip 1 \skip 1 | na ci mien to | pondré y~esta no | che es no che | bue na |
				\repeat unfold 8 {\skip 1}
				La vir |
			}
			\addlyrics { %% cantalante 7
				\skip 1 \skip 1 | gen y San Jo sé con un ni ño muy chi qui to |
				\repeat unfold 8 {\skip 1}
				Y en |
			}
			\addlyrics { %% cantalante 8
				\skip 1 \skip 1 | honor de las fa milias yo~can to es te tam bo ri to
			}
		\new Staff \with { instrumentName = "Violín 2" }
			<< \global \violinDos >>
			\addlyrics { %% coro estribillo 1
				No che | bue na, no che | bue na, no che | bue na pa na | me ña |
			}
			\addlyrics { %% coro estribillo 2
				´´ _ 
			}
			\addlyrics { %% coro estribillo 3
				´´ _ 
			}
			\addlyrics { %% coro estribillo 4
				´´ _ 
			}
			\addlyrics { %% coro estribillo 5
				´´ _ 
			}
			\addlyrics { %% coro estribillo 6
				´´ _ 
			}
			\addlyrics { %% coro estribillo 7
				´´ _ 
			}
			\addlyrics { %% coro estribillo 8
				´´ _ | \repeat unfold 14 {\skip 1} | me ña |
			}
		\new Staff \with { instrumentName = "Violín 3" }
			<< \global \violinTres >>
	>>
\layout { }
%%\midi { }
}

\score {
	\new StaffGroup <<
		\new Staff \with { instrumentName = "Violin Tutti" }
		<< \global \violinTutti >>
	>>
\layout { }
}