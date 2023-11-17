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
	%\tempo Allegretto
	\tempo 4 = 120
	\key d \major
}

violinUno = \new Voice \relative c'' {
	r4 r8 fis,16 g16 \bar "||" |
	a8 a8( a8 ) fis16 g16 | a8 a8( a8 ) a16 b16 | cis8 b8 a8 g8 | fis8 a8( a8 ) fis16 g16 |
	a8 a8( a8 ) fis16 g16 | a8 a8( a8 ) a16 b16 | cis8 a8 b8 cis8 | d8 d8( d8 ) d16 cis16 |
	cis8 b8( b8 ) cis16 b16 | b8 a8 a8 b16 a16 | a8 g8 a8 g8 | g8 fis8 r8 d'16 cis16 |
	cis8 b8( b8 ) cis16 b16 | b8 a8( a8 ) b16 a16 | a8 g8 fis8 e8 | d8 d8 d8 r8 |
	r2 | r2 |
	\repeat volta 2 {
		\key g \major
		g8 g8 g8 b8 | g4 g4 | g8 a8 b8 c8 | d4 d4 | 
		e8 d8 c8 b8 | a8 g8 fis8 e8 | d4 d4 |
	}
	\alternative {
		{ r2 | }
		{ g2 | }
	}
	a8 a8( a8 ) fis16 g16 | a8 a8( a8 ) a16 b16 | cis8 b8 a8 g8 | fis8 a8( a8 ) fis16 g16 |
	a8 a8( a8 ) fis16 g16 | a8 a8( a8 ) a16 b16 | cis8 a8 b8 cis8 | d8 d8( d8 ) d16 cis16 |
	cis8 b8( b8 ) cis16 b16 | b8 a8 a8 b16 a16 | a8 g8 a8 g8 | g8 fis8 r8 d'16 cis16 |
	cis8 b8( b8 ) cis16 b16 | b8 a8 ( a8 ) b16 a16 | a8 g8 fis8 e8 | d8 d8 d8 r8 | 
	r2 | r2 |
	g8 g8 g8 b8 | g4 g4 | g8 a8 b8 c8 | d4 d4 | 
	e8 d8 c8 b8 | a8 g8 fis8 e8 | d4 d4 r2 | g8 g8 g8 b8 |
	g4 g4 | g8 a8 b8 c8 | d4 d4 | e8 d8 c8 b8 \bar "|." |
	a8 g8 fis8 e8 | d4 d'4 | g,2 |
	\bar "|."
}

violinDos = \new Voice \relative c'' {
	fis4 fis4 \bar "||"
	fis4 fis4 | fis4 r4 | g4 g4 | fis4 r4 | 
	fis4 fis4 | fis4 r4 | e4 e4 | d4 r4 | 
	g4 g4 | fis4 r4 | e4 e4 | d4 r4 | 
	g4 g4 | fis4 r4 | e4 e4 | d4 r8 a,8 |
	d16 e fis g a b c d | d4 d16 c b a16 | 
	\repeat volta 2 {
		\key g \major 
		g8 d16 d16 b8 d8 | g8 d8 b8 d8 | g8 d16 d16 b8 d8 | g8 d8 b8 d8 |
		g8 e16 e16 c8 e8 | g8 e8 c8 e8 | fis8 d16 d16 a8 d8 
	}
	\alternative {
		{ g8 d8 b8 d8 | }
		{ g8 d8 g4 | }
	}
	fis4 fis4 | fis4 r4 | g4 g4 | fis4 r4 | 
	fis4 fis4 | fis4 r4 | e4 e4 | d4 r4 |
	g4 g4 | fis4 r4 | e4 e4 | d4 r4 | 
	g4 g4 | fis4 r4 | e4 e4 | d4 r8 a8 |
	d16 e fis g a b c d | d4 d16 c b a | g8 d16 d16 b8 d8 | g8 d8 b8 d8 | 
	g8 d16 d16 b8 d8 | g8 d8 b8 d8 | g8 e16 e16 c8 e8 | g8 e8 c8 e8 | 
	fis8 d16 d16 a8 d8 | g8 d8 b8 d8 | g8 d16 d16 b8 d8 | g8 d8 b8 d8 |
	g8 d16 d16 b8 d8 | g8 d8 b8 d8 | g8 e16 e16 c8 e8 \bar "|." |
	g8 e8 c8 e8 | fis8 d16 d16 a8 d8 | g8 d8 g4 |
	\bar "|."
}

violinTres = \new Voice \relative c'' {
	d,4 d4 \bar "||"
d2 | % 6
d2 | % 7
cis4 cis4 | % 8
d4 r4 | % 9
d2 | \barNumberCheck #10
d2 | % 11
cis4 cis4 | % 12
d4 r4 | % 13
d2 | % 14
d2 | % 15
cis4 cis4 | % 16
d4 r4 | % 17
d2 | % 18
d2 | % 19
cis4 cis4 | \barNumberCheck #20
d4 r4 | % 21
cis16 a16 cis16 a16 
cis8 cis8 | % 22
d2 \repeat volta 2 {
| % 23
\key g \major g4 g8 b8 | % 24
g4 g4 | % 25
g4 g8 g8 | % 26
d4 d4 | % 27
e4 e8 e8 | % 28
a4 a4 | % 29
d,4 d8 d8 }
\alternative { {
| \barNumberCheck #30
g4 g4 }
{
| % 31
g2 }
} | % 32
d2 | % 33
d2 | % 34
cis4 cis4 | % 35
d4 r4 | % 36
d2 | % 37
d2 | % 38
cis4 cis4 | % 39
d4 r4 | \barNumberCheck #40
d2 | % 41
d2 | % 42
cis4 cis4 | % 43
d4 r4 | % 44
d2 | % 45
d2 | % 46
cis4 cis4 | % 47
d4 r4 | % 48
cis16 a16 cis16 a16 
cis8 cis8 | % 49
d2 | \barNumberCheck #50
g4 g8 b8 | % 51
g4 g4 | % 52
g4 g8 g8 | % 53
d,4 d4 | % 54
e4 e8 e8 | % 55
a4 a4 | % 56
d4 d8 d8 | % 57
g4 g4 | % 58
g4 g8 b8 | % 59
g4 g4 | \barNumberCheck #60
g4 g8 g8 | % 61
d4 d4 | % 62
e4 e8 e8 \bar "|."
a4 a4 | % 64
d,4 d8 d8 | % 65
g2 \bar "|."
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
\midi { }
}