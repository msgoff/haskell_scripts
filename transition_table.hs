import Data.Char
import System.IO




main = do
    putStrLn "input the width of the table"
    width <- readLn :: IO Int

    let add_one = [(x,x+1)| x <- [1..width*width],x `mod` width /= 0]
    let minus_one = [(x,x-1)| x <- [1..width*width],x `mod` width /= 1]

    let add_width = [(x,x+width)| x <- [1..width*width],x + width <= width*width]
    let minus_width = [(x,x-width)| x <- [1..width*width],x - width >= 1]

    let table = add_one ++ minus_one ++ add_width ++ minus_width
    putStrLn $ show table
