# Villancicos Populares

La palabra villancico significa _canción de la villa_ y a lo largo de la 
historia su significado ha sufrido una serie de transformaciones hasta que en
el siglo XIX se reserva para los cantos que aluden a la navidad.

La mayoría de los villancicos son canciones folklóricas, esto implica que sus 
autores se han perdido con el paso del tiempo pero han llegado hasta nuestros
días gracias a nuestra memoria colectiva.

En este proyecto he compilado quince villancicos con arreglos para trío de 
violines. Esta compilación es ideal para que forme parte del repertorio de 
cualquier estudiante de violín.

## Compilando partituras individuales

Hay un archivo `lilypond` por cada partitura del libro, para compilarlas
solo es necesario tener instalado lilypond, en Arch Linux sería:

> pacman -S lilypond

y luego

> lilypond nombre-partitura.ly

## Las partituras

En esta tabla se listan las partituras que se incluirán en el libro, tanto 
las terminadas como las que están en proceso de edición:

- [x] Adeste Fideles + letra
- [x] Noche de Paz + letra
- [x] Campanas de Belén + letra
- [x] Dime Niño + letra
- [x] Fum, fum, fum + letra
- [x] Pero mira como beben + lírica + letra
- [x] ¡Ay del chiquirritin!
- [x] La marimorena
- [x] Alegrı́a, alegrı́a
- [x] Rin, rin
- [x] El niño del tambor
- [x] El burrito sabanero
- [x] Arre borriquito
- [x] Nochebuena Panameña + letra
- [x] Feliz navidad
- [x] Extra: Nearer, My God, to Thee

## Compilando el libro

He intentado por todos los medios crear este libro integrando LaTeX y Lilypond;
sin embargo, reconozco que esto es sumamente complicado de manera tal que he 
optado por escribir cada obra de manera individual y luego compilarla como un
solo documento PDF para distribución electrónica por medio de `pdflatex`.

En primera instancia compilo todos los villancicos en un solo documento:

> pdflatex villancicos-compilados.tex

Y luego en el directorio export genero el documento final

> cd export
>
> pdflatex libro-villancicos.tex

La versión final del libro estará disponible en *releases* una vez terminado y 
del mismo modo las subsecuentes ediciones o correcciones.