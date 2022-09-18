# Tecnologías XML para contestar preguntas literarias

## Contenidos de este repositorio
- Ficheros XML de ejemplo: 
  - `xml-simple.xml`
  - `xml-simple-solapamiento.xml`
  - `xml-tei.xml`
- Tareas

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
