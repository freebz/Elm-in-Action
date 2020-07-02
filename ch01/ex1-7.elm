-- Listing 1.7  Using multiple REPL lines

pluralize singular plural count =
    if count == 1 then singular else plural
--> <function>

pluralize "elf" "elves" 3
--> "elves"

pluralize "elf" "elves" (round 0.9)
--> "elf"
