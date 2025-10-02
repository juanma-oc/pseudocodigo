Algoritmo sin_titulo
	Escribir "Cuanto dinero dispone en la cuenta"
	Leer dispo	
	Escribir "Cuanto quiere retirar de su cuenta" 
	Leer num
	random = dispo - num
	
	si random >= 0 Entonces
		Escribir "Tienes suficiente saldo para retirar"
		Escribir "El saldo restante es " random
	SiNo
		Escribir "No tienes suficiente saldo para retirar"
		Escribir "Estas bollao"
	FinSi
	
	
FinAlgoritmo
