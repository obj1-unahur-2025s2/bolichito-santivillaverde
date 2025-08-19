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
  method hayObjetoDeColor_YSePuedeMejorar(unColor) {
    return (objetoEnMostrador.color() == unColor || objetoEnVidriera.color() == unColor) and (not self.estaEquilibrado() || self.esMonocromatico())
  }
  
  method puedeOfrecerleAlgoA(unaPersona) {
    return unaPersona.leGusta(objetoEnMostrador) || unaPersona.leGusta(objetoEnVidriera)
  }
}