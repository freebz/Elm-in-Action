-- Listing 5.5  onSlide

onSlide : (Int -> msg) -> Attribute msg
onSlide toMsg =
    let
        detailUserSlidTo : Decoder Int
        detailUserSlidTo =
            at [ "detail", "userSlidTo" ] int

        msgDecoder : Decoder msg
        msgDecoder =
            Json.Decode.map toMsg detailUserSlidTo
    in
    on "slide" msgDecoder