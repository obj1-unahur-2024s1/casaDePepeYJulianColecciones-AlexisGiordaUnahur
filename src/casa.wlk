import cosas.* //obviamente, vamos a usar los objetos del archivo cosas ;-)
import cuentasBancarias.*

object casaDePepeYJulian {
	const cosas = []
	var cuentaBancaria //debe ser una cuenta del archivo cuentasBancarias
	method cosas() = cosas
	method cuentaBancaria(unaCuenta){cuentaBancaria = unaCuenta} 
	
	
	method comprar(cosa){
		cosas.add(cosa) 
		self.gastar(cosa.precio())
	}
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
	method gastar(importe){cuentaBancaria.extraer(importe)}
	method dineroDisponible() = cuentaBancaria.saldo()
}
