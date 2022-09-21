xquery version "3.1";
declare namespace tei = "http://www.tei-c.org/ns/1.0";
(: ESTO ES UN COMENTARIO
 : las siguientes líneas declaran que el output es texto simple, y no
 : XML. Especialmente últiles si utilizas Oxygen para procesar XQuery 
 : pues por defecto, Oxygen crea la declaración XML en el output :)
declare namespace output = "http://www.w3.org/2010/xslt-xquery-serialization"; 
declare option output:method "text"; 
declare variable $corpus := collection('/db/apps/sonetos/xml');
declare variable $palabrasRimaLista := $corpus//tei:w/lower-case(.);
declare variable $palabrasRimaUnicas := distinct-values($palabrasRimaLista);
for $palabraRima in $palabrasRimaUnicas
let $ocurrencias := count($palabrasRimaLista[. = $palabraRima])
(: Para saber quienes son los autores, filtramos los elementos TEI para quedarnos solo
 : con aquellos que contienen una palabra rima que es igual a la iteración específica; después recuperamos
 : el autor. Usamos la función normalize-space() para evitar posibles saltos de línea en los ficheros fuente :)
let $autores := string-join($corpus//tei:TEI[descendant::tei:w[. = $palabraRima]]//tei:author/normalize-space(), ', ')
order by $ocurrencias descending
return $palabraRima || '&#9;' || $ocurrencias || '&#9;' || $autores || '&#10;'