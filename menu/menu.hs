
import System.IO

-- prompt :: String -> IO String
-- prompt text = do
--     putStr text
--     hFlush stdout
--     getLine

prompt2 :: String -> IO Integer
prompt2 text = do
    putStr text
    hFlush stdout
    readLn -- :: IO Integer

printMenu :: IO ()
printMenu = do
    putStrLn "--- Menú ---"
    putStrLn " 1 - Altas"
    putStrLn " 2 - Listados"
    putStrLn ""
    putStrLn " 0 - Fin"
    putStrLn ""

parseOpt :: Integer -> String
parseOpt opt
    | opt == 0 = "Fin"
    | opt == 1 = "Altas"
    | opt == 2 = "Listado"
    | otherwise = "Otro"

main :: IO ()
main = do
    printMenu
    opt <- prompt2 "Escribe una opción: "
    putStrLn (parseOpt opt)
    main
