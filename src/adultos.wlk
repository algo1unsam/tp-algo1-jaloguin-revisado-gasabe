import chicos.*
import legion.*
import elementos.*

object mirca {
	var tolerancia = 22

	method tolerancia(){
		return tolerancia
	}
	method serAsustadoPor(chico){
		chico.entregaCaramelos(self.darCaramelos(chico))
		tolerancia=tolerancia-1
	}
	method darCaramelos(chico){
		return (chico.capacidadDeSusto()-tolerancia ).max(0)
	}
}
