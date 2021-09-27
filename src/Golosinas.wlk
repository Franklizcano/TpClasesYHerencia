import Mariano.*

class Bombon {
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

class BombonDuro {
	var property precio = 5
	var property peso = 15
	var property sabor = frutilla
	var property tieneGluten = false
	
	method sabor() {
		return sabor
	}
	
	method recibeMordisco() {
		peso = peso - (peso * 0.1)
	}
}

class Alfajor {
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


class Caramelo {
	var property precio = 1
	var property peso = 5
	var property sabor
	var property tieneGluten = false
	
	method sabor() {
		return sabor
	}
	
	method recibeMordisco() {
		peso = peso - 1
	}
}

class CarameloRelleno {
	var property precio = 1
	var property peso = 5
	var property sabor
	var property tieneGluten = false
	
	method sabor() {
		return sabor
	}
	
	method recibeMordisco() {
		peso = peso - 1
		sabor = chocolate
	}
}

class Chupetin {
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

class Oblea {
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

class ObleaCrujiente {
	var property precio = 5
	var property peso = 250
	var property sabor = vainilla
	var property tieneGluten = true
	var mordiscos = 0
	
	method sabor() {
		return sabor
	}
	
	method recibeMordisco() {
		if (peso > 70 and mordiscos < 3) {
			peso = (peso * 0.5) - 3
			mordiscos++
		} else if (mordiscos == 3) {
			peso = (peso * 0.75) - 3
			mordiscos++
		} else {
			peso = (peso * 0.75)
		}
	}
}

class Chocolatin {
	var peso
	const precio = peso * 0.50
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
	
	method precio() {
		return precio
	}
}

class ChocolatinVIP {
	var peso
	const precio = peso * 0.50
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
	
	method precio() {
		return precio
	}
}

class GolosinaBaniada {
	var golosina
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

class PastillaTuttiFrutti {
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
	method quienSigue() {
		return self
	}
}
