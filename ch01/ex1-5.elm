-- Listing 1.5  Using else if

if elfCount == 1 then
  "elf"
else
  (if elfCount >= 0 then "elves" else "anti-elves")

if elfCount == 1 then
  "elf"
else (if elfCount >= 0 then
  "elves"
else
  "anti-elves")

if elfCount == 1 then
  "elf"
else if elfCount >= 0 then
  "elves"
else
  "anti-elves"
