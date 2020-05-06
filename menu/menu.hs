
printMenu = do
    putStrLn "--- Menú ---"
    putStrLn " 1 - Altas"
    putStrLn " 2 - Listados"
    putStrLn ""
    putStrLn " 0 - Fin"

parseOpt opt
    | 0 putStrLn "Fin"
    | 1 putStrLn "Altas"
    | 2 putStrLn "Listado"
    | otherwise putStrLn "Otro"

main = do
    printMenu

-- do {putStrLn "hola"; a <- getLine; print a}
