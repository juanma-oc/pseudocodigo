// Diseña un algortimo al que se le pase el tiempo en minutos y segundos de un atleta al recorrer 1500 metros. El algoritmo debe mostrar la velocidad
// en kilometros/hora de dicho atleta
Algoritmo minutos
	Escribir 'Cuantos minutos has tardado'
	Leer min
	Escribir 'Cuantos segundos?'
	Leer sec
	km <- 1.5
	hor <- 3600
	vel <- 0
	
	// Paso los numeros introducidos a segundos
	sec <- (min*60)+sec
	
	// Paso todo a km/h Para luego dejarle 2 decimales
	b <- (km*hor/sec)
	vel <- Redon (b*100)
	vel <- vel / 100
	
	//vel <- Redon((km*hor)/sec)
	a <- ConvertirATexto(vel)+'km/h' //para convertir a texto la solucion para poder poner el mensaje completo
	Escribir 'El atleta corre a '+a
FinAlgoritmo
