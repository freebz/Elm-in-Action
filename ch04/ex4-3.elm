-- Listing 4.3  Using decodeString bool

import Json.Decode exposing (..)

decodeString bool "true"
--> Ok True : Result Error Bool

decodeString bool "false"
--> Ok False : Result Error Bool

decodeString bool "42"
--> Err ... : Result Error Bool

decodeString bool "@&!*/%?"
--> Err ... : Result Error Bool