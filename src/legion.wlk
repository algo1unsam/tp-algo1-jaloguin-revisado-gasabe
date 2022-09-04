import chicos.*
import elementos.*
import adultos.*

object legionDelTerror {
	var integrantes = [ ]
	
	
	method agregarIntegrante(nuevoIntegrante){
		integrantes.add(nuevoIntegrante)
	}

	method capacidadDeSusto (){
		return (integrantes.sum{alguien => alguien.capacidadDeSusto()})
	}
	
	method lider(){
		return integrantes.max{alguien => alguien.capacidadDeSusto()}
	}
	
	method recibirCaramelos(){
		return integrantes.sum{alguien=>alguien.caramelos()}
	}
}

