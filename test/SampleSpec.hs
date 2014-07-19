module SampleSpec where

import Test.Hspec
import Test.Hspec.QuickCheck

import Sample

spec :: Spec
spec = do
  describe "matchers" $ do
    it "works" $
      True `shouldBe` True

  describe "props" $ do
    prop "works" $
      \ x -> id x == (x :: Int)
