Profile: PacienteFalp
Parent: CorePacienteCl
Id: Paciente
Title: "Paciente"
Description: "Perfil de Paciente"

* extension contains SexoBiologico named Sexobiologico 0..1 
* extension[SexoBiologico].valueCodeableConcept 0..1
* extension contains Nacionalidad named Nacionalidad 1..*
* name 1..1 
* birthDate 1..1
* identifier 1..* 
* address
* address only cl-address
  * extension[Geolocalizacion] 0..1
  * city 1..1
  * district 0..1
  * state 0..1 
* contact
* contact.extension[IdContacto] 0..* 
* contact.name.family 0..1
* contact.name.given 0..1
//* contact.extension contains TutId 1..1
//* contact.extension[TutId].value[x] only Identifier
* contact.relationship 1..1
* contact.telecom 1..* MS
* contact.telecom.value ^short = "Detalles de Contacto"
* contact.telecom.value ^definition = "Detalles del Contacto, comunmente el o los mas usados (Ej: Teléfono fijo, móvil, email, etc.)"
* contact.telecom.[MyTelecomExtension].valueString 
* contact.address only cl-address
* contact.address
  * state 0..1 MS


Profile: PrestadorIndividual 
Parent: CorePrestadorCl
Id: PrestadorIndividual
Title: "Prestador Indivual"
Description: "Perfil del Prestador Individual"

* name 1..1 MS
* birthDate 
  * ^short = "Fecha de nacimiento del prestador"
  * ^definition = "Fecha de nacimiento del prestador" 
* extension contains https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises named Nacionalidad  0..* 
* identifier  1..* 
* address only cl-address
* address
  * state 1..1 

* extension contains Mension named Mension 0..1 
/*
* qualification[Cert] 0..*
  * identifier.value = "cert"
* qualification[Esp] 0..*
  * identifier.value = "esp"
* qualification[SubEsp] 0..1
  * identifier.value = "subesp"
*/


Profile:  Organizacion
Parent: CoreOrganizacionCl
Id: Organizacion
Title: "Organzación en Salud"
Description: "Perfil de la Organización de Salud"

* extension contains TipoSistemaSalud named TipoSistemaSalud 1..1
* identifier 1..*
* extension contains TipoEstablecimientosPublicos named TipoEstablecimientosPublicos 1..1 
* extension contains NivelAtencion named NivelAtencion 1..1 
* extension contains TipoPertinenciaEstab named TipoPertinenciaEstab 1..1
* address only cl-address
  * extension[Geolocalizacion] 0..1
  * city 1..1
  * district 1..1
  * state 1..1 

Profile:  Localizacion
Parent: CoreLocalizacionCl
Id: Localizacion
Title: "Localización de Organzación"
Description: "Perfil Localización"


* position 1..1
* managingOrganization 1..1


Profile: HistorialClinico
Parent: CoreDiagnosticoCl
Id: HistorialClinico     
Title: "Historial Clínico"
Description: "Historia clinica respecto a diagnóstico previos si posee el Paciente" 

* extension contains FechaDiagnostica named FechaDiagnostica 1..1 
* extension[FechaDiagnostica].valueDateTime 1..1
* extension[FechaDiagnostica].valueDateTime MS
* extension[FechaDiagnostica].valueDateTime ^short = "Fecha en que se realizó el diagnóstico"
* extension contains TerminoClinico named TerminoClinico 1..*
* extension contains SeveridadDiagnostico named SeveridadDiagnostico 0..1   
* extension contains Observacion named Observacion 0..1

* extension contains Referencia named Referencia 1..1 


Profile: ReporteProcedimiento
Id: ReporteProcedimiento
Parent: Condition
Title: "Reporte del Procedimiento"
Description: "Perfil de Reporte del Procedimiento"

//* url = "http:​/​/falp​.cl​/StructureDefinition​/ReporteProcedimiento"
* extension contains FechaSolicitud named FechaSolicitud 1..1 
//* extension[FechaProcedimiento].valueDateTime 1..1
//* extension[FechaProcedimiento].valueDateTime MS
* extension contains FechaProcedimiento named FechaProcedimiento 1..1 
* extension contains TipoProcedimiento named TiposProcedimientos 1..1 
* extension contains Observacion named Observacion 0..1
* extension contains Referencia named Referencia 1..1 

Profile: SolicitudProcedimiento
Parent: Procedure
Id: SolicitudProcedimiento
Title: "Solicitud del Procedimiento"
Description: "Perfil de Solicitud del Procedimiento"


* extension contains FechaSolicitud named FechaSolicitud 1..1 
//* extension[FechaSolicitud].valueDateTime 1..1
* extension[FechaSolicitud].valueDateTime ^short = "Fecha en que se realizó la solicitud del procedimiento"
* extension[FechaSolicitud].valueDateTime ^definition = "Fecha en que solicitud el procedimiento"
* extension contains TipoProcedimiento named TiposProcedimientos 1..1 
//* extension[TipoProcedimiento].valueCodeableConcept 1..1
* extension contains UrgenciaProcedimiento named UrgenciaProcedimiento 0..1
* extension[UrgenciaProcedimiento].valueCodeableConcept 0..1
* extension contains Observacion named Observacion 0..1
* extension[Observacion].valueString 0..1

* extension contains Referencia named Referencia 1..1 
//* extension[Referencia].valueReference 0..1

Extension: SexoBiologico
Id: SexoBiologico
Title: "Sexo biólogico"
Description: "Sexo asignado al nacer "
Context: Patient 
* value[x] only CodeableConcept
  * ^short = "Sexo biólogico"
* valueCodeableConcept from https://interoperabilidad.minsal.cl/fhir/ig/eis/ValueSet/VSSexoBiologico 
  * ^binding.description = "Tabla de Sexo biólogico"

Extension: Nacionalidad
Id: Nacionalidad
Title: "Nacionalidad"
Description: "País de nacimiento y/o que haya sido nacionalizado"
Context: Patient
* value[x] only CodeableConcept
  * ^short = "Nacionalidad"
* valueCodeableConcept from https://hl7chile.cl/fhir/ig/clcore/ValueSet/CodPais
  * ^binding.description = "Tabla de Nacionalidad"

Extension: MyTelecomExtension
Id: MyTelecomExtension
Title: "Contacto del acompañante"
Description: "Contacto del acompañante del paciente"
Context: Patient.contact.telecom
* value[x] only string

//COVERAGE//

Extension: PrevisionExtension
Id:  Prevision
Title: "Set de códigos de previones de Salud"
Description: "Set de códigos de previsiones de Salud"
Context: Coverage 
* value[x] only CodeableConcept
  * ^short = "Previones de Salud"
* valueCodeableConcept from https://interoperabilidad.minsal.cl/fhir/ig/eis/ValueSet/VSPrevision
  * ^binding.description = "Tabla de previsiones"

Extension: TramosFonasaExtension
Id:  TramosFonasa
Title: "Set de códigos de tramos de Fonasa"
Description: "Set de códigos de tramos de Fonasa"
Context: Coverage
* value[x] only CodeableConcept
  * ^short = "Tramos de Fonasa"
* valueCodeableConcept from https://interoperabilidad.minsal.cl/fhir/ig/eis/ValueSet/VSTramosFonasa
  * ^binding.description = "Tabla de tramos de Fonasa"

Extension: SegCapa
Id: SegCapa
Title: "Seguros Segunda Capa"
Description: "Si el paciente posee algún Seguro de Segunda Capa"
Context: Coverage 
* value[x] only boolean


Extension: NombreSeguro
Id: NombreSeguro
Title: "Nombre y/o código del Seguro Segunda Capa"
Description: "Nombre y/o código del Seguro Segunda Capa si corresponde"
Context: Coverage 
* value[x] only string 
* valueString 1..1

//SOLICITUD DEL PROCEDIMIENTO// 
Extension: FechaSolicitud
Id: Fecha-Solicitud
Title: "Fecha de Solicitud"
Description: "Fecha en que se realizó la solicitud del procedimiento."
Context: Condition , Procedure
* value[x] only dateTime 


//REPORTE DE PROCEDIMIENTO//

Extension: TipoProcedimiento
Id:  TipoProcedimiento
Title: "Set de códigos de tipos de procedimientos"
Description: "Set de códigos de tipos de procedimientos"
Context: Condition , Procedure
* value[x] only string 


Extension: FechaProcedimiento
Id: FechaProcedimiento
Title: "Fecha de Procedimiento"
Description: "Fecha en que se realizó el procedimiento."
Context: Condition 
* value[x] only dateTime 

Extension: UrgenciaProcedimiento
Id: UrgenciaProcedimiento
Title: "Urgencia del Procedimiento"
Description: "Valoración subjetivade la urgencia del Procedimiento"
Context: Procedure
* value[x] only CodeableConcept
  * ^short =  "Urgencia del Procedimiento"
* valueCodeableConcept from VSurgProcedimiento
  * ^binding.description = "Nivel de urgencia"

Extension: Observacion
Id: Observacion 
Title: "Observación"
Description: "Alguna observación para el procedimiento"
Context: Condition , Procedure
* value[x] only string 


//DIAGNÓSTICO//

Extension: FechaDiagnostica
Id: FechaDiagnostica
Title: "Fecha de Diagnóstico"
Description: "Fecha en que se realizó el diagnóstico."
Context: CoreDiagnosticoCl
* valueDateTime 

// HISTORIA CLINICA //

Extension: TerminoClinico
Id: TerminoClinico
Title: "Termino Clinico"
Description: "Término Clínico ingresado por el médico"
Context: CoreDiagnosticoCl 
* value[x] only string 
* valueString 

Extension: SeveridadDiagnostico
Id: SeveridadDiagnostico
Title: "Severidad Diagnóstica"
Description: "Valoración subjetiva de la gravedad de la enfermedad evaluada por el clínico"
Context: CoreDiagnosticoCl
* value[x] only CodeableConcept
  * ^short = "Severidad Diagnóstica"
* valueCodeableConcept from VSseveridadDiagnostica
  * ^binding.description = "Valoración subjetiva de la gravedad de la enfermedad evaluada por el clínico"



//PRESTADOR INDIVIDUAL///

Extension: Mension
Id: Mension 
Title: "Nombre de la mensión de su titulo profesional"
Description: "Nombre de la mensión de su titulo profesional si corresponde"
Context: Practitioner
* value[x] only string 
* valueString 

//ORGANIZACIÓN//
Extension: TipoSistemaSalud
Id: TipoSistemaSalud
Title: "Tipos de Sistemas de Salud"
Description: "Tipos de Sistemas de Salud"
Context: Organization 
* value[x] only CodeableConcept
  * ^short = "Tipos de Sistemas de Salud"
* valueCodeableConcept from https://interoperabilidad.minsal.cl/fhir/ig/eis/ValueSet/VSTipoSistemaSalud
  * ^binding.description = "Tipos de Sistemas de Salud"

Extension: TipoEstablecimientosPublicos
Id: TipoEstablecimientosPublicos
Title: "Tipos de Establecimientos Publicos"
Description: "Tipos de Establecimientos Publicos"
Context: Organizacion
* value[x] only CodeableConcept
  * ^short = "Tipos de Establecimientos Publicos"
* valueCodeableConcept from https://interoperabilidad.minsal.cl/fhir/ig/eis/ValueSet/VSTipoEstablecimientosPublicos 
  * ^binding.description = "Tipos de Establecimientos Publicos"

Extension: NivelAtencion
Id: NivelAtencion
Title: "Nivel de Atención"
Description: "Nivel de atención que se asigna según la cobertura y complejidad"
Context: Organizacion
* value[x] only CodeableConcept
  * ^short = "Nivel de Atencion"
* valueCodeableConcept from https://interoperabilidad.minsal.cl/fhir/ig/eis/ValueSet/VSNivelAtencion
  * ^binding.description = "Nivel de atención que se asigna según la cobertura y complejidad"

Extension: TipoPertinenciaEstab	
Id: TipoPertinenciaEstab	
Title: "Pertinencia SNSS"
Description: "Atributo o característica del establecimiento relacionado con la relación de jurisdicción establecia con el Sistema Nacional de Servicio de Salud"
Context: Organizacion 
* value[x] only CodeableConcept
  * ^short = "Pertinencia SNSS"
* valueCodeableConcept from https://interoperabilidad.minsal.cl/fhir/ig/eis/ValueSet/VSTipoPertinenciaEstab 
  * ^binding.description = "Atributo o característica del establecimiento relacionado con la relación de jurisdicción establecia con el Sistema Nacional de Servicio de Salud"

//REFERENCIA// 
Extension: Referencia 
Id: Referencia
Title: "Referencia"
Description: "Referencia Paciente"
Context: Condition , Procedure
* value[x] only Reference(PacienteFalp) 


////////////////////////////////////////////////////////////////////////////////////////////////////////////


CodeSystem: CSurgProcedimiento
Id: CSurgProcedimiento
Title: "Tramos de la urgencia del Procedimiento"
Description: "Código asociados a la urgencia del Procedimiento"
* ^caseSensitive = true
* ^experimental = false 
* #BAJA "BAJA"
* #MEDIA "MEDIA" 
* #ALTA "ALTA"

//////////////////////////////////////////////////////////////////////////////////////////////////////////

CodeSystem: CSseveridadDiagnostica
Id: CSseveridadDiagnostica
Title: "Tramos de Severidad Diagnóstica" 
Description: "Tramos de Severidad Diagnóstica dependiendo de la valoración subjetiva de la gravedad de la enfermedad evaluada por el clínico"
* ^caseSensitive = true 
* ^experimental = false   
* #LEVE "LEVE"
* #MODERADO "MODERADO"
* #GRAVE "GRAVE"

// ORGANIZACION //

//QUESTIONARIO//
CodeSystem: CSDiab
Id: CSDiab
Title: "Tipo de diabetes y opción de si no posee"
Description: "Nombres del tipo de diabetes y opción de si no posee"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2022-01-18T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"
* ^caseSensitive = true

* #tipo1 "Diabetes Tipo 1"
* #tipo2 "Diabetes Tipo 2"
* #No "No posee" 



ValueSet: VSurgProcedimiento
Id: VSurgProcedimiento
Title: "Urgencia del Procedimiento"
Description: "Códigos asociados a la Urgencia del Procedimiento"
* include codes from system CSurgProcedimiento
* ^status = #active
* ^experimental = false

////////////////////////////////////////////////////////////////////////////////////////////////////////////

ValueSet: VSseveridadDiagnostica
Id: VSseveridadDiagnostica
Title: "Severidad Diagnostica"
Description: "Valoración subjetiva de la gravedad de la enfermedad evaluada por el clínico"
* include codes from system CSseveridadDiagnostica
* ^status = #active
* ^experimental = false

//QUESTIONARIO//
ValueSet: VSDiab
Id: VSDiab
Title: "Tipos de diabetes y opción de si no posee"
Description: "Códigos asociados Tipo de diabetes y opción de si no posee"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2022-01-18T00:00:00-03:00"
* ^contact.name = "HL7 Chile"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "chair@hl7chile.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* codes from system CSDiab