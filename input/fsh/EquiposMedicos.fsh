Profile: DispMedicosFalp
Parent: Device
Id: DispMedicosFalp
Title: "Dispositivos médicos"
Description: "Perfil para diferentes dispositivos médicos que puedan estar asociados al paciente"

* type 1..1 MS 
  * ^short = "dispositivo médico"
* type from http://hl7.org/fhir/uv/ips/ValueSet/medical-devices-uv-ips

* patient only Reference(Paciente)

