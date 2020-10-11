class Persona {
	const property provincia
	
	method puedeSerAtendidoPor(profesional){
		return profesional.provinciasDondePuedeTrabajar().contains(provincia) 
	}
}

class Institucion{
	const property universidades = []
	
	method agregarUniversidades(lista){
		universidades.addAll(lista)
	}
	
	method puedeSerAtendidoPor(profesional){
		return universidades.contains(profesional.universidad())
	}
}