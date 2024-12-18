Profile: PlanMedicacionFalp
Parent: MedicationStatement
Id: PlanMedicacionFalp
Title: "Plan de medicación"
Description: "Perfil donde se modelan los medicamentos que toma el paciente"

* subject 1..1 MS
* subject only Reference(PacienteFalp)

* medicationCodeableConcept 1..1 
* medicationCodeableConcept from http://hl7.org/fhir/ValueSet/medication-codes

* effectivePeriod 1..1 MS

* dosage 1..1
  * doseAndRate 1..1
    * doseQuantity 1..1
    * rateQuantity 1..1


Instance: EjPlanMedicacion
InstanceOf: PlanMedicacionFalp
Usage: #example
Title: "Ejemplo plan de medicamento FALP"
Description: "Ejemplo para perfil de plan de medicación falp"

* status = #active
* subject = Reference(EjPacienteinline)

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
