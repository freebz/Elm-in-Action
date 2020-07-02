-- Listing 3.3  Multi-argument function annotations

String.padLeft
--> <function> : Int -> Char -> String -> String

String.padLeft 9
--> <function> : Char -> String -> String

String.padLeft 9 '.' "not!"
--> ".....not!" : String