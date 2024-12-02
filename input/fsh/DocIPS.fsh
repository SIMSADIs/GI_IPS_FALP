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

* type 1..1 MS 
* type = #60591-5 "Patient summary Document"
//* type from http://loinc.org

* subject 1..1
  * ^short = "Paciente al que corresponde el documento"
* subject only Reference(Paciente)

* date 1..1
* author only Reference(PrestadorIndividual)
* attester MS
  * party only Reference(PrestadorIndividual)
* custodian only Reference(Organizacion)

* section 0..* 
* section ^slicing.discriminator[0].type = #value
* section ^slicing.discriminator[=].path = "code"
* section ^slicing.ordered = false
* section ^slicing.rules = #open
  * title 1..1

* section.code 0..1 MS
* section.code from VSSeccionesDoc (extensible)

* section contains 
    Problemas 0..* and
    Alergias 0..* and
    Medicamentos 0..* and
    Inmunizaciones 0..* and
    DispMedicos 0..* and
    Procedimientos 0..* and
    Resultados 0..* and
    SignosVitales 0..*

* section[Problemas]
  * ^definition = "Sección dedicada a las alergias e intolerancias que presenta el paciente"
  * code = CSSeccionesDoc#06
  * entry only Reference(DiagnosticoPrevio)

* section[Alergias]
  * ^definition = "Sección dedicada a las alergias e intolerancias que presenta el paciente"
  * code = CSSeccionesDoc#07
  * entry only Reference(AlergiasFalp)

* section[Medicamentos]
  * ^definition = "Sección dedicada a las alergias e intolerancias que presenta el paciente"
  * code = CSSeccionesDoc#08
  * entry only Reference(PlanMedicacionFalp)

* section[Inmunizaciones]
  * ^definition = "Sección dedicada a las alergias e intolerancias que presenta el paciente"
  * code = CSSeccionesDoc#09
  * entry only Reference(VacunasFalp)

* section[DispMedicos]
  * ^definition = "Sección dedicada a las alergias e intolerancias que presenta el paciente"
  * code = CSSeccionesDoc#10
  * entry only Reference(DispMedicosFalp)

* section[Procedimientos]
  * ^definition = "Sección dedicada a las alergias e intolerancias que presenta el paciente"
  * code = CSSeccionesDoc#11
  //* entry only Reference(Procedimientos)

* section[Resultados]
  * ^definition = "Sección dedicada a las alergias e intolerancias que presenta el paciente"
  * code = CSSeccionesDoc#12
  //* entry only Reference(Resultados)

* section[SignosVitales]
  * ^definition = "Sección dedicada a las alergias e intolerancias que presenta el paciente"
  * code = CSSeccionesDoc#13
  //* entry only Reference(SignosVitales)


Instance: EjDocumento
InstanceOf: Documento
Usage: #example
Title: "Ejemplo de Documento"
Description: "Perfil para ejemplo de documento resumen IPS"

* status = #final
* type.coding.system = "http://loinc.org"
* type.coding.code = #60591-5
* type.coding.display = "Patient summary Document"

* title = "Resumen Paciente"
* subject = Reference(EjPacienteinline)

* date = "2024-05-20"

* author = Reference(EjPrestadorIndividual)
* custodian = Reference(EjOrganizacion)

/** section[Problemas].title = "Problemas"
* section[Problemas].code.coding.system = "https://IPSFalp.cl/CodeSystem/CSSeccionesDoc"
* section[Problemas].code.coding.code = #01 "Problemas"
* section[Problemas].entry = Reference()*/

* section[Alergias].title = "Alergías e intolerancias"
* section[Alergias].code.coding.system = "https://IPSFalp.cl/CodeSystem/CSSeccionesDoc"
* section[Alergias].code.coding.code = #07 "Alergias"
* section[Alergias].entry = Reference(EjAlergia)

* section[Medicamentos].title = "Medicamentos"
* section[Medicamentos].code.coding.system = "https://IPSFalp.cl/CodeSystem/CSSeccionesDoc"
* section[Medicamentos].code.coding.code = #08 "Medicamentos"
* section[Medicamentos].entry = Reference(EjPlanMedicacion)

* section[Inmunizaciones].title = "Vacunas e inmunizaciones"
* section[Inmunizaciones].code.coding.system = "https://IPSFalp.cl/CodeSystem/CSSeccionesDoc"
* section[Inmunizaciones].code.coding.code = #09 "inmunizaciones"
* section[Inmunizaciones].entry = Reference(EjVacunas)

* section[DispMedicos].title = "Dispositivos médicos"
* section[DispMedicos].code.coding.system = "https://IPSFalp.cl/CodeSystem/CSSeccionesDoc"
* section[DispMedicos].code.coding.code = #10 "DispMedicos"
* section[DispMedicos].entry = Reference(EjDispMedicos)