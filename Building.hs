module Building where

import Data.Text (Text)
import Numeric.Natural

-- TODO
data BuildingPassive = BuildingPassive

data BuildingAction = BuildingAction

data BuildingFinalValue = BuildingFinalValue'Value

data Building = Building
  { buildingName :: Text,
    buildingID :: Text,
    buildingCost :: Natural,
    buildingValue :: Natural,
    buildingFinalValue :: BuildingFinalValue,
    buildingModernized :: Bool,
    buildingWoodCost :: Natural,
    buildingClayCost :: Natural,
    buildingIronCost :: Natural,
    buildingSteelCost :: Natural,
    buildingBuildable :: Bool,
    buildingEntryCostFrancs :: Natural,
    buildingEntryCostFood :: Natural,
    buildingPassiveEffect :: Maybe BuildingPassive,
    buildingAction :: Maybe BuildingAction
  }

buildingFirm1 :: Building
buildingFirm1 =
  Building
    { buildingName = "Building Firm",
      buildingID = "B1",
      buildingCost = 4,
      buildingValue = 4,
      buildingFinalValue = BuildingFinalValue'Value,
      buildingModernized = False,
      buildingWoodCost = 0,
      buildingClayCost = 0,
      buildingIronCost = 0,
      buildingSteelCost = 0,
      buildingBuildable = False,
      buildingEntryCostFrancs = 0,
      buildingEntryCostFood = 0,
      buildingPassiveEffect = Nothing,
      buildingAction = Nothing
    }

buildingFirm2 :: Building
buildingFirm2 =
  Building
    { buildingName = "Building Firm",
      buildingID = "B2",
      buildingCost = 6,
      buildingValue = 6,
      buildingFinalValue = BuildingFinalValue'Value,
      buildingModernized = False,
      buildingWoodCost = 0,
      buildingClayCost = 0,
      buildingIronCost = 0,
      buildingSteelCost = 0,
      buildingBuildable = False,
      buildingEntryCostFrancs = 0,
      buildingEntryCostFood = 1,
      buildingPassiveEffect = Nothing,
      buildingAction = Nothing
    }

constructionFirm :: Building
constructionFirm =
  Building
    { buildingName = "Construction Firm",
      buildingID = "B3",
      buildingCost = 8,
      buildingValue = 8,
      buildingFinalValue = BuildingFinalValue'Value,
      buildingModernized = False,
      buildingWoodCost = 0,
      buildingClayCost = 0,
      buildingIronCost = 0,
      buildingSteelCost = 0,
      buildingBuildable = False,
      buildingEntryCostFrancs = 0,
      buildingEntryCostFood = 2,
      buildingPassiveEffect = Nothing,
      buildingAction = Nothing
    }

marketplace :: Building
marketplace =
  Building
    { buildingName = "Marketplace",
      buildingID = "01",
      buildingCost = 6,
      buildingValue = 6,
      buildingFinalValue = BuildingFinalValue'Value,
      buildingModernized = False,
      buildingWoodCost = 2,
      buildingClayCost = 0,
      buildingIronCost = 0,
      buildingSteelCost = 0,
      buildingBuildable = True,
      buildingEntryCostFrancs = 1,
      buildingEntryCostFood = 2,
      buildingPassiveEffect = Nothing,
      buildingAction = Nothing
    }

sawmill :: Building
sawmill =
  Building
    { buildingName = "Sawmill",
      buildingID = "02",
      buildingCost = 14,
      buildingValue = 14,
      buildingFinalValue = BuildingFinalValue'Value,
      buildingModernized = False,
      buildingWoodCost = 0,
      buildingClayCost = 1,
      buildingIronCost = 1,
      buildingSteelCost = 0,
      buildingBuildable = True,
      buildingEntryCostFrancs = 0,
      buildingEntryCostFood = 0,
      buildingPassiveEffect = Nothing,
      buildingAction = Nothing
    }

fishery :: Building
fishery =
  Building
    { buildingName = "Fishery",
      buildingID = "03",
      buildingCost = 10,
      buildingValue = 10,
      buildingFinalValue = BuildingFinalValue'Value,
      buildingModernized = False,
      buildingWoodCost = 1,
      buildingClayCost = 1,
      buildingIronCost = 0,
      buildingSteelCost = 0,
      buildingBuildable = True,
      buildingEntryCostFrancs = 0,
      buildingEntryCostFood = 0,
      buildingPassiveEffect = Nothing,
      buildingAction = Nothing
    }
