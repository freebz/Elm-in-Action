-- Listing 3.1  Annotating lists

[ "funk", "soul" ]
--> ["funk","soul"] : List String

[ [ "thanks", "for" ], [ "all" , "the", "fish" ] ]
--> [["thanks","for"],["all","the","fish"]] : List (List String)

[ { url = "1.jpeg" }, { url = "2.jpeg" } ]
--> [{ url = "1.jpeg" },{ url = "2.jpeg" }] : List { url : String }