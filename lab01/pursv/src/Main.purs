module Main where

import Prelude

import Effect (Effect)
import Effect.Console (log)
import Data.List

singleton :: forall a. a -> List a
singleton a = a : Nil

null :: forall a. List a -> Boolean
null Nil = true
null _ = false

snoc :: forall a. List a -> a -> List a
snoc array insertElem = reverse (insertElem : reverse array)

length :: forall a. List a -> Int
length Nil = 0
length (Cons _ array) = 1 + length array

firstTask :: Int
firstTask = 29

secondTask :: List Int
secondTask = Nil

thirdTask :: List String
thirdTask = "Oh" : "mamma" : "mia" : Nil

insertLastElement :: String
insertLastElement = "fake info"

fourthTask :: List String
fourthTask = "The" : "best of" : "times" : Nil

main :: Effect Unit
main = do
  log ("First Task:" <> show (singleton firstTask))
  log ("Second Task:" <> show (null secondTask))
  log ("Third Task:" <> show (snoc thirdTask insertLastElement))
  log ("Forth Task:" <> show (length fourthTask))