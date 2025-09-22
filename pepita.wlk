import silvestre.*
import nido.*

object pepita {
	var energia = 500
	var property position = game.center() 
	
	method image() {
		if(position == silvestre.position() || energia == 0){
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

	method moverseDerecha() {
		self.validarMoverse()
		position = game.at(self.position().x() + 1, self.position().y())
	}

	method moverseIzquierda() {
		self.validarMoverse()
		if(self.position().y() > 0){
			position = game.at(self.position().x() - 1, self.position().y())
		}
	}

	method moverseArriba() {
		self.validarMoverse()
		if(self.position().y() < game.width()){
			position = game.at(self.position().x(), self.position().y() + 1)
		}
	}

	method moverseAbajo() {
		self.validarMoverse()
		if(self.position().y() > 0){
			position = game.at(self.position().x(), self.position().y() - 1)
		}
	}

	method validarMoverse() {
		if(energia >= 9) {
			energia -= 9
		} else {
			energia = 0
		}
	}
}

