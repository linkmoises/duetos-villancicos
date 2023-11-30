\version "2.22.1"
\header {
	title = "¡Ay, del chiquirritín!"
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
	\time 3/8
	\tempo Allegretto
	\key d \major
}

violinUno = \new Voice \relative c'' {
	\repeat segno 3 {
		d4 d8 | d d d | d d16 d d d | d8 d d |
		d cis d | e4( cis8) | a4. | g'4 e8 |
		cis cis b | a a'16 a a a | a8 r8 a,16 b | cis8 r8 cis16 d | 
		e8 fis8. cis16 | e4. | d4.  |
		\volta 4 {
			\fine
		}
		\break
		\repeat volta 4 {
			fis4 fis8 | g fis g | a4( fis8) | d4. |
			a'8 fis d | e4( cis8) | \break a4. | g'4( e8) | 
			%% el \break se inserto para mejorar distribución de compases
			cis8 cis b | a4 g'8 | a fis8. cis16 | e4. |
			d4. |
		}
	}
}

violinDos = \new Voice \relative c'' {
	\repeat segnz 3 {
		fis,4 fis8 | fis fis fis | fis fis16 fis fis fis | fis8 fis fis |
		fis e fis | g4 e8 | cis4. | e'4 cis8 |
		a8 a e | cis8 cis'16 cis cis cis | cis8 r8 a16 b | cis8 r8 a16 b | 
		cis8 a8. a16 | a8 b cis | fis,4. |
		\volta 4 {
			\fine
		}
		\break
		\repeat volta 2 {
			d'4 d8 | e8 d e | fis4( d8) | a4. |	
			fis'8 d a | cis4( a8) | e4. | e'4 cis8 |
			a8 a e | cis4 e'8 | fis8 e8. a,16 | a8 b cis |
			a4. |
		}
	}
}

violinTres = \new Voice \relative c'' {
	\repeat segno 3 {
		d,4. | d4. | d4. | d4. |
		d4. | a4. | a4. | e'4. |
		e4. | e4. | a,4. | a4. |
		a4. | a4. | a'4. |
		\volta 4 {
			\fine
		}
		\break
		\repeat volta 4 {
			d,4. | d4. | d4. | fis4. |
			d4. | e4. | a,4. | e'4. |
			a,4. | e'4. | a,4. | e'4. |
			d4. |
		}
	}
}

\score {
	\new StaffGroup <<
		\new Staff \with { instrumentName = "Violín 1" }
			<< \global \violinUno >>
			\addlyrics {
				Ay, del | chi qui rri | tín, chi qui rri qui | tín, me ti | 
				di to en | tre | pajas |
				Ay, del | chi qui rri | tín, chi qui rri qui | tín, que ri |
				din, que ri | di to del | al | ma |
				Por de | ba jo del | arco | del |
				por ta li | co |
				Se | des | cu bre a | María, Jo | 
				sé y al | ni | ño |
			}
			\addlyrics {
				\repeat unfold 39 {\skip 1}
				Entre un | buey y una | mula, | Dios | 
				ha na ci | do |
				Y | en | un po bre | pe se |
				bre le han | reco | gido | 
			}
			\addlyrics {
				\repeat unfold 39 {\skip 1}
				El ni | ño tie ne | hambre | y | 
				es tá ma | man | do |
				Y~un | ra yi to | de Lu | na lo~es tá | 
				miran | do | 
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
			\line \smallCaps \bold { ¡Ay, del chiquirritín! }
			\hspace #1
			\line \italic { Ay del chiquirritín chiquirriquitín }
			\line \italic { Metidito entre pajas }
			\line \italic { Ay del chiquirritín chiquirriquitín }
			\line \italic { Queridin, queridito del alma }
			\hspace #1
			\line { Por debajo del arco del portalico } 
			\line { Se descubre a María, José y al niño }
			\hspace #1
			\line \italic { Ay del chiquirritín chiquirriquitín }
			\line \italic { Metidito entre pajas }
			\line \italic { Ay del chiquirritín chiquirriquitín }
			\line \italic { Queridin, queridito del alma }
			\hspace #1
			\line { Entre un buey y una mula, Dios ha nacido }
			\line { Y en un pobre pesebre le han recogido }
		}
		\hspace #2
		\column {
			\line \italic { Ay del chiquirritín chiquirriquitín }
			\line \italic { Metidito entre pajas }
			\line \italic { Ay del chiquirritín chiquirriquitín }
			\line \italic { Queridin, queridito del alma }
			\hspace #1
			\line { El niño tiene hambre y está mamando }
			\line { Y un rayito de Luna lo está mirando }
			\hspace #1
			\line \italic { Ay del chiquirritín chiquirriquitín }
			\line \italic { Metidito entre pajas }
			\line \italic { Ay del chiquirritín chiquirriquitín }
			\line \italic { Queridin, queridito del alma }
		}
		\hspace #1
	}
}