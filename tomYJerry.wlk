object tom {
    var energia = 50

    method energia() {
        return energia
    }
    method comer(unRaton) {
        energia = energia + 12 + unRaton.peso()
    }
    method correr(distancia) {
        energia = energia - (distancia / 2)
    }
    method velocidadMaxima() {
        return 5 + self.energia()/10
    }
    method estaFeliz() {
        return self.energia() > 50
    }

    method puedeCazarRaton(distancia) {
    return (distancia / 2) < energia
    }

    method cazarRaton(unRaton, distancia) {
        if (self.puedeCazarRaton(distancia)) {
        self.correr(distancia)
        self.comer(unRaton)
        }
    }

}

object jerry {
    var edad = 2
    method peso() {
      return edad * 20
    }
    method cumplirAnios(anios) {
      edad = edad + anios
    }
}

object nibbles {
    method peso() {
      return 35
    }
}

// Perez simepre pesa 10, pero a esto se le suma las monedas que tiene, cada moneda pesa 2
object perez {
    var cantMonedas = 2
    method peso() {
      return 10 + cantMonedas * 2
    }
    method juntarMoneda(cantidad) {
      cantMonedas = cantMonedas * cantidad
    }
    
}