import chicos.*
import legion.*
import elementos.*

object mirca {
	var tolerancia = 22

	method tolerancia(){
		return tolerancia
	}
	method serAsustadoPor(alguien){
		alguien.recibirCaramelos(self.darCaramelos(alguien))
		tolerancia=tolerancia-1
	}
	method darCaramelos(alguien){
		return (alguien.capacidadDeSusto()-tolerancia ).max(0)
	}
}
