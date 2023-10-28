\version "2.22.1"
\header {
	title = "Nearer, My God, to Thee"
	subtitle = "Más cerca de ti mi Dios"
	composer = "Sarah Fuller Flower Adams (1805 - 1848)"
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
	\tempo Adagio
	\key g \major
}

violinUno = \new Voice \relative c'' {
	b2 a4 g | g4.( e8) e2 | d g4( b) | a1 |
	b2 a4 g | g4.( e8) e2 | d4( g) fis( a) | g1 |
	d'2 e4 d | d4.( b8) d2 | d2 e4 d | d4.( b8) a2 |
	b2 a4 g | g4.( e8) e2 | d4 g fis a | g1 |
	b2 a4 g | g4.( e8) e2 | d g4( b) | a1 |
	b2 a4 g | g4.( e8) e2 | d4( g) fis( a) \break | g1 |
	\bar ".|:"
	d'2 e4 d | d4.( b8) d2 | d2 e4 d | d4.( b8) a2 |
	b2 a4 g | g4.( e8) e2 | d4( g) fis( a) | g1 |
	\bar ":|."
}

violinDos = \new Voice \relative c'' {
	r1 | r1 | r1 | r1 |
	d,2 c4 b | e4.( c8) c2 | b2 d | b1 |
	b2 c4 b | b4.( g8) b2 | b2 c4 b | b4.( g8) d'2 |
	d2 c4 b | e4.( c8) c2 | b2 d | b1 |
	d2 c4 b | e4.( c8) c2 | b2 b4( d) | d1 |
	d2 c4 b | e4.( c8) c2 | b2 d | b1 |
	\bar ".|:"
	b2 c4 b | b4.( g8) b2 | b2 c4 b | b4.( g8) d'2 |
	d2 c4 b | e4.( c8) c2 | b2 d | b1 |
	\bar ":|."
}

violinTres = \new Voice \relative c'' {
	r1 | r1 | r1 | r1 |
	r1 | r1 | r1 | r1 |
	g,1 | g | g | g2 fis' | 
	g,1 | c | d2 d2 | g,1 |
	g1 | e' | g,1 | fis' |
	g,1 | c1 | d2 d | g,1 |
	\bar ".|:"
	g1 | g | g | g2 fis' | 
	g,1 | c | d2 d | g,1 |
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