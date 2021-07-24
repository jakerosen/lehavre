module Game where

import Building
import Numeric.Natural
import Player

data Ship = Ship

data Round = Round

data RiverSpace = RiverSpace

data Game = Game
  { gamePlayers :: [Player],
    gameTownBuildings :: [Building],
    gameBuildingProposals1 :: [Building],
    gameBuildingProposals2 :: [Building],
    gameBuildingProposals3 :: [Building],
    gameSpecialBuildings :: [Building],
    gameWoodenShips :: [Ship],
    gameIronShips :: [Ship],
    gameSteelShips :: [Ship],
    gameLuxuryShips :: [Ship],
    gameRound :: [Round],
    gameActivePlayer :: Int,
    gameRiverTrack :: [RiverSpace],
    gameFrancOffer :: Natural,
    gameFishOffer :: Natural,
    gameWoodOffer :: Natural,
    gameClayOffer :: Natural,
    gameIronOffer :: Natural,
    gameGrainOffer :: Natural,
    gameCattleOffer :: Natural
  }

initialGame :: Game
initialGame =
  Game
    { gamePlayers =
        [ inititialPlayer,
          inititialPlayer
        ],
      -- Building Firm, Building Firm, Construction Firm
      gameTownBuildings = [],
      gameBuildingProposals1 = [],
      gameBuildingProposals2 = [],
      gameBuildingProposals3 = [],
      gameSpecialBuildings = [],
      gameWoodenShips = [],
      gameIronShips = [],
      gameSteelShips = [],
      gameLuxuryShips = [],
      gameRound = [],
      gameActivePlayer = 0,
      gameRiverTrack = [],
      gameFrancOffer = 2,
      gameFishOffer = 2,
      gameWoodOffer = 2,
      gameClayOffer = 1,
      gameIronOffer = 0,
      gameGrainOffer = 0,
      gameCattleOffer = 0
    }
