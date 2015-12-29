# signos_puntuacion: tabla con los signos de puntuacion a eliminar
# signos: variable con cada elemento de la tabla signos_puntuacion
# indice: indice de la tabla signos_puntuacion
# frase: variable con la frase que introducimos en la pantalla
# frase_dividida: array con las palabras (con signos de puntuación incluidos) que forman la variable frase
# frase_ordenada: array con el array frase_dividida ordenada
# palabra: elemento de la tabla frase_ordenada
# sinpuntos: tabla con las palabras sin puntuacion
# novale: variable con el signo de puntuación que se va a eliminar
# longitud: variable con la longitud de palabra (elemento de la tabla frase_ordenada)

# dividir la frase en palabras y ordenarla eliminando los caracteres de puntuación
def words_sorting(frase)
	signos_puntuacion = [",", ";", ".", ":", "!", "¡", "?"]
	sinpuntos = []
	frase_dividida = frase.split(" ")
	frase_ordenada = frase_dividida.sort
	frase_ordenada.each do |palabra|
		longitud = 0
		indice = 0
		haypunto = false
		while (indice <= 6) && (haypunto == false)
			novale = signos_puntuacion[indice]
			if  palabra.include? novale
		    	haypunto = true
		    	longitud = palabra.length
    			sinpuntos << palabra.byteslice(0..(longitud-2))
    			indice = 6
	    	end 
	    	indice = indice + 1
    	end
    	if haypunto == false
    	sinpuntos << palabra
    	end
	end
sort_capital_letters(sinpuntos)
end

#no diferencia entre mayúsculas y minúsculas al ordenar, pero luego imprime las palabras como antes eran
def sort_capital_letters(sinpuntos)
	down_up_case = Hash.new {}
	down_case = Array.new []
	sinpuntos_min = Array []
	lowercase = ""
	palabra = ""
	nueva_palabra = ""
	sinpuntos.each do |palabra|
		down_up_case[palabra.downcase] = palabra
		nueva_palabra = palabra.downcase
		sinpuntos_min << nueva_palabra

	end
		sinpuntos_min = sinpuntos_min.sort
		nueva_sinpuntos = ""
		con_may = Array.new []
		sinpuntos_min.each do |palabra_ind|
			nuevo_elem = down_up_case[palabra_ind]	
			con_may << nuevo_elem
		
		end
		
		encadena = con_may.join(" ")
		puts
		puts encadena
	
end

puts "Escribe una frase"
frase = gets.chomp
words_sorting(frase)