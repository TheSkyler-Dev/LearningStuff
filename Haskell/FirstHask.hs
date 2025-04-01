import Text.Read (Lexeme(String))
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