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
	\bar ":|."
}

violinDos = \new Voice \relative c'' {
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
	\bar ":|."
}

violinTres = \new Voice \relative c'' {
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