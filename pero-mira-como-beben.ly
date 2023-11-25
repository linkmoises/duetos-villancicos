\version "2.22.1"
\header {
	title = "Los peces en el río"
	subtitle = "Villancico popular extremeño"
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
	\tempo "Allegro"
	\key g \major
}

violinUno = \new Voice \relative c'' {
	\repeat segno 3 {
		g'4 g8 g | g4 fis8 e | fis e fis dis | b2 |
		a4 a8 a | a4 g8 fis | g8 fis g8 fis | e2 | 
		g'4 g8 g | g4 fis8 e | fis e fis dis | b2 |
		a'4 a8 a | a4 g8 fis | g8 fis g8 fis | e4. e16 fis | 
		g8 g g g | g4 g8 g | a g a g | fis4 fis8 fis16 g |
		a8 g a g | fis4 fis8 e | dis e fis g | e4 e |
		g4 g8 g | g4 g8 g | a g a g | fis4. g8 |
		a8 g a g | fis4 fis8 e | dis e fis g | e2 |
		\bar "|."
	}
}

violinDos = \new Voice \relative c'' {
	\repeat segno 3 {
		b4 b8 b | b4 a8 g | a g a fis | dis2 |
		c'4 c8 c | c4 b8 a | b a b a | g2 | 
		b4 b8 b | b4 a8 g | a g a fis | dis2 |
		c'4 c8 c | c4 b8 a | b a b a | g4. g16 a | 
		b8 b b b | b4 b8 b | c b c b | a4 a8 a16 b |
		c8 b c b | a4 a8 g | fis g a b | g4 g |
		b8 b b b | b4 b8 b | c b c b | a4. b8 |
		c b c b | a4 a8 g | fis g a b | g2 |
	}
}

violinTres = \new Voice \relative c'' {
	\repeat segno 3 {
		e,2 | e | b | b |
		b | b | e | e |
		e | e | b | b |
		b | b | e | e |
		e | e | e | b |
		b | b | b | e |
		e | e | e | b |
		b | b | b | e |
	}
}

\score {
	\new StaffGroup <<
		\new Staff \with { instrumentName = "Violín 1" }
			<< \global \violinUno >>
			\addlyrics { %% volta 1 
				La vir gen | se es tá pe | i nan _ | do |
				en tre cor | ti na y | cor _ ti _ | na |
				los ca be | llos son _ | de _ o ro | o |
				y el pei | ne de pla | ta _ fi _ | na | 
				Pe ro | mi ra có mo | beben los pe | ces en el _ | río _ |
				Pe ro | mi ra có mo | beben por ver | al Di os na | ci do |
				Be ben y | be ben y | vuel ven a be | ber Los | 
				pe ces en el | río por ver | a Di os na | cer |
			}
			\addlyrics { %% volta 2
				La vir gen | es tá _ | la _ van _ | do |
				y ten dien | do en el | ro _ me _ | ro |
				los an ge | li tos _ | can _ tan _ | do | 
				y el ro | me ro flo | re _ cien | _ do |
				Pe ro | mi ra có mo | beben los pe | ces en el _ | río _ |
				Pe ro | mi ra có mo | beben por ver | al Di os na | ci do |
				Be ben y | be ben y | vuel ven a be | ber Los | 
				pe ces en el | río por ver | a Di os na | cer |
			}
			\addlyrics { %% volta 3
				La vir gen | es tá _ | la _ van _ | do |
				con mu y | po qui _ | to _ ja _ | bón |
				se le _ | pica ron _ | las _ ma _ | nos |
				ma nos _ | de mi _ | co _ ra _ | zón |
				Pe ro | mi ra có mo | beben los pe | ces en el _ | río _ |
				Pe ro | mi ra có mo | beben por ver | al Di os na | ci do |
				Be ben y | be ben y | vuel ven a be | ber Los | 
				pe ces en el | río por ver | a Di os na | cer |
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
			\line \smallCaps \bold { Los peces en el río }
			\hspace #1
			\line { La virgen se esta peinando }
			\line { entre cortina y cortina, }
			\line { los cabellos son de oro, }
			\line { y el peine de plata fina. }
			\hspace #1
			\line \italic { Pero mira como beben }
			\line \italic { los peces en el río, }
			\line \italic { pero mira como beben }
			\line \italic { por ver al Dios nacido }
			\line \italic { beben y beben y vuelven a beber }
			\line \italic { los peces en el río por ver a Dios nacer. }
			\hspace #1
			\line { La virgen está lavando }
			\line {Y tendiendo en el romero }
			\line { Los angelitos cantando }
			\line { Y el romero floreciendo }
		}
		\hspace #2
		\column {
			\line \italic { Pero mira como beben }
			\line \italic { los peces en el río, }
			\line \italic { pero mira como beben }
			\line \italic { por ver al Dios nacido }
			\line \italic { beben y beben y vuelven a beber }
			\line \italic { los peces en el río por ver a Dios nacer. }
			\hspace #1 
			\line { La Virgen está lavando }
			\line { con muy poquito jabón }
			\line { se le picaron las manos }
			\line { manos de mi corazón }
			\hspace #1
			\line \italic { Pero mira como beben }
			\line \italic { los peces en el río, }
			\line \italic { pero mira como beben }
			\line \italic { por ver al Dios nacido }
			\line \italic { beben y beben y vuelven a beber }
			\line \italic { los peces en el río por ver a Dios nacer. }
		}
		\hspace #1
	}
}