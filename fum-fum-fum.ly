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
	\repeat segno 3 {
		d8. cis16 d8 f | e d cis a | d4 cis | d r4 |
		d8. cis16 d8 f | e d cis a | d4 cis | d r8 c16 c |
		f8 f e e | f8 f e e | f8 f e e | f4 r8 e16 f |
		\time 3/4
		g8. f16 e8 d cis a |
		\time 2/4
		d8. c16 d8 f | e d cis a | d4 cis | 	
		{ d4 r4 | }
		\bar "|."
	}
}

violinDos = \new Voice \relative c'' {
	\repeat segno 3 {
		r2 | r2 | bes4 a | a r4 |
		r2 | r2 | bes4 a | a r4 |
		a4 bes | a bes | a bes | a8 bes a4 |
		\time 3/4
		bes4 bes a |
		\time 2/4
		a4 bes | bes a | bes a | 
		{ a r4 | }
		\bar "|."
	}
}

violinTres = \new Voice \relative c'' {
	\repeat segno 3 {
		r2 | r2 | e,4 a | d, r4 |
		r2 | r2 | e4 a | d, r4 |
		f4 g | f g | f g | f8 c f4 |
		\time 3/4
		d4 d e |
		\time 2/4
		d4 d | d e | e a, | 
		{ d r4 | }
		\bar "|."
	}
}

\score {
	\new StaffGroup <<
		\new Staff \with { instrumentName = "Violín 1" }
			<< \global \violinUno >>
			\addlyrics { %% parte 1
				Vein ti cin co | de di ciem bre, | fum, fum, fum, |
				vein ti cin co | de di ciem bre, | fum, fum, | fum. Un ni | 
				ñi to muy bo | ni to ha na ci | do~en un por | tal con su | 
				ca ri ta de ro sa | pa re ce una | flor her mo sa | fum, fum, | 
				fum. |
			}
			\addlyrics { %% parte 2
				Ve nid, ve nid | pas tor ci llos, | fum, fum, fum |
				Ve nid, ve nid | pas tor ci llos, | fum, fum, fum. Ve nid |
				con la pan de | re ta~y cas ca | be les al por | tal adorad al | 
				rey del cie lo que ha | apa re ci do | en el sue lo | fum, fum, |
				fum. |
			}
			\addlyrics { %% parte 3
				Desde el cie lo | es tas mi rando, | fum, fum, | fum, |
				Desde el cie lo | es tas mi rando, | fum, fum, | fum. A la |
				tie rra alu ci | nan te que re | lum bra con su | luz y al | 
				amor del fir ma men to | cele bran do el | na ci mien to | de Je | 
				sús. |
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
			\line \smallCaps \bold { Fum, fum, fum }
			\hspace #1
			\line { Veinticinco de diciembre }
			\line { Fum, fum, fum, }
			\line { veinticinco de diciembre }
			\line { fum, fum, fum. }
			\hspace #1
			\line { Un niñito muy bonito }
			\line { ha nacido en un portal, }
			\line { con su carita de rosa, }
			\line { parece una flor hermosa, }
			\line { fum, fum, fum. }
			\hspace #1
			\line { Venid, venid pastorcillos }
			\line { Fum, fum, fum }
			\line { Venid, venid pastorcillos }
			\line { Fum, fum, fum }
		}
		\hspace #2
		\column {
			\line { Venid con la pandereta }
			\line { Y cascabeles al portal }
			\line { Adorad al rey del cielo }
			\line { Que ha aparecido en el suelo }
			\line { Fum, fum, fum }
			\hspace #1
			\line { Desde el cielo estás mirando }
			\line { Fum, fum, fum }
			\line { Desde el cielo estás mirando }
			\line { Fum, fum, fum }
			\hspace #1
			\line { A la tierra alucinante }
			\line { que relumbra con su luz }
			\line { y al amor del firmamento }
			\line { celebrando el nacimiento }
			\line { de Jesús }
		}
		\hspace #1
	}
}









