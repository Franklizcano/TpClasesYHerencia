import Golosinas.*

object mariano {
	const bolsa = []
	const golosinasDesechas = []
	
	method comprar(unaGolosina) {
		bolsa.add(unaGolosina)
	}
	
	method desechar(unaGolosina) {
		if (bolsa.contains(unaGolosina)) { bolsa.remove(unaGolosina)
			golosinasDesechas.add(unaGolosina)
		}
	}
	
	method cantidadDeGolosinas() {
		return bolsa.size()
	}
	
	method tieneLaGolosina(unaGolosina) {
		return bolsa.contains(unaGolosina)
	}
	
	method probarGolosinas() {
		return bolsa.all({ golosina => golosina.recibeMordisco() not false })
	}
	
	method hayGolosinaSinTACC() {
		return bolsa.any({ golosina => !(golosina.tieneGluten()) })
	}
	
	method preciosCuidados() {
		return bolsa.all({ golosina => golosina.precio() <= 10 })
	}
	
	method golosinaDeSabor(unSabor) {
		return bolsa.find({ golosina => golosina.sabor() == unSabor })
	}
	
	method golosinasDeSabor(unSabor) {
		return bolsa.filter({ golosina => golosina.sabor() == unSabor})
	}
	
	method sabores() {
		const sabores = bolsa.map({ golosina => golosina.sabor()})
		return sabores.asSet()
	}
	
	method golosinaMasCara() {
		return bolsa.max({ golosina => golosina.precio() })
	}
	
	method pesoGolosinas() {
		return bolsa.sum({ golosina => golosina.peso() })
	}
	
	method golosinasFaltantes(golosinasDeseadas) {
		return golosinasDeseadas.asSet().difference(bolsa.asSet())
	}
	
	method gustosFaltantes(gustosDeseados) {
		const gustos = bolsa.map({ golosina => golosina.sabor() })
		return gustosDeseados.asSet().difference(gustos.asSet())
	}
	
	method gastoEn(sabor) {
		const golosinasDeSabor = bolsa.filter({ golosina => golosina.sabor() == sabor})
		return golosinasDeSabor.sum({ golosina => golosina.precio() })
	}
	
	method comproYDesecho(golosina) {
		return golosinasDesechas.contains(golosina)
	}
	
	method cantGolosinasDeSabor(sabor) {
		return bolsa.count({ golosina => golosina.sabor() == sabor })
	}
	
	method pesoTotalDelSabor(sabor) {
		return bolsa.sum({ golosina => golosina.peso()})
	}
	
	method saborMasPopular() {
		return bolsa.max({ golosina => self.cantGolosinasDeSabor(golosina.sabor()) }).sabor()
	}
	
	method saborMasPesado() {
		return bolsa.max({ golosina => self.pesoTotalDelSabor(golosina.sabor()) }).sabor()
	}
}
