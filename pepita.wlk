import silvestre.*
import nido.*
import comidas.*

object pepita {
	var property energia = 500
	var property position = game.center() 
	var property entidades = #{silvestre, manzana, alpiste, nido} 
	method perdio() = "¡PERDÍ!" 
	method gane() = "¡GANE!"
	
	method image() {
		if(position == silvestre.position() || energia == 0){
			return "pepita-gris.png"
		} else if(position == nido.position()){
			return "pepita-grande.png"
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

	method colisiona(objeto) {
		if (position == objeto.position()){
			objeto.colisiono(self)
		}
	}

	method moverseDerecha() {
		self.validarMoverse()
		if (position.x() < (game.height() - 1)) {
			position = game.at(self.position().x() + 1, self.position().y())
		}
		entidades.forEach({entidad => self.colisiona(entidad)})
	}

	method moverseIzquierda() {
		self.validarMoverse()
		if(self.position().x() > 0){
			position = game.at(self.position().x() - 1, self.position().y())
		}
		entidades.forEach({entidad => self.colisiona(entidad)})
	}

	method moverseArriba() {
		self.validarMoverse()
		if(self.position().y() < (game.width() -  1)){
			position = game.at(self.position().x(), self.position().y() + 1)
		}
		entidades.forEach({entidad => self.colisiona(entidad)})
	}

	method moverseAbajo() {
		self.validarMoverse()
		if(self.position().y() > 0){
			position = game.at(self.position().x(), self.position().y() - 1)
		}
		entidades.forEach({entidad => self.colisiona(entidad)})
	}

	method validarMoverse() {
		if(energia >= 9) {
			energia -= 9
		} else {
			energia = 0
			self.error("no tiene energia para moverse")
		}
	}
}

