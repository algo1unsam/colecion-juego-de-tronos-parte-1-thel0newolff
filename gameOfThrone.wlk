object daenerys{
    const property  artefactos = []
    var cantMax = 2

   
    method equip(objeto) {
        if (artefactos.size()< cantMax && !artefactos.contains(objeto)){
            artefactos.add(objeto)
      }
    }
    method sumarcantMax(valor) {
      cantMax= valor
    }
    method cantMax() = cantMax

    method save() {
      rocaDragon.vaciar()
    }
    
    method equipado()= artefactos
      
    method posee()= artefactos + rocaDragon.stack()

    method tiene(objeto)= artefactos.contains(objeto) || rocaDragon.stack.contains(objeto)  
      
    }

object sword {
}

object mBook {
  
}

object necklace {
  
}

object armor {
  
}

object rocaDragon {
    const property stack = []

    method vaciar() {
        stack.addAll(daenerys.artefactos())
        daenerys.artefactos().clear()
      }
  
}