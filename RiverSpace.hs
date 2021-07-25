module RiverSpace where

data ResourceType = Franc | Fish | Wood | Clay | Iron | Grain | Cattle

data RiverSpace
  = RiverSpace
      [ResourceType]
      Bool -- Whether or not it is an interest space

allRiverSpaces :: [RiverSpace]
allRiverSpaces =
  [ RiverSpace [Franc, Wood] False,
    RiverSpace [Fish, Wood] True,
    RiverSpace [Wood, Cattle] False,
    RiverSpace [Wood, Clay] False,
    RiverSpace [Iron, Franc] False,
    RiverSpace [Fish, Clay] False,
    RiverSpace [Fish, Grain] False
  ]
