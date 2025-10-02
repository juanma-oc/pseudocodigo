// Por un empleado en un mes. El programa devolverra el sueldo a cobrar teniendo en cuanta ue tiene un sueldo base de 600? y por cada hora se paga 30.15
// El sueldo mnimo son 1500?
Algoritmo hola
	Escribir "¿Cuantas horas has trabajado?"
	Leer horas
	sueldo <- 600
	min <- 1500
	paga <- 30.15
	
	sueldo <- sueldo + (paga * horas)
	
	si sueldo < min
		Escribir "El sueldo de este mes sera de " min "$"
	SiNo
		Escribir "El sueldo de este mes sera de " sueldo "$"
	FinSi
	
FinAlgoritmo
