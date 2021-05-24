//Depositos
import bicis.*
import accesorios.*

class Deposito
	{
		var property bicicletas = #{}
				
		method agregarBicicleta(bicicleta)
			{
				bicicletas.add(bicicleta)
			}
		method retirarBicicleta(bicicleta)
			{
				bicicletas.remove(bicicleta)
			}
		method bicisRapidas() = bicicletas.filter( { bicicleta => bicicleta.velocidadDeCrucero() > 25 } )
		method marcas() = bicicletas.map( { bicicleta => bicicleta.marca() } ).asSet()
		method esNocturno() = bicicletas.all( { bicicleta => bicicleta.tieneLuz() } )
		method tieneBiciParaLlevar(kilos) = bicicletas.any( { bicicleta => bicicleta.carga() >= kilos } )
		method marcaDeBiciMasRapida() = bicicletas.max( { bicicleta => bicicleta.velocidadDeCrucero() } ).marca()
		method cargaTotalDeBicisLargas() = bicicletas.filter( { bicicleta => bicicleta.largo() > 170 } ).sum( { bicicleta => bicicleta.carga() } )
		method cantidadDeBicisSinAccesorios() = bicicletas.count( { bicicleta => bicicleta.accesorios().size() == 0 } )
		method biciCompanera(bici) 
		{
		const listaDeBicis = (bicicletas.filter( { bicicleta => bicicleta.marca() == bici.marca() and (bicicleta.largo() - bici.largo()).abs() <= 10 } ))
		listaDeBicis.remove(bici)
		return listaDeBicis
		}
		//6 Desafios
		method hayCompaneras() 
		{
		var companeras = []
		companeras.add( { bicicletas.forEach( {bicicleta => self.biciCompanera(bicicleta) } ) } )
		return companeras.size() == 0
		}
		//A los otros items de desafio no les encuentro la vuelta
	}
