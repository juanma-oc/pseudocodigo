Algoritmo sin_titulo
	Escribir "Introduce dos numeros" 
	Leer n1, n2 
	suma = 0
	mensaje = "Los multiplos de " + ConvertirATexto(n1) + " hasta llegar a " + ConvertirATexto(n2) + " son "
	mientras suma + n1 <= n2 Hacer
		suma = suma + n1
		si suma + n1 <= n2 Entonces
			mensaje = mensaje + ConvertirATexto(suma) + ", "
		SiNo
			mensaje = mensaje + ConvertirATexto(suma)
		FinSi
	FinMientras
	escribir mensaje
FinAlgoritmo
