module Strings.SwapCase exposing (swapCase)

import Char
import List
import String

{- Swap case of the given input string.
   
   Converts every lowercase letter to its upppercase pendant and vice versa.
   Leaves non-letter characters untouched.

   Example:
     swapCase "abBA.78" -> ABba.78

   Please note that this operation does not properly handle non-ASCII characters,
   because the Elm core library only provides checking of ASCII characters - 
   see https://package.elm-lang.org/packages/elm/core/latest/Char    
-}
swapCase : String -> String
swapCase s = 
  let
      convert c = 
        if Char.isUpper(c) then Char.toLower(c)
        else if Char.isLower(c) then Char.toUpper(c)
        else c   
  in
    String.toList s
    |> List.map convert  
    |> String.fromList