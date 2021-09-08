import Golosinas.*

object mariano {
	const bolsaGolosinas = []
	const golosinasDesechas = []
	
	method comprar(unaGolosina) {
		bolsaGolosinas.add(unaGolosina)
	}
	
	method desechar(unaGolosina) {
		if (bolsaGolosinas.contains(unaGolosina)) { bolsaGolosinas.remove(unaGolosina)
			golosinasDesechas.add(unaGolosina)
		}
	}
	
	method cantidadDeGolosinas() {
		return bolsaGolosinas.size()
	}
	
	method tieneLaGolosina(unaGolosina) {
		return bolsaGolosinas.contains(unaGolosina)
	}
	
	method probarGolosinas() {
		bolsaGolosinas.forEach({ golosina => golosina.recibeMordisco() })
	}
	
	method hayGolosinaSinTACC() {
		return bolsaGolosinas.any({ golosina => !(golosina.tieneGluten()) })
	}
	
	method preciosCuidados() {
		return bolsaGolosinas.all({ golosina => golosina.precio() <= 10 })
	}
	
	method golosinaDeSabor(unSabor) {
		return bolsaGolosinas.find({ golosina => golosina.sabor().equals(unSabor) })
	}
	
	method golosinasDeSabor(unSabor) {
		return bolsaGolosinas.filter({ golosina => golosina.sabor().equals(unSabor) })
	}
	
	method sabores() {
		return bolsaGolosinas.map({ golosina => golosina.sabor() }).asSet()
	}
	
	method golosinaMasCara() {
		return bolsaGolosinas.max({ golosina => golosina.precio() })
	}
	
	method pesoGolosinas() {
		return bolsaGolosinas.sum({ golosina => golosina.peso() })
	}
	
	method golosinasFaltantes(golosinasDeseadas) {
		return golosinasDeseadas.asSet().difference(bolsaGolosinas.asSet())
	}
	
	method gustosFaltantes(gustosDeseados) {
		const gustos = bolsaGolosinas.map({ golosina => golosina.sabor() })
		return gustosDeseados.asSet().difference(gustos.asSet())
	}
	
	method gastoEn(sabor) {
		const golosinasDeSabor = self.golosinasDeSabor(sabor)
		return golosinasDeSabor.sum({ golosina => golosina.precio() })
	}
	
	method comproYDesecho(golosina) {
		return golosinasDesechas.contains(golosina)
	}
	
	method cantGolosinasDeSabor(sabor) {
		return bolsaGolosinas.count({ golosina => golosina.sabor() == sabor })
	}
	
	method pesoTotalDelSabor(sabor) {
		return self.golosinasDeSabor(sabor).sum({ golosina => golosina.peso() })
	}
	
	method saborMasPopular() {
		return bolsaGolosinas.max({ golosina => self.cantGolosinasDeSabor(golosina.sabor()) }).sabor()
	}
	
	method saborMasPesado() {
		return bolsaGolosinas.max({ golosina => self.pesoTotalDelSabor(golosina.sabor()) }).sabor()
	}
}
