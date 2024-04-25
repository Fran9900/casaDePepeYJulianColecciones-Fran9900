import cosas.* //obviamente, vamos a usar los objetos del archivo cosas ;-)

object casaDePepeYJulian {
	const cosas = []
	
	method comprar(cosa) = cosas.add(cosa)
	method cantidadDeCosasCompradas() = cosas.size()
	method tieneComida() = cosas.any({q => q.esComida()})
	method vieneDeEquiparse() {
		const aux = cosas.last()
		return aux.esElectrodomestico() || aux.precio()>50000
	}
	method esDerrochona(){
		const aux = cosas.sum({q=>q.precio()})
		return aux>90000
	}
	method compraMasCara() = cosas.max({q=>q.precio()})
	method electrodomesticosComprados() = return cosas.filter({q=>q.esElectrodomestico()})
	method malaEpoca() = cosas.all({q=>q.esComida()})
//	method queFaltaComprar(lista) {                                 NO TENGO IDEA DE COMO HACERLO
//		const aux = cosas.forEach({q=>q})
//		console.println(lista.contains(aux))lista.contains(aux)
//		}
	method faltaComida() { 
		const comidaComprada = cosas.filter({q=>q.esComida()})
		return if (!(comidaComprada.size()>2))"Falta Comida" else "Comida Suficiente"
	}
}
