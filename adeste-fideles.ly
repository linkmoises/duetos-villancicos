\version "2.22.1"
\header {
	title = "Adeste Fideles"
	subtitle = "Venid fieles"
	composer = "Atribuido a: John Francis Wade (1711 - 1786)"
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
	\key d \major
}

violinUno = \new Voice \relative c'' {
	\partial 4 d4 |
	d2 a4 d | e2 a, | fis'4 e fis g | fis2 e4 d4 |
	d2 cis4 b | cis4 d e fis | cis2 b4. a8 | a1 |
	a'2 g4 fis | g2 fis2 | e4 fis d e | cis4. b8 a4 d |
	d4 cis d e | d2 a4 fis' | fis4 e fis g | fis2 e4 fis |
	g4 fis e d | cis2 d4 g | fis2 e4. d8 | d2.
	\bar ":|."
}

violinDos = \new Voice \relative c'' {
	\partial 4 r4 |
	a2 fis4 a | cis2 e | cis4 cis d e | d2 cis4 b | 
	b2 a4 gis | a4 b cis d | a2 gis4. a8 | e1 |
	fis'2 e4 d | e2 a,2 | b2 b | a4. e8 e4 r4 |
	r1 | r2. d'4 | d4 cis d e | d2 cis4 d |
	e4 d cis b | e2 d4 b | d2 cis | a2.
	\bar ":|."
}

violinTres = \new Voice \relative c'' {
	\partial 4 r4 |
	fis,1 | a2 cis2 | a4 a a g | a1 | 
	e2 e4 e | a2 a4 a | e2 e2 | cis1 |
	d2 d4 d4 | a2 d | e2 e | a,4. gis8 a4 r4 |
	r1 | r1 | r1 | r2. d4 |
	g,2 gis2 | a2 b4 g | a2 a2 | d2. 
	\bar ":|."
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
