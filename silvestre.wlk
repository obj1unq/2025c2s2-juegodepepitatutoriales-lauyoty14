import pepita.*

object silvestre {
	var property position = game.at(0,2) 
    var property image = "silvestre.png"

    method position() {
        if (pepita.position().x() > 3){
            return game.at(pepita.position().x(), 0)
        } else {
            return game.at(3,0)
        }
    }
}

