// Diseña un algoritmo que nos diga si un numero introduicdo por teclado es primo. Un numero primo solo es divisible por si mismo y por 1
Algoritmo hola
	Escribir 'Introduce un numero'
	Leer num
	primo <- Verdadero
	i <- 2	
	si num >= 2 Entonces // para filtrar que no metan un numero 1 ya que no son primos
		mientras primo y i < num Hacer //condicion del buqlue 
			si num mod i == 0 entonces //mira si la division es posible con el numero que suma
				primo <- Falso //dice que no es primo
				Escribir  num " es divisible entre " i //muestra el numero por su numero divisible
			FinSi
			i <- i + 1 //suma 1
		FinMientras
	SiNo
		primo <- Falso
	FinSi
	
	Si primo Entonces
		Escribir  "El numero es primo"
	SiNo
		Escribir  "El numero no es primo"
	FinSi
FinAlgoritmo

//	Para i<-2 Hasta num-1 Hacer
//		Si num MOD i==0 Entonces
//			primo <- Falso
//		FinSi
//	FinPara
//	Si primo=Verdadero Entonces
//		Escribir 'El numero introducido es primo'
//	SiNo
//		Escribir 'El numero introducido no es primo'
//	FinSi