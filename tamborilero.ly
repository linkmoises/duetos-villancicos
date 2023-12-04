\version "2.22.1"
\header {
	title = "El tamborilero (El niño del tambor)"
	subtitle = "Carol of the drum (Little drumer boy)"
	composer = "Katherine Kennicott Davis (1892-1980)"
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
	\time 4/4
	\tempo "Moderato"
	\key g \major
}

violinUno = \new Voice \relative c'' {
	r1 | r1 | r1 | r1 |
	r1 | r1 | 
	\repeat volta 3 {
		g2. a4 | b2 b4 b |
		c8 b c4 b2( | b1 ) | r4 g4 g a | b b b b |
		c8 b c4 b2( | b1 ) | r4 a4 b c | d d d e | 
		d8 c b4 a2( | a1 ) | r4 a4 b c | d d d e |
		f8 e d4 c2 | e8 d c4 b2 | d8 c b4 a2( | a1) | d8 c b4 a2( | a1) |
		g2. a4 | b b b b | c8 b c4 b2 | 
	}
	\alternative {
		{ a8 g a4 g2 | }
		{ a8 g a4 g2( | g1 | g1 ) | }
	}
	\bar "|."
}

violinDos = \new Voice \relative c'' {
	d,4 d8 d d4 d | d4 d8 d d4 d | d4 d8 d d4 d | d4 d8 d d4 d |
	d4 d8 d d4 d | d4 d8 d d4 d | 
	\repeat volta 3 {
		d4 d8 d d4 d | d4 d8 d d4 d |
		d4 d8 d d4 d | d4 d8 d d4 d | d4 d8 d d4 d | d4 d8 d d4 d |
		d4 d8 d d4 d | d4 d8 d d4 d | d4 d8 d d4 d | d4 d8 d d4 d |
		fis4 fis8 fis fis4 fis | fis4 fis8 fis fis4 fis | fis4 fis8 fis fis4 fis | d4 d8 d d4 d |
		d4 d8 d d4 d | d4 d8 d d4 d | fis4 fis8 fis fis4 fis | fis4 fis8 fis fis4 fis | fis4 fis8 fis fis4 fis | fis4 fis8 fis fis4 fis |
		d4 d8 d d4 d | d4 d8 d d4 d | d4 d8 d d4 d | 
	}
	\alternative {
		{ d4 d8 d d4 d | }
		{ a'4 a8 a a4 a | a4 a8 a a4 a | a1 | }
	}
	\bar "|."
}

violinTres = \new Voice \relative c'' {
	g,4 g8 g g4 g | g4 g8 g g4 g | g4 g8 g g4 g | g4 g8 g g4 g |
	g4 g8 g g4 g | g4 g8 g g4 g | 
	\repeat volta 3 {
		g4 g8 g g4 g | g4 g8 g g4 g |
		g4 g8 g g4 g | g4 g8 g g4 g | g4 g8 g g4 g | g4 g8 g g4 g |
		g4 g8 g g4 g | g4 g8 g g4 g | g4 g8 g g4 g | g4 g8 g g4 g |
		d'4 d8 d d4 d | d4 d8 d d4 d | d4 d8 d d4 d | g,4 g8 g g4 g |
		g4 g8 g g4 g | g4 g8 g g4 g | d'4 d8 d d4 d | d4 d8 d d4 d | d4 d8 d d4 d | d4 d8 d d4 d |
		g,4 g8 g g4 g | g4 g8 g g4 g | g4 g8 g g4 g | 
	}
	\alternative {
		{ g4 g8 g g4 g | }
		{ d'4 d8 d d4 d | d4 d8 d d4 d | d1 | }
	}
	\bar "|."
}

\score {
	\new StaffGroup <<
		\new Staff \with { instrumentName = "Violín 1" }
			<< \global \violinUno >>
			\addlyrics {
				El ca mi no que lle va a Belén
				Ba ja hasta el va lle que la nie ve cubrió
				Los pas tor ci llos quie ren ver a su rey
				Le tra en re ga los en su hu mil de zu _ _ rrón
				Ro po pon pon, Ro po pon pon, 
				Ha na ci do en un por tal de Belén
				El ni ño Dios
			}
			\addlyrics {
				Yo qui sie ra po ner a tus pies
				Al gún pre sen te que te a gra de, Señor
				Mas tú ya sa bes que soy po bre tam bién
				Y no poseo más que un vie jo _ tam bor Ro po pon pon,
				Ro po pon pon, Ro po pon pon,
				En tu ho nor fren te al por tal tocaré
				Con mi tam bor
			}
			\addlyrics {
				El ca mi no que lle va a Belén
				Yo voy mar can do con mi vi e jo tambor
				Na da me jor hay que te pu e da ofrecer
				Su ron co a cen to es can to de amor Ro po pon pon, 
				Ro po pon pon, Ro po pon pon,
				Cuando Dios me vió to can do an te él
				\skip 1 \skip 1 \skip 1 \skip 1
				Me son ri ó	
			}
		\new Staff \with { instrumentName = "Violín 2" }
			<< \global \violinDos >>
		\new Staff \with { instrumentName = "Violín 3" }
			<< \global \violinTres >>
	>>
\layout { }
%%midi { }
}

\markup {
	\fill-line {
		\hspace #1
		\column {
			\line \smallCaps \bold { El niño del tambor }
			\hspace #1
			\line { El camino que lleva a Belén }
			\line { Baja hasta el valle que la nieve cubrió }
			\line { Los pastorcillos quieren ver a su rey }
			\line { Le traen regalos en su humilde zurrón }
			\line { Ropoponpon, ropoponpon }
			\line { Ha nacido en un portal de Belén }
			\line { El niño Dios }
			\hspace #1
			\line { Yo quisiera poner a tus pies }
			\line { Algún presente que te agrade, Señor }
			\line { Mas tú ya sabes que soy pobre también }
			\line { Y no poseo más que un viejo tambor }
			\line { Ropoponpon, ropoponponpon }
			\line { En tu honor frente al portal tocaré }
			\line { Con mi tambor }
		}
		\hspace #2
		\column {
			\line { El camino que lleva a Belén }
			\line { Yo voy marcando con mi viejo tambor }
			\line { Nada mejor hay que te pueda ofrecer }
			\line { Su ronco acento es canto de amor }
			\line { Ropoponpon, ropoponpon }
			\line { Cuando Dios me vio tocando ante él }
			\line { Me sonrió }
		}
		\hspace #1
	}
}