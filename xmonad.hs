import XMonad
import XMonad.Hooks.EwmhDesktops
import XMonad.ManageHook
import XMonad.Hooks.FadeWindows
import qualified XMonad.StackSet as W

myWorkspaces = ["Web","Code","Chat","Misc"]
myManageHook = composeAll [ (className =? "Pidgin" <&&> resource =? "buddy_list") --> doShift "Chat", 
			    className =? "luakit" --> doShift "Web",
			    className =? "terminator" --> doShift "Code" ]
main = xmonad $ defaultConfig 
				{ modMask = mod1Mask
			      	, handleEventHook = fullscreenEventHook
			      	, workspaces = myWorkspaces
				, manageHook = myManageHook
				}



