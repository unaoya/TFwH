song :: Int -> String
song n = if n == 0 then ""
  else song (n-1) ++ "\n" ++ verse n

verse :: Int -> String
verse n = line1 n ++ line2 n ++ line3 n ++ line4 n

units :: [String]
units = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten"]

convert :: Int -> String
convert n = units !! n

line1 :: Int -> String
line1 n = convert n ++ " man went to mow\n"

line2 :: Int -> String
line2 n = "Went to mow a meadow\n"

line3 :: Int -> String
line3 n
  | n == 1 = "one man and his dog\n"
  | otherwise = convert n ++ " men, " ++ line3 (n-1)

line4 :: Int -> String
line4 n = line2 n

