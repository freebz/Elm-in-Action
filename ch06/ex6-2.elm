-- Listing 6.2  Refactored decoderTest

decoderTest : Test
decoderTest =
    test "title default to (untilted)" <|
        \_ ->
            """{"url": "fruits.com", "size": 5}"""
                |> decodeString PhotoGroove.photoDecoder
                |> Result.map .title
                |> Expect.equal (Ok "(untitled)")