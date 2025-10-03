Algoritmo reloj
	Escribir "Introduce la hora"
	leer hora
	Escribir  "Introduce los minutos"
	leer minutos
	
	segund <- 0
	
	mientras a == 0
		Escribir  "La hora actual es ", hora ":" , minutos, ":", segund
		
		si segund >= 59 Entonces
			minutos <- minutos + 1
			segund <- 0
		FinSi
		
		si minutos >= 60
			hora <- hora + 1
			minutos <- 0
		FinSi
		
		si hora >= 24
			hora <- 0
		FinSi
		
		segund <- segund + 1 
		esperar 1 Segundos
		
	FinMientras
	
FinAlgoritmo
