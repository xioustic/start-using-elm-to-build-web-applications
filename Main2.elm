module Main exposing (..)

import Html exposing (text)

-- define new type Dog so the record can be used in type declarations
type alias Dog =
    { name : String
    , age : Int
    }

-- record dog with atributes name and age
dog = 
    { name = "Spock"
    , age = 3
    }

-- function renderDog taking record type Dog and returning a string
renderDog : Dog -> String
-- must use toString on dog.age in order to use concatenation operator!
renderDog dog =
    dog.name ++ ", " ++ (toString dog.age)

--main = text <| dog.name
-- .name is an inferred function retrieving name attribute from argument given
--main = text <| .name dog
--main = text <| toString <| .age dog
main = text <| renderDog dog
