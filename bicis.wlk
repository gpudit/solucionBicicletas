//Bicicletas
import accesorios.*
import depositos.*

class Bicicleta
	{
		var property rodado
		var property largo
		var property marca
		const accesorios = []
		
		method agregarAccesorios(accesorio)
			{
				accesorios.add(accesorio)
			}
		method quitarAccesorios(accesorio)
			{
				accesorios.remove(accesorio)
			}
		method accesorios() = accesorios
		method altura() = rodado * 2.5 + 15
		method velocidadDeCrucero() = if(largo > 120) {rodado + 6} else {rodado +2}
		method carga() = accesorios.sum( { accesorio => accesorio.carga() } )
		method peso() = rodado / 2 + accesorios.sum( { accesorio => accesorio.peso() } )
		method tieneLuz() = accesorios.any( { accesorio => accesorio.esLuminoso() } )		
		method accesoriosLivianos() = accesorios.filter( { accesorio => accesorio.peso() < 1 } ).size()			
	}