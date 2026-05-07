import matrix.*
object nave {
    const pasajeros = [neo, morfeo, trinity]
    
    method subirPasajeros(unPasajero){
        return pasajeros.add(unPasajero)
    }
    method bajarPasajeros(unPasajero){
        return pasajeros.remover(unPasajero)
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

}