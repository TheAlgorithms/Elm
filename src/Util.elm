module Util exposing (..)

import Array exposing (Array)
import List exposing (length)


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


sortingOutputDef : List String -> (List Int -> List Int) -> String
sortingOutputDef args sorting_algo =
    let
        log argList =
            Debug.log "Sorting List           " argList

        defaultList =
            [ 4, 23, 6, 78, 1, 54, 231, 9, 12 ]
    in
    case length args of
        0 ->
            listToString <| sorting_algo <| log <| defaultList

        1 ->
            listToString <| sorting_algo <| log <| defaultList

        _ ->
            listToString <| sorting_algo <| log <| argsToList args
