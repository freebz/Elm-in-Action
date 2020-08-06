-- Listing C.1  Defining functions in a lazy-friendly way

moduel MyModule exposing (view)

viewSidebar : User -> Html Msg
viewSidebar = ...

view : Model -> Html Msg
view =
    let
        badViewSidebar : User -> Html Msg
        badViewSidebar =
            ...
    in
    lazy viewSidebar model.user