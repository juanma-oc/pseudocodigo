Funcion ocult <- ocultarPalabra(b)
	ocult <- ""
	Para i <- 1 hasta Longitud(b)
		si i == 1 o i == Longitud(b)
			ocult <- ocult + Subcadena(b,i,i)
		SiNo
			ocult <- ocult + "*"
		FinSi
	FinPara
FinFuncion

Funcion a <- booleano(palabra,letra)
	a <- Falso
	mientras i < Longitud(palabra) y a == Falso
		i<- i+1
		si Subcadena(palabra,i,i) == letra
			a <- Verdadero
		FinSi
	FinMientras
FinFuncion

Funcion x<- desocultarPalabra(palabra,pal_oculta,letra) 
	para i <- 1 hasta Longitud(palabra)
		si Subcadena(palabra,i,i) == Subcadena(pal_oculta,i,i) Entonces
			x <- x + Subcadena(pal_oculta,i,i) 
		SiNo
			si Subcadena(palabra,i,i) == letra Entonces
				x <- x + letra
			SiNo
				x <- x + Subcadena(pal_oculta,i,i)
			FinSi
		FinSi
	FinPara
FinFuncion

Funcion womp(vida)
	si vida <= 3 Entonces
		Escribir  " O"
	FinSi
	si vida <= 2 Entonces
		Escribir "\|/"
	FinSi
	si vida <= 1 Entonces
		Escribir "/\"
	FinSi
FinFuncion

Algoritmo adioasdjoasd
	Escribir  "Introduce palabra a adivinar"
	Leer palabra
	pal_oculta <- ocultarPalabra(palabra)
	Escribir "¿Como te llamas?"
	Leer nombre
	
	vida <- 3
	Escribir  "Tienes 3 vidas, buena suerte"
	
	mientras pal_oculta <> palabra y vida > 0
		Escribir  nombre," elige una letra que falte " ,pal_oculta
		Leer letra
		a <- desocultarPalabra(palabra,pal_oculta,letra)
		b <- booleano(palabra,letra)
		womp(vida)
		si b == Falso
			vida <- vida - 1 
			Escribir  "Te quedan ", vida, " vidas"
		SiNo
			pal_oculta <- a 
		FinSi
	FinMientras
FinAlgoritmo
