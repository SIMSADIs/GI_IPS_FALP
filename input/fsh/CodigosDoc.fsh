CodeSystem: CSSeccionesDoc
Id: CSSeccionesDoc
Title: "CSSeccionesDoc"
Description: "Code system que contiene los codigos para utilizar en el documento para determinar cual sección representará"
* ^caseSensitive = true
* ^experimental = true 
* ^jurisdiction =  urn:iso:std:iso:3166#CL "Chile"
* ^version = "0.1.0"
* ^status = #active

* #01 "Problemas"
* #02 "Alergias"
* #03 "Medicamentos"
* #04 "Inmunizaciones"
* #05 "DispMedicos"
* #06 "Procedimientos"
* #07 "Resultados"
* #08 "SignosVitales"

ValueSet: VSSeccionesDoc
Id: VSSeccionesDoc
Title: "VSSeccionesD"
Description: "Value Set para definir codigos para secciones del docomento"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = true
* ^jurisdiction =  urn:iso:std:iso:3166#CL "Chile"

* include codes from system CSSeccionesDoc