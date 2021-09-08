import Mariano.*

object bombon {
	var property precio = 5
	var property peso = 15
	var property sabor = frutilla
	var property tieneGluten = false
	
	method sabor() {
		return sabor
	}
	
	method recibeMordisco() {
		peso = (peso * 0.8) - 1
	}
}

object alfajor {
	var property precio = 12
	var property peso = 300
	var property sabor = chocolate
	var property tieneGluten = true
	
	method sabor() {
		return sabor
	}
	
	method recibeMordisco() {
		peso = (peso * 0.8)
	}
}


object caramelo {
	var property precio = 1
	var property peso = 5
	var property sabor = frutilla
	var property tieneGluten = false
	
	method sabor() {
		return sabor
	}
	
	method recibeMordisco() {
		peso = peso - 1
	}
}

object chupetin {
	var property precio = 2
	var property peso = 7
	var property sabor = naranja
	var property tieneGluten = false
	
	method sabor() {
		return sabor
	}
	
	method recibeMordisco() {
		if (peso > 2) {
			peso = (peso * 0.9)
		}
	}	
}

object oblea {
	var property precio = 5
	var property peso = 250
	var property sabor = vainilla
	var property tieneGluten = true
	
	method sabor() {
		return sabor
	}
	
	method recibeMordisco() {
		if (peso > 70) {
			peso = (peso * 0.5)
		} else {
			peso = (peso * 0.75)
		}
	}
}

object chocolatin {
	var precio = 0
	var peso = 0
	const sabor = chocolate
	var property tieneGluten = true
	
	method recibeMordisco() {
		peso = peso - 2
	}

	method sabor() {
		return sabor
	}
	
	method peso() {
		return peso
	}
	
	method peso(gramos) {
		peso = gramos
		self.precio(gramos)
	}
	
	method precio(gramos) {
		precio = gramos * 0.50
	}
	
	method precio() {
		return precio
	}
}

object golosinaBaniada {
	const golosina = oblea
	var peso = 4
	const cantMordisco = 0
	
	method precio() {
		return 2 + golosina.precio()
	}
	
	method peso() {
		return golosina.peso() + peso
	}
	
	method sabor() {
		return golosina.sabor()
	}
	
	method tieneGluten() {
		return golosina.tieneGluten()
	}
	
	method recibeMordisco() {
		if (cantMordisco < 3) { 
			peso = peso - 2
		}
		golosina.recibeMordisco()
	}
}

object pastillaTuttiFrutti {
	var property peso = 5
	var tieneGluten = false
	var sabor = frutilla
	
	method precio() {
		if (self.tieneGluten()) { return 10 } else { return 7 }
	}
	
	method tieneGluten() {
		return tieneGluten
	}
	
	method tieneGluten(valor) {
		tieneGluten = valor
	}
	
	method recibeMordisco() {
		sabor = sabor.quienSigue()
	}
	
	method sabor() {
		return sabor
	}
}

object chocolate {
	method quienSigue() {
		return naranja
	}
}

object frutilla {
	method quienSigue() {
		return chocolate
	}
}

object naranja {
	method quienSigue() {
		return frutilla
	}
}

object vainilla {
}
