-- Listing 3.6  Implementing Msg as a custom type

type Msg
    = ClickedPhoto String
    | ClickedSize ThumbnailSize
    | ClickedSupriseMe

update : Msg -> Model -> Model
update msg model =
    case msg of
        ClickedPhoto url ->
            { model | selectedUrl = url }

        ClickedSupriseMe ->
            { model | selectedUrl = "2.jpeg" }