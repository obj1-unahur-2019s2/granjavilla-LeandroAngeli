import cultivos.*
import hector.*
import oso.*
import wollok.game.*
import juego.*

object este {
	
	method siguientePosicion(position){
		if (position.x() == game.width() - 1) {
			return position
		} else {
			return position.right(1)
		}
	}
}


object oeste {
	method siguientePosicion(position) {
		if (position.x() > 0) {
			return position.left(1) 
		}
			else { return position }
	}
}

object norte {
	
	method siguientePosicion(position){
		if (position.x() == game.height() - 1) {
			return position
		} else {
			return position.up(1)
		}
	}
}


object sur {
	method siguientePosicion(position) {
		if (position.y() > 0) {
			return position.down(1) 
		}
			else { return position }
	}
}


