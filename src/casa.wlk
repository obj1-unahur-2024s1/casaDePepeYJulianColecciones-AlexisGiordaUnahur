import cosas.* //obviamente, vamos a usar los objetos del archivo cosas ;-)

object casaDePepeYJulian {
	const cosas = []
	method cosas() = cosas
	
	method comprar(cosa){cosas.add(cosa)}
	method cantidadDeCosasCompradas()= cosas.size()
	method tieneComida() = cosas.any({c=>c.esComida()})
	method vieneDeEquiparse() = 
		cosas.last().esElectrodomestico() or 
		cosas.last().precio() >= 50000
	method esDerrochona() = cosas.sum({c=>c.precio()}) >= 90000
	method compraMasCara() = cosas.max({c=>c.precio()})
	method electrodomesticosComprados() = cosas.filter({e=>e.esElectrodomestico()})
	method malaEpoca() = cosas.all({c=>c.esComida()})
	method queFaltaComprar(unaLista) = 
		unaLista.asSet().difference(cosas.asSet())
	method faltaComida() = 
		cosas.filter({c=>c.esComida()}).size() < 2
}
