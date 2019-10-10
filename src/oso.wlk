import wollok.game.*
import direcciones.*




object oso {
	var property position = new Position(x = 3, y = 7)
	
	method image() = "oso.jpg"
	
	/*method movimientoEnDireccion(direccion){
		self.position(direccion.siguientePosicion(self.position()))
	}*/
	
	method moveteALaIzquierda(){
	if (position.x() > 0) {
	  position = position.left(1)
	 } }
	 
	method moveteHaciaArriba(){
		if (position.y() < game.height() - 1) {
			position = position.up(1)
		}
	}
	
	method moveteADerecha(){
	if (position.x() > game.width() - 1) {
	  position = position.right(1)
	 } }
	 
	method moveteHaciaAbajo(){
		if (position.y() > 0) {
			position = position.up(1)
		}
	}
	
	method mover(direccion){
		/*que direccion me diga donde me tengo que mover
		 * pasa eso, le tengo que decir donde estoy parado ahora*/
	
		position = direccion.siguientePosicion(position)
	}
	
	method moveteAlAzar(){
		/* 0.randomUpTo(4) 
		 * es una tirada de dado de 0 a 3.99999 (no llega al 4)
		 * 
		 * 0.randomUpTo(4).truncate(2) 
		 * trunca el numero, lo corta hasta 2 numeros despues de la coma (el numero en parentesis es la cantidad de decimales)
		 * 
		 * 0.randomUpTo(4).truncate(0)
		 * no dejaria decimales. */
		
		var dado = 1.randomUpTo(5).truncate(0)
		
		if (dado == 1) {
			self.mover(oeste)
		} 
			else if (dado == 2) {
				self.mover(sur)
		} 		
				else if (dado == 3){
					self.mover(este)
		}		
					else {self.mover(norte)
		}
		
	
}
