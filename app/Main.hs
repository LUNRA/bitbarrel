module Main where
import Db
import System.Environment (getArgs)

main :: IO ()
main = do
  args <- getArgs
  case args of
    [key, value] -> db_set key value
    _ -> putStrln "Usage: app <key> <value>"

