import cosas.*
import casa.*

object cuentaCorriente{
	var saldo = 0
	
	method saldo() = saldo.max(0)
	method depositar(importe){saldo += importe}
	method extraer(importe){saldo -= importe}
}

object cuentaGastos{
	var saldo = 0
	
	method saldo() = saldo
	method depositar(importe){saldo += (importe - 200).max(0)}
	method extraer(importe){
		saldo = saldo - (if(importe>10000) importe*1.02 else importe+200)
	}
}

object cuentaCombinada{
	var cuentaPrincipal
	var cuentaSecundaria
	method cuentaPrincipal(unaCuenta){cuentaPrincipal = unaCuenta}
	method cuentaSecundaria(unaCuenta){cuentaSecundaria = unaCuenta}
	
	method saldo() = cuentaPrincipal.saldo() + cuentaSecundaria.saldo()
	method depositar(importe){cuentaPrincipal.depositar(importe)}
	method extraer(importe){
		if(cuentaPrincipal.saldo()>importe){
			cuentaPrincipal.extraer(importe)
		}else{
			var nuevoValor = importe
			nuevoValor -= cuentaCorriente.saldo()
			cuentaCorriente.extraer(cuentaCorriente.saldo())
			cuentaSecundaria.extraer(nuevoValor)
		}
	}
}


























