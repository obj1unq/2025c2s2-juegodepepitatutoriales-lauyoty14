import pepita.*
import wollok.game.*

object nido {
    var property position = game.at(8,8)
    var property image = "nido.png"

    method colisiono(objeto){
        game.say(objeto, objeto.gane())
        game.onTick(2000, "parar juego", {game.stop()})
    }
}