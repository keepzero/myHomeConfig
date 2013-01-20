-- import System.Posix.Env (getEnv)
-- import Data.Maybe (maybe)

import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import System.IO
-- import XMonad.Config.Desktop
-- import XMonad.Config.Gnome
-- import XMonad.Config.Kde
-- import XMonad.Config.Xfce

main = do
    -- session <- getEnv "DESKTOP_SESSION"
    -- xmonad $ maybe desktopConfig desktop session
    xmonad $ defaultConfig { 
        manageHook   = manageDocks <+> manageHook defaultConfig,
        layoutHook   = avoidStruts  $  layoutHook defaultConfig,
        modMask      = mod4Mask,
        terminal     = "urxvt",
        borderWidth  = 2

    }

-- desktop "gnome" = gnomeConfig
-- desktop "kde" = kde4Config
-- desktop "xfce" = xfceConfig
-- desktop "xmonad-gnome" = gnomeConfig
-- desktop _ = desktopConfig
