//Diseña un algoritmo que nos devuelva el mayor de los 5 numeros

Algoritmo mayor3
	Escribir  "Escribe el numero 1"
	Leer num1
	i = 2
	Mientras i <= 3 Hacer
		Escribir "Escribe el numero " i
		Leer num2
		si num1 < num2 Entonces
			num1 = num2
		FinSi
		i = i + 1
	FinMientras
	
	Escribir  "El numero mas grande es " num1
FinAlgoritmo
