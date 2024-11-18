import platos.*
import cocineros.*

class Torneo {

    const catadores = []
    const platos = []

    method agregarParticipante(cocinero) = platos.add(cocinero.participar())
    method cocineroGanador() = platos.max({plato => self.calificacionTotal(plato)}).cocinero()
    method calificacionTotal(plato) = catadores.sum({catador => catador.catar(plato)})
}