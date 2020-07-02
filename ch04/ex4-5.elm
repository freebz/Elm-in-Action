-- Listing 4.5  Using Json.Decode.list

import Json.Decode exposing (Decoder, list, bool, string, int)

list
--> <function> : Decoder a -> Decoder (List a)

list bool
--> <internals> : Decoder (List Bool)

list string
--> <internals> : Decoder (List String)

list (list int)
--> <internals> : Decoder (List (List Int))