-- Listing 7.6  viewFolder

viewFolder : Folder -> Html Msg
viewFolder (Folder folder) =
    let
        subfolders =
            List.map viewFolder folder.subfolders
    in
    div [ class "folder" ]
        [ label [] [ text folder.name ]
        , div [ class "subfolders" ] subfolders
        ]


photosDecoder : Decoder (Dict String Photo)
photosDecoder =
    Decode.keyValuePairs jsonPhotoDecoder
        |> Decode.map fromPairs