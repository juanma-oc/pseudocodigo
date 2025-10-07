Funcion cuenta <- infoUsuario(product,cant)
	Segun product Hacer 
		1: art <- "Cafe"
		2: art <- "Cocacola"
		3: art <- "Fanta Naranja"
		4: art <- "Fanta Limon"
		5: art <- "Bocata(s) Aceite Tomate"
		6: art <- "Bocata(s) Aceite Jamon"
		7: art <- "Bocata(s) Mixto"	
	FinSegun
	Segun product Hacer 
		1,2,3,4: cuenta <- cuenta + (1.10*cant)
		5,6,7: cuenta <- cuenta + (1.50*cant)
	FinSegun
	Escribir  "Has pedido ", cant, " ", art
FinFuncion

Funcion  cant <- pedirCantidad(min,max)
	Escribir  "¿Cuantos quieres?"
	Leer cant
	si cant <= min y cant >= max Entonces
		Escribir  "La cantidad tiene que estar entre 1 y 30"
	FinSi
FinFuncion

Funcion producto <- carta
	producto <- -1 
	mientras producto < 0 o producto > 7 Hacer
		Escribir "Bienvenido a la Cafeteria Conchi"
		Escribir "Esto son los articulos disponibles:"
		Escribir "1. Cafe"
		Escribir "2. Cocacola "
		Escribir "3. Fanta de Naranja"
		Escribir "4. Fanta de Limon"
		Escribir "5. Bocadillo de aceite y tomate"
		Escribir "6. Bocadillo de aceite y jamón"
		Escribir "7. Bocadillo mixto" 
		Escribir  ""
		Escribir  "¿Que quieres pedir?"
		Leer  producto
	FinMientras
FinFuncion

Algoritmo ej_conchi	
	i <- 1
	mientras i > 0 Hacer
		pedido <- carta
		si pedido == 0
			i <- 0
		finsi
//----------------------------------------------------------
		total <- 0
		mientras pedido > 0 Hacer
			cant <- pedirCantidad(1,30)
			total <- infoUsuario(pedido,cant)		
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