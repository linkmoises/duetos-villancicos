\version "2.22.1"
\header {
	title = "El burrito sabanero"
	subtitle = "Villancico venezolano"
	composer = "Hugo Blanco Manzo (1940 - 2015)"
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
	\time 2/2
	\tempo Presto
	\key g \major
}

violinUno = \new Voice \relative c'' {
	\repeat volta 2 {
		g'4 e8 c4( c8) g'4 | d b r8 g8 b d | c4 a r8 c b a | 
	} 
	\alternative {
		{ b4 c8 d4 r8 d4 | }
		{ \mark \markup { \small \musicglyph #"scripts.segno" } r4 r8 g,8 g4 g4 | }
	}
	
	\repeat volta 2 {
		g4 g g g | c4. c8 c4 c | a a g a8 b( | b8) g4 g8 g4 g | 
		g4 g g g | c4. c8 c4 c | a a g a8 b( | b8) g4 r8 g4 g |
		g2 g4 g \break | g2 b4 b | a a g fis8 g8( | g2 ) g4 g | 
		g2 g4 g | g2 b4 b \break | a a g fis8 g8( | 
	}
	\alternative {
		{ g4. ) g8 g4 g | }
		{ g4. ) r8 r4 r4| }
	}
	b4 b8 b8( b) b a a | g4 g2 r4 | b4 b8 b8( b) b b a | g4. r8 a4 a | 
	a a a a | fis fis a a | a g fis e |	d2 r2 | 
	b'4 b8 b( b) b a a | g4 g2 r4 | b4 b8 b( b) b b a | g4. r8 g4 g | 
	g g g g | b g d b' | a g fis a | g r4 r2 |
	\mark \markup { \small "D.S." }
	\bar "|."
}

violinDos = \new Voice \relative c'' {
	\repeat volta 2 {
		g4 e8 c4( c8) g'4 | d b r8 g8 b d | c4 a r8 c b a | 
	} 
	\alternative {
		{ b4 c8 d4 r8 d4 | }
		{ r4 r8 b'8 b4 b | }
	}
	\repeat volta 2 {
		b4 b b b | e4. e8 e4 e | c c c c8 d8( | d8) b4 b8 b4 b4 |
		b4 b b b | e4. e8 e4 e | c c c c8 d8( | d8) d4 d8 d4 d | 
		e2 e4 e | d2 d4 d | c c c c8 d( | d2) d4 d | 
		e2 e4 e | d,2 g4 g | fis fis e e8 e( |  
	}
	\alternative {
		{ e4.) b'8 b4 b | }
		{ e,4.) r8 r2 | }
	}
	dis'4 dis8 dis( dis) dis dis dis | e4 e2 r4 | dis4 dis8 dis( dis) dis dis dis | e2 r2 |
	r1 | r1 | r1 | r1 |
	dis4 dis8 dis( dis) dis dis dis | e4 e2 r4 | dis4 dis8 dis( dis) dis dis dis | e4. r8 b4 b |
	c c c c | d b g g | c c c c | b r4 r2 |
}

violinTres = \new Voice \relative c'' {
	\repeat volta 2 {
		c,2 e4 g | g,2 b4 d | d2 fis4 a | 
	} 
	\alternative {
		{ g,2 b4 d | }
		{ g,2 b4 d | }
	}
	\repeat volta 2 {
		g,2 b4 d | c2 e4 g | d2 fis4 a | g,2 b4 d |
		g,2 b4 d | c2 e4 g | d2 fis4 a | g, g a b |
		c2 e4 g | g,2 b4 d | d2 fis4 a | g,2 b4 d |
		c2 e4 g | g,2 b4 d | d2 fis4 a | 
	}
	\alternative {
		{ g,2 b4 d | }
		{ g,2 b4 d | }
	}
	b2 dis4 fis | e2 b4 c | b2 dis4 fis | e2 g,4 b |
	a2 cis4 g | d'2 fis4 a | a,2 cis4 g | d'2 fis4 a | 
	b,2 dis4 fis | e2 b4 c | b2 dis4 fis | e2 g,4 b |
	c2 e4 g | g,2 b4 d | d2 fis4 a | d, r4 r2 |
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