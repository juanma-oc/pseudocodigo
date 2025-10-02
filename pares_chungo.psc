// diseñar un algoritmo que acepte numeros por teclados hasta leer un 0. La salida sera la suma de los numeros pares y
//la multiplicacion de los impares

Funcion nEspar <- pares (a1)
	
	si a1 % 2 = 0
		nEspar = Verdadero
	SiNo
		nEspar = Falso
	FinSi
FinFuncion

// --------------------------------------------------------------º---------------------------------------------------------//
Algoritmo sin_titulo
	n1 <- 1
	a <- 0
	b <- 1
	mientras n1 <> 0 
		Escribir  "Escribe un numero"
		Leer n1
		Escribir  n1 
		espar <- pares(n1)
		
		si espar Entonces
			a <- a + n1
		SiNo
			b <- b * n1
		FinSi
	FinMientras
	Escribir  "La suma de los numeros pares es " a 
	Escribir  "La multiplicaciones de los numeros impares es " b
	
FinAlgoritmo
