module DNA (toRNA) where

toRNA :: String -> String
toRNA = map convert where
  convert x
    | x == 'C' = 'G'
    | x == 'G' = 'C'
    | x == 'T' = 'A'
    | x == 'A' = 'U'
    | otherwise = error "Unknown!"


