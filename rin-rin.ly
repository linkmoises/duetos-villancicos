\version "2.22.1"
\header {
	title = "Rin, rin"
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
	\time 3/4
	\tempo "Allegro molto"
	\key d \major
}

violinUno = \new Voice \relative c'' {
	\repeat segno 3 {
		\partial 4 a4 |
		\set Score.currentBarNumber = #2
		d d d | d2 fis4 | a g fis | e e8 d cis d |
		e fis e d cis d | e4 e8 d cis d | e fis e d cis d | e4 r4 e4 |
		fis g b | a2 g4 | fis2 e4 | d2 a4 |
		d4 d d \break | d2 fis4 | a g fis | e e8 d cis d |
		e fis e d cis d | e4 e8 d cis d | e fis e d cis d | e4 r4 e4 |
		fis g b | a2 g4 | fis2 e4 | d2 fis8 g |
		a4 a e | fis2 fis8 g | a4 a e \break | fis2 d8 d |
		g4 g e | fis fis d | e e cis | d r4 fis8 g |
		a4 a e | fis2 fis8 g \break | a4 a e | fis2 d8 d |
		g4 g e | fis fis d | e e cis | 
		\partial 2 d4 r4 |
		\bar "|."
	}
}

violinDos = \new Voice \relative c'' {
	\repeat segno 3 {
		\partial 4 fis,4 |
		a4 a a | a2 d4 | fis4 e d | cis cis8 b a b |
		cis d cis b a b | cis4 cis8 b a b | cis d cis b a b | cis4 r4 cis4 |
		d e g | fis2 e4 | d2 cis4 | a2 fis4 | 
		a4 a a | a2 d4 | fis4 e d | cis cis8 b a b |
		cis d cis b a b | cis4 cis8 b a b | cis d cis b a b | cis4 r4 cis4 |
		d4 e g | fis2 e4 | d2 cis4 | a2 d8 e |
		fis4 fis cis | d2 d8 e | fis4 fis cis | d2 b8 b |
		e4 e cis | d d b | b b a | a r4 d8 e |
		fis4 fis cis | d2 d8 e | fis4 fis cis | d2 b8 b |
		e4 e cis | d d b | b b a | 
		\partial 2 a4 r4 |
	}
}

violinTres = \new Voice \relative c'' {
	\repeat segno 3 {
		\partial 4 r4 |
		d,2. | d2. | d2. | a2. |
		a2. | a2. | a2. | a4 r4 a4 |
		d2 g,4 | a2 cis4 | d2 a4 | d2 r4 |
		d2. | d2. | d2. | a2. |
		a2. | a2. | a2. | a4 r4 a4 |
		d2 g,4 | a2 cis4 | d2 a4 | d2 r4 |
		d2 a4 | d2. | d2 a4 |
		d2 d4 | b2 a4 | d2 d4 | g,2 a4 |
		d4 r4 r4 | d2 a4 | d2. | d2 a4 |
		d2 d4 |b2 a4 | d2 d4 | g,2 a4 | 
		\partial 2 d4 r4 | 
	}
}

\score {
	\new StaffGroup <<
		\new Staff \with { instrumentName = "Violín 1" }
			<< \global \violinUno >>
			\addlyrics {
				Ha | cia Be lén | va~u na | bu rra, rin, | rin, 
				yo me re men | da ba, yo me re men | dé, 
				yo me~e ché~un re | mien do yo me lo qui | té
				car | ga da de | cho co | la _ | te
				lle | va su cho | co la | te ra, rin, | rin, 
				yo me re men | da ba, yo me re men | dé, 
				yo me~e ché~un re | mien do yo me lo qui | té
				su | mo li ni | llo~y su~a | na _ | fre
				Ma rí | a, Ma rí | a, ven a | cá co rrien | do
				que~el cho | co la ti | llo se lo~es | tán co mien | do
				Ma rí | a, Ma rí | a, ven a | cá co rrien | do
				que~el cho | co la ti | llo se lo~es | tán co mien | do |
			}
			\addlyrics {
				En | el por tal | de Be | lén, _ rin, | rin,
				yo me re men | da ba, yo me re men | dé, 
				yo me~e ché~un re | mien do yo me lo qui | té
				los | gi ta ni | llos han | en tra | do
				y~al | niño que es | tá~en la | cu na, rin, | rin,
				yo me re men | da ba, yo me re men | dé, 
				yo me~e ché~un re | mien do yo me lo qui | té
				Los | pa ña les | les han | ro ba | do
				Ma rí | a, Ma rí | a, ven a | cá vo lan | do
				que los | pa ña li | tos los es | tán lle van | do
				Ma rí | a, Ma rí | a, ven a | cá vo lan | do
				que los | pa ña li | tos los es | tán lle van | do |
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
			\line \smallCaps \bold { Rin, rin }
			\hspace #1
			\line { Hacia Belén va una burra, rin, rin }
			\line { Yo me remendaba, yo me remendé }
			\line { Yo me hice un remiendo, yo me lo quité }
			\line { Cargada de chocolate }
			\hspace #1
			\line { Lleva en su chocolatera, rin, rin }
			\line { Yo me remendaba, yo me remendé }
			\line { Yo me hice un remiendo, yo me lo quité }
			\line { Su molinillo y su anafre }
			\hspace #1
			\line { María, María, ven a acá corriendo }
			\line { Que el chocolatillo se lo están comiendo }
			\line { María, María, ven acá corriendo }
			\line { Que el chocolatillo se lo están comiendo }
			\hspace #1
			\line { En el portal de Belén, rin, rin }
			\line { Yo me remendaba, yo me remendé }
			\line { Yo me hice un remiendo, yo me lo quité }
			\line { Los gitanillos han entrado }
			\hspace #1
			\line { Y al niño que está en la cuna, rin, rin }
			\line { Yo me remendaba, yo me remendé }
			\line { Yo me hice un remiendo, yo me lo quité }
			\line { Los pañales les han robado }
		}
		\hspace #2
		\column {
			\line { María, María, ven acá volando }
			\line { Que los pañalitos los están llevando }
			\line { María, María, ven acá volando }
			\line { Que los pañalitos los están llevando }
			\hspace #1
			\line { Hacia Belén va una burra, rin, rin }
			\line { Yo me remendaba, yo me remendé }
			\line { Yo me hice un remiendo, yo me lo quité }
			\line { Cargada de chocolate }
			\hspace #1
			\line { Lleva en su chocolatera, rin, rin }
			\line { Yo me remendaba, yo me remendé }
			\line { Yo me hice un remiendo, yo me lo quité }
			\line { Su molinillo y su anafre }
			\hspace #1
			\line { María, María, ven a acá corriendo }
			\line { Que el chocolatillo se lo están comiendo }
			\line { María, María, ven acá corriendo }
			\line { Que el chocolatillo se lo están comiendo }
		}
		\hspace #1
	}
}