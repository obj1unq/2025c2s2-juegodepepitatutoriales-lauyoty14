import wollok.game.*

object manzana {
	const base= 5
	var madurez = 1
	var property image = "manzana.png"
	var property position = game.center()
	
	method energiaQueOtorga() {
		return base * madurez	
	}
	
	method madurar() {
		madurez = madurez + 1
		//madurez += 1
	}

	method colisiono(objeto) {
		objeto.comer(self)
		image = ""
	}
}

object alpiste {
	var property image = "alpiste.png"
	var property position = game.at(9,2)

	method energiaQueOtorga() {
		return 20
	} 

	method colisiono(objeto) {
		objeto.comer(self)
		image = ""
	}
}

