//Accesorios
import bicis.*
import depositos.*

object farolito
	{
		method peso() = 0.5
		method carga() = 0
		method esLuminoso() = true
	}
	
class Canasto
	{
		var property volumen
		
		method peso() = volumen / 10
		method carga() = volumen * 2
		method esLuminoso() = false
	}

class MorralDeBici
	{
		var property largo
		var property ojoDeGato = false
		
		method peso() = 1.2
		method carga() = largo / 3
		method esLuminoso() = ojoDeGato
	}
	
/*Para poder agregar un nuevo tipo de accesorio solo hay que definirlo, como objeto o como clase
 * segun se necesite y hacer que entienda los mismos mensajer de los accesorios ya creados*/