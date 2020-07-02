-- Listing 1.14  Record updates

catLover = { name = "Li", cats = 2 }
--> { name = "Li", cats = 2 }

catLover
--> { name = "Li", cats = 2 }

withThirdCat = { catLover | cats = 3 }
--> { name = "Li", cats = 3 }

withThirdCat
--> { name = "Li", cats = 3 }

catLover
--> { name = "Li", cats = 2 }

{ catLover | cats = 88, name = "LORD OF CATS" }
--> { name = "LORD OF CATS", cats = 88 }
