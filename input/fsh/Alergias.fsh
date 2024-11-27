Profile: AlergiasFalp   
Parent: AllergyIntolerance
Id: AlergiasFalp
Title: "Perfil de alergias e intolerancias"
Description: "Alergias e intolerancias que puede presentar un paciente0"

* patient only Reference(Paciente)

* clinicalStatus 0..1 
* verificationStatus 0..1

* code 1..1
* code from http://hl7.org/fhir/uv/ips/ValueSet/allergy-intolerance-uv-ips

* onsetDateTime 0..1 

* reaction 
  * manifestation 1..1 
  * manifestation from http://hl7.org/fhir/uv/ips/ValueSet/allergy-reaction-uv-ips