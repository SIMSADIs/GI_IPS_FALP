Profile: BundleResumen
Parent: Bundle
Id: BundleResumen
Title: "Bundle Resumen"
Description: "Bundle del documento para resumen"

* identifier 0..1 MS
* type 1..1
  * ^short = "Tipo de Bundle. Debe ser un tipo Document"
* type from http://hl7.org/fhir/ValueSet/bundle-type (required)
* type = #document

* entry 1.. MS
  * ^slicing.discriminator[0].type = #type
  * ^slicing.discriminator[=].path = "resource"
  * ^slicing.discriminator[+].type = #profile
  * ^slicing.discriminator[=].path = "resource"
  * ^slicing.rules = #open
  * ^slicing.description = "Entradas del bundle que refenciarán a las diferentes seccciones del documento."
  * ^slicing.ordered = false 

  * ^short = "Secciones del documento"

* entry contains 
    Documento 1..1 MS and
    Paciente 1..1 MS and
    Autor 0..1 MS and
    Declarante 0..1 MS and
    Custodio 0..* MS and
    Problemas 0..* MS and
    Alergias 0..* MS and
    Medicamentos 0..* MS and
    Inmunizaciones 0..* MS and
    DispMedicos 0..* MS and
    Procedimientos 0..* MS and
    Resultados 0..* MS and
    SignosVitales 0..* MS

* entry[Documento] 
  * ^short = "Documento Resumen"
  * ^definition = "Documento composition"
  * fullUrl 0..1
    * ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 
  * resource only Documento

* entry[Paciente] 
  * ^short = "Sección Paciente"
  * ^definition = "Sección de referencia al Paciente"
  * fullUrl 1..1
    * ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 
  * resource only Paciente

* entry[Autor] 
  * ^short = "Sección autor"
  * ^definition = "Sección de quien creo el documento"
  * fullUrl 1..1
    * ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 
  * resource only PrestadorIndividual

* entry[Declarante] 
  * ^short = "Sección declarante"
  * ^definition = "Sección de quien valida el documento"
  * fullUrl 1..1
    * ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 
  * resource only PrestadorIndividual

* entry[Custodio] 
  * ^short = "Sección Custodio"
  * ^definition = "Sección de quien custodia el documento, referido de una institución"
  * fullUrl 1..1
    * ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 
  * resource only  Organizacion

* entry[Problemas] 
  * ^short = "Sección Problemas/condición"
  * ^definition = "Sección para referir a problemas o condición del paciente"
  * fullUrl 1..1
    * ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 
  * resource only CondicionClinica

* entry[Alergias] 
  * ^short = "Sección alergías"
  * ^definition = "Sección alergías e intolerancias del paciente"
  * fullUrl 1..1
    * ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 
  * resource only AlergiasFalp

* entry[Medicamentos] 
  * ^short = "Sección plan medicamentos"
  * ^definition = "Sección para la declaración de medicamentos del paciente"
  * fullUrl 1..1
    * ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 
  * resource only PlanMedicacionFalp

* entry[Inmunizaciones] 
  * ^short = "Sección Vacunas"
  * ^definition = "Sección para vacunas o inmunizaciones que haya recibido el paciente"
  * fullUrl 1..1
    * ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 
  * resource only VacunasFalp

* entry[DispMedicos] 
  * ^short = "Sección Dispositivos Médicos"
  * ^definition = "Sección para dispositivos médicos relacionados al paciente"
  * fullUrl 1..1
    * ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 
  * resource only DispMedicosFalp

* entry[Procedimientos] 
  * ^short = "Sección Procedimientos"
  * ^definition = "Sección para procedimientos que se le hayan realizado al paciente"
  * fullUrl 1..1
    * ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 
  * resource only Procedure

* entry[Resultados] 
  * ^short = "Sección Resultados"
  * ^definition = "Sección para resultados de exámenes realizados al paciente"
  * fullUrl 1..1
    * ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 
  * resource only Condition

* entry[SignosVitales] 
  * ^short = "Sección para signos vitales"
  * ^definition = "Sección para signos vitales o información fisiológica del paciente"
  * fullUrl 1..1
    * ^short = "Uri de identificación dentro del Bundle"
  * resource 1..1 
  * resource only Observation