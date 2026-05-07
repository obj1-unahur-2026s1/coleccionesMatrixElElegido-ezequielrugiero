import nave.*
object neo {
    var vitalidad = 100

    method vitalidad (){
        return vitalidad
    }
    method esElElegido(){
        return true
    }
    method saltar (){
        return vitalidad / 2
    }


    method bajarDeLaNave (){
        return nave.bajarPasajeros(self)
    }
    
    method subirALaNave(){
        return nave.subirPasajeros(self)
    }
}

object morfeo {
    var vitalidad = 8

    method vitalidad (){
        return vitalidad
    }

    method descansado (){
        return true
    }

    method esElElegido(){
        return false
    }
    method saltar (){
        vitalidad = vitalidad - 1
        return not self.descansado() 
    }


     method bajarDeLaNave (){
        return nave.bajarPasajeros(self)
    }
    
    method subirALaNave(){
        return nave.subirPasajeros(self)
    }

}

object trinity {

 var vitalidad = 0

    method vitalidad (){
        return vitalidad
    }

    method descansado (){
        return true
    }

    method esElElegido(){
        return false
    }
    method saltar (){
        return
    }


    method bajarDeLaNave (){
        return nave.bajarPasajeros(self)
    }
    
    method subirALaNave(){
        return nave.subirPasajeros(self)
    }

}