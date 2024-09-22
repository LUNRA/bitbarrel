module Db (set) where

import System.IO
import Data.Aeson

set :: ToJson v => String -> v -> IO()
set key value = do
  appendFile "db.txt" encodedInput
  where
    encodedInput = encode $ object [key .= value]
