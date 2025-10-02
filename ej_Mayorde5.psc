//diseña un algoritmo que nos devuelva el mayor de los 5 numeros
Funcion mayor <- mayorde(n1, n2, n3) 
	mayor = n1
	
	si mayor < n2 Entonces
		mayor = n2
	FinSi
	
	si mayor < n3 Entonces
		mayor = n3
	FinSi
	
FinFuncion
//------------------------------------------------------------------------º--------------------------------------------------------------------
Algoritmo sin_titulo
	Escribir "Introduce 5 numeros"
	Leer n1, n2, n3, n4, n5
	
	mayor <- mayorde(n1, n2, n3)
	
	si mayor < n4 Entonces
		mayor = n4
	FinSi
	
	si mayor < n5 Entonces
		mayor = n5
	FinSi
	
	Escribir "De los numeros introducidos : " n1 ", " , n2 ", " , n3 , ", " n4 ", " , n5 " El mayor es " mayor
FinAlgoritmo