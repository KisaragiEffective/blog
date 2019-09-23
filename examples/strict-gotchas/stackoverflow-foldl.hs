{-
  stack exec ghc -- -O0 -rtsopts -with-rtsopts=-K1k          ./stackoverflow.hs
  stack exec ghc -- -O0 -rtsopts -with-rtsopts=-K1k -XStrict ./stackoverflow.hs
  stack exec ghc -- -O1 -rtsopts -with-rtsopts=-K1k          ./stackoverflow.hs
  stack exec ghc -- -O1 -rtsopts -with-rtsopts=-K1k -XStrict ./stackoverflow.hs
-}

import Control.Exception
import Data.List

main :: IO ()
main = do
  let size = 5000
  putStrLn "BEGIN"
  evaluate $ foldl (\z x -> x : z) [] [1 .. size]
  putStrLn "DONE"
