
import System.IO
import System.Exit

-- aa :: a -> IO Int
-- aa a
--     | a :: IO Int = a
--     | _ = 0

-- getStr :: String -> IO String
-- getStr text = do
--     putStr text
--     hFlush stdout
--     getLine

isInt x = x == fromInteger (round x)

getInt :: String -> IO Int
getInt text = do
    putStr text
    hFlush stdout
    a <- readLn
    case a of
        isInt a -> a
        _ -> 0

printMenu :: IO ()
printMenu = do
    putStrLn ""
    putStrLn "--- Menú ---"
    putStrLn " 1 - Altas"
    putStrLn " 2 - Listados"
    putStrLn ""
    putStrLn " 0 - Fin"
    putStrLn ""

parseOpt :: Int -> IO ()
parseOpt opt
    | opt == 0 = exitSuccess
    | opt == 1 = putStrLn "Altas."
    | opt == 2 = putStrLn "Listado."
    | otherwise = putStrLn ("Optción " ++ (show opt) ++ " incorrecta.")

main :: IO ()
main = do
    printMenu
    opt <- getInt "Opt: "
    putStrLn ""
    parseOpt opt
    main
