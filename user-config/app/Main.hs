module Main where

import Rasa.Run (rasa)
import Rasa.Ext.Vim
import Rasa.Ext.Logger
import Rasa.Ext.Cursors
import Rasa.Adapters.Vty

main :: IO ()
main = rasa [vtyEvent] $ do
  vim
  cursors
  logger
  vty
