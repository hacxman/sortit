#!/bin/runhaskell
import Data.List
import System.IO
import Control.DeepSeq
import Data.Set

main = (withFile "/dev/stdin" ReadMode $ \x ->
  hGetContents x >>= (\text ->
    return $!! unlines $ toList $ fromList $ lines text)) >>= putStrLn
