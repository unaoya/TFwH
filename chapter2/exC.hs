import Data.Char

capitalize_word :: String -> String
capitalize_word x = [toUpper (head x)] ++ tail x

capitalize :: String -> String
capitalize x = unwords (map capitalize_word (words x))
