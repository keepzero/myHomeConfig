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
    xmproc <- spawnPipe "xmobar ~/.xmonad/xmobarrc"
    xmonad $ defaultConfig 
        { manageHook   = manageDocks <+> manageHook defaultConfig
        , layoutHook   = avoidStruts  $  layoutHook defaultConfig
        , logHook = dynamicLogWithPP xmobarPP
            { ppOutput = hPutStrLn xmproc
            , ppTitle  = xmobarColor "green" "" . shorten 50
            }
        , modMask      = mod4Mask
        , terminal     = "urxvt"
        , borderWidth  = 2
        }  `additionalKeys`
        [ ((mod4Mask .|. shiftMask, xK_z), spawn "xscreensaver-command -lock")
        , ((controlMask, xK_Print), spawn "sleep 0.2; scrot -s")
        , ((0, xK_Print), spawn "scrot")
        ]

-- desktop "gnome" = gnomeConfig
-- desktop "kde" = kde4Config
-- desktop "xfce" = xfceConfig
-- desktop "xmonad-gnome" = gnomeConfig
-- desktop _ = desktopConfig
