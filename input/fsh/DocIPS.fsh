Profile: Documento
Parent: Composition
Id: Documento
Title: "Documento de resumen FALP"
Description: "Perfil de documento "

* identifier 0..1
  * ^short = "Identificador local para recurso documento"
* status 1..1
  * ^short = "Estado del documento"
* status = #final
* status from http://hl7.org/fhir/ValueSet/composition-status

* subject 1..1
* subject only Reference(PAciente)

* date 1..1
* author only Reference(Prestador)
* attester only Reference(Paciente)
* custodian only Reference(Organizacion)

* section 

