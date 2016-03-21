module Accumulate (accumulate) where

accumulate :: (a -> b) -> [a] -> [b]
accumulate _ [] = []
accumulate op (l:r) = op l : accumulate op r
