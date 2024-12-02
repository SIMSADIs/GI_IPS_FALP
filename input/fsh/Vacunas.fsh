Profile: VacunasFalp
Parent: Immunization
Id: VacunasFalp
Title: "Vacunas e inmunizaciones"
Description: "Perfil para inmunización y vacunas que el paciente ha recibido"

* patient only Reference(Paciente)

* vaccineCode 1..1 
* vaccineCode from https://hl7chile.cl/fhir/ig/clcore/ValueSet/VSTiposVacunas

* occurrenceDateTime 0..1
* occurrenceString 0..1

* site 0..1 MS 
* site from http://hl7.org/fhir/ValueSet/body-site
* route 0..1 MS 
* route from http://hl7.org/fhir/uv/ips/ValueSet/medicine-route-of-administration

* protocolApplied 0..1 MS 
  * targetDisease 0..1 MS 
  * targetDisease from http://hl7.org/fhir/uv/ips/ValueSet/target-diseases-uv-ips


Instance: EjVacunas
InstanceOf: VacunasFalp
Usage: #example
Title: "Ejemplo Vacunas"
Description: "Perfil para ejemplo vacunas y tolerancia"

* patient = Reference(EjPacienteinline)

* status = #completed 

* vaccineCode.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodigoVacunas"
* vaccineCode.coding.code = #pentavalente
* vaccineCode.coding.display = "Pentavalente"

* occurrenceDateTime = "2014-11-27"
//* occurrenceString = "La vacuna fue colocada a las 12:00 el día 29 de enero del año 2013"

* site.coding.system = "http://snomed.info/sct"
* site.coding.code = #6894000
* site.coding.display = "Medial surface of arm"

* route.coding.system = "http://standardterms.edqm.eu"
* route.coding.code = #20025000
* route.coding.display = "Intrabursal use"

* protocolApplied.targetDisease.coding.system = "http://snomed.info/sct"
* protocolApplied.targetDisease.coding.code = #32398004
* protocolApplied.targetDisease.coding.display = "Bronchitis (disorder)"
* protocolApplied.doseNumberPositiveInt = 2

