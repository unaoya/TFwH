type CIN = String

valid :: CIN -> Bool
valid cin = (take 8 (read cin :: Int))

