-- Listing 1.9  Filtering with a named function

isKeepable character = character /= '-'

isKeepable 'z'
--> True

isKeepable '-'
--> False

String.filter isKeepable "800-555-1234"
--> "8005551234"
