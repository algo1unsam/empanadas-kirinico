object gimenez {

	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
	var property sueldo = 15000
	var property totalcobrado = 0

	method sueldoActualizarA(nuevoValor) {
		sueldo = nuevoValor
	}

	method cobrarSueldo() {
		totalcobrado += sueldo
	}

}

object baigorria {

	var cantidadEmpanadasVendidas = 1000
	var montoPorEmpanada = 15
	var property dinero = 0
	var property deuda = 0

	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}

	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada

	method cobrarSueldo() {
		dinero += self.sueldo()
		self.pagar()
	}

	method gastar(cantidad) {
		deuda += cantidad
		self.pagar()	
	}

	method meAlcanza() {
		return self.dinero() > deuda
	}

	method pagar() {
		if (self.meAlcanza()) {
			dinero -= deuda
			deuda = 0
		} else {
			deuda -= dinero
			dinero = 0
		}
	}

}

object galvan {

	var property dinero = 300000

	method pagarA(empleado) {
		dinero -= empleado.sueldo()
		empleado.cobrarSueldo()
	// tuve que agregar cobrarSueldo a baigorria y a gimenez ya que si no se rompia
	}

}

