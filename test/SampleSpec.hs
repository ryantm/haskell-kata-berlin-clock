module SampleSpec where

import Test.Hspec
import Test.Hspec.QuickCheck

import Sample

spec :: Spec
spec = do
  describe "berlinHourFives" $ do
    it "returns lamps when given hours" $ do
      berlinHourFives 0 `shouldBe` [O,O,O,O]
      berlinHourFives 1 `shouldBe` [O,O,O,O]
      berlinHourFives 2 `shouldBe` [O,O,O,O]
      berlinHourFives 5 `shouldBe` [R,O,O,O]
      berlinHourFives 6 `shouldBe` [R,O,O,O]
      berlinHourFives 10 `shouldBe` [R,R,O,O]
      berlinHourFives 15 `shouldBe` [R,R,R,O]
      berlinHourFives 20 `shouldBe` [R,R,R,R]
  describe "berlinHourOnes" $ do
    it "returns lamps when given hours" $ do
      berlinHourOnes 0 `shouldBe` [O,O,O,O]
      berlinHourOnes 1 `shouldBe` [R,O,O,O]
      berlinHourOnes 2 `shouldBe` [R,R,O,O]
      berlinHourOnes 3 `shouldBe` [R,R,R,O]
      berlinHourOnes 4 `shouldBe` [R,R,R,R]
      berlinHourOnes 5 `shouldBe` [O,O,O,O]
      berlinHourOnes 6 `shouldBe` [R,O,O,O]
      berlinHourOnes 20 `shouldBe` [O,O,O,O]
  describe "berlinMinuteOnes" $ do
    it "returns lamps when given minutes" $ do
      berlinMinuteOnes 0 `shouldBe` [O,O,O,O]
      berlinMinuteOnes 1 `shouldBe` [Y,O,O,O]
      berlinMinuteOnes 2 `shouldBe` [Y,Y,O,O]
  describe "berlinMinuteFives" $ do
    it "returns lamps when given minutes" $ do
      berlinMinuteFives 0 `shouldBe` [O,O,O,O,O,O,O,O,O,O,O]
      berlinMinuteFives 1 `shouldBe` [O,O,O,O,O,O,O,O,O,O,O]
      berlinMinuteFives 5 `shouldBe` [Y,O,O,O,O,O,O,O,O,O,O]
      berlinMinuteFives 6 `shouldBe` [Y,O,O,O,O,O,O,O,O,O,O]
      berlinMinuteFives 10 `shouldBe` [Y,Y,O,O,O,O,O,O,O,O,O]
      berlinMinuteFives 15 `shouldBe` [Y,Y,R,O,O,O,O,O,O,O,O]

