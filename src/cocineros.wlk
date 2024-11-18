import platos.*
import torneos.*


class Cocinero {
    var especialidad

    method cambiarEspecialidad(nueva) {especialidad = nueva}
    method catar(plato) = especialidad.darCalificacion(plato)
    method cocinar() = especialidad.cocinar(self)
    method participar() = especialidad.cocinar()
}

class Pastelero{
    const dulzorDeseado
    method darCalificacion(plato) = (5*plato.azucar()/dulzorDeseado).min(10)
    method cocinar(cocineroPlato) {const postreNuevo = new Postre(cocinero = cocineroPlato,colores = dulzorDeseado/50)}
}

class Chef{
    const calorias
    method darCalificacion(plato) = if(plato.esBonito() and plato.calorias() <= calorias) 10 else 0
    method cocinar(cocineroPlato) {const principalNuevo = new Principal(cocinero = cocineroPlato,azucar = calorias, esBonito = true)}
}

class Souschef {
    method cumpleExpectativas()  
    method darCalificacion(plato) = if(self.cumpleExpectativas()) (plato.calorias() / 100).min(6) 
    method cocinar(cocineroPlato) {const entradaNueva = new Entrada(cocinero = cocineroPlato)}
}