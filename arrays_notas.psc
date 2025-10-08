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

Funcion numMax <- CalcNotaMax(array,num)
	numMax <- 0
	para i <- 1 hasta num
		si array[i] > numMax
			numMax <- array[i]
		FinSi
	FinPara
FinFuncion

Funcion numMin <- CalcNotaMin(array,num)
	numMin <- 10
	para i <- 1 hasta num
		si array[i] < numMin
			numMin <- array[i]
		FinSi
	FinPara
FinFuncion

Funcion aprob <- CalcAprob(array,num)
	aprob <- 0
	para i <- 1 hasta num
		si array[i] > 4
			aprob <- aprob + 1
		FinSi
	FinPara
FinFuncion

Funcion total <- TotalNotas(array,num)
	para i <- 1 hasta num
		Escribir "La nota del alumno ", i " ha sido ", array[i]
	FinPara	
FinFuncion

Funcion alumN <- NotaConcreta(array,num)
	mientras n1 > num o n1 < 1 
		Escribir "Introduce un numero para revisar su nota" 
		Leer n1
		si n1 > num o n1 < 1
			Escribir  "No existe un alumno asignado a ese numero"
		FinSi
	FinMientras
	Escribir  "El alumno con el numero introducido ha sacado un: " array[n1]
FinFuncion

Funcion notacamb <- CambiarNota(array,num)
	mientras n1 > num o n1 < 1 
		Escribir "Introduce el numero del alumno al cual quieres cambiar la nota"
		Leer n1
		si n1 > num o n1 < 1
			Escribir  "No existe un alumno asignado a ese numero"
		FinSi
	FinMientras
	Escribir  "El alumno " n1 " tiene un " array[n1]
	Escribir  "Introduce la nota que le quieres poner"
	Leer notaN
	array[n1] <- notaN
	Escribir  "La nota se ha introducido, ahora el alumno " n1, " tiene un " array[n1]
FinFuncion

//---------------------------------------º----------------------------------------
Algoritmo notas	
	Escribir  "¿Cuantos alumnos tienes?"
	Leer numAlumn
	Dimension notaAlumn[numAlumn]
	para i <- 1 hasta numAlumn Hacer
		Escribir  "Introduce la nota " i
		Leer notaAlumn[i]
	FinPara
	
	a <- Verdadero
	mientras a 
		eleccion <- menu 
		segun eleccion
			1: Escribir "La nota media es: ", CalcNotaMedia(notaAlumn,numAlumn)
			2: Escribir "La nota maxima ha sido: ", CalcNotaMax(notaAlumn,numAlumn)
			3: Escribir "La nota minima ha sido: ", CalcNotaMin(notaAlumn,numAlumn)
			4: Escribir "El numero de alumnos de aprovados es: ", CalcAprob(notaAlumn,numAlumn)
			5: Escribir TotalNotas(notaAlumn,numAlumn)
			6: Escribir NotaConcreta(notaAlumn,numAlumn)
			7: Escribir CambiarNota(notaAlumn,numAlumn)
			0: a <- Falso
		FinSegun	
		Escribir "¿Quieres hacer algo mas? (0 para salir)"
		Leer accion
		
		si accion == 0 Entonces
			a <- Falso
		FinSi
	FinMientras
FinAlgoritmo

