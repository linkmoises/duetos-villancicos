\version "2.22.1"
\header {
	title = "Feliz Navidad"
	subtitle = "Álbum: Feliz Navidad"
	composer = "José Feliciano (1945 - )"
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
	\tempo "Allegro"
	\key d \major
}

violinUno = \new Voice \relative c'' {
	\repeat segno 2 {
		r4 r8 a8 d4 cis8 d |
		\repeat volta 2 {
			b4 r4 r2 | r4 r8 b8 e4 cis8 b | a4 r4 r2 | r4 r8 a8 d4 cis8 d |
			b4 r8 g8 b8 b4 a8( | a ) a a a g4 g8 fis | r1 |
		}
		\alternative {
			{ r4 r8 a8 d4 cis8 d | }
			{ r8 fis8 fis fis fis4 e8 d | }
		}
		d4 b8 b4 b4. | r8 e8 e e e4 cis8 b | b4 a8 gis4 a4. | r8 fis'8 fis fis fis4 e8 d |
		d4 b8 b4 b8 e d | cis8 cis4 d e e8 | e8( fis16 e d2.) | r1 | 
		\volta 2 \fine
	}
}

violinDos = \new Voice \relative c'' {
	\repeat segno 2 {
		r4 r8 fis8 fis4 e8 fis |
		\repeat volta 2 {
			d4 b g fis | e r8 g8 g4 fis8 g | fis4 a fis e | d4 r8 fis'8 fis4 e8 fis |
			d4 r8 d8 b b4 cis8( | cis) cis cis cis b4 cis8 d | fis4 d8 b( b) a4 fis8 |
		}
		\alternative {
			{ d4 r8 fis'8 fis4 e8 fis | }
			{ d,8 d' d d d4 e8 fis | }
		}
		fis4 g8 g4 g4. | r8 cis,8 cis cis cis4 d8 e | e4 fis8 fis4 fis4. | d,8 d' d d d4 e8 fis |
		fis4 e8 e,4 d8 e fis | e8 e4 fis g g8 | g4( fis2.) | r1 |
		\volta 2 \fine
	}
}

violinTres = \new Voice \relative c'' {
	\repeat segno 2 {
		r1 | 
		\repeat volta 2 {
			b1 | cis | a | fis |
			b | cis | d |
		}
		\alternative {
			{ r1 | }
			{ d,1 | }
		}
		a'1 | fis1 | d1 | g1 | 
		a4 a a a | d1 | a1 | r1 | 
		\volta 2 \fine
	}
}

\score {
	\new StaffGroup <<
		\new Staff \with { instrumentName = "Violín 1" }
			<< \global \violinUno >>
			\addlyrics {
				Fe liz na vi | dad, | fe liz na vi | dad |
				Fe liz na vi | dad, | prós pe ro a | ño y fe li ci dad |
				Fe liz na vi |
				I wa nna wish you a me rry christ mas
				I wa nna wish you a me rry christ mas
				I wa nna wish you a me rry christ mas
				From the bo ttom of my _ heart
			}
			\addlyrics {
				\skip 1 \skip 1 \skip 1 \skip 1 | dad, |
				fe liz na vi | dad |
				Fe liz na vi | dad, | prós pe ro a | ño y fe li ci dad |
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
			\line \smallCaps \bold { Feliz navidad }
			\hspace #1
			\line \italic { Feliz Navidad, feliz Navidad }
			\line \italic { Feliz Navidad, próspero año }
			\line \italic { Y felicidad }
			\hspace #1
			\line \italic { Feliz Navidad, feliz Navidad }
			\line \italic { Feliz Navidad, próspero año }
			\line \italic { Y felicidad }
			\hspace #1
			\line { I wanna wish you a merry Christmas }
			\line { I wanna wish you a merry Christmas }
			\line { I wanna wish you a merry Christmas }
			\line { from the bottom of my heart }
		}
		\hspace #2
		\column {
			\line \italic { Feliz Navidad, feliz Navidad }
			\line \italic { Feliz Navidad, próspero año }
			\line \italic { Y felicidad }
			\hspace #1
			\line \italic { Feliz Navidad, feliz Navidad }
			\line \italic { Feliz Navidad, próspero año }
			\line \italic { Y felicidad }
			\hspace #1
			\line { I wanna wish you a merry Christmas }
			\line { I wanna wish you a merry Christmas }
			\line { I wanna wish you a merry Christmas }
			\line { from the bottom of my heart }
		}
		\hspace #1
	}
}