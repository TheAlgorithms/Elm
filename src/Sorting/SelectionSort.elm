module SelectionSort exposing (output)

import Util


getNextMinVal : Int -> List Int -> ( Int, List Int )
getNextMinVal comparedWith lst =
    case lst of
        [] ->
            ( comparedWith, [] )

        h :: tail ->
            if comparedWith < h then
                let
                    recRes =
                        getNextMinVal comparedWith tail
                in
                ( Tuple.first recRes, h :: Tuple.second recRes )

            else
                let
                    recRes =
                        getNextMinVal h tail
                in
                ( Tuple.first recRes, comparedWith :: Tuple.second recRes )


selectionSort : List Int -> List Int
selectionSort unsorted =
    case unsorted of
        [] ->
            []

        h :: [] ->
            [ h ]

        h :: tail ->
            let
                firstSorted =
                    getNextMinVal h tail
            in
            Tuple.first firstSorted :: selectionSort (Tuple.second firstSorted)


output : List String -> String
output args =
    Util.sortingOutputDef args selectionSort
