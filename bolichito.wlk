import objetos.*
object bolichito {
  var objetoEnMostrador = remera
  var objetoEnVidriera = placa

  method cambiarObjetoDelMostrador(unObjeto) {
    objetoEnMostrador = unObjeto
  }

  method cambiarObjetoDeLaVidriera(unObjeto) {
    objetoEnVidriera = unObjeto
  }

  method esBrillante() {
    return objetoEnMostrador.material().esBrillante() || objetoEnVidriera.material().esBrillante()
  }

  method esMonocromatico() {
    return objetoEnMostrador.color() == objetoEnVidriera.color()
  }

  method estaEquilibrado() {
    return objetoEnMostrador.peso() < objetoEnVidriera.peso()
  }
}