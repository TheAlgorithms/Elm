module Main exposing (output)

import BubbleSort as Bubble
import InsertionSort as Insertion
import MergeSort as Merge
import SelectionSort as Selection


output : List String -> String
output args =
    let
        bubble =
            Debug.log "Running Bubble sort    " <| Bubble.output []

        insertion =
            Debug.log "Running Insertion sort " <| Insertion.output []

        selection =
            Debug.log "Running Insertion sort " <| Selection.output []

        merge =
            Debug.log "Running Merge sort     " <| Merge.output []
    in
    ""
