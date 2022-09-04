import elementos.*

object macaria {//tiene nivel de ira se ingrementa cuando enoja ,su capacidad de susto es =ira+disfraz
	var nivelIra= 10
	var disfraces = [ ]
	var caramelos = 0
	
	method capacidadDeSusto{
		return nivelIra + disfraces.sum{ disfraz => disfraz.nivelSusto()}
	}
	method ponerseDisfraz(disfraz){
		disfraces.add(disfraz)
	}
	method quitarDisfraz(disfraz) {
		disfraces.remove(disfraz)
	}

}

object pancracio {//grita buuuu ,no tiene disfraz  su capacidad de asustar es la cantidad de u de grito
	var grito = "buuuu"
	var disfraz = mascaraDracula
	
	
}

// El chico inventado .

object pedro {

}

