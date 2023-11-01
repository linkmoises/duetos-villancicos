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
	\repeat volta 2 {
		r1 | r1 | r1 | r1 |
		r1 | r1 | g2. a4 | b2 b4 b |
		c8 b c4 b2( | b1 ) | r4 g4 g a | b b b b |
		c8 b c4 b2( | b1 ) | r4 a4 b c | d d d e | 
		d8 c b4 a2( | a1 ) | r4 a4 b c | d d d e |
		f8 e d4 c2 | e8 d c4 b2 | d8 c b4 a2( | a1) |
		g2. a4 | b b b b | c8 b c4 b2 | 
	}
	\alternative {
		{ a8 g a4 g2 | }
		{ a8 g a4 g2( | g1 | g1 ) | }
	}
	\bar "|."
}

violinDos = \new Voice \relative c'' {
	\repeat volta 2 {
		d,4 d8 d d4 d | d4 d8 d d4 d | d4 d8 d d4 d | d4 d8 d d4 d |
		d4 d8 d d4 d | d4 d8 d d4 d | d4 d8 d d4 d | d4 d8 d d4 d |
		d4 d8 d d4 d | d4 d8 d d4 d | d4 d8 d d4 d | d4 d8 d d4 d |
		d4 d8 d d4 d | d4 d8 d d4 d | d4 d8 d d4 d | d4 d8 d d4 d |
		fis4 fis8 fis fis4 fis | fis4 fis8 fis fis4 fis | fis4 fis8 fis fis4 fis | d4 d8 d d4 d |
		d4 d8 d d4 d | d4 d8 d d4 d | fis4 fis8 fis fis4 fis | fis4 fis8 fis fis4 fis |
		d4 d8 d d4 d | d4 d8 d d4 d | d4 d8 d d4 d | 
	}
	\alternative {
		{ d4 d8 d d4 d | }
		{ a'4 a8 a a4 a | a4 a8 a a4 a | a1 | }
	}
	\bar "|."
}

violinTres = \new Voice \relative c'' {
	\repeat volta 2 {
		g,4 g8 g g4 g | g4 g8 g g4 g | g4 g8 g g4 g | g4 g8 g g4 g |
		g4 g8 g g4 g | g4 g8 g g4 g | g4 g8 g g4 g | g4 g8 g g4 g |
		g4 g8 g g4 g | g4 g8 g g4 g | g4 g8 g g4 g | g4 g8 g g4 g |
		g4 g8 g g4 g | g4 g8 g g4 g | g4 g8 g g4 g | g4 g8 g g4 g |
		d'4 d8 d d4 d | d4 d8 d d4 d | d4 d8 d d4 d | g,4 g8 g g4 g |
		g4 g8 g g4 g | g4 g8 g g4 g | d'4 d8 d d4 d | d4 d8 d d4 d |
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
		\new Staff \with { instrumentName = "Violín 2" }
		<< \global \violinDos >>
		\new Staff \with { instrumentName = "Violín 3" }
		<< \global \violinTres >>
	>>
\layout { }
%%midi { }
}