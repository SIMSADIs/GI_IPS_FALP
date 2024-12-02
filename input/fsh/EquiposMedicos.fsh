Profile: DispMedicosFalp
Parent: Device
Id: DispMedicosFalp
Title: "Dispositivos médicos"
Description: "Perfil para diferentes dispositivos médicos que puedan estar asociados al paciente"

* type 1..1 MS 
  * ^short = "dispositivo médico"
* type from http://hl7.org/fhir/uv/ips/ValueSet/medical-devices-uv-ips

* patient only Reference(Paciente)

Instance: EjDispMedicos
InstanceOf: DispMedicosFalp
Usage: #example
Title: "Ejemplo dispositivos médicos"
Description: "Perfil para dispositivos medicos que puedan estar asociado al paciente"

* type.coding.system = "http://snomed.info/sct"
* type.coding.code = #2478003
* type.coding.display = "Glass eye"

* patient = Reference(EjPacienteinline)