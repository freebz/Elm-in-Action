-- Listing 8.2  Adding Page to Model

type alias Model =
    { page : Page }


type Page
    = Gallery
    | Folders
    | NotFound


view : Model -> Document Msg
view model =
    let
        content =
            text "This isn't even my final form!"
    in
    { title = "Photo Groove, SPA Style"
    , body =
        [ viewHeader model.page
        , content
        , viewFooter
        ]
    }


viewFooter : Html msg
viewFooter =
    footer [] [ text "One is never alone with a rubber duck. -Douglas Adams" ]