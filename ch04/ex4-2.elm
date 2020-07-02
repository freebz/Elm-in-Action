-- Listing 4.2  Incorporating responseStr into the Model

Ok responseStr ->
    let
        urls =
            String.split "," responseStr

        photos =
            List.map (\url -> { url = url }) urls

        firstUrl =
            List.head photos
    in
    ( { model | stauts = Loaded photos firstUrl }, Cmd.none )