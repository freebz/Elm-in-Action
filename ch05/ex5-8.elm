-- Listing 5.8  applyFilters

applyFilters : Model -> ( Model, Cmd Msg )
applyFilters model =
    case model.status of
        Loaded photos selectedUrl ->
            let
                filters =
                    [ { name = "Hue", amount = model.hue }
                    , { name = "Ripple", amount = model.ripple }
                    , { name = "Noise", amount = model.noise }
                    ]

                url =
                    urlPrefix ++ "large/" ++ selectedUrl

            in
            ( model, setFilters { url = url, filters = filters } )

        Loading ->
            ( model, Cmd.none )

        Errored errorMessage ->
            ( model, Cmd.none )