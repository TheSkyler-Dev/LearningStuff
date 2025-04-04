import Data.Complex (Complex((:+)))

fibonacci :: [Int] 
fibonacci = 0 : 1 : zipWith (+) fibonacci (tail fibonacci)

mandelbrot :: [Complex Double]
mandelbrot = [x :+ y | x <- [-2.0, -1.9 .. 1.0], y <- [-1.0, -0.9 .. 1.0]]

main :: IO()
main = do
    putStrLn "Fibonacci sequence:"
    print $ take 16 fibonacci
    putStrLn "Mandelbrot set:"
    print $ take 16 mandelbrot
    putStrLn "Done!"