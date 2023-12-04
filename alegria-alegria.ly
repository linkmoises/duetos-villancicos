\version "2.22.1"
\header {
	title = "¡Alegría, alegría, alegría"
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
	\time 6/8
	\tempo Allegretto
	\key a \major
}

violinUno = \new Voice \relative c'' {
	\partial 4 e,8 a |
	\repeat volta 4 {
		cis8 cis4. a8 cis | fis8 e4. d8 cis | e8 d4. b8 gis | b a4 r8 e8 a | 
		cis8 cis4. a8 cis | fis8 e4. d8 cis | e8 d4. b8 gis | b a4 r8 a8 a |
		fis'8 fis fis fis gis8. fis16 | fis8 e4. a,8 a | fis'8 fis fis fis gis8. fis16 |
		e4. r8 dis8 e | fis8 e4. dis8 e | fis e4. d8 cis | e8 d4. b8 gis |
	}
	\alternative {
		{ b8 a4. e8 a | }
		{ \partial 2 b8 a4. | }
	}
	\bar "|."
}

violinDos = \new Voice \relative c'' {
	\partial 4 e,8 e |
	\repeat volta 4 {
		a8 a4. e8 a | d cis4. b8 a | cis8 b4. gis8 d | cis8 cis4 r8 e8 e | 
		a8 a4. e8 a | d cis4. b8 a | cis8 b4. gis8 d | cis8 cis4 r8 a'8 a | 
		d8 d d d e8. d16 | d8 cis4. a8 a | d8 d d d e8. d16 |
		cis4. r8 bis8 cis | d8 cis4. bis8 cis | d8 cis4. b8 a | cis8 b4. gis8 d | 
	}
	\alternative {
		{ cis8 cis4. e8 e | }
		{ \partial 2 cis8 cis4. | }
	}
	\bar "|."
}

violinTres = \new Voice \relative c'' {
	\partial 4 r8 r8 |
	\repeat volta 4 {
		a,4. e'4. | a,4. e'4. | a,4. e'4. | a,4. e'4. | 
		a,4. e'4. | a,4. e'4. | a,4. e'4. | a,4. e'4. | 
		a,4. e'4. | a,4. e'4. | a,4. e'4. | 
		a,4. e'4. | a,4. e'4. | a,4. e'4. | a,4. e'4. |
	}
	\alternative {
		{ a,4. e'4. | }
		{ a,2 | }
	}
	\bar "|."
}

\score {
	\new StaffGroup <<
		\new Staff \with { instrumentName = "Violín 1" }
			<< \global \violinUno >>
			\addlyrics {
				Ha cia | 
				Be lén se en | ca minan 
				Ma ría | con su~a man te | es poso 
				lle van do | en~su com pa | ñí a 
				a Dios | to do po de | ro so.
				%%
				A le | grí a,~a le grí a,~a le | grí a, 
				a le | grí a,~a le grí a~y pla | cer
				que la | Vir gen va de | pa so
				con su | es poso ha cia | Be lén.
				%%
				En cuan |
			}
			\addlyrics {
				\skip 1 \skip 1 |
				to~a Be lén lle ga ron
				posa da~al pun to pi di e ron 
				na die les qui so hos pe dar
				por que tan po bres le vie ron.
				%%
				A le | grí a,~a le grí a,~a le | grí a, 
				a le | grí a,~a le grí a~y pla | cer
				que la | Vir gen va de | pa so
				con su | es poso ha cia | Be lén.
				%%
				Los pa | 
			}
			\addlyrics {
				\skip 1 \skip 1 |
				ja ri llos del | bos que
				a bren | pa so a los | es posos
				les can | ta ban me lo | dí as
				con sus | tri nos ar mo | nio sos.
				%%
				A le | grí a,~a le grí a,~a le | grí a, 
				a le | grí a,~a le grí a~y pla | cer
				que la | Vir gen va de | pa so
				con su | es poso ha cia | 
				%%
				\skip 1 \skip 1 \skip 1 \skip 1 |
				Be lén.
				%%

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
			\line \smallCaps \bold { ¡Alegría, alegría, alegría! }
			\hspace #1
			\line { Hacia Belén se encaminan }
			\line { María con su amante esposo }
			\line { llevando en su compañía }
			\line { a Dios todopoderoso }
			\hspace #1
			\line \italic { Alegría, alegría, alegría, }
			\line \italic { alegría, alegría y placer }
			\line \italic { que la Virgen va de paso }
			\line \italic { con su esposo hacia Belén. }
			\hspace #1
			\line { En cuanto Belén llegaron }
			\line { posada al punto pidieron }
			\line { nadie les quiso hospedar }
			\line { porque tan pobres le vieron. }
			\hspace #1
			\line \italic { Alegría, alegría, alegría, }
			\line \italic { alegría, alegría y placer }
			\line \italic { que la Virgen va de paso }
			\line \italic { con su esposo hacia Belén. }
		}
		\hspace #2
		\column {
			\line { Los pajarillos del bosque, }
			\line { abren paso a los esposos }
			\line { les cantaban melodías }
			\line { con sus trinos armoniosos. }
			\hspace #1
			\line \italic { Alegría, alegría, alegría, }
			\line \italic { alegría, alegría y placer }
			\line \italic { que la Virgen va de paso }
			\line \italic { con su esposo hacia Belén. }
			\hspace #1
			\line { Hacia Belén se encaminan }
			\line { María con su amante esposo }
			\line { llevando en su compañía }
			\line { a Dios todopoderoso }
			\hspace #1
			\line \italic { Alegría, alegría, alegría, }
			\line \italic { alegría, alegría y placer }
			\line \italic { que la Virgen va de paso }
			\line \italic { con su esposo hacia Belén. }
		}
		\hspace #1
	}
}