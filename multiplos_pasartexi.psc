Algoritmo multiplos
	Escribir 'Introduce un numero'
	Leer n
	m <- 0
	i <- 0
	resultado <- 'Multiplos < 100 son: '
	Repetir
		resultado <- resultado+ConvertirATexto(m)
		si (m+n) < 100
			resultado <- resultado +', '
		FinSi
		i <- i+1
		m <- i*n
	Hasta Que m>=100
	Escribir resultado
FinAlgoritmo
