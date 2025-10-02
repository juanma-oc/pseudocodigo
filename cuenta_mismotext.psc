Algoritmo sin_titulo
	i= 0
	palabreria = " La cuenta es " 
	mientras i < 10 Hacer
		i = i + 1
		si i < 10 Entonces
// Introduce lo anterior mas el numero terminado en , solo si no es ultimo numero
			palabreria = palabreria + ConvertirATexto(i) + ", "
		SiNo
			palabreria = palabreria + ConvertirATexto(i)
		FinSi
	FinMientras
	Escribir palabreria 
FinAlgoritmo
