module MergeSort exposing (..)

import List exposing (drop, length, take)
import Util exposing (sortingOutputDef)


insertInto : Int -> List Int -> List Int -> List Int
insertInto toInsert lesserList greaterList =
    case greaterList of
        [] ->
            lesserList ++ [ toInsert ]

        gHead :: gTail ->
            if toInsert > gHead then
                insertInto toInsert (lesserList ++ [ gHead ]) gTail

            else
                lesserList ++ [ toInsert ] ++ greaterList


mergeJoin : List Int -> List Int -> List Int
mergeJoin firstHalf secondHalf =
    case firstHalf of
        [] ->
            secondHalf

        fHead :: fTail ->
            mergeJoin fTail (insertInto fHead [] secondHalf)


mergeSort : List Int -> List Int
mergeSort inputList =
    case inputList of
        [] ->
            []

        head :: [] ->
            [ head ]

        _ ->
            mergeJoin (mergeSort <| take (length inputList // 2) inputList)
                (mergeSort <| drop (length inputList // 2) inputList)


output : List String -> String
output args =
    sortingOutputDef args mergeSort
