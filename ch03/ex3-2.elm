-- Listing 3.2  Creating a type alias called Photo

type alias Photo =
    { url : String }

initialModel : { photos : List Photo, selectedUrl : String }
initialModel =
    ...

photoArray : Array Photo
photoArray =
    Array.fromList initialModel.photos