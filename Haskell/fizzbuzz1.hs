-- FizzBuzz implementation in Haskell
-- For each number from 1 to n:
-- - Print "Fizz" if the number is divisible by 3
-- - Print "Buzz" if the number is divisible by 5
-- - Print "FizzBuzz" if the number is divisible by both 3 and 5
-- - Otherwise, print the number itself

fizzbuzz :: Int -> String
fizzbuzz n
    | n `mod` 3 == 0 && n `mod` 5 == 0 = "FizzBuzz"
    | n `mod` 3 == 0 = "Fizz"
    | n `mod` 5 == 0 = "Buzz"
    | otherwise = show n

-- generate a list of fizzbuzz results
fizzBuzzList :: Int -> [String]
fizzBuzzList n = [fizzbuzz x | x <- [1..n]]

-- Main function to print everything as expected
main :: IO ()
main = do
    putStrLn "Enter maximum number for FizzBuzz:"
    input <- getLine
    let n = read input :: Int
    mapM_ putStrLn $ fizzBuzzList n
    putStrLn "Done!"