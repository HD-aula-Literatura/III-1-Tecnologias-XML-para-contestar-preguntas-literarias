# Tecnologías XML para contestar preguntas literarias

## Contenidos de este repositorio
- Ficheros XML de ejemplo: 
  - `xml-simple.xml`
  - `xml-simple-solapamiento.xml`
  - `xml-tei.xml`
- Tareas (ejercicios con soluciones)
- Corpus (ficheros TEI-XML)
- Queries (ficheros XQuery para explorar los archivos de la carpeta “Corpus”)

## Interpretadores de XPath

### Oxygen

Si tienes Oxygen ...

![image](https://user-images.githubusercontent.com/8516387/190921549-359a7e6d-ad4d-4147-94c4-509bbf567ef9.png)


### Línea de comandos
Con XPath 3:
- `xidel`
  - Ej.: `xidel -se '//element/@attribute' file.xml`
- `saxon-lint`
  - Ej.: `saxon-lint --xpath '//element/@attribute' file.xml`
  
## Recursos para profundizar
- Sobre XML y TEI:
  - Hub de Tecnologías del Texto (TTHUB): https://tthub.io/ 
- Sobre XPath:
  - Introducción a XPath (en inglés) de Elisa Besher-Bondar: https://newtfire.org/courses/tutorials/explainXPath.html 
  - Tutorial XPath de la W3Schools (en inglés): https://www.w3schools.com/xml/xpath_intro.asp 
- Sobre XQuery:
  - Lista de recursos (en inglés) para aprender XQuery con tutoriales, blogs y artículos: https://github.com/joewiz/learn-xquery 

