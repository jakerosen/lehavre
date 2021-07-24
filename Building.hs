module Building where

import Data.Text (Text)
import Numeric.Natural

data Building = Building
  { buildingName :: Text,
    buildingCost :: Natural,
    buildingValue :: Natural,
    buildingModernized :: Bool
  }
