# Desarrollo de una guía de implementación IPS para la Fundación Arturo López Pérez

El cáncer es la principal causa de muerte en Chile. Anuelmente se diagnostican entre 56.000 a 58.000 nuevos casos y más de la mitad terminan con el fallecimiento del paciente.El Ministerio de Salud implementó el Plan Nacional del Cáncer, con el objetivo de reducir la mortalidad e incidencia de esta enfermedad, además de mejorar otros aspectos relacionadas a esta y los pacientes. Uno de los lineamientos de esta política pública es la creación de un Registro Nacional del Cáncer, una herramienta que permitirá realizar un seguimiento oportuno y coordinado de los pacientes oncológicos.

La Fundación Arturo López Pérez trabaja integralmente con los pacientes con cáncer y su seguimiento. No obstante, el seguimiento se ve afectado por diferentes reazones, una de estas es la toma de decisiones inoportunas provocadas por que los usuarios no cuentan con la información que ellos requieren al momento que ellos requieron (**arreglar**). La causa de esto es la limitada capacidad de integrarse entre ellos, afectadando la comunicacion y el acceso a la información.

Como solución, la FALP, comenzó con el desarrollo de modelos interoperables en salud, que permitan un asegurar el sguimiento de un paciente y su continuidad asistencial. Anteriormente, se realizaron dos guías de implementación y para este proyecto se planteo una tercera guía. Sin embargo, debido a algunas deficiencias técnicas en las guías anteriores, se realizará la corrección de estas guías, su validación contra el estándar y la tercera guía. Esta ultima guía mencionada, permitirá realizar resumenes clinicos interoperables,

En este documento se abordarán pricipalmente aspectos técnicos de la guia de imlementación, para mayor información **no técnica**, revisar el articulo realizado tambien durante la realización del trabajo. Lo puede encontrar en el repositorio de la biblioteca UV como "Diseño de guía de implementación  basada en estándar FHI para resumenes IPS para la fundación Arturo López Pérez" o comunicarse al correo esteban.fredes.pizarro@gmail.com. 

Los aspectos técnicos que se abordarán es: 

* Instalación de programas necesarios
* Creación de la guía
* Creación de artefactos
* Validación de la guía 
* Configuración final de la guía

La metodología aplica de la misma manera para las tres guías, por lo que, en general, no se harán especificaciones.

## Instalación de programas necesarios

Para comenzar a diseñar guías de implementación en FHIR se deben realziar algunos pasos previos. Se deben instalar diferentes programas que permitirán que los diferentes procesos necesarios para la realización de la guía. Es recomendable (para evitar errores posteriores) que todos los programas y configuraciones sean realizadas en modo administrador.

Programas que se deben instalar: 

* java jdk. link de descarga: https://www.oracle.com/cl/java/technologies/downloads/
* node js. link de descarga: https://nodejs.org/en
* ruby Jeckyll. link de descarga: https://jekyllrb.com/docs/installation/windows/ (seguir las instrucciones de instalación presentes en el link de descarga)
* Sushi FHIR: Para instalar sushi se deben seguir una serie de comandos en al consola de comandos de su dispositivo. Se detalla más adelante.
* Editor de código: para este proyecto se utilizó Visual Studio Code, debido a su facilidad para utilizar extensiones

### Algunos pasos extras

#### Variables de entorno
Se recomienda instalar java en las variables de entorno

1. Busque "editar las variables de entorno" en el buscador de windows
2. En la segunda ventana "variables de sistema" piche "path" y luego el botón editar
3. Se abrira una ventana y seleccione "examinar"
4. Busque la rute donde se instala ./java/bin y seleccione
5. En la ventana "variables de usuario" pinche botón "nuevo"
6. Cree una variable JAVA_HOME y busque la carpeta C:\Program Files\Java\jdk-17 (debería ser donde se instaló java jdk)

#### Instalación de Sushi

Pasos para instalar sushi

1. Abrir cmd (buscar desde el buscador de windows "cmd")
2. Utilizar comando 

```
cd.. 
```

hasta llegar a la carpeta C:/

3. Utilizar el siguiente comando para instalar sushi

```
-g fsh-sushi
```

4. Verifique si ha sido intalado correctamente utilizando uno de los siguientes comandos

```
sushi help
sushi -v
```

#### Instalción de extensiones en Visual Studio Code

Esta etapa es válida si utiliza el editor de código VS Code, se desconoce el proceso para otros editores de código

1. Una vez instalado el VS Code, dirigirse a la pestaña de Extensiones en la barra izquierda. 
2. Buscar la extension "HL7 FHIR ShortHand" e instalarla
3. Buscar la extension "FHIR tools" e instalarla 

El uso de estas extensiones no es completamente obligatorio, pero se recomienda en gran medida, ya que facilita la creación de artefactos.

## Creación de la guía

Una vez completada la instalación de programas y los pasos extras, se procede con la creacion de la guía. Para eso debe dirigirse a VS Code y seguir los pasos que se enumeran a continuación

1. Dentro del editor, debe dirigerse desde el terminal hacia la carpeta C:/ utilizando el comando 

```
cd..
```

O bien, abrir directamente esa carpeta C:/. 

2. Utilize el comando 

```
sushi init
```
Comience a rellenar la información que se le solicita, se recomienda: 

  *  Name: no utilizar espacios, tíldes ni caracteres especiales.
* Id: Utilizar de preferencia formato "hl7.fhir.cl.nombreguia", más adelante evitará errores.
* Canonical: Utilizar de preferencia formato "http://url.cl/fhir/ig/nombreguia/" para evitar errores más adelante.
* Status: Se recomienda dejar valor default.
* Version: Se recomienda dejar valor default.
* Release Label: Se recomienda dejar valor default.
* Publisher Name: Su nombre o nombre de organización.
* Publisher Url: Su url si aplica.
* Colocar "y" al mensaje que aparece en el terminal.

Ahora se encuentra creada la guía, la configuración puede ser modificada en caso de ser necesario en un futuro. 

3. Pruebe que la guia haya sido creada con éxito. Utilice el comando 

```
sushi .
```

Asegurese de encontrarse en la carpeta correcta, si no le aparecerá un error en el terminal.

## Creación de artefactos

La guía ya se encuetra creada, pero contiene solo el perfil paciente por defecto. 

A partir, de ahora comienza la creación de los perfiles o perfilado de una guía de implementación, específica para cada caso de uso y dependerá de las necesidades que se quieran cubrir con el estándar. 

Para el perfilado es fundamental el uso del lenguaje FHIR ShortHand (FSH), ya que, facilita la creación de artefactos, es más intuitivo y entrega diferentes herramientas para agilizar el proceso, comparado con crear perfiles en formato JSON o XML. La documentación de FSH es completa y entrega referencias para la gran mayoria de problemas o incertidumbres que se puedan generar durante el perfilado (https://build.fhir.org/ig/HL7/fhir-shorthand/index.html)

A continuación, se detallará la creación de algunos artefactos que se desarrollaron durante el proceso de perfilado. Estos artefactos deben ser creados en la carpeta input generada con la guía. Utilizar formato "nonbrePerfil.fsh" para su validez.

### Perfiles

Los perfiles son las especificaiones del estándar a los requerimientos particulares de un caso de uso. Su función es referenciar un recurso y restringirlo para darle una mayor especificidad, darle otra termiología para ajustar la semántica de un elemento o permitir el uso de extensiones para los datos que el estándar no aborda. 

La estructura de un perfil se compone de tres partes principales:

#### Header o cabecera

Corresponde a la información base de un perfil, como la Nombre o Id, además del elemento Parent, que referencia al recurso o perfil que se esta perfilando. 

```
Profile: PacienteFalp
Parent: CorePacienteCl
Id: PacienteFalp
Title: "Paciente Falp"
Description: "Perfil de Paciente FALP"
```
El ejemplo anterior muestra la cabecera del perfil pacienteFalp de la GI CORE FALP, un recurso transversal a lo largo de las demás guías de la fundación. 

#### Reglas o especificaciones

Esta sección contiene las restricciones que se realizan a los recursos. Además, en esta sección se especifican otras caracteristicas de un perfil, como la adición de extensiones, la creación de slices o los bindings terminológicos. 

```
* extension contains SexoBiologico named Sexobiologico 1..1 
* extension[SexoBiologico].valueCodeableConcept 1..1
* extension contains Nacionalidad named Nacionalidad 1..*

* birthDate 1..1

* identifier 1..* 

* address 1..* 
* address only cl-address
  * extension[Geolocalizacion] 0..1
  * city 1..1
  * district 0..1
  * state 0..1 

* contact 1..*
* contact.extension[IdContacto] 0..* 
* contact.name.family 0..1
* contact.name.given 0..1
* contact.relationship 1..1
* contact.telecom 1..* MS
* contact.telecom.value ^short = "Detalles de Contacto"
* contact.telecom.value ^definition = "Detalles del Contacto, comunmente el o los mas usados (Ej: Teléfono fijo, móvil, email, etc.)"
* contact.telecom.[MyTelecomExtension].valueString 
* contact.address only cl-address
* contact.address
  * state 0..1 MS
```

En el ejemplo podemos observar diferentes restricciones y reglas.
* En primer lugar, el uso de extensiones para agregar elementos que el estándar no necesariamente incorpora como base. Se puede observar el formato utilizado y que hace referencia a otro artefacto, que sera explicado más adelante. 
* Tambien se realizan restricciones de cardinalidad, por ejemplo, el elemento address se especifica como 1..*, lo que significa que es un elemento obligatorio y se puede repetir más de una vez, mientras que en el recurso de referencia, este elemento no tiene un carácter obligatorio.

El siguiente ejemplo representa al perfil CondicionClinica: 

```
* extension contains FechaSolicitud named FechaSolicitud 1..1 
* extension[FechaSolicitud].valueDateTime ^short = "Fecha en que se realizó la solicitud del procedimiento"
* extension[FechaSolicitud].valueDateTime ^definition = "Fecha en que solicitud el procedimiento"

* extension contains UrgenciaProcedimiento named UrgenciaProcedimiento 0..1

* code 1.. MS 
  * ^short = "Tipo de procedimiento que se solicita realizar"
* code from http://hl7.org/fhir/ValueSet/procedure-code

* note 0..1 MS
  * ^short = "Espacio para información que se considere necesaria entregar en la solicitud"
```

Este ejemplo muestra el uso de bindings terminológicos, para establecer un valor de código al elemento. Esto permite flexibilidad y un valor semántico a los elementos de un perfil. 

#### Constrains

Es un elemento importante dentro de un recurso, permite establecer reglas que le entregen aún mayor especificidad al perfil. 

No se utilizaron constrains durante el diseño de las tres guías, para más información revisar documentación de FSH.

### Extensiones 

Las extensiones permiten abordar datos que no están presentes en los recursos base del estándar, permite una mayor especificidad y sobre todo flexibilidad a los perfiles. 

```
Extension: Nacionalidad
Id: Nacionalidad
Title: "Nacionalidad"
Description: "País de nacimiento y/o que haya sido nacionalizado"
Context: Patient
* value[x] only CodeableConcept
  * ^short = "Nacionalidad"
* valueCodeableConcept from https://hl7chile.cl/fhir/ig/clcore/ValueSet/CodPais
  * ^binding.description = "Tabla de Nacionalidad"
```

En el ejemplo se ve la extension Nacionalidad, utilizada para representar la nacionalidad de un paciente, prestador, tutor, etc. Al igual que los perfiles, tiene una estructura similar, la diferencia recae en los elementos que lo componen. En específico, este perfil presenta un value[x] que represanta el valor del elemento, en este caso, un CodeableConcept. Como es propio de un CodeableConcept, debe contener un binding terminológico, con el cual validar el código. (Para más información acerca de los dataType, revisar estándar FHIR)

### CodeableConcept

Este artefacto consiste en un grupo de códigos, asociados a un display, que le entrega un valor semántico al código.

```
CodeSystem: CSSeccionesDoc
Id: CSSeccionesDoc
Title: "CSSeccionesDoc"
Description: "Code system que contiene los codigos para utilizar en el documento para determinar cual sección representará"
* ^caseSensitive = true
* ^experimental = false 
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
```

La estructura anterior representa un CodeSystem, se puede observar la cabecera del artefacto, luego los metadatos del perfil, estos sirven para especificar inforamción acerca del artefacto, como la versión, estado o si debe considerar o no las mayúsculas (caseSensitive). Posterior a los metadatos, se observan los respectivos códigos y sus display. 

### ValueSet

Los valueSet permite definir terminologías especificas para ciertos elementos, pueden ser formadas por uno o varios CodeSystem, que luego permitiran la validación semántica del código.

```
ValueSet: VSSeccionesDoc
Id: VSSeccionesDoc
Title: "VSSeccionesD"
Description: "Value Set para definir codigos para secciones del docomento"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^jurisdiction =  urn:iso:std:iso:3166#CL "Chile"

* include codes from system CSSeccionesDoc
```

Tiene una estructura similar a los CodeSystem, su diferencia recae en las especificaciones, donde el valueSet referencia a un CodeSystem, para que al momento de la validación, el sistema utilice el CodeSystem para validar los códigos

### Slices

No es un artefacto como tal, pero es importante en el diseño de perfiles, y fueron utilizados en dos guías de la FALP. 

Consiste en realizar divisiones de un elemento no obligatorio del un recurso. Entrega mayor flexibilidad para los perfiles. 

```
* entry 1.. MS
  * ^slicing.discriminator[0].type = #type
  * ^slicing.discriminator[=].path = "resource"
  * ^slicing.discriminator[+].type = #profile
  * ^slicing.discriminator[=].path = "resource"
  * ^slicing.rules = #open
  * ^slicing.description = "Entradas del bundle que refenciarán a las diferentes seccciones del documento."
  * ^slicing.ordered = false 

  * ^short = "Secciones del documento"

* entry contains 
    Documento 1..1 MS and
    Paciente 1..1 MS and
    Autor 0..1 MS and
    Declarante 0..1 MS and
    Custodio 0..* MS and
    Problemas 0..* MS and
    Alergias 0..* MS and
    Medicamentos 0..* MS and
    Inmunizaciones 0..* MS and
    DispMedicos 0..* MS and
    Procedimientos 0..* MS and
    Resultados 0..* MS and
    SignosVitales 0..* MS
```

Este ejemplo es un slice realizado al elemento entry del recurso bundle. El elemento entry de un bundle, permite referenciar diferentes recursos para ser agrupados. El slice permite realizar diferentes entrys, personalizando el bundle para el propósito por el que fue diseño. En este caso específico, el perfil bundle busca agrupar lo ekementos que contiene un resumen clínico IPS. 

### Ejemplos 

Finalmente, el último artefacto realizado durante el proyecto son los ejemplos. Los ejemplos son la aplicación de un perfil, se establecen valores a los elementos perfilados y se compilan en formatos JSON o XML, ideal para que los implementadores entiendan como deben estar estrucutados los perfiles al momento de intercambiar información.

```
Instance: EjCondicionClinica
InstanceOf: CondicionClinica
Usage: #Example 
Title: "Example-HistoriaClínica"
Description: "An example Historia Clínica instance."  

* subject = Reference(EjPaciente)

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

* severity.coding.system = "https://FALP.cl/CodeSystem/CSseveridadDiagnostica"
* severity.coding.code = #MODERADO "MODERADO"

* note.text = "Pulmón derecho"
```

Este ejemplo corresponde al perfil CondicionClinica, se puede observar como a cada elemento del perfil se le asocia un valor, dandole un sentido semántico al perfil y demostrando la sintáxsis que debe poseer para cumplir con la validación.

## Validación de la guía 

El siguiente paso es la validación de la guía. Esta etapa es importante para demostrar la calidad técnica de una guía y es el primer paso para que sea implementada. 

Las validaciones realizadas a las tres guías son principalmente

### Valiadación de sintaxsis por medio de Sushi

Esta etapa se realiza en el editor de código por medio del comando: 

```
sushi .
```

Principalmente, compila los archivos FSH presentes en la carpeta input y los convierte en los artefactos de FHIR. Además, comparan estos archivos con las dependencias de las guías, identificando errores o incongruencias. 

### Validación con IG Publisher

Para esta validación es necesario el uso de un script que utiliza la herramienta IG Publisher, este script consiste en la actualización del publisher. Se realiza mediante el comando 

```
./_updatePublisher.bat
```

Una vez realizada la actualización del publisher, no es necesario volver a realizarlo cada vez que se quiere validar la guía, pero es recomendable realizarlo cada cierto tiempo, para mantener actualizada la herramienta. 

El siguiente paso consiste en el renderizado de la guía, mediante el publisher, realiza el renderizado de todos los archivos en las carpetas en un archivos HTML navegables, en otras palabras, muestra la guía tal y como se conocen. 

Este renderrzado se puede realizar principalmente de dos métodos distintos: 

#### Renderizado local

Consiste en utilizar el script 

```
./_genonce.bat
```

Para realizar el renderizado local y crear los archivos html navegables para almacenarlos de manera local en la carpeta de la guía. Una parte importante del proceso de publisher es la creación del QA Report, que consiste en un reporte que identifica los errores y warnings de las guías y los muestra de manera resumida, facilitando su ubicación para cumplir con la validación, que consiste en eliminar los errores y warnings.

#### Renderizado a través de AutoBuild FHIR

Para este método se requiere una mayor preparación, sin embargo, tiene la ventaja de guardar la guía en un repositorio en linea, lo que permite acceder más facilmente a esta cuando se quiere utilizar como dependencia para otra guía. 

Se utilizan dos repositorios, GitHub y AutoBuild FHIR. 

1. En primer lugar, se debe crear un repositorio en GitHub y clonar la carpeta local de la guía dentro del repositorio. Para lograr este paso, se debe acceder a GitHub desde el editor de código, aunque se puede realizar de diferentes formas, para este proyecto, se utilizó la pestaña "source control" en la barra izquierda del editor. 

2. Una vez iniciada la sesión, se debe clonar la carpeta de la guía dentro del repositorio. Existen variados turoriales de como realizar esta conexión.

3. Una vez conectado el GitHub con el VS Code, se debe ir a la configuración del repositorio en la página de GitHub y crear un webhook con el repositorio AutoBuild FHIR. La documentación de AutoBuild FHIR explica paso a paso como realizar el webhook y que configuración debe tener (https://github.com/FHIR/auto-ig-builder).

4. El paso final es realizar commits desde le VS Code, lo que realizará de manera automática le guardado de la guía en los repositorios y el renderizado por parte de AutoBuild FHIR. Al igual que el método anterior, genera un reporte de errores y warnings para la posterior validación de la guía

Para que este método funcione, los archivos que se deben subir al GitHub deben ser tal cual estpan en la guía. Se adjunta iamgen de referencia GI CORE FALP.

imagen del git

#### Correción errores y warnings

Esta etapa consiste en revisar el QA Report y eliminar los errores y warnings presentes en las guías. Cada error y warning pueden provenir de diferentes artefactos y pueden tener diferentes razones, por lo que es una etapa poco aplicable a una metodología, se recomienda revisar documentación, ejemplos de otras guías (FSH online, transforma archivos JSON a FSH y viscversa, ideal para revisar la estrucutra de un perfil https://fshonline.fshschool.org/#/) o relizar consultas en el chat oficial de FHIR en la plataforma de foro Zulip (https://chat.fhir.org/). 

## Configuración final de la guía 

Esta última etapa representa la culminación de las guías, en donde se realiza una mejora visual e informativa a la guía. 

Para esto se realizaron principalmente dos actividades: 

### Mejora informativa de la guía 

Para esta actividad, se rellenaron las pestañas de la GI con información relevante para el entendimiento de estas. Las pestañas se configuran desde el archivo sushi-config.yaml, se crean estas pestañas como archivos .md (Markdown) en la carpeta input/content y se rellenan con texto informativo importante, además de otros elementos, como diagramas plantuml o mermaid, imagenes o tablas. 

Las pestañas que se agregaron fueron principalemte: 

* Inicio: Represtan una introducción a la guía y un resumen de lo más importante
* Objetivos: Se explicita el objetivo de la guía y posilbes trabajos a futuro con las guías.
* Casos de uso: esta pestaña esta presente en las guías Informe Biopsia FALP e IPS FALP, explican como funcionan las operaciones representando cada caso de uso. 
* Artefactos: Esta pestaña agrupa todos los artefactos realiados en cad guía
* Historial de Cambio: Esta pestaña estpa presente en la GI CORE FALP E Informe Biopsia FALP, y se muestran los cambios realizados entre las diferentes versiones de una guía.

### Cambio de template de las guías

Este fue el último cambio realizado a las guías. El cambio de template representa una personalización de aspectos más visuales y de configuración de la guía. Fue utlizado para establecer los logos de HL7 Chile y la FALP en la parte superior de la guía y cambio de jurisdiction de las guías. 

Para el cambio de template se utilizó la carpeta tempalte de HL7 Chile llamada hl7chile-ig-template, se modificó el archivo _append.fragment-header.html que contiene contiene el código de configuración de los logos. Cambiando la imagen del código y agregando la iamgen a la carpeta content/assets/images, se logró personalizar los logos de la GI. 

Respecto a la jurisdiction, se debe alinear con la jurisdiction establecida en la carpeta tempalte, por eso se tuvo que realizar correciones en algunos puntos de la guía, sobre todo el los archivos sushi-config.yaml. 

Finalmente con la modificiación del archivo ig.ini, donde se establece cual serpa la carpeta de template de la guía, se concluyó la realiazción de las tres guías. 

## Falta el fin del readme
