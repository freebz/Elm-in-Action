-- Listing 7.3  Creating dictionaries and accessing their values

import Dict
dict = Dict.fromList [ ( "pi, give or take", 3.14), ( "answer", 42 ) ]
--> Dict.fromList [ ... ] : Dict.Dict String Float

Dict.get "a key we never added!" dict
--> Nothing : Maybe Float

Dict.get "pi, give or take" dict
--> Just 3.14 : Maybe Float

Dict.get "answer" dict
--> Just 42 : Maybe Float