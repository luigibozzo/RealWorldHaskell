import System.IO
import Test.HUnit


main = do
  runTests
  let x = summm [2 1 2]
    where summm = sum
    x



runTests = runTestTT myTests

myTests = TestList $ map TestCase [
  assertEqual "AAE on string" "" "",
  assertEqual "AAE on int" 1 1
  ]

