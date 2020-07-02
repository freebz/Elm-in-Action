-- Listing 1.11  Filtering with anonymous functions

String.filter (\char -> char /= '-') "800-555-1234"
--> "8005551234"

String.filter (\char -> char /= '-') "(800) 555-1234"
--> "(800) 5551234" 

String.filter (\char -> Char.isDigit char) "(800) 555-1234"
--> "8005551234"

String.filter Char.isDigit "(800) 555-1234"
--> "8005551234"
