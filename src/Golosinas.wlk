object bombon {
	var precio = 5
	var peso = 15
	var sabor = "frutilla"
	var gluten = false
	
	method recibeMordisco() {
		peso = (peso * 0.8) - 1
		return console.println("El bombon ha recibido un mordisco")
	}
}

object alfajor {
	var precio = 12
	var peso = 300
	var sabor = "chocolate"
	var gluten = true
	
	method recibeMordisco() {
		peso = (peso * 0.8)
		return console.println("El alfajor ha recibido un mordisco")
	}
}


object caramelo {
	var precio = 1
	var peso = 5
	var sabor = "frutilla"
	var gluten = false
	
	method recibeMordisco() {
		peso = peso--
		return console.println("El caramelo ha recibido un mordisco")
	}
}

object chupetin {
	var precio = 2
	var peso = 7
	var sabor = "naranja"
	var gluten = false
	
	method recibeMordisco() {
		if (peso > 2) {
			peso = (peso * 0.9)
		} else {
			return console.println("El chupetin no perdió peso")
		}
		return console.println("El chupetin ha recibido un mordisco")
	}
}

object oblea {
	var precio = 5
	var peso = 250
	var sabor = "vainilla"
	var gluten = true
	
	method recibeMordisco() {
		if (peso > 70) {
			peso = (peso * 0.5)
		} else {
			peso = (peso * 0.75)
		}
		return console.println("La oblea ha recibido un mordisco")
	}
	
	method peso() {
		return peso
	}
	
	method precio() {
		return precio
	}
	
	method sabor() {
		return sabor
	}
	
	method gluten() {
		return gluten
	}
}

object chocolatin {
	var precio = 0
	var peso = 0
	var sabor = "chocolate"
	var gluten = true
	
	method recibeMordisco() {
		peso = peso - 2
		return console.println("El chocolatin ha recibido un mordisco")
	}
	
	method peso(gramos) {
		peso = gramos
		precio = gramos * 0.50
	}
}

object golosinaBaniada {
	var golosina = oblea
	var precio = 2 + golosina.precio()
	var peso = 4 + golosina.peso()
	var sabor = golosina.sabor()
	var gluten = golosina.gluten()
	
	
	method recibeMordisco() {
		if (peso != 0) { peso = peso - 2 }
		golosina.recibeMordisco()
		console.println("El bañado de la golosina ha recibido un mordisco")
	}
}

object pastillaTuttiFrutti {
	var peso = 5
	var gluten = null
	var sabor = "frutilla"
	
	method gluten(valor) {
		if (valor == true) { gluten = true} else { gluten = false }
	}
	
	method recibeMordisco() {
		if (sabor == "frutilla") {sabor = "chocolate"}
		else if (sabor == "chocolate") {sabor = "naranja"}
		else if (sabor == "naranja") {sabor = "frutilla"}
		console.println("La pastilla tutti frutti ha recibido un mordisco y ha cambiado su sabor")
	}
}

