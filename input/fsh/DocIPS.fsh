//Alias: $CodSeccion = https://IPSFalp.cl/CodeSystem/CSSeccionesDoc

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
  * ^short = "Paciente al que corresponde el documento"
* subject only Reference(Paciente)

* date 1..1
* author only Reference(PrestadorIndividual)
* attester MS
  * party only Reference(PrestadorIndividual)
* custodian only Reference(Organizacion)

* section 0..* 
* section ^slicing.discriminator[0].type = #pattern
* section ^slicing.discriminator[=].path = "code"
* section ^slicing.ordered = false
* section ^slicing.rules = #open
  * title 1..1

* section.code 0..1 MS
* section.code from VSSeccionesDoc (extensible)

* section contains 
    Problemas 0.. and
    Alergias 0.. and
    Medicamentos 0.. and
    Inmunizaciones 0.. and
    DispMedicos 0.. and
    Procedimientos 0.. and
    Resultados 0.. and
    SignosVitales 0..

* section[Problemas]
  * ^definition = "Sección dedicada a las alergias e intolerancias que presenta el paciente"
  * code = CSSeccionesDoc#01
  * entry only Reference(DiagnosticoPrevio)

* section[Alergias]
  * ^definition = "Sección dedicada a las alergias e intolerancias que presenta el paciente"
  * code = CSSeccionesDoc#02
  * entry only Reference(AlergiasFalp)

* section[Medicamentos]
  * ^definition = "Sección dedicada a las alergias e intolerancias que presenta el paciente"
  * code = CSSeccionesDoc#03
  * entry only Reference(PlanMedicacionFalp)

* section[Inmunizaciones]
  * ^definition = "Sección dedicada a las alergias e intolerancias que presenta el paciente"
  * code = CSSeccionesDoc#04
  * entry only Reference(VacunasFalp)

* section[DispMedicos]
  * ^definition = "Sección dedicada a las alergias e intolerancias que presenta el paciente"
  * code = CSSeccionesDoc#05
  * entry only Reference(DispMedicosFalp)

* section[Procedimientos]
  * ^definition = "Sección dedicada a las alergias e intolerancias que presenta el paciente"
  * code = CSSeccionesDoc#06
  //* entry only Reference(Procedimientos)

* section[Resultados]
  * ^definition = "Sección dedicada a las alergias e intolerancias que presenta el paciente"
  * code = CSSeccionesDoc#07
  //* entry only Reference(Resultados)

* section[SignosVitales]
  * ^definition = "Sección dedicada a las alergias e intolerancias que presenta el paciente"
  * code = CSSeccionesDoc#08
  //* entry only Reference(SignosVitales)