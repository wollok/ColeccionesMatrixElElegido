object nave {
	var pasajeros = [morfeo]
	
	method sube(alguien){
		pasajeros.add(alguien)
	}
	
	method chocar() {
		pasajeros.forEach({pasajero=>pasajero.saltar()})
	}
	
	method estaElElegido(){
		return pasajeros.any({pasajero => pasajero.esElElegido()})
	}
	method acelerar(){
		pasajeros.filter({pasajero => not pasajero.esElElegido()})
			.forEach({pasajero=>pasajero.saltar()})
	}
	method estaEquilibrada(){
		var pasajerosOrdenados 
		pasajerosOrdenados = pasajeros.sortedBy({pasa1,pasa2 =>pasa1.vitalidad() > pasa2.vitalidad()})
		return pasajerosOrdenados.first().vitalidad() < pasajerosOrdenados.last().vitalidad()*2  
	}
	 
}

object neo {
 	var energia = 100
 	method esElElegido(){
 		return true
 	}
 	method saltar() {
 		energia = energia/2
 	}
 	method vitalidad() {
 		return energia/10
 	}
}
object morfeo{
	var cansancio = false
	method esElElegido(){
 		return false
 	}
 	method saltar() {
 		cansancio = true
 	}
 	method vitalidad(){
 		return 10
 	}
}

object trinity {
	var vitalidad = 0
	method vitalidad(){
 		return vitalidad
 	}
}