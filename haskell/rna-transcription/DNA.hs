module DNA (toRNA) where

convert :: Char -> Char
convert 'C' = 'G'
convert 'G' = 'C'
convert 'T' = 'A'
convert 'A' = 'U'
convert _ = error "Unknown!"

toRNA :: [Char] -> [Char]
toRNA x = map convert x
