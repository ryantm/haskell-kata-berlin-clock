module SampleSpec where

import Test.Hspec
import Test.Hspec.QuickCheck

import Sample

spec :: Spec
spec = do
  describe "berlinSecond" $ do
    it "cycles between Y and O" $ do
      berlinSecond 0 `shouldBe` Y
      berlinSecond 1 `shouldBe` O
      berlinSecond 2 `shouldBe` Y
      berlinSecond 59 `shouldBe` O
  describe "berlinHourFives" $ do
    it "shows R for each 5 hours past midnight" $ do
      berlinHourFives 0 `shouldBe` [O,O,O,O]
      berlinHourFives 1 `shouldBe` [O,O,O,O]
      berlinHourFives 5 `shouldBe` [R,O,O,O]
      berlinHourFives 6 `shouldBe` [R,O,O,O]
      berlinHourFives 10 `shouldBe` [R,R,O,O]
      berlinHourFives 11 `shouldBe` [R,R,O,O]
      berlinHourFives 15 `shouldBe` [R,R,R,O]
      berlinHourFives 16 `shouldBe` [R,R,R,O]
      berlinHourFives 20 `shouldBe` [R,R,R,R]
      berlinHourFives 21 `shouldBe` [R,R,R,R]        
  describe "berlinHourOnes" $ do
    it "shows R for each hour in the five hour" $ do
      berlinHourOnes 0 `shouldBe` [O,O,O,O]
      berlinHourOnes 1 `shouldBe` [R,O,O,O]
      berlinHourOnes 5 `shouldBe` [O,O,O,O]
      berlinHourOnes 7 `shouldBe` [R,R,O,O]
      berlinHourOnes 8 `shouldBe` [R,R,R,O]
      berlinHourOnes 9 `shouldBe` [R,R,R,R]
  describe "berlinMinuteFives" $ do
    it "shows Y for each five" $ do
      berlinMinuteFives 0 `shouldBe` [O,O,O,O,O,O,O,O,O,O,O]
      berlinMinuteFives 1 `shouldBe` [O,O,O,O,O,O,O,O,O,O,O]
      berlinMinuteFives 5 `shouldBe` [Y,O,O,O,O,O,O,O,O,O,O]
      berlinMinuteFives 55 `shouldBe` [Y,Y,R,Y,Y,R,Y,Y,R,Y,Y]
  describe "berlinMinuteOnes" $ do
    it "shows Y for each minute in the five minutes" $ do
      berlinMinuteOnes 0 `shouldBe` [O,O,O,O]
      berlinMinuteOnes 1 `shouldBe` [Y,O,O,O]
      berlinMinuteOnes 5 `shouldBe` [O,O,O,O]
      berlinMinuteOnes 7 `shouldBe` [Y,Y,O,O]
      berlinMinuteOnes 8 `shouldBe` [Y,Y,Y,O]
      berlinMinuteOnes 9 `shouldBe` [Y,Y,Y,Y]
  describe "berlinClock" $ do
    it "should return lamps" $ do
      berlinClock 23 59 59 `shouldBe` [[O],
                                       [R,R,R,R],
                                       [R,R,R,O],
                                       [Y,Y,R,Y,Y,R,Y,Y,R,Y,Y],
                                       [Y,Y,Y,Y]]
