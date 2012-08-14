import System.IO
import Test.HUnit
import qualified Data.ByteString.Lazy as L

main = do
  runTests

main2 = do
    putStrLn "hello world"


hasElfMagic :: L.ByteString -> Bool
hasElfMagic content = L.take 4 content == elfMagic
    where elfMagic = L.pack [0x7f, 0x45, 0x4c, 0x46]
  
main1 = do
  hSetBuffering stdin LineBuffering
  putStrLn "hello from 08_efficient_file_processing.hs"
  -- contents <- getContents
  contents = "1 2 3\n4 5 6"
  putStrLn (unlines . map sumFile . lines $  contents)
    where 
      sumFile :: String -> String
      sumFile = show . sum . map read . words


myTests = TestList $ map TestCase [
  assertEqual "AAE on string" "" "",
  assertEqual "AAE on int" 1 1
  ]

runTests = runTestTT myTests