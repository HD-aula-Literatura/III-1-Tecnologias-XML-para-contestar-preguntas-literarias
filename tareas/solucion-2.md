1. `//lg/l[last()]`
2. `//date[not(@when)]`
3. `string-join(//lg/lg/count(l), ', ')`
4. `//l[matches(., '[Yy]o\s|[Mm]í\s|[Mm]is?\s')]`
5. `//l[count(tokenize(.)) = max(//l/count(tokenize(.)))]`
