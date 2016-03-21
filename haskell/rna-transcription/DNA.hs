module DNA (toRNA) where

_toRNA :: Char -> Char
_toRNA 'C' = 'G'
_toRNA 'G' = 'C'
_toRNA 'T' = 'A'
_toRNA 'A' = 'U'
_toRNA _ = ' '

toRNA :: [Char] -> [Char]
toRNA "" = ""
toRNA (x:xs) = _toRNA x : toRNA xs
