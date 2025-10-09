Funcion numopcion <- menu
	numopcion <- -1 
	mientras numopcion > 7 o numopcion < 0
		Limpiar Pantalla
		Escribir "¿Que necesitas ver?:"
		Escribir "1. Nota Media"
		Escribir "2. Nota Maxima"
		Escribir "3. Nota Minima"
		Escribir "4. Numero de Aprobados"
		Escribir "5. Revisar todas las Notas"
		Escribir "6. Revisar una nota concreta"
		Escribir "7. Cambiar Nota concreta"
		Escribir "0. Salir"
		Leer numopcion
		
		si numopcion > 7 o numopcion < 0 
			Escribir  "Opcion no valida"
			Esperar 2 Segundos
		FinSi
	FinMientras
FinFuncion

Funcion media <- CalcNotaMedia(array,num)
	media <- 0
	para i <- 1 hasta num
		suma <- array[i] + suma
	FinPara
	media <- suma / num
FinFuncion

Funcion numMax <- CalcNotaMax(array,num,nombre)
	numMax <- 0
	para i <- 1 hasta num
		si array[i] > numMax
			numMax <- array[i]
			alumnMax <- nombre[i]
		FinSi
	FinPara
	Escribir "La nota mas alta es del alumno " alumnMax, " y ha sacado un " numMax
FinFuncion

Funcion numMin <- CalcNotaMin(array,num,nombre)
	numMin <- 10
	para i <- 1 hasta num
		si array[i] < numMin
			numMin <- array[i]
			alumnMin <- nombre[i]
		FinSi
	FinPara
	Escribir "La nota mas baja es del alumno " alumnMin, " y ha sacado un " numMin
FinFuncion

Funcion aprob <- CalcAprob(array,num)
	aprob <- 0
	para i <- 1 hasta num
		si array[i] > 4
			aprob <- aprob + 1
		FinSi
	FinPara
FinFuncion

Funcion total <- TotalNotas(array,num,nombre)
	para i <- 1 hasta num
		Escribir "La nota del alumno ", nombre[i] " ha sido ", array[i]
	FinPara	
FinFuncion

Funcion alumN <- NotaConcreta(array,num,nombre)
	Escribir "Introduce el nombre del alumno para revisar su nota" 
	Leer alu
	i <- 1
	alumN <- 0 
	encontrado <- Falso
	mientras i <= num y encontrado == Falso
		si alu == nombre[i]
			Escribir  "El alumno ", nombre[i] " ha sacado un: ", array[i]
			alumN <- i
			encontrado <- Verdadero
		FinSi
		i <- i + 1
	FinMientras
	si encontrado == Falso
		Escribir  "No existe un alumno con ese nombre"
	FinSi
FinFuncion

Funcion notacamb <- CambiarNota(array,num,nombre,alumN)
	si alumN <> 0 Entonces
		Escribir  "Introduce la nota que le quieres poner"
		Leer notaN
		array[alumN] <- notaN
		Escribir  "La nota se ha introducido, ahora el alumno " nombre[alumN], " tiene un " array[alumN]
	FinSi
FinFuncion

//---------------------------------------º----------------------------------------
Algoritmo notas	
	Escribir  "¿Cuantos alumnos tienes?"
	Leer numAlumn
	
	Dimension notaAlumn[numAlumn]
	Dimension nombreAlumn[numAlumn]
	
	para i <- 1 hasta numAlumn Hacer
		Escribir  "Escribe el nombre del alumno " i
		Leer nombreAlumn[i]
		Escribir  "Introduce la nota de " nombreAlumn[i]
		Leer notaAlumn[i]
	FinPara
		a <- Verdadero
	mientras a 
		eleccion <- menu 
		segun eleccion
			1: Escribir "La nota media es: ", CalcNotaMedia(notaAlumn,numAlumn)
			2: numMax <- CalcNotaMax(notaAlumn,numAlumn,nombreAlumn)
			3: numMin <- CalcNotaMin(notaAlumn,numAlumn,nombreAlumn)
			4: Escribir "El numero de alumnos de aprovados es: ", CalcAprob(notaAlumn,numAlumn)
			5: aprob <- TotalNotas(notaAlumn,numAlumn,nombreAlumn)
			6: alumN <- NotaConcreta(notaAlumn,numAlumn,nombreAlumn)
			7: alumN <- NotaConcreta(notaAlumn,numAlumn,nombreAlumn);Escribir CambiarNota(notaAlumn,numAlumn,nombreAlumn,alumN)
			0: a <- Falso
		FinSegun	
		Escribir "¿Quieres hacer algo mas? (0 para salir)"
		Leer accion
		
		si accion == 0 Entonces
			a <- Falso
		FinSi
	FinMientras
FinAlgoritmo

