Funcion ocult <- ocultarPalabra(b)
	ocult = ""
	Para i <- 1 hasta Longitud(b)
		si i = 1 o i = Longitud(b)
			ocult <- ocult + Subcadena(b,i,i)
		SiNo
			ocult <- ocult + "*"
		FinSi
	FinPara
FinFuncion

Funcion num <- aparicionletra(palabra,letra)
	num = 0
	para i <- 1 hasta Longitud(palabra)
		si Subcadena(palabra,i,i) = letra
			num <- num + 1
		FinSi
	FinPara	
FinFuncion

Funcion swap <- sustituir(palabra,letra1,letra2)
	swap = ""	
	Para i <- 1 hasta Longitud(palabra) 
		si Subcadena(palabra,i,i) = letra1
			swap <- swap + letra2
		SiNo 
			swap <- swap + Subcadena(palabra,i,i)
		FinSi
	FinPara
	si swap = palabra Entonces
		swap = "La letra intruducida (" + letra1 + ") no esta en la palabra (" + palabra + ") por lo que no se puede cambiar por (" + letra2 + ")"
	FinSi
FinFuncion

Funcion a <- booleano(palabra,letra)
	a = Falso
	mientras i < Longitud(palabra) y a = Falso
		i<- i+1
		si Subcadena(palabra,i,i) = letra
			a = Verdadero
		FinSi
	FinMientras
FinFuncion


Algoritmo ej_funciones4 
	
	Escribir "Introduce una palabra"
	Leer pal 
	b <- ocultarPalabra(pal)
	Escribir b
//--------------------------------------------------------------------------	
	Escribir "Escribe una palabra"
	Leer palabra
	Escribir "Escribe un caracter"
	Leer caract
	num <- aparicionletra(palabra,caract)
	Escribir "En la palabra `" , palabra  "´ hay `", num , "´ `" , caract "´ repetido"
	
//--------------------------------------------------------------------------	
	Escribir  "Introduce una palabra"
	Leer pal1
	Escribir "Introduce una letra para ser intercambiada"
	Leer letr1
	Escribir "Introduce letra para intercambiar"
	Leer letr2
	cambio <- sustituir(pal1,letr1,letr2)
	Escribir  cambio
	
//--------------------------------------------------------------------------	
	Escribir "Introduce una palabra"
	Leer palabra1
	Escribir "Introduce una letra para comprobar si esta o no en la palabra anterior"
	Leer letra1
	truefalse<- booleano(palabra1,letra1)
	Escribir truefalse
//	si truefalse
//		Escribir "La letra `" letra1 "´ esta en la palabra `" palabra1, "´"
//	SiNo
//		Escribir "La letra `" letra1 "´ NO esta en la palabra `" palabra1, "´"
//	FinSi
	
FinAlgoritmo
