import elementos.*

object macaria {//tiene nivel de ira se ingrementa cuando enoja ,su capacidad de susto es =ira+disfraz
	var nivelIra= 10
	var disfraces = [ ]
	var property caramelos = 0
	
	method capacidadDeSusto(){
		return nivelIra + disfraces.sum{ disfraz => disfraz.nivelSusto()}
	}
	
	method ponerseDisfraz(disfraz){
		disfraces.add(disfraz)
	}
	
	method quitarDisfraz(disfraz) {
		disfraces.remove(disfraz)
	}
	
	method recibirCaramelos(cantidad){ //ver restriccion
		caramelos = caramelos +(cantidad - (cantidad*1).div(4))//se le cae 1/4 de caramelos
	}
	
	method disfraces(){
		return disfraces
	}
	
	method disfrazQueMenosAsusta(){ // aca busco el de menos capacidad de asustar
		return disfraces.min{alguien => alguien.capacidadDeSusto()}
	}
	
	method quitarseDisfrazQueMenosAsusta(){
		self.quitarDisfraz( self.disfrazQueMenosAsusta() )
	}
	
}

object pancracio {//grita buuuu ,no tiene disfraz  su capacidad de asustar es la cantidad de u de grito
	var grito = 4 //arranca gritanto con 4 letras u
	var enojo = 2
	var disfraz = mascaraDracula
	var property caramelos=0
	
	method capacidadDeSusto(){
		return grito
	}
	method ponerseDisfraz(unDisfraz){
		disfraz=unDisfraz
	}
	
	method quitarDisfraz(unDisfraz) {
		grito= grito + enojo // b u u u u + u u
	}
	method recibirCaramelos(cantidad){
		caramelos = caramelos +cantidad 
	}
	
}


object pedro {
	
	var disfraces = [ ]
	var property caramelos = 0
	
	method capacidadDeSusto(){
		return disfraces.sum{ disfraz => disfraz.nivelSusto()}
	}
	method ponerseDisfraz(disfraz){
		disfraces.add(disfraz)
	}
	method quitarDisfraz(disfraz) {
		disfraces.remove(disfraz)
	}
	
	method recibirCaramelos(cantidad){ 
		caramelos = caramelos +cantidad 
	}
	
	method disfraces(){
		return disfraces
	}
	

}

