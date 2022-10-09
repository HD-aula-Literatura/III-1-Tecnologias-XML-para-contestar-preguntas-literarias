# Tecnologías XML para contestar preguntas literarias

## Cómo descargar estos materiales?
Clica en el botón verde `Code` y escoge la opción `Donwload ZIP` y descomprime la carpeta que acabas de descargar.

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

Si tienes Oxygen, abre el documento XML que desees explorar. Busca un diálogo como el de la siguiente imagen:

![image](https://user-images.githubusercontent.com/8516387/190921549-359a7e6d-ad4d-4147-94c4-509bbf567ef9.png)

Si clicas encima de la palabra “XPath” podrás escoger la versión (escoge siempre una versión superior a 2). 

Escribe la expresión en el diálogo y pulsa la tecla “Enter”: se abrirá una ventana (seguramente en la parte inferior del editor) con el resultado de la consulta.

### Línea de comandos
Si estás acostrumbrad@ a trabajar con la terminal, las siguientes librerías te permitirán trabajar con XPath 3:
- `xidel`
  - Ej.: `xidel -se '//element/@attribute' file.xml`
- `saxon-lint`
  - Ej.: `saxon-lint --xpath '//element/@attribute' file.xml`
  
### Herramientas en línea

Hay diferentes herramientas en línea que se pueden utilizar para navegar un fichero con XPath, como por ejemplo [FreeFormatter](https://www.freeformatter.com/xpath-tester.html). Además, esta herramienta te ofrece varios ejemplos que pueden resultarte útiles.

## Interpretadores de XQuery

### eXist-DB
#### Instalación

### Oxygen
Clica en `File > New...` y en el diálogo emergente selecciona `XQuery` y clica en `Create`. Guarda el documento en la carpeta `queries` que has descargado como parte de los materiales de este repositorio.

En la esquina superior derecha, clica en el icono con las letras “xq” (XQuery debugger).
![image](https://user-images.githubusercontent.com/8516387/194758042-6c8cce04-d17f-4d15-b6de-2f9516b6dd57.png)


Esto hará que la ventana del editor se divida en 3, y que en el menú aparezcan nuevas opciones que te permiten seleccionar cuál será el fichero de entrada, el fichero XQuery que se correrá, y el fichero de salida:

![image](https://user-images.githubusercontent.com/8516387/194758014-ac1148e1-1cb3-4d7c-bc98-fc358fb3bc73.png)

Como vamos a consultar una colección, no un fichero único, no vamos a preocuparnos de seleccionar el fichero de entrada por lo que dejamos la opción `(None)`. La selección del fichero de salida es opcional. Cada vez que corramos una query, los resultados aparecerán en la tercera división de la ventana (`Output`) y podemos guardar el resultado clicando con el botón derecho sobre esta ventana y seleccionando `Save as`.

El documento XQuery que as creado se encuentra en la segunda división de la ventana. Puedes empezar por declarar la versión de XQuery en este documento y el espacio de nombres de TEI tal y como se explica en los contenidos del capítulo:

```
xquery version "3.1";
declare namespace tei = "http://www.tei-c.org/ns/1.0";
```

Es en este fichero en el que tienes que declarar la colección de documentos que consultarás. En los contenidos del capítulo se ejemplifica con eXist-DB. En Oxygen escribirás la ruta que lleva a la carpeta en la que guardas los documentos XML. Si por ejemplo has guardado el documento XQuery en la carpeta `queries`, entonces la ruta que te lleva al corpus es: `../corpus`:
```
xquery version "3.1";
declare namespace tei = "http://www.tei-c.org/ns/1.0";
declare variable $corpus := collection('../corpus');
```
Por defecto, oXygen genera documentos XML como el resultado de lanzar una query por lo que en la ventana `Output` siempre verás los resultados precedidos por la declaración XML. Para evitar este comportamiento, puedes declarar que el fichero de salida será texto simple, utilizando unas opciones disponibles en _XSLT and XQuery Serialization Namespace Document_ de W3C. Tienes que declarar el espacio de nombres adecuado y después indicar la opción adecuada:
```
xquery version "3.1";
declare namespace tei = "http://www.tei-c.org/ns/1.0";
declare namespace output = "http://www.w3.org/2010/xslt-xquery-serialization"; 
declare option output:method "text"; 
declare variable $corpus := collection('/db/apps/sonetos/xml');

  
## Recursos para profundizar
- Sobre XML y TEI:
  - Hub de Tecnologías del Texto (TTHUB): https://tthub.io/ 
- Sobre XPath:
  - Introducción a XPath (en inglés) de Elisa Besher-Bondar: https://newtfire.org/courses/tutorials/explainXPath.html 
  - Introducción a XPath (en inglés) de David Birnbaum: http://dh.obdurodon.org/introduction-xpath.xhtml 
  - Tutorial XPath de la W3Schools (en inglés): https://www.w3schools.com/xml/xpath_intro.asp 
- Sobre XQuery:
  - Lista de recursos (en inglés) para aprender XQuery con tutoriales, blogs y artículos: https://github.com/joewiz/learn-xquery 

