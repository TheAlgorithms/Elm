module QuickSort exposing (output, sort)

import Util exposing (sortingOutputDef)

{- A very basic quicksort implementation.

   This quicksort variant is terribly inefficient, since it traverses the input list three times on every recursive call. 
   A "real" implementation would traverse it only once and return a three-way partition of the input list.   
-}
quickSort : List Int -> List Int
quickSort inputList =
    case inputList of 
      [] -> []   -- empty list is already sorted
      [x] -> [x] -- one-element list is already sorted
      hd::tl -> let  -- list with at least two elements: use first element as pivot
                  lt = List.filter (\x -> x < hd) tl
                  eq = List.filter (\x -> x == hd) tl -- we might have duplicates of the pivot element in our list
                  gt = List.filter (\x -> x > hd) tl
                in
                  (quickSort lt) ++ ([hd] ++ eq) ++ (quickSort gt)

sort: List Int -> List Int
sort = quickSort

output : List String -> String
output args =
    sortingOutputDef args quickSort