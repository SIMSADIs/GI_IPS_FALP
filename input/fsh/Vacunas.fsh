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