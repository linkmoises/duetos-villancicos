\version "2.22.1"
\header {
	title = "La marimorena"
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
	\key a \major
}

violinTutti = \new Voice \relative c'' {
	\tempo Allegro
	r4 e8 a | a a a gis | b a fis gis | a b a gis | \break
	fis e e a | a gis a fis | e4 e8 e | e e d cis |
	b8 a4. |
}

violinUno = \new Voice \relative c'' {
	\set Score.currentBarNumber = #10
	\repeat segno 3 {
		a8 a a b | cis cis4. | e8 e e b | d b4. |
		d8 d cis d | e fis e d | cis4 b | b8 a4. | \break
		a8 a a b | cis cis4. | e8 e e b | d b4. |
		d8 d cis d | e fis e d | cis4 b | b8 a4. |
		\bar "|."
	}
}

violinDos = \new Voice \relative c'' {
	\repeat segno 3 {
		cis,8 cis cis e | a a4. | cis8 cis cis cis | b gis4. |
		b8 b a b | cis d cis b | a4 gis | e8 cis4. |
		cis8 cis cis e | a a4. | cis8 cis cis cis | b gis4. |
		b8 b a b | cis d cis b | a4 gis | e8 cis4. |
	}
}

violinTres = \new Voice \relative c'' {
	\repeat segno 3 {
		a,2 | e' | a, | e' | 
		a, | e' | a, | e' |
		a, | e' | a, | e' |
		a, | e' | a, | e' |
	}
}

\score {
	\new StaffGroup <<
		\new Staff \with { instrumentName = "Tutti" }
			<< \global \violinTutti >>
	>>
\layout { }
}

\score {
	\new StaffGroup <<
		\new Staff \with { instrumentName = "Violín 1" }
			<< \global \violinUno >>
			\addlyrics {
				En el por tal | de Belén | hay estre llas, sol~y | luna
				La Virgen y San José | Y el niño que | está en | la cuna. |
				An de, an de, | an de, | la ma ri mo | re na |
				An de, an de, | an de que es | la noche | bue na. |
			}
			\addlyrics {
				En el por tal | de Belén | hacen lu na los | pas tores |
				Para ca len tar | al niño que ha | nacido entre | las flores. |
				An de, an de, | an de, | la ma ri mo | re na |
				An de, an de, | an de que es | la noche | bue na. |
			}
			\addlyrics {
				Una estre lla se | ha perdido | y en el cielo | no aparece, |
				Se ha meti do~en | el por tal y~en | su rostro. | res plandece. |
				An de, an de, | an de, | la ma ri mo | re na |
				An de, an de, | an de que es | la noche | bue na. |
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
			\line \smallCaps \bold { La marimorena }
			\hspace #1
			\line { En el portal de Belén } 
			\line { hay estrellas, sol y luna }
			\line { La Virgen y San José } 
			\line { y el niño que está en la cuna. }
			\hspace #1
			\line \italic { Ande, ande, ande, } 
			\line \italic { la marimorena }
			\line \italic { Ande, ande, ande } 
			\line \italic { que es la nochebuena. }
			\hspace #1
			\line { En el portal de Belén }
			\line { hacen luna los pastores }
			\line { Para calentar al niño } 
			\line { que ha nacido entre las flores. }
			\hspace #1
		}
		\hspace #2
		\column {
			\line \italic { Ande, ande, ande, } 
			\line \italic { la marimorena }
			\line \italic { Ande, ande, ande } 
			\line \italic { que es la nochebuena. }
			\hspace #1
			\line { Una estrella se ha perdido }
			\line { y en el cielo no aparece, }
			\line { Se ha metido en el portal }
			\line { y en su rostro. resplandece. }
			\hspace #1
			\line \italic { Ande, ande, ande, } 
			\line \italic { la marimorena }
			\line \italic { Ande, ande, ande } 
			\line \italic { que es la nochebuena. }
		}
		\hspace #1
	}
}


