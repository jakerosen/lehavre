module Player where

import Numeric.Natural

data Player = Player
  { playerFrancs :: Natural,
    playerFish :: Natural,
    playerWood :: Natural,
    playerClay :: Natural,
    playerIron :: Natural,
    playerGrain :: Natural,
    playerCattle :: Natural,
    playerCoal :: Natural,
    playerHides :: Natural
  }

inititialPlayer :: Player
inititialPlayer =
  Player
    { playerFrancs = 5,
      playerFish = 0,
      playerWood = 0,
      playerClay = 0,
      playerIron = 0,
      playerGrain = 0,
      playerCattle = 0,
      playerCoal = 1,
      playerHides = 0
    }
