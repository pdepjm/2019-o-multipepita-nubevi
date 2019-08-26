object pepita {
	var energia = 100
	var base
	
	
	method estaFeliz() {
		return energia.between(500,1000)
	}

	method cuantoQuiereVolar(){
		base = (energia/5)
		if(energia.between(300,400)){
			base += 10
		}
		if(energia % 20 == 0){
			base +=15
		}
		
		return base
	}
	
	method salirAComer(){
		self.vola(5)
		self.come(alpiste)
		self.vola(5)
	}
	
	method estaCansada() {
		return energia < 50
	}

	method vola(kms) {
		energia -= 10 + kms
	}

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}
	
	
	method haceLoQueQuieras(){
		if(self.estaFeliz()){
			self.vola(8)
		}
		if(self.estaCansada()){
			self.come(alpiste)
		}
		
	}
}

object alpiste {
	var gramos = 10
	
	method energiaQueOtorga() { 
		return 4 * gramos
	}
	
	method gramos(nuevosGramos) {
		gramos = nuevosGramos
	}
}

object mijo{
	var estado = false
	
	method mojarse(){
		estado = true
	}
	
	method secarse(){
		estado = false
	}
	
	method energiaQueOtorga() { 
		if(estado){
			return 15
		} else {
			return 20
		}
	}
	
}

object canelones{
	
	var salsa = false
	var queso = false
	var energia = 20
	
	
	method ponerSalsa(){
		salsa = true
		}
		
	method sacarSalsa(){
		salsa = false
	}
	
	method ponerQueso(){
		queso = true
	}
	
	method sacarQueso(){
		queso = false
	}
	
	method energiaQueOtorga() {
		if(salsa && queso){
			return energia +5+7
		}
		if(salsa){
			return energia +5
		}
		if(queso){
			return energia +7
		}
		return energia + 0
	}
}

object manzana {
	method energiaQueOtorga() { 
		return 50
	}	
}

object roque{
	method entrenar(){
		pepita.vola(10)
		pepita.come(alpiste)
		pepita.vola(5)
		pepita.haceLoQueQuieras()
	}
}