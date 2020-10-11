import universidades.*
import profesionales.*

class EmpresaDeServicio {
	var property honorarioDeReferencia = 0
	const property profesionales = []
	
	method contratarProfesionales(lista){
		profesionales.addAll(lista)
	}
	
	method cuantosEstudiaronEn(univ){
		return profesionales.count({p=>p.universidad() == univ})
	}
	
	method profesionalesCaros(){
		return profesionales.filter({p=>p.honorariosPorHora() > self.honorarioDeReferencia()}).asSet()
	}
	
	method universidadesFormadoras(){
		return profesionales.map({p=>p.universidad()}).asSet()
	}
	
	method profesionalMasBarato(){
		return profesionales.min({p=>p.honorariosPorHora()})
	}
	
	method genteAcotada(){
		return profesionales.all({p=>p.provinciasDondePuedeTrabajar().size() <= 3})
	}
	
	method puedeSatisfacerSolicitante(solicitante){
		return profesionales.any({p=> solicitante.puedeSerAtendidoPor(p)})
	}
}
