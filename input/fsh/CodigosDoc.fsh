CodeSystem: CSSeccionesDoc
Id: CSSeccionesDoc
Title: "CSSeccionesDoc"
Description: "Code system que contiene los codigos para utilizar en el documento para determinar cual sección representará"
* ^caseSensitive = true
* ^experimental = true 
* ^jurisdiction =  urn:iso:std:iso:3166#CL "Chile"
* ^version = "0.1.0"
* ^status = #active

* #01 "Documento"
* #02 "Paciente"
* #03 "Autor"
* #04 "Declarante"
* #05 "Custodio"
* #06 "Problemas"
* #07 "Alergias"
* #08 "Medicamentos"
* #09 "Inmunizaciones"
* #10 "DispMedicos"
* #11 "Procedimientos"
* #12 "Resultados"
* #13 "SignosVitales"

ValueSet: VSSeccionesDoc
Id: VSSeccionesDoc
Title: "VSSeccionesD"
Description: "Value Set para definir codigos para secciones del docomento"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = true
* ^jurisdiction =  urn:iso:std:iso:3166#CL "Chile"

* include codes from system CSSeccionesDoc

