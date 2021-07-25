module Game where

import Building
import Control.Monad.Except
import Control.Monad.State.Strict (StateT)
import Control.Monad.Writer.Strict
import Data.Functor.Identity
import Numeric.Natural
import Player
import RiverSpace

data Ship = Ship

data Round = Round

data Game = Game
  { gamePlayers :: [Player],
    gameTownBuildings :: [Building], -- TODO: Set
    gameBuildingProposals1 :: [Building],
    gameBuildingProposals2 :: [Building],
    gameBuildingProposals3 :: [Building],
    gameSpecialBuildings :: [Building],
    gameWoodenShips :: [Ship],
    gameIronShips :: [Ship],
    gameSteelShips :: [Ship],
    gameLuxuryShips :: [Ship],
    gameRound :: Natural,
    gameRiverTrack :: [(RiverSpace, Bool {- visited -})],
    gameFrancOffer :: Natural,
    gameFishOffer :: Natural,
    gameWoodOffer :: Natural,
    gameClayOffer :: Natural,
    gameIronOffer :: Natural,
    gameGrainOffer :: Natural,
    gameCattleOffer :: Natural,
    gameState :: GameState
  }

initialGame :: [RiverSpace] -> Game
initialGame riverSpaces =
  Game
    { gamePlayers =
        [ inititialPlayer,
          inititialPlayer
        ],
      gameTownBuildings = [buildingFirm1, buildingFirm2, constructionFirm],
      gameBuildingProposals1 = [],
      gameBuildingProposals2 = [],
      gameBuildingProposals3 = [],
      gameSpecialBuildings = [],
      gameWoodenShips = [],
      gameIronShips = [],
      gameSteelShips = [],
      gameLuxuryShips = [],
      gameRound = 1,
      gameRiverTrack = map (,False) riverSpaces,
      gameFrancOffer = 2,
      gameFishOffer = 2,
      gameWoodOffer = 2,
      gameClayOffer = 1,
      gameIronOffer = 0,
      gameGrainOffer = 0,
      gameCattleOffer = 0,
      gameState = GameStateSupplyAction
    }

data GameEvent = EventSupplyAction Int

data GameState
  = GameStateSupplyAction
  | GameStateMainActionBegin
  | GameStateMainActionEnd

-- write out all orderings of state, writer, except
-- Writer State Except
-- stepGame ::
--   GameEvent ->
--   WriterT [String] (StateT Game (ExceptT String Identity)) ()

-- State Writer Except
-- stepGame ::
--   GameEvent ->
--   StateT Game (WriterT [String] (ExceptT String Identity)) ()

-- Writer Except State
-- stepGame ::
--   GameEvent ->
--   WriterT [String] (ExceptT String (StateT Game Identity)) ()

-- Except Writer State
-- stepGame ::
--   GameEvent ->
--   ExceptT String (WriterT [String] (StateT Game Identity)) ()

-- State Except Writer
-- stepGame ::
--   GameEvent ->
--   StateT Game (ExceptT String (WriterT [String] Identity)) ()

-- Except State Writer
stepGame ::
  GameEvent ->
  ExceptT String (StateT Game (WriterT [String] Identity)) ()
stepGame = undefined
