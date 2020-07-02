-- Listing 2.4  Splitting out viewThumbnail

urlPrefix =
    "http://elm-in-action.com/"

view model =
    div [ class "content" ]
        [ h1 [] [ text "Photo Groove" ]
        , div [ id "thumbnails" ] []
        ]

viewThumbnail thumb =
    img [ src (urlPrefix ++ thumb.url) ] []