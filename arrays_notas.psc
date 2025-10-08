Algoritmo notas
	suma <- 0
	Nmin <- 10 
	Nmax <- 0 
	
	Escribir  "¿Cuantos alumnos tienes?"
	Leer n
	
	Dimension nota[n]
	
	para i <- 1 hasta n Hacer
		Escribir  "Introduce la nota " i
		Leer nota[i]
		
		suma <- suma + nota[i]
		
		si nota[i] >= n Entonces
			NumApro <- NumApro + 1
		FinSi
		
		si Nmax < nota[i] Entonces
			Nmax <- nota[i]
		FinSi
		
		si Nmin > nota[i] Entonces
			Nmin <- nota[i]
		FinSi
	FinPara
	
	Nmedia <- suma / n
	
	Escribir "La nota media es: ", Nmedia
	Escribir "La nota maxima ha sido: ", Nmax
	Escribir "La nota minima ha sido: ", Nmin
	Escribir "Los numeros de aprovados son: ", NumApro
	
	para i <- 1 hasta n
		Escribir "La nota del alumno ", i " ha sido ", nota[i]
	FinPara
FinAlgoritmo

