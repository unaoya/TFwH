type Date = (Int, Int, Int)

months :: [String]
months = ["January", "Febrary", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

toOrd :: Int -> String
toOrd n | div n 10 /= 1 && mod n 10 == 1 = show n ++ "st"
        | div n 10 /= 1 && mod n 10 == 2 = show n ++ "nd"
        | div n 10 /= 1 && mod n 10 == 3 = show n ++ "rd"
        | otherwise = show n ++ "th"

showDate :: Date -> String
showDate (d, m, y) = toOrd d ++ " " ++ months !! (m - 1) ++ ", " ++ show y
