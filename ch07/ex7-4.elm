-- Listing 7.4  Implementing view as a nested case-expression

selectedPhoto : Html Msg
selectedPhoto =
    case model.selectedPhotoUrl of
        Just url ->
            case Dict.get url model.photos of
                Just photo ->
                    viewSelectedPhoto photo

                Nothing ->
                    text ""

        Nothing ->
            text ""