Profile: PlanMedicacionFalp
Parent: MedicationStatement
Id: PlanMedicacionFalp
Title: "Plan de medicación"
Description: "Perfil donde se modelan los medicamentos que toma el paciente"

* subject 1..1 MS
* subject only Reference(Paciente)

* medicationReference 1..1 
* medicationReference only Reference(Medicamento)

* effectivePeriod 1..1 MS

* dosage 1..1
  * doseAndRate 1..1
    * doseQuantity 1..1
    * rateQuantity 1..1
