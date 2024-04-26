// Como ya sabemos crear objetos y definir algunos métodos simples, 
// algunos los tenemos parcialmente definidos. Completar todo los demás
// para satisfacer lo que pide el enunciado.
import casa.*

object dolar{
	method precioDeVenta() = 1000	
}

object heladera {
	method precio() { return 200000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object cama {
	method precio() { return 80000 }
	method esComida() { return false }
	method esElectrodomestico() { return false }	
}

object tiraDeAsado {
	method precio() { return 3500 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object paqueteDeFideos {
	method precio() { return 500 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object plancha {
	method precio() { return 12000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object kiloDeMilanesas {
	method precio() { return 2600 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object botellaDeSalsa {
	method precio() { return 900 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object microondas {
	method precio() { return 42000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object kiloDeCebollas {
	method precio() { return 250 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object pc {
	method precio() { return 500*dolar.precioDeVenta()}
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object packComida {
	const platoPosibles = [tiraDeAsado,paqueteDeFideos,kiloDeMilanesas]
	const aderezosPosibles = [botellaDeSalsa,kiloDeCebollas]
	var aderezo // debe ser botellaDeSalsa o kiloDeCebollas
	var plato // //debe ser tiraDeAsado, paqueteDeFideos o kiloDeMilanesas
	method precio() { 
		return plato.precio() + aderezo.precio()
	}
	method esComida() { return true }
	method esElectrodomestico() { return false }
	method plato(unPlato){
		if(platoPosibles.contains(unPlato)){
			plato=unPlato
		}
	}	
	method aderezo(unAderezo){
		if(aderezosPosibles.contains(unAderezo)){
			aderezo=unAderezo
		}
	}
}






































