xquery version "3.1";
declare namespace tei = "http://www.tei-c.org/ns/1.0";
declare variable $corpus := collection('/db/apps/sonetos/xml');
declare variable $palabrasRimaLista := $corpus//tei:w;
declare variable $palabrasRimaUnicas := distinct-values($palabrasRimaLista);
for $palabraRima in $palabrasRimaUnicas
return concat($palabraRima, '&#9;', count($palabrasRimaLista[. = $palabraRima]),  '&#10;')
