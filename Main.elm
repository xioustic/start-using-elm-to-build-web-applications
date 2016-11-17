-- we're defining module Main and exposing everything for import later
module Main exposing (..)

-- import Html function text
-- text takes a string and converts it to an HTML node
import Html exposing (text)

politely : String -> String
politely phrase = 
    "Excuse me, " ++ phrase

-- function ask taking parameters thing & place returning string
-- type signature format is "funcname : param1_type -> ... -> paramN_type -> return_type"
-- type signature "ask : String -> String -> String" can be inferred
ask : String -> String -> String
ask thing place = 
    "is there a " ++ thing ++ " in the " ++ place ++ "?"

askPolitelyAboutFish : String -> String
-- function composition pipeline operator <<
-- takes argument given, passes it to ask "fish", then passes that result to politely
askPolitelyAboutFish = politely << (ask "fish")

-- main must be a function or constant; defines root render path for application
-- pipe operator <| means evaluate right-side and pass into left
--main = text <| politely <| ask "fish" "lake"
main = text <| askPolitelyAboutFish "hat"
