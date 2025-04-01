import Text.Read (Lexeme(String))
import Prelude
import qualified Distribution.SPDX as SPDX
main :: IO()
main = do
    putStrLn "Hello, Haskell!"
    putStrLn "This is my first Haskell program."
    putStrLn "I am learning functional programming."
    putStrLn "Haskell is a purely functional programming language."
    putStrLn "I am excited to learn more about it!"
    putStrLn "Still getting to grips. Might take a while."
    let someText :: String
        someText = "21" ++ ": Hallo niece and nephew, it's uncle Roger!"
    putStrLn someText

    let ctf c = (c * 9/5) + 32
    let ctk c = c + 273.15
    let ftc f = (f - 32) * 5/9
    putStrLn $ "100 degrees Celsius is " ++ show (ctf 100) ++ " degrees Fahrenheit."
    putStrLn $ "100 degrees Celsius is " ++ show (ctk 100) ++ " degrees Kelvin."
    putStrLn $ "100 degrees Fahrenheit is " ++ show (ftc 100) ++ " degrees Celsius."
    putStrLn $ "100 degrees Fahrenheit is " ++ show (ctk (ftc 100)) ++ " degrees Kelvin."