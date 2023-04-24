module Strings.Palindrome exposing (isPalindrome)
import String exposing (reverse)

{- Checks whether the given input string is a palindrome.
-}
isPalindrome : String -> Bool
isPalindrome s = (reverse s) == s