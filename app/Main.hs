module Main where
import Db
import System.Environment (getArgs)
import Data.Aeson (Value)

main :: IO ()
main = do
  args <- getArgs
  case args of
    ["set", key, value] -> db_set key value
    ["get", key] -> do
      val <- db_get key :: IO (Maybe Value)
      case val of
        Just v -> print v
        Nothing -> putStrLn "Key not found"
    _ -> putStrLn "Usage: \n  bitbarrel set <key> <value>\n  bitbarrel get <key>"

