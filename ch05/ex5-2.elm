-- Listing 5.2  viewFilter

viewFilter : String -> Int -> Html Msg
viewFilter name magnitude =
    div [ class "filter-slider" ]
    [ label [] [ text name ]
    , rangeSlider
        [ max "11"
        , Html.Attributes.property "val" (Json.Encode.int magnitude)
        ]
        []
    , label [] [ text (String.fromInt magnitude) ]
    ]