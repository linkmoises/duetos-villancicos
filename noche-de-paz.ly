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
	a4. b8 a4 | fis2. | a4. b8 a4 | fis2. |
	e'2 e4 | cis2. \break | d2 d4 | a2. |
	b2 b4 | d4. cis8 b4 | a4. b8 a4 | fis2. \break |
	b2 b4 | d4. cis8 b4 | a4. b8 a4 | fis2. |
	e'2 e4 | g4. e8 cis4 \break | d2. | fis2. |
	d4. a8 fis4 | a4. g8 e4 | d2.( | d4) r2 |
	\bar ":|."
}

violinDos = \new Voice \relative c'' {
	fis,4. g8 fis4 | d2. | fis4. g8 fis4 | d2. |
	cis'2 cis4 | a2( g4) | fis2 fis4 | d2. |
	g2 g4 | b4. a8 g4 | fis4. g8 fis4 | d2. |
	g2 g4 | b4. a8 g4 | fis4. g8 fis4 | d2. |
	cis'2 cis4 | e4. cis8 g4 | fis2. | d'2. |
	fis,4. e8 d4 | cis2. | d2.( | d4) r2 |
	\bar ":|."
}

violinTres = \new Voice \relative c'' {
	d,2. | a2. | d2. | a2. |
	a2. | e'2. | d2. | fis2. |
	d2. | d2. | d2. | a2. |
	d2. | d2. | d2. | a2. |
	a2. | ais2. | b2. | d2. |
	a2. | a2. | d2.( | d4) r2 |
	\bar ":|."
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
