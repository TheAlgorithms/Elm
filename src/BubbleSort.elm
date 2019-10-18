module BubbleSort exposing (output)

import Util exposing (sortingOutputDef)


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
    sortingOutputDef args bubbleSort
