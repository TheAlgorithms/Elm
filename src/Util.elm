module Util exposing (..)

import Array exposing (Array)

argsToArray : List String -> Array Int
argsToArray input =
    Array.fromList <| argsToList input

argsToList : List String -> List Int
argsToList input =
    List.map (\each -> Maybe.withDefault -1 <| String.toInt each) input

arrayToString : Array Int -> String
arrayToString input =
    listToString <| Array.toList input

listToString : List Int -> String
listToString input =
    String.join "," <| List.map String.fromInt input

