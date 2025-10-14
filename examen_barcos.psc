Funcion numopcion <- menu  //menu
	numopcion <- -1 
	mientras numopcion > 6 o numopcion < 0
		Escribir "¿Que necesitas ver?:"
		Escribir "1. Consultar posición"
		Escribir "2. Modificar posición"
		Escribir "3. Borrar un barco"
		Escribir "4. Listar posiciones"
		Escribir "5. Calcular distancia entre barcos"
		Escribir "6. Consultar existencia de barco"
		Escribir "0. Salir"
		Leer numopcion
		si numopcion > 6 o numopcion < 0 
			Escribir  "Opcion no valida"
		FinSi
	FinMientras
FinFuncion

Funcion posicion <- ConsultaPosi(nombreBarcos,coordX,coordY,numBarcos)  //opcion 1 
	Escribir "Introduce el nombre del barco a buscar" 
	Leer barco
	i <- 1
	encontrado <- Falso
	posicion <- 0 
	mientras i <= numBarcos y encontrado == Falso
		si barco == nombreBarcos[i]
			Escribir  "El barco ", nombreBarcos[i], " esta en la posicion (", coordX[i], ",", coordY[i], ")"
			posicion <- i
			encontrado <- Verdadero
		FinSi
		i <- i + 1
	FinMientras
	si encontrado == Falso
		Escribir  "No existe un barco con ese nombre"
	FinSi
FinFuncion

Funcion CambiarPosi(nombreBarcos,coordX,coordY,numBarcos,posicion)//opcion 2	
	si posicion <> 0 Entonces
		Escribir  "Introduce nueva coordenada x del barco " , nombreBarcos[posicion]
		Leer coordX[posicion]
		Escribir "Introduce nueva coordenada y del barco " , nombreBarcos[posicion]
		Leer coordY[posicion]
	FinSi
FinFuncion

Funcion BorrarBarco(nombreBarcos,coordX,coordY,numBarcos,posicion) //opcion 3
	si posicion <> 0 Entonces
		Escribir  "Barco " nombreBarcos[posicion] " borrado"
		nombreBarcos[posicion] <- ""
		coordX[posicion] <- ""
		coordY[posicion] <- ""
	FinSi	
FinFuncion

Funcion PosiBarco(nombreBarcos,coordX,coordY,numBarcos) //opcion 4
	Escribir  "Listado de barcos: "
	para i <- 1 hasta numBarcos
		Escribir i, ". ", nombreBarcos[i], " (", coordX[i], ",", coordY[i], ")"
	FinPara	
FinFuncion

Funcion calculoDist <- CalcularDist(nombreBarcos,coordX,coordY,numBarcos,posicion1,posicion2) //opcion 5 
	calculoDist <- 0
	si posicion1 <> 0 y posicion2 <> 0 Entonces
		calculoDist <- RC((coordX[posicion2]-coordX[posicion1])+(coordY[posicion2]-coordY[posicion1]))
	FinSi	
FinFuncion

Funcion  existe <- ExisteBarco(nombreBarcos,coordX,coordY,numBarcos,posicion) //opcion 6
	si posicion <> 0 Entonces
		existe <- Verdadero
	SiNo
		existe <- Falso
	FinSi	
FinFuncion


Algoritmo barcos_examen
	Escribir  "¿Cuantos barcos quieres registrar?"
	Leer numBarcos
	
	Dimension nombreBarcos[numBarcos]
	Dimension coordX[numBarcos]
	Dimension coordY[numBarcos]
	
	para i <- 1 hasta numBarcos Hacer
		Escribir  "Introduce nombre del barco " i
		Leer nombreBarcos[i]
		Escribir  "Introduce coordenada x del barco " i
		Leer coordX[i]
		Escribir  "Introduce coordenada y del barco " i
		Leer coordY[i]
	FinPara
	
	continuar <- Verdadero
	mientras continuar 
		eleccion <- menu 
		segun eleccion
			1: 
				Escribir "", ConsultaPosi(nombreBarcos,coordX,coordY,numBarcos)
			2: 
				posicion <- ConsultaPosi(nombreBarcos,coordX,coordY,numBarcos); 
				CambiarPosi(nombreBarcos,coordX,coordY,numBarcos,posicion)
			3: 
				posicion <- ConsultaPosi(nombreBarcos,coordX,coordY,numBarcos); 
				BorrarBarco(nombreBarcos,coordX,coordY,numBarcos,posicion)
			4: 
				PosiBarco(nombreBarcos,coordX,coordY,numBarcos)
			5:
				posicion1 <- ConsultaPosi(nombreBarcos,coordX,coordY,numBarcos); 
				posicion2 <- ConsultaPosi(nombreBarcos,coordX,coordY,numBarcos); 
				calculoDist <- CalcularDist(nombreBarcos,coordX,coordY,numBarcos,posicion1,posicion2);
				si calculoDist <> 0 Entonces  //para que no de fallo con los arrays, en caso de no existir esa posicion
					Escribir  "La distancia entre el barco " nombreBarcos[posicion1] " y el barco ", nombreBarcos[posicion2], " es de ", calculoDist
				FinSi
			6: 
				posicion <- ConsultaPosi(nombreBarcos,coordX,coordY,numBarcos);
				existe <- ExisteBarco(nombreBarcos,coordX,coordY,numBarcos,posicion)
				si existe Entonces
					Escribir  "En la lista de barcos existe uno nombrado como " nombreBarcos[posicion]
				SiNo
					Escribir  "En la lista no existe ningun barco con ese nombre"
				FinSi
			0: 
				continuar <- Falso
		FinSegun
	FinMientras
FinAlgoritmo
