Profile: AlergiasFalp   
Parent: AllergyIntolerance
Id: AlergiasFalp
Title: "Alergias e intolerancias"
Description: "Alergias e intolerancias que puede presentar un paciente0"
* ^jurisdiction = urn:iso:std:iso:3166#IPSFALP


* patient only Reference(Paciente)

* clinicalStatus 0..1 
* verificationStatus 0..1

* code 1..1
* code from http://hl7.org/fhir/uv/ips/ValueSet/allergy-intolerance-uv-ips

* onsetDateTime 0..1 

* reaction 
  * manifestation 1..1 
  * manifestation from http://hl7.org/fhir/uv/ips/ValueSet/allergy-reaction-uv-ips



Instance: EjAlergia
InstanceOf: AlergiasFalp
Usage: #example
Title: "Ejemplo alergías"
Description: "Ejemplo de perfil alergías para la FALP"

* patient = Reference(EjPacienteinline)

* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical"
* clinicalStatus.coding.code = #active

* verificationStatus.coding.system = "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification"
* verificationStatus.coding.code = #confirmed

* code.coding.system = "http://snomed.info/sct"
* code.coding.code = #1557002
* code.coding.display = "Talc"

* onsetDateTime = "2024-08-02"

* reaction.manifestation.coding.system = "http://snomed.info/sct"
* reaction.manifestation.coding.code = #39579001
* reaction.manifestation.coding.display = "Anaphylactic reaction"

