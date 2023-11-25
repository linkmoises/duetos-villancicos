\version "2.22.1"
\header {
	title = "Título"
	subtitle = "Subtítulo"
	composer = "Autor"
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
	\time %%
	\tempo %%
	\key %%
}

violinUno = \new Voice \relative c'' {
}

violinDos = \new Voice \relative c'' {
}

violinTres = \new Voice \relative c'' {
}

\score {
	\new StaffGroup <<
		\new Staff \with { instrumentName = "Violín 1" }
			<< \global \violinUno >>
			\addlyrics { %% lírica
			}
		\new Staff \with { instrumentName = "Violín 2" }
			<< \global \violinDos >>
		\new Staff \with { instrumentName = "Violín 3" }
			<< \global \violinTres >>
	>>
\layout { }
%%\midi { }
}

\markup {
	\fill-line {
		\hspace #1
		\column {
			\line \smallCaps \bold { Título }
			\hspace #1
			\line { verso }
			\hspace #1
			\line \italic { estribillo }
		}
		\hspace #2
		\column {
			\line { verso }
			\hspace #1
			\line \italic { estribillo }
		}
		\hspace #1
	}
}