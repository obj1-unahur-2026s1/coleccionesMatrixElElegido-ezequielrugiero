import matrix.*
object nave {
    const pasajeros = [neo, morfeo, trinity]
    
    method subirPasajeros(unPasajero){
        return pasajeros.add(unPasajero)
    }
    method bajarPasajeros(unPasajero){
        return pasajeros.remove(unPasajero)
    }
    method cuantosPasajerosHay (){
       return pasajeros.size()
    }

    method pasajerosConMayorVitalidad(){
        return pasajeros.max({c => c.vitalidad()})
    }

    method pasajerosConMenorVitalidad(){
        return pasajeros.min({c => c.vitalidad() })
    }

    method naveEquilibrada (){
        return  self.pasajerosConMenorVitalidad().vitalidad()*2 >= self.pasajerosConMayorVitalidad().vitalidad()
    }
    // preguntar por no funciona el self en este method
    method elElegitoEstaEnLaNave(){
        return pasajeros.any({c =>c.esElElegido()})
    }
   
    // la lista de la nave queda vacia
    method naveColisiona(){
        // no van el conector && se separa la instruciones por punto y coma ";"
        return pasajeros.forEach({c => c.saltar() ; c.bajarDeLaNave()})
    }
    // crea una lista sin el elegido.-
    method listaSinElElegido(){
        return pasajeros.filter({c =>not c.esElElegido()})
    }
    
    method naveAcelera(){
        self.listaSinElElegido().forEach({c =>c.saltar()})
        return pasajeros.forEach({c => c.subirALaNave()})
    }

    method prueba(){
        return pasajeros.filter({c =>not c.esElElegido()})
    }
}