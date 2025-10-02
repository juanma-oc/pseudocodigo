Algoritmo sin_titulo
	Escribir "Introduce un numero"
	leer num
	i = 0
	multip = 0 
	mensaje = "Los multiplos de " + ConvertirATexto(num) + " multiplicado por 12" + " es: "
	Repetir
		i = i + 1 
		multip = num * i
		mensaje = mensaje + ConvertirATexto(multip) + " " 
	Hasta Que i >= 12
	Escribir  mensaje
FinAlgoritmo
