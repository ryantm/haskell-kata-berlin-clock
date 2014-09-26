module Sample where

type Lit = Bool

data Lamp = O | R | Y
          deriving (Eq, Show)

berlinLight :: (Int -> Int -> Int) -> Int -> [Lit]
berlinLight partitioner n = (litLamps ++ (repeat False))
  where litLamps = take (n `partitioner` 5) (repeat True)

colorFilter :: [Lamp] -> [Lit] -> [Lamp]
colorFilter colors lampLits =
  map colorMe $ zip (cycle colors) lampLits
  where
    colorMe (color, True) = color 
    colorMe (color, False) = O

berlinHourFives :: Int -> [Lamp]
berlinHourFives h = take 4 $ colorFilter [R] $ berlinLight div h

berlinHourOnes :: Int -> [Lamp]
berlinHourOnes h = take 4 $ colorFilter [R] $ berlinLight rem h

berlinMinuteOnes :: Int -> [Lamp]
berlinMinuteOnes m = take 4 $ colorFilter [Y] $ berlinLight rem m

berlinMinuteFives :: Int -> [Lamp]
berlinMinuteFives m = take 11 $ colorFilter [Y,Y,R] $ berlinLight div m
