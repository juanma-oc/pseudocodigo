Funcion carta(a)
	Escribir "Esto son los articulos disponibles:"
	Escribir "1. Cafe"
	Escribir "2. Cocacola "
	Escribir "3. Fanta de Naranja"
	Escribir "4. Fanta de Limon"
	Escribir "5. Bocadillo de aceite y tomate"
	Escribir "6. Bocadillo de aceite y jamón"
	Escribir "7. Bocadillo mixto" 
	Escribir  ""
	
FinFuncion


Algoritmo ej_conchi	
	i <- 1
	mientras i > 0 Hacer
		Borrar Pantalla
		Escribir "Bienvenido a la Cafeteria Conchi"
		carta(a)
		Escribir  "¿Que quieres pedir?"
		Leer pedido
		si pedido == 0
			i <- 0
		finsi
//----------------------------------------------------------
		total <- 0
		mientras pedido > 0 Hacer
			Escribir  "¿Cuantos quieres?"
			Leer cant
			
			Segun pedido Hacer 
				1,2,3,4: total <- total + (1.10*cant)
				5,6,7: total <- total + (1.50*cant)		
			De Otro Modo: 
				Escribir "No se ha encontrado el articulo" 
			FinSegun
		
			Escribir "Cuenta total del cliente: " total " euros."
			Escribir  "¿Algo mas para pedir? (Usa el 0 para salir en caso negativo)"
			Leer pedido
		FinMientras
		
		si total <> 0 Entonces
			Escribir "La cantidad de pagar por el cliente es de: " total " euros."
			Esperar 5 Segundos
		FinSi
		
		total_dia <- total_dia + total
//----------------------------------------------------------
	FinMientras
	Escribir "El total recaudado hoy es de: " total_dia " euros."
	
FinAlgoritmo