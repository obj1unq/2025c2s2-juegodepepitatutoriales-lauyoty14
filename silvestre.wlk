import pepita.*

object silvestre {
	var property position = game.at(0,2) 
    var property image = "silvestre.png"

    method position() {
        return game.at(pepita.position().x(), 0)
    }
}

