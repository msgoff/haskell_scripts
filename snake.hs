import Data.Char
import Control.Applicative

f x
        | x == 1 = [3,5,6,7,8]
        | x == 2 = [5,7,9]
        | x == 3 = [1,4,5,8,9]
        | x == 4 = [3,5,9]
        | x == 5 = [1,2,3,4,6,7,8]
        | x == 6 = [1,5,7]
        | x == 7 = [1,2,5,6,9]
        | x == 8 = [1,3,5]
        | x == 9 = [2,3,4,5,7]


g y = (,) <$> [y] <*> f y

h t l = (,) <$> [t] <*> l

l1 = g 3

hh1 = h (1,3) l1


main :: IO ()
main = do

print $ g 1

print "start"

start_block <- getLine

x <- (start_block:: IO Int)




print $ h (1,3) l1
"snake.hs" 44L, 481C                                                                                        1,1           Top
