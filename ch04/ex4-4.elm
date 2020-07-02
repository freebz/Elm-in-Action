-- Listing 4.4  Using decodeString with int, float, and string

import Json.Decode exposing (..)

decodeString float "3.33"
--> Ok 3.33 : Result Error Float

decodeString string "\"backslashes escape quotation marks\""
--> Ok ("backslashes escape quotation marks") : Result Error String

decodeString int "76"
--> Ok 76 : Result Error Int

decodeString int "3.33"
--> Err ... : Result Error Int