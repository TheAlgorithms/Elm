module BubbleSort exposing (..)

import List exposing (length)
import Util exposing (listToString)


bubbleSort : List Int -> List Int
bubbleSort inputList =
    let
        bubble : List Int -> List Int -> List Int -> List Int
        bubble source tempList result =
            case source of
                h1 :: h2 :: tail ->
                    if h1 < h2 then
                        bubble (h2 :: tail) (h1 :: tempList) result

                    else
                        bubble (h1 :: tail) (h2 :: tempList) result

                h1 :: [] ->
                    sort tempList (h1 :: result)

                [] ->
                    result

        sort : List Int -> List Int -> List Int
        sort source result =
            if List.isEmpty source then
                result

            else
                bubble source [] result
    in
    sort inputList []


output : List String -> String
output args =
    let
        log argList = Debug.log "Sorting List" argList
        defaultList = [ 4, 23, 6, 78, 1, 54, 231, 9, 12 ]
    in
        case length args of
            0 ->
                listToString <| bubbleSort <| log <| defaultList

            1 ->
                listToString <| bubbleSort <| log <| defaultList

            _ ->
                listToString <| bubbleSort <| log <| Util.argsToList args
