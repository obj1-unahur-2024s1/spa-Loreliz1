
object olivia{
	var concentracion = 6
	
	method recibeMensajes(){
		concentracion = concentracion + 3
	}
	method discute(){
		concentracion = 0.max (concentracion - 1)
	}
	method gradoDeConcentracion() {
		return concentracion
	}
	method seDaUnBanoDeVapor(){
		concentracion = concentracion + 1
	}
}

object bruno {
	var estaFeliz = true
	var tieneSed = false
	var peso = 55000
	
	method recibeMensajes(){
		estaFeliz = true
	}
	
	method seDaUnBanoDeVapor(){
		peso = 0.max (peso - 500) 
		tieneSed = true
	}
	method tomaAgua(){
		tieneSed = false
	}
	method comeFideos(){
		peso = peso + 250
	    tieneSed = true
	}
	method corre(){
		peso = peso - 300
	}
	method veElNoticiero(){
		estaFeliz = false
	}
	method estaPerfecto(){
		return (
		estaFeliz and
		tieneSed and
		peso.between(5000, 7000))
	}
	method mediodiaEnCasa(){
		self.comeFideos()
		self.tomaAgua()
		self.veElNoticiero()
	}
}

object ramiro {
	var contractura = 0
	var pielGrasosa = false
	method recibeMasajes(){
		contractura = 0.max (contractura -2)
	}
	method seDaBanoDeVapor(){
		pielGrasosa = false
	}
	method comeBigMac(){
		pielGrasosa = true	
	}
	method bajaALaFosa(){
		pielGrasosa = true 
		contractura = contractura +1
	}
	method juegaAlPaddle(){
		contractura = contractura + 3
	}
	method diaDeTrabajo(){
		self.bajaALaFosa()
		self.comeBigMac()
		self.bajaALaFosa()
	}
}

object spa {
	method atender(persona){
		persona.seDaBanoDeVapor()
		persona.recibeMensajes()
	}
}