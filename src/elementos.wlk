object trajeDeBruja {
	method nivelSusto() {
		return 10
	}
} 

object barba {
	var longitud = 2
	
	method nivelSusto() {
		return 5*longitud
	}	
	
}

object mascaraDracula {
	var tamanio = 2
	method nivelSusto() {
		return 2*tamanio
	}

}

object mascaraFrankenstein {
	var tamanio = 22
	method nivelSusto() {
		return 2*tamanio
	}	
}

object mascaraPolitico {
	var politico = pinguino
	method nivelSusto() {
		return politico.promesas()
	}
}
object pinguino{
	method promesas{
		return 30
	}
}

