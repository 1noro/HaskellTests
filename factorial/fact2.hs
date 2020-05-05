
-- factorial :: Integer -> Integer
factorial n
    | n < 0  = error "no existe el factorial para enteros negativos"
    | n == 0 = 1
    | otherwise = n * factorial (n-1)

-- main :: IO ()
main = do
    print "Escribe un número: "
    num <- readLn :: IO Int
    print $ factorial num
