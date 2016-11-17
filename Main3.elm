module Main exposing (..)

import Html exposing (text)
import List

-- define list foo
--foo = ["one", "two", "three"]
-- below is invalid; lists must contain all same type in Elm
--foo = ["one", "two", 3]

-- define record type Person having attributes name and age
type alias Person = 
    { name : String
    , age : Int
    }

people = 
    [ { name = "Thor", age = 3600 }
    , { name = "Iron Man", age = 38 } 
    ]

-- define function name taking a List of Persons and returning a List of Strings
names : List Person -> List String
names some_people = 
-- apply anonymous function against each element in the some_people argument and return
    List.map (\a_person -> a_person.name) some_people 

-- Maybe defines something that may exist or not, aka a nullable
findPerson : String -> List Person -> Maybe Person
-- foldl, aka fold left, iterate from left side to build up a single value (memo)
-- foldl takes a function, an initial memo, and the list to act upon
-- foldl's function argument receives a list element and the current memo, returns
-- the next memo
findPerson name some_people =
    List.foldl 
        (\a_person memo -> case memo of
            -- if memo is of type anything (aka, not Nothing) return it
            Just _ -> memo
            -- otherwise, return a_person if it has the name we're looking for
            Nothing -> if a_person.name == name then
                Just a_person
                -- otherwise, return Nothing
                else Nothing
        )
        -- initial memo of Nothing
        Nothing
        -- search some_people
        some_people

main =
    text <| toString <| findPerson "Thor" people
