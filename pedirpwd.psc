Algoritmo sin_titulo
	password = "Hello world"
	try = " " 
	
	mientras try <> password Hacer
		Escribir "Introduce contrase�a"
		leer try
		si try <> password Entonces
			Escribir "Womp Womp"
		FinSi
	FinMientras
	Escribir "La contrase�a era: " + try
FinAlgoritmo
