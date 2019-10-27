module Main exposing (output)

import BubbleSort as Bubble
import InsertionSort as Insertion


output : List String -> String
output args =
    let
        bubble =
            Debug.log "Running Bubble sort" <| Bubble.output []

        insertion =
            Debug.log "Running Insertion sort" <| Insertion.output []
    in
    ""
