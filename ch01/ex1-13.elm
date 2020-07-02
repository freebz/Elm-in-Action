-- Listing 1.13  Filtering lists

List.filter (\char -> char /= '-') [ 'Z', '-', 'Z' ]
--> ['Z','Z']

List.filter (\str -> str /= "-") [ "ZZ", "-", "Top" ]
--> ["ZZ","Top"]

List.filter Char.isDigit [ '7', '-', '9' ]
--> ['7','9']

List.filter (\num -> num > 0) [ -2, -1, 0, 1, 2 ]
--> [1,2]
