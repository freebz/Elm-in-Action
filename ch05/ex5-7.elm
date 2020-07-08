-- Listing 5.7  ClickedPhoto

ClickedPhoto selectedUrl ->
    let
        filters =
            [ { name = "Hue", amount = model.hue }
            , { name = "Ripple", amount = model.ripple }
            , { name = "Noise", amount = model.noise }
            ]

        url =
            urlPrefix ++ "large/" ++ selectedUrl

        cmd =
            setFilters { url = url, filters = filters }
    in
    ( model, cmd )