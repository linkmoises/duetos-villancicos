\version "2.22.1"
\header {
	title = "Noche de Paz"
	subtitle = "Título original: Stille Nacht, Heilige Nacht"
	composer = "Franz Xaver Gruber (1787 - 1863)"
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
	\time 3/4
	\tempo "Andante con moto"
	\key d \major
}

violinUno = \new Voice \relative c'' {
	\repeat segno 4 {
		a4. b8 a4 | fis2. | a4. b8 a4 | fis2. |
		e'2 e4 | cis2. \break | d2 d4 | a2. |
		b2 b4 | d4. cis8 b4 | a4. b8 a4 | fis2. \break |
		b2 b4 | d4. cis8 b4 | a4. b8 a4 | fis2. |
		e'2 e4 | g4. e8 cis4 \break | d2. | fis2. |
		d4. a8 fis4 | a4. g8 e4 | d2.( | d4) r2 |
		\bar "|."
	}
}

violinDos = \new Voice \relative c'' {
	\repeat segno 4 {
		fis,4. g8 fis4 | d2. | fis4. g8 fis4 | d2. |
		cis'2 cis4 | a2( g4) | fis2 fis4 | d2. |
		g2 g4 | b4. a8 g4 | fis4. g8 fis4 | d2. |
		g2 g4 | b4. a8 g4 | fis4. g8 fis4 | d2. |
		cis'2 cis4 | e4. cis8 g4 | fis2. | d'2. |
		fis,4. e8 d4 | cis2. | d2.( | d4) r2 |
	}
}

violinTres = \new Voice \relative c'' {
	\repeat segno 4 {
		d,2. | a2. | d2. | a2. |
		a2. | e'2. | d2. | fis2. |
		d2. | d2. | d2. | a2. |
		d2. | d2. | d2. | a2. |
		a2. | ais2. | b2. | d2. |
		a2. | a2. | d2.( | d4) r2 |
	}
}

\score {
	\new StaffGroup <<
		\new Staff \with { instrumentName = "Violín 1" }
			<< \global \violinUno >>
			\addlyrics { %% volta 1 
				No che de | paz, | no che de~a | mor |
				to do | duerme~en | de rre | dor |
				Entre los | as tros que | espar cen su | luz |
				Be lla | anuncian do al | niñi to Je | sús |
				Brilla la | estre lla de | pa | az |
				Bri lla la | estre lla de | paz |
			}
			\addlyrics { %% volta 2
				No che de | paz, | no che de~a | mor |
				o ye | humilde~el | fiel pas | tor |
				co ros | celes tes que | anun cian sa | lud |
				gra cia~y | glo ria en | gran ple ni | tud |
				Por nues | tro buen re | den tor |
				Por nues tro | buen re den | tor
			}
			\addlyrics { %% volta 3
				No che de | paz, | no che de~a | mor |
				Ved que | bello | res plan | dor | 
				Luce en~el | ros tro del | ni ño Je | sús | 
				En el | pese bre del | mun do, la | luz |
				As tro | de~eter no ful | gor | or |
				As tro de | eter no ful | gor |
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
			\line \smallCaps \bold { Noche de paz }
			\hspace #1
			\line { Noche de paz, noche de amor }
			\line { Todo duerme en derredor }
			\line { Entre los astros que esparcen su luz }
			\line { Bella, anunciando al niñito Jesús }
			\hspace #1
			\line \italic { Brilla la estrella de paz }
			\line \italic { Brilla la estrella de paz }
			\hspace #1
			\line { Noche de paz, noche de amor }
			\line { Oye, humilde, el fiel pastor }
			\line { Coros celestes que anuncian salud }
			\line { Gracia y gloria en gran plenitud }
			\hspace #1
			\line \italic { Por nuestro buen Redentor }
			\line \italic { Por nuestro buen Redentor }
		}
		\hspace #2
		\column {
			\line { Noche de paz, noche de amor }
			\line { Ved qué bello resplandor }
			\line { Luce en el rostro del niño Jesús }
			\line { En el pesebre del mundo, la luz }
			\hspace #1
			\line \italic { Astro de eterno fulgor }
			\line \italic { Astro de eterno fulgor }
			\hspace #1
			\line { Noche de paz, noche de amor }
			\line { Todo duerme en derredor }
			\line { Entre los astros que esparcen su luz }
			\line { Bella, anunciando al niñito Jesús }
			\hspace #1
			\line \italic { Brilla la estrella de paz }
			\line \italic { Brilla la estrella de paz }
		}
		\hspace #1
	}
}