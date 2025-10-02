Funcion palabra_oculta <- ocultarPalabra(palabra)
	palabra_oculta <- ""
	Para i <- 1 hasta Longitud(palabra)
		si i == 1 o i == Longitud(palabra)
			palabra_oculta <- palabra_oculta + Subcadena(palabra,i,i)
		SiNo
			palabra_oculta <- palabra_oculta + "*"
		FinSi
	FinPara
FinFuncion

Funcion existe_letra <- devolver_booleano(palabra,letra)
	existe_letra <- Falso
	mientras i < Longitud(palabra) y existe_letra == Falso
		i<- i+1
		si Subcadena(palabra,i,i) == letra
			existe_letra <- Verdadero
		FinSi
	FinMientras
FinFuncion

Algoritmo ahorcado
	Escribir  "Introduce palabra a adivinar"
	Leer palabra
	pal_oculta <- ocultarPalabra(palabra)
	Escribir "¿Como te llamas?"
	Leer nombre
	
	vida <- 3
	Escribir  "Tienes 3 vidas, buena suerte"
	
	mientras pal_oculta <> palabra y vida > 0
		Escribir  nombre," elige una letra que falte: " ,pal_oculta
		Leer letra
		existe_letra <- devolver_booleano(palabra,letra)
		si existe_letra == Falso
			vida <- vida - 1 
			Escribir  "Te quedan ", vida, " vidas" 
		FinSi
	FinMientras
FinAlgoritmo