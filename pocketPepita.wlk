import pepita.*
import wollok.game.*

object pocketPepita{
    method position() = game.at(1,9)
    method text() = "la energia es" + pepita.energia() 
}
