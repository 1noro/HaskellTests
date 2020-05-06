
import System.IO
import System.Exit

getStr :: String -> IO String
getStr text = do
    putStr text
    hFlush stdout
    getLine

getInteger :: String -> IO Integer
getInteger text = do
    putStr text
    hFlush stdout
    readLn -- :: IO Integer

printMenu :: IO ()
printMenu = do
    putStrLn ""
    putStrLn "--- Menú ---"
    putStrLn " 1 - Altas"
    putStrLn " 2 - Listados"
    putStrLn ""
    putStrLn " 0 - Fin"
    putStrLn ""

parseOpt :: Integer -> IO ()
parseOpt opt
    | opt == 0 = exitSuccess
    | opt == 1 = putStrLn "Altas."
    | opt == 2 = putStrLn "Listado."
    | otherwise = putStrLn ("Optción " ++ (show opt) ++ " incorrecta.")

main :: IO ()
main = do
    printMenu
    opt <- getInteger "Escribe una opción: "
    putStrLn ""
    parseOpt opt
    main
