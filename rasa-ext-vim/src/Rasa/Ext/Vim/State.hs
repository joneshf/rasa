module Rasa.Ext.Vim.State where

import Data.Default (Default, def)
import Control.Lens

data VimSt
  = Normal
  | Insert
  deriving (Show)

instance Default VimSt where
  def = Normal

class HasVim e where
    vim' :: Lens' e VimSt