\version "2.22.1"
\header {
	title = "Arre borriquito"
	subtitle = "Villancico popular español"
	composer = "Ricardo Boronat (1879 - 1946)"
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
	\key d \major
}

violinUno = \new Voice \relative c'' {
	r4 r8 fis,16 g |
	a8 a( a ) fis16 g | a8 a( a ) a16 b | cis8 b a g | fis a( a ) fis16 g |
	a8 a( a ) fis16 g | a8 a( a ) a16 b | cis8 a b cis | d d( d ) d16 cis |
	cis8 b( b ) cis16 b | b8 a a b16 a | a8 g a g | g8 fis r d'16 cis |
	cis8 b( b ) cis16 b | b8 a( a ) b16 a | a8 g fis e | d d d r8 |
	r2 | r2 |
	\repeat volta 2 {
		\key g \major
		g8 g g b | g4 g | g8 a b c | d4 d | 
		e8 d c b | a g fis e | d4 d |
	}
	\alternative {
		{ r2 | }
		{ g2 | }
	}
	a8 a( a ) fis16 g | a8 a( a ) a16 b | cis8 b a g | fis a( a ) fis16 g |
	a8 a( a ) fis16 g | a8 a( a ) a16 b | cis8 a b cis | d d( d ) d16 cis |
	cis8 b( b ) cis16 b | b8 a a b16 a | a8 g a g | g fis r8 d'16 cis |
	cis8 b( b ) cis16 b | b8 a( a ) b16 a | a8 g fis e | d d d r8 | 
	r2 | r2 |
	g8 g g b | g4 g | g8 a b c | d4 d | 
	e8 d c b | a g fis e | d4 d | r2 | 
	g8 g g b | g4 g | g8 a b c | d4 d | 
	e8 d c b | a g fis e | d4 d' | g,2 |
	\bar "|."
}

violinDos = \new Voice \relative c'' {
	fis4 fis |
	fis4 fis | fis r4 | g4 g | fis r4 | 
	fis4 fis | fis r4 | e4 e | d r4 | 
	g4 g | fis r4 | e4 e | d r4 | 
	g4 g | fis r4 | e4 e | d r8 a, |
	d16 e fis g a b c d | d4 d16 c b a | 
	\repeat volta 2 {
		\key g \major 
		g8 d16 d b8 d | g d b d | g8 d16 d b8 d | g d b d |
		g8 e16 e c8 e | g e c e | fis8 d16 d a8 d | 
	}
	\alternative {
		{ g8 d b d | }
		{ g8 d g4 | }
	}
	fis4 fis | fis r4 | g4 g | fis r4 | 
	fis4 fis | fis r4 | e4 e | d r4 |
	g4 g | fis r4 | e4 e | d r4 | 
	g4 g | fis r4 | e4 e | d r8 a8 |
	d16 e fis g a b c d | d4 d16 c b a | 
	g8 d16 d b8 d | g d b d | g8 d16 d b8 d | g d b d | 
	g8 e16 e c8 e | g e c e | fis8 d16 d a8 d | g d b d | 
	g d16 d b8 d | g d b d | g8 d16 d b8 d | g d b d | 
	g e16 e c8 e | g8 e c e | fis d16 d a8 d | g d g4 |
	\bar "|."
}

violinTres = \new Voice \relative c'' {
	d,4 d4 |
	d2 | d | cis4 cis | d r4 |
	d2 | d | cis4 cis | d r4 | 
	d2 | d | cis4 cis | d r4 | 
	d2 | d | cis4 cis | d r4 | 
	cis16 a cis a cis8 cis | d2 |
	\repeat volta 2 {
		\key g \major
		g4 g8 b | g4 g | g g8 g | d4 d |
		e4 e8 e | a4 a | d, d8 d | 
	}
	\alternative { 
		{ g4 g4 | }
		{ g2 | }
	}
	d2 | d | cis4 cis | d r4 |
	d2 | d | cis4 cis | d r4 |
	d2 | d | cis4 cis | d r4 |
	d2 | d | cis4 cis | d r4 |
	cis16 a cis a cis8 cis | d2 | 
	g4 g8 b | g4 g | g g8 g | d4 d | 
	e4 e8 e | a4 a | d, d8 d | g4 g | 
	g4 g8 b | g4 g | g g8 g | d4 d |
	e4 e8 e | a4 a | d, d8 d | g2 |
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