import cocineros.*
import torneos.*

class Plato{
  const cocinero
  method calorias() = 3 * self.azucar() * 100
  method azucar()
  method esBonito()
  method cocinero() = cocinero
}

class Entrada inherits Plato{
  override method azucar() = 0
  override method esBonito() = true
}

class Principal inherits Plato{
  const azucar 
  const esBonito
  override method azucar() = azucar
  override method esBonito() = esBonito
}

class Postre inherits Plato{
  const colores
  override method azucar() = 120
  override method esBonito() = colores > 3
}