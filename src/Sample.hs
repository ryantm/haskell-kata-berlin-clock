module Sample where

data Lamp = Y | R | O -- Yellow | Red | Off
          deriving (Show, Eq)

berlinSecond :: Int -> Lamp
berlinSecond n | n `rem` 2 == 0 = Y
berlinSecond _ = O

berlinLamps :: (Int -> Int -> Int) -> [Lamp] -> Int -> [Lamp]
berlinLamps f ls h = take onLamps ls ++ repeat O
  where onLamps = f h 5

berlinHourFives :: Int -> [Lamp]
berlinHourFives h = take 4 (berlinLamps quot (repeat R) h)

berlinHourOnes :: Int -> [Lamp]
berlinHourOnes h = take 4 (berlinLamps rem (repeat R) h)

berlinMinuteFives :: Int -> [Lamp]
berlinMinuteFives m = take 11 (berlinLamps quot (cycle [Y,Y,R]) m)

berlinMinuteOnes :: Int -> [Lamp]
berlinMinuteOnes m = take 4 (berlinLamps rem (repeat Y) m)

berlinClock :: Int -> Int -> Int -> [[Lamp]]
berlinClock h m s =
  [[berlinSecond s],
   berlinHourFives h,
   berlinHourOnes h,
   berlinMinuteFives m,
   berlinMinuteOnes m]
