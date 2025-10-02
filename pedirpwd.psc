Algoritmo sin_titulo
	password = "Hello world"
	try = " " 
	
	mientras try <> password Hacer
		Escribir "Introduce contraseña"
		leer try
		si try <> password Entonces
			Escribir "Womp Womp"
		FinSi
	FinMientras
	Escribir "La contraseña era: " + try
FinAlgoritmo
