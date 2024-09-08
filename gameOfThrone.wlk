
object daenerys{
    const property  artifact = []
    var cantMax = 2
    const property registry = [] 

   
    method equip(objeto) {
        registry.add(objeto)
        if (artifact.size()< cantMax){
            artifact.add(objeto)
      }
    }
    method sumarcantMax(valor) {
      cantMax= valor
    }
    method cantMax() = cantMax

    method save() {
      dragonRock.empty()
    }
    
    method equipped()= artifact
      
    method own()= self.artifact() + dragonRock.stack()

    method youHave(item) = self.own().contains(item)

    method showRegistry()= registry


}

object sword {
  method name() = "Dragon Sword"
}

object mBook {
  method name() = "Ancestral Magic Book" 
  
}

object necklace {
  method name() = "Fire Necklace" 
  
}

object armor {
  method name() = "Valyrian Armor" 
  
}

object dragonRock {
    const property stack = []

    method agregarItem(objeto) {
      stack.add(objeto)
      
    }

    method empty() {
        stack.addAll(daenerys.artifact())
        daenerys.artifact().clear()
      }
  
}