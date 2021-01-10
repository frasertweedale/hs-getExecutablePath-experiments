module Main where

import System.Exit (die)
import System.Environment (getExecutablePath)
import System.Directory (removeFile)

main :: IO ()
main = do
  before <- getExecutablePath
  putStrLn $ "BEFORE: " <> before
  removeFile before
  after <- getExecutablePath
  putStrLn $ "AFTER: " <> after
  die "bye"
