module Main exposing (output)

import BubbleSort
import InsertionSort


output : List String -> String
output args =
    let
        bubble =
            Debug.log "Running Bubble sort" <| BubbleSort.output []

        insertion =
            Debug.log "Running Insertion sort" <| InsertionSort.output []
    in
    ""
