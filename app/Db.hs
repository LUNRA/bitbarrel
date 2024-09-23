module Db where

import System.IO
import Data.Aeson
import Data.Aeson.Key (fromString)

db_set :: ToJSON v => String -> v -> IO()
db_set k value = do
  appendFile "db.txt" encodedInput
  where
    encodedInput = encode $ object [key .= value]
    key = fromString k
