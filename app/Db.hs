{-# LANGUAGE ScopedTypeVariables #-}
module Db where

import qualified Data.ByteString.Lazy as LBS
import qualified Data.ByteString.Lazy.Char8 as LBSC
import Data.Aeson
import Data.Aeson.Key (fromString)
import qualified Data.Aeson.KeyMap as KM
import Data.Maybe (listToMaybe, mapMaybe)
import Control.Exception (handle, IOException)

db_set :: ToJSON v => String -> v -> IO()
db_set k value = do
  LBS.appendFile "db.txt" (encodedInput <> LBSC.pack "\n")
  where
    encodedInput = encode $ object [key .= value]
    key = fromString k

db_get :: FromJSON v => String -> IO (Maybe v)
db_get k = handle (\(_ :: IOException) -> return Nothing) $ do
  contents <- LBSC.readFile "db.txt"
  let linesOfDb = LBSC.lines contents
      -- Parse each line into an Object, then look for the key
      objects = mapMaybe decode linesOfDb
      values = mapMaybe (KM.lookup key) objects
  return $ listToMaybe $ reverse values
  where
    key = fromString k
