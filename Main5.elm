module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)

numbers =
    [ 1, 2, 3, 4, 5 ]

-- function printThing take an inferred type and returns an Html element
printThing : thing -> Html msg
printThing int =
    ul [] [ text <| toString int ]

fruits = 
    [ { name = "Orange" }, { name = "banana" } ]

main =
    div [] 
        [ ul [] (List.map printThing fruits)
        , ul [] (List.map printThing numbers) 
        ]
