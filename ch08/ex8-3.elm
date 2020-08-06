-- Listing 8.3  Delegating update

update msg model =
    case msg of
        ...

        GotFoldersMsg folderMsg ->
            case model.page of
                FoldersPage folders ->
                    toFolders model (Folders.update foldersMsg folders)

                _ ->
                    ( model, Cmd.none )

toFolders : Model -> ( Folders.Model, Cmd Folders.Msg ) -> ( Model, Cmd Msg )
    ( { model | page = FoldersPage folders }
    , Cmd.map GotFoldersMsg cmd
    )