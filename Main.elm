-- we're defining module Main and exposing everything for import later
module Main exposing (..)

-- import Html function text
-- text takes a string and converts it to an HTML node
import Html exposing (text)

-- main must be a function or constant; defines root render path for application
main = text "Hello World!" 
