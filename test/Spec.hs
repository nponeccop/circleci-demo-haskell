import Test.Framework (defaultMain, testGroup)
import Test.Framework.Providers.QuickCheck2 (testProperty)
import Test.QuickCheck

main :: IO ()
main = defaultMain tests

tests = [
        testGroup "Sorting Group 1" [
                testProperty "prop1" prop1,
                testProperty "prop2" prop2
           ]
      ]

prop1 a b = (a && b) == (b && a)
  where types = (b :: Bool)

prop2 i = i * i + 1 > 0
  where types = (i :: Int)
