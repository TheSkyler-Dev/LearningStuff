fizzBuzzOneLine :: Int -> [String]
fizzBuzzOneLine n = [if x `mod` 3 == 0 && x `mod` 5 == 0 then "FizzBuzz" 
                     else if x `mod` 3 == 0 then "Fizz" 
                     else if x `mod` 5 == 0 then "Buzz" 
                     else show x | x <- [1..n]]

main :: IO()
main = do
    putStrLn "Enter maximum number for FizzBuzz:"
    input <- getLine
    let n = read input :: Int
    mapM_ putStrLn (fizzBuzzOneLine n)
    putStrLn "Done!"