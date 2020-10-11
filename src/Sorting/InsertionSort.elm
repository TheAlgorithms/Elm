module InsertionSort exposing (output)

import List exposing (head, singleton, tail)
import Util


insertionSort : List Int -> List Int
insertionSort inputList =
    let
        insert : Int -> List Int -> List Int
        insert newEle sorted =
            case sorted of
                [] ->
                    singleton newEle

                sortedHead :: sortedTail ->
                    if sortedHead < newEle then
                        sortedHead :: insert newEle sortedTail

                    else
                        newEle :: sorted
    in
    case inputList of
        [] ->
            []

        head :: tail ->
            insert head <| insertionSort tail


output : List String -> String
output args =
    Util.sortingOutputDef args insertionSort
