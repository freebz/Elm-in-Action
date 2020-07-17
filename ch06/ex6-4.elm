-- Listing 6.4  Our final complete fuzz test

decoderTest : Test
decoderTest =
    fuzz2 string int "title default to (untilted)" <|
        \url size ->
            [ ( "url", Encode.string url )
            , ( "size", Encode.int size )
            ]
                |> Encode.object
                |> decodeValue PhotoGroove.photoDecoder
                |> Result.map .title
                |> Expect.equal (Ok "(untitled)")