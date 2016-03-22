module DNA (toRNA) where

_toRNA :: Char -> Char
_toRNA 'C' = 'G'
_toRNA 'G' = 'C'
_toRNA 'T' = 'A'
_toRNA 'A' = 'U'
_toRNA _ = error "Unknown!"

toRNA :: [Char] -> [Char]
toRNA x = map _toRNA x
