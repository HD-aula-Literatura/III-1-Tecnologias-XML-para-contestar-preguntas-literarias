1. `//title`
2. `//bibl//title` (o `//bibl/descendant::title` o `//title[ancestor::bibl]`)
2. `//date[@when]`
3. `//lg/l[3]`
4. `(//l)[3]`
6. `//@target`
7. `//l[following-sibling::l]`
8. `//head/following::lg` o `//lg[preceding::head]`
8. `//lg[@type = "terceto"]/l`
10. Ej.: `//lg/lg[1]`,  `(//lg)[2]`, `//head/following-sibling::lg[1]`, `//lg[@type = "serventesio"][1]`
