import silvestre.*
import nido.*


object pepita {
	var energia = 100
	var property position = game.center() 
	
	method image() {
		if(position == silvestre.position()){
			return "pepita-gris.png"
		} else if(position == nido.position()){
			return "pepita.grande.png"
		} else {
			return "pepita.png"
		}
	}

	method comer(comida) {
		energia = energia + comida.energiaQueOtorga()
	}

	method volar(kms) {
		energia = energia - 10 - kms 
	}
	
	method energia() {
		return energia
	}
}

