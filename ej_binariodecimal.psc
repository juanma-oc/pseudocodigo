Algoritmo sin_titulo
	Escribir "Introduce un numero binario para pasarlo a decimal"
	Leer numB
	
	para i = Longitud(numb) Hasta 0 Con Paso -1
		si (ConvertirANumero(Subcadena(numB,i,i))) = 1 Entonces
			numD = 2^(abs(i-Longitud(numB))) + numD
		FinSi
	FinPara
	
	Escribir numD
FinAlgoritmo
