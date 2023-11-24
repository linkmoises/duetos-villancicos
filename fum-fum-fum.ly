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
		\repeat volta 2 {
			f8 f e e | f8 f e e | f8 f e e | f4 r8 e16 f |
			\time 3/4
			g8. f16 e8 d cis a |
			\time 2/4
			d8. c16 d8 f | e d cis a | d4 cis | 	
		}
		\alternative {
			{ d r8 c16 c | }
			{ d4 r4 | }
		}
	}
}

violinDos = \new Voice \relative c'' {
	\repeat segno 3 {
		r2 | r2 | bes4 a | a r4 |
		r2 | r2 | bes4 a | a r4 |
		\repeat volta 2 {
			a4 bes | a bes | a bes | a8 bes a4 |
			\time 3/4
			bes4 bes a |
			\time 2/4
			a4 bes | bes a | bes a | 
		}
		\alternative {
			{ a r4 | }
			{ a r4 | }
		}
	}
}

violinTres = \new Voice \relative c'' {
	\repeat segno 3 {
		r2 | r2 | e,4 a | d, r4 |
		r2 | r2 | e4 a | d, r4 |
		\repeat volta 2 {
			f4 g | f g | f g | f8 c f4 |
			\time 3/4
			d4 d e |
			\time 2/4
			d4 d | d e | e a, | 
		}
		\alternative {
			{ d r4 | }
			{ d r4 | }
		}
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
				fum. Un ni |
				fum. |
			}
			\addlyrics { %% parte 2
				Ve nid, ve nid | pas tor ci llos, | fum, fum, fum |
				Ve nid, ve nid | pas tor ci llos, | fum, fum, fum. Ve nid |
				con la pan de | re ta~y cas ca | be les al por | tal adorad al | 
				rey del cie lo que ha | apa re ci do | en el sue lo | fum, fum, |
				fum. Ve nid |
				fum. |
			}
			\addlyrics { %% parte 3
				Desde el cie lo | es tas mi rando, | fum, fum, | fum, |
				Desde el cie lo | es tas mi rando, | fum, fum, | fum. A la |
				tie rra alu ci | nan te que re | lum bra con su | luz y al | 
				amor del fir ma men to | cele bran do el | na ci mien to | de Je | 
				sús. A la |
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