\version "2.22.1"
\header {
	title = "Campanas de Belén"
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
	\tempo "Allegro"
	\key g \major
}

violinUno = \new Voice \relative c'' {
	\repeat volta 2 {
		g4 g8 g | g4 fis8 g | a4.( fis8) | d2 | 
		a'4 a8 b | c4 b8 a | b4.( a8) | 
	} 
	\alternative {
		{ g2 | }
		{ g4 r8 b8 | }
	} 
	d4 r8 d8 | e d c e | d4 r8 d8 | e d e fis | 
	g( d) b e | d c b a | g2 |
	\repeat volta 2 {
		b4. c8 | b( a) g4 | d'4. e8 | d( c) b4 | 
		d4.( d8) | cis4.( a8) | d4. c8 | 
	} 
	\alternative {
		{ b8( a) g4 | }
		{ b8( a) g8 b | }
	}
	d4 r8 d8 | e d c e | d4 r8 d8 | e d e fis | 
	g( d) b e | d c b a | g2 |
	\bar "|."
}

violinDos = \new Voice \relative c'' {
	\repeat volta 2 {
		d,2 | d2 | d2 | d4 c8 d |
		fis4 fis8 g | a4 g8 fis | g4.( fis8) |
	} 
	\alternative {
		{ d2 | }
		{ d4. r8 | }
	}
	r8 b'8 b r8 | c4 c | r8 b8 b r8 | c4 c |
	b2 | a4 fis | d2 | 
	\repeat volta 2 {
		g4. a8 | g( fis) g4 | b4. c8 | b( a) g4 |
		b4.( b8) | a4.( g8) | fis4.( fis8) |
	} 
	\alternative {
		{ d2 | }
		{ d4. r8 | }
	}
	r8 b'8 b r8 | c4 c | r8 b8 b r8 | c4 c |
	b2 | a4 fis | d2 |
	\bar "|."
}

violinTres = \new Voice \relative c'' {
	\repeat volta 2 {
		g,2 | b2 | c2 | g2 |
		g2 | b2 | g2 |
	} 
	\alternative {
		{ g2 | }
		{ g4. r8 | }
	}
	r8 g'8 g8 r8 | g4 g | r8 g8 g8 r8 | g4 g |
	g2 | fis4( d8) c8 | b2 |
	\repeat volta 2 {
		d2 | g, | d' | g, |
		d' | e | a, |
	} 
	\alternative {
		{ g2 | }
		{ g4. r8 | }
	}
	r8 g'8 g8 r8 | g4 g | r8 g8 g8 r8 | g4 g |
	d2 | d4 d | g,2 |
	\bar "|."
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