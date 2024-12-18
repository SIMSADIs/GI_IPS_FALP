Instance: EjBundle
InstanceOf: BundleResumen
Usage: #example
Title: "Ejemplo Bundle Resumen"
Description: "Ejemplo para perfil de bundle resumen IPS"

* identifier.system = "urn:uuid:461a3317-1bae-4637-96e8-b75aa2f6d29c"
* identifier.value = "29382"
* type = #document
* timestamp = "2024-05-28T22:12:21Z"

* entry[Documento].fullUrl = "urn:uuid:5d58b2cd-9d53-45eb-8d7e-73ef9c58eb53"
* entry[Documento].resource = 5d58b2cd-9d53-45eb-8d7e-73ef9c58eb53
* entry[Paciente].fullUrl = "urn:uuid:31ab6790-6317-425a-b7a3-edb648cf0333"
* entry[Paciente].resource = 31ab6790-6317-425a-b7a3-edb648cf0333
* entry[Autor].fullUrl = "urn:uuid:90da7da8-2889-4f8c-bb61-caaca824c2e5"
* entry[Autor].resource = 90da7da8-2889-4f8c-bb61-caaca824c2e5
* entry[Custodio].fullUrl = "urn:uuid:edd68f7a-7959-4e1b-b0d2-1ad125e0c6a6"
* entry[Custodio].resource = edd68f7a-7959-4e1b-b0d2-1ad125e0c6a6
* entry[Problemas].fullUrl = "urn:uuid:0b847f67-171d-47ff-95ba-0b48076d9d36"
* entry[Problemas].resource = 0b847f67-171d-47ff-95ba-0b48076d9d36
* entry[Alergias].fullUrl = "urn:uuid:b8c19955-0196-4500-bf9c-3298385d833e"
* entry[Alergias].resource = b8c19955-0196-4500-bf9c-3298385d833e
* entry[Medicamentos].fullUrl = "urn:uuid:2d4d83a5-dfbe-4408-8ea1-f4265996e1a3"
* entry[Medicamentos].resource = 2d4d83a5-dfbe-4408-8ea1-f4265996e1a3
* entry[Inmunizaciones].fullUrl = "urn:uuid:8ecf7017-9a34-47c9-a2aa-d96b4416e573"
* entry[Inmunizaciones].resource = 8ecf7017-9a34-47c9-a2aa-d96b4416e573
* entry[DispMedicos].fullUrl = "urn:uuid:16145315-f6a6-4ed4-acf3-192f8a8adb70"
* entry[DispMedicos].resource = 16145315-f6a6-4ed4-acf3-192f8a8adb70


Instance: 5d58b2cd-9d53-45eb-8d7e-73ef9c58eb53
InstanceOf: Documento
Usage: #inline
Title: "Ejemplo de Documento"
Description: "Perfil para ejemplo de documento resumen IPS"

* status = #final
* type.coding.system = "http://loinc.org"
* type.coding.code = #60591-5
* type.coding.display = "Patient summary Document"

* title = "Resumen Paciente"
* subject = Reference(urn:uuid:31ab6790-6317-425a-b7a3-edb648cf0333)

* date = "2024-05-20"

* author = Reference(urn:uuid:90da7da8-2889-4f8c-bb61-caaca824c2e5)
* custodian = Reference(urn:uuid:edd68f7a-7959-4e1b-b0d2-1ad125e0c6a6)

* section[Problemas].title = "Problemas"
* section[Problemas].code.coding.system = "https://falp.cl/fhir/ig/IPSFalp/CodeSystem/CSSeccionesDoc"
* section[Problemas].code.coding.code = #06 "Problemas"
* section[Problemas].entry = Reference(urn:uuid:0b847f67-171d-47ff-95ba-0b48076d9d36)


* section[Alergias].title = "Alergías e intolerancias"
* section[Alergias].code.coding.system = "https://falp.cl/fhir/ig/IPSFalp/CodeSystem/CSSeccionesDoc"
* section[Alergias].code.coding.code = #07 "Alergias"
* section[Alergias].entry = Reference(urn:uuid:b8c19955-0196-4500-bf9c-3298385d833e)

* section[Medicamentos].title = "Medicamentos"
* section[Medicamentos].code.coding.system = "https://falp.cl/fhir/ig/IPSFalp/CodeSystem/CSSeccionesDoc"
* section[Medicamentos].code.coding.code = #08 "Medicamentos"
* section[Medicamentos].entry = Reference(urn:uuid:2d4d83a5-dfbe-4408-8ea1-f4265996e1a3)

* section[Inmunizaciones].title = "Vacunas e inmunizaciones"
* section[Inmunizaciones].code.coding.system = "https://falp.cl/fhir/ig/IPSFalp/CodeSystem/CSSeccionesDoc"
* section[Inmunizaciones].code.coding.code = #09 "inmunizaciones"
* section[Inmunizaciones].entry = Reference(urn:uuid:8ecf7017-9a34-47c9-a2aa-d96b4416e573)

* section[DispMedicos].title = "Dispositivos médicos"
* section[DispMedicos].code.coding.system = "https://falp.cl/fhir/ig/IPSFalp/CodeSystem/CSSeccionesDoc"
* section[DispMedicos].code.coding.code = #10 "DispMedicos"
* section[DispMedicos].entry = Reference(urn:uuid:16145315-f6a6-4ed4-acf3-192f8a8adb70)

Instance: 31ab6790-6317-425a-b7a3-edb648cf0333
InstanceOf: PacienteFalp
Usage: #inline
Title: "Ejemplo paciente FALP"
Description: "Ejemplo de un paciente con las necesidades de la FALP"


* extension[Sexobiologico].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/CSSexoBiologico"
* extension[Sexobiologico].valueCodeableConcept.coding = #1 "Hombre"

* extension[Nacionalidad].valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais"
* extension[Nacionalidad].valueCodeableConcept.coding.code = #152 "Chile"


* name[NombreOficial].family = "Perez"
* name[NombreOficial].given[0] = "Franchesco"
* name[NombreOficial].use = #official

* birthDate = "1980-01-01"

* identifier.use = #secondary
* identifier.type = #01
* identifier.type.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador"
* identifier.type.coding.display = "RUN"
* identifier.value = "30.696.558-7"

* active = true

* address.use = #home
* address.line[0] = "Calle 6 Norte, 52, pieza 802"

* address.city.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ComunasCl"
* address.city.extension.valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodComunasCL"
* address.city.extension.valueCodeableConcept.coding.code = #13101 "Santiago Centro"

* address.district.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ProvinciasCl"
* address.district.extension.valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodProvinciasCL"
* address.district.extension.valueCodeableConcept.coding.code = #131 "Santiago"

* address.state.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl"
* address.state.extension.valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodRegionCL"
* address.state.extension.valueCodeableConcept.coding.code = #13 "RegionMetropolitana"


* contact.relationship.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0131"
* contact.relationship.coding.code = #N "Next of Kin"

* contact.address.use = #home
* contact.address.line[0] = "Gregorio Mira 123" 

* contact.address.state.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl"
* contact.address.state.extension.valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodRegionCL"
* contact.address.state.extension.valueCodeableConcept.coding.code = #13 "RegionMetropolitana"

//* contact.name.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/IdContacto" //falta agregar identificaor del acompañante revisar bien todo lo que tenga que ver con el contacto 
* contact.name.use =  #official
* contact.name.family = "Gonzalez"
* contact.name.given[0] = "Maria"
 
* contact.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/IdContacto"

// esto sería el slice de tutID obligatorio 
* contact.extension.extension.url = "tutId"
* contact.extension.extension.valueIdentifier.use = #official "Official"
//* contact.extension.extension.valueIdentifier.type = #PPN 
* contact.extension.extension.valueIdentifier.type.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador"
* contact.extension.extension.valueIdentifier.type.coding.code = #01
* contact.extension.extension.valueIdentifier.type.coding.display = "RUN"
* contact.extension.extension.valueIdentifier.system = "http://regcivil.cl/Validacion/RUN"
* contact.extension.extension.valueIdentifier.value = "12.435.789-k"

* contact.telecom[0].system = #phone
* contact.telecom[0].value = "+56912345678"
* contact.telecom[0].use = #mobile
* contact.telecom[0].system = #email
* contact.telecom[0].value = "maria.gonzalez@example.com"
* contact.telecom[0].use = #home

Instance: 90da7da8-2889-4f8c-bb61-caaca824c2e5
InstanceOf: PrestadorIndFalp
Usage: #inline
Title: "Example Prestador Individual"
Description: "An example Prestador individual instance." 

* id = "example-PrestadorIndividual"
* name.family = "Gonzaléz"
* name.given = "Pedro"
* birthDate = "1980-12-25" 

* identifier.value = "15.666.378-2"
* identifier.type.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador"
* identifier.type.coding.code = #01
* identifier.type.coding.display = "RUN"

* address.state.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl"
* address.state.extension.valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodRegionCL"
* address.state.extension.valueCodeableConcept.coding.code = #13 "RegionMetropolitana"

* extension[Mension].valueString = "NEFROLOGO" 
/*
* qualification[Cert].identifier.value = "cert"
* qualification[Cert].code.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/CSTituloProfesional"
* qualification[Cert].code.coding.code = #1
* qualification[Cert].code.text = "Certificado(s)"

* qualification[SubEsp].identifier.value = "subesp"
* qualification[SubEsp].code.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/CSEspecialidadMedica"
* qualification[SubEsp].code.coding.code = #4
* qualification[SubEsp].code.text = "SubEspecialidad(es)"
*/

Instance: edd68f7a-7959-4e1b-b0d2-1ad125e0c6a6
InstanceOf: Organizacion
Usage: #inline
Title: "Example-Organización"
Description: "An example Organización instance."  

* id = "example-Organizacion"
* extension[TipoSistemaSalud].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/CSTipoSistemaSalud"
* extension[TipoSistemaSalud].valueCodeableConcept.coding = #1 "Público"

* identifier[0].system = "http://example.org/identifiers"
* identifier[0].value = "7777777-7"

//* extension[TipoEstablecimientosPublicos].url = "https://interoperabilidad.minsal.cl/fhir/ig/eis/ValueSet/VSTipoEstablecimientosPublicos"
* extension[TipoEstablecimientosPublicos].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/CSTipoEstablecimientosPublicos"
* extension[TipoEstablecimientosPublicos].valueCodeableConcept.coding.code = #4 "Establecimientos Hospitalarios"

//* extension[NivelAtencion].url = "https://interoperabilidad.minsal.cl/fhir/ig/eis/ValueSet/VSNivelAtencion"
* extension[NivelAtencion].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/CSNivelAtencion"
* extension[NivelAtencion].valueCodeableConcept.coding.code = #3 "Nivel Terciario"

//* extension[TipoPertinenciaEstab].url = "https://interoperabilidad.minsal.cl/fhir/ig/eis/ValueSet/VSTipoPertinenciaEstab"
* extension[TipoPertinenciaEstab].valueCodeableConcept.coding.system = "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/CSTipoPertinenciaEstab"
* extension[TipoPertinenciaEstab].valueCodeableConcept.coding.code = #1 "Perteneciente al Sistema Nacional de Servicios de Salud"

* address.city.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ComunasCl"
* address.city.extension.valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodComunasCL"
* address.city.extension.valueCodeableConcept.coding.code = #13101 "Santiago Centro"

* address.district.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ProvinciasCl"
* address.district.extension.valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodProvinciasCL"
* address.district.extension.valueCodeableConcept.coding.code = #131 "Santiago"

* address.state.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl"
* address.state.extension.valueCodeableConcept.coding.system = "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSCodRegionCL"
* address.state.extension.valueCodeableConcept.coding.code = #13 "RegionMetropolitana"

Instance: 0b847f67-171d-47ff-95ba-0b48076d9d36
InstanceOf: CondicionClinica
Usage: #inline
Title: "Example-HistoriaClínica"
Description: "An example Historia Clínica instance."  

* subject = Reference(urn:uuid:31ab6790-6317-425a-b7a3-edb648cf0333) 

* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* clinicalStatus.coding.code = #active

* verificationStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-ver-status"
* verificationStatus.coding.code = #confirmed

* category.coding.system = "http://terminology.hl7.org/CodeSystem/condition-category"
* category.coding.code = #problem-list-item 

* onsetDateTime = "2024-08-02"

* code.coding.system = "http://snomed.info/sct"
* code.coding.code = #1648002
* code.coding.display = "Lymphocytic pseudotumor of lung"

* severity.coding.system = "https://falp.cl/fhir/ig/corefalp/CodeSystem/CSseveridadDiagnostica""
* severity.coding.code = #MODERADO "MODERADO"

* note.text = "Pulmón derecho"

Instance: b8c19955-0196-4500-bf9c-3298385d833e
InstanceOf: AlergiasFalp
Usage: #inline
Title: "Ejemplo alergías"
Description: "Ejemplo de perfil alergías para la FALP"

* patient = Reference(urn:uuid:31ab6790-6317-425a-b7a3-edb648cf0333)

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

Instance: 2d4d83a5-dfbe-4408-8ea1-f4265996e1a3
InstanceOf: PlanMedicacionFalp
Usage: #inline
Title: "Ejemplo plan de medicamento FALP"
Description: "Ejemplo para perfil de plan de medicación falp"

* status = #active
* subject = Reference(urn:uuid:31ab6790-6317-425a-b7a3-edb648cf0333)

* medicationCodeableConcept.coding.system = "http://snomed.info/sct"
* medicationCodeableConcept.coding.code = #7904003
* medicationCodeableConcept.coding.display = "Deanol"

* effectivePeriod.start = "2024-11-27"
* effectivePeriod.end = "2024-12-15"

* dosage.sequence = 1
* dosage.text = "1 tableta por día"
//* dosage.asNeeded = false
* dosage.route.coding.system = "http://snomed.info/sct" 
* dosage.route.coding.code = #260548002
* dosage.route.coding.display = "Oral"

* dosage.doseAndRate.type.coding.system = "http://terminology.hl7.org/CodeSystem/dose-rate-type"
* dosage.doseAndRate.type.coding.code = #ordered
//* dosage.doseAndRate.doseQuantity = 1 "http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm"#ORTAB "ORTAB"
* dosage.doseAndRate.doseQuantity.value = 1.0
* dosage.doseAndRate.doseQuantity.unit = "Oral Tablet"
* dosage.doseAndRate.doseQuantity.system = "http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm"
* dosage.doseAndRate.doseQuantity.code = #ORTAB

* dosage.doseAndRate.rateQuantity.value = 1.0
* dosage.doseAndRate.rateQuantity.system = "http://unitsofmeasure.org"
* dosage.doseAndRate.rateQuantity.unit = "d"
* dosage.doseAndRate.rateQuantity.code = #d

Instance: 8ecf7017-9a34-47c9-a2aa-d96b4416e573
InstanceOf: VacunasFalp
Usage: #inline
Title: "Ejemplo Vacunas"
Description: "Perfil para ejemplo vacunas y tolerancia"

* patient = Reference(urn:uuid:31ab6790-6317-425a-b7a3-edb648cf0333)

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

Instance: 16145315-f6a6-4ed4-acf3-192f8a8adb70
InstanceOf: DispMedicosFalp
Usage: #inline
Title: "Ejemplo dispositivos médicos"
Description: "Perfil para dispositivos medicos que puedan estar asociado al paciente"

* type.coding.system = "http://snomed.info/sct"
* type.coding.code = #2478003
* type.coding.display = "Glass eye"

* patient = Reference(urn:uuid:31ab6790-6317-425a-b7a3-edb648cf0333)

