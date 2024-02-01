-- ------------------------------
-- ------------------------------
-- THIS FILE NEEDS TO SYMLINK TO ~/.hammerspoon
-- `ln -s ~/dotfiles/hammerspoon/init.lua ~/.hammerspoon/init.lua`
-- custom scripts can be added to `/Users/robb/dotfiles/hammerspoon/`
-- ------------------------------
-- ------------------------------

hs.console.clearConsole()

package.path = package.path..";/Users/robb/dotfiles/hammerspoon/?.lua"

local log_init = hs.logger.new('_init','verbose')
log_init.i("loading init")

-- https://github.com/mivok/slack_status_updater
local zoom_detect = require("zoom_detect")
log_init.i("loaded zoom_detect")

-- local move_window = require("move_window")

-- hs.loadSpoon("AClock")
-- hs.hotkey.bind({"cmd", "alt", "ctrl"}, "C", function()
--   spoon.AClock:toggleShow()
-- end)

-- hs.loadSpoon("Calendar")
-- spoon.Calendar:init()

-- hs.loadSpoon("HCalendar")
-- spoon.HCalendar:init()
-- spoon.HCalendar:start()

--[[
hs.loadSpoon("AppLauncher")
local appKeyMapping = {
    -- c = "Calendar",
    -- d = "Discord",
    -- f = "Firefox Developer Edition",
    n = "Notes",
    -- r = "Reeder",
    -- z = "Zoom.us",
    -- '~' = "Tabby"
    t = "Kitty",
    -- t = "Tabby"
}
spoon.AppLauncher.modifiers = {"shift","option"}
spoon.AppLauncher:bindHotkeys(appKeyMapping)
]]

-- hs.hotkey.bind({"shift","option"}, "`", function()
--     hs.application.launchOrFocus("Tabby")
-- end)

hs.hotkey.bind({"cmd","ctrl","option"}, "h", function()
    hs.alert.show("reloading HammerSpoon...")
    hs.timer.doAfter(1, function() hs.reload() end)
end)

-- local thisScreen = hs.screen.primaryScreen():id()
-- hs.alert.show(thisScreen)
-- local screensArr = hs.screen.allScreens()
-- for i,v in ipairs(screensArr) do
--     print(v)
--     print(screensArr[i]:id())
--     local msg = "screen" .. tostring(screensArr[i]:name()) .. "[" .. tostring(screensArr[i]:id()) .. "]"
--     hs.alert.show(msg,nil,nil,30)
-- end

--[[
bindMouseButtons = hs.eventtap.new({hs.eventtap.event.types.otherMouseDown}, function(event)
    if event:getProperty(hs.eventtap.event.properties.mouseEventButtonNumber) == 3 then
        -- hs.alert.show("event mouse 3")
        hs.eventtap.keyStroke({"cmd"}, "[")
    elseif event:getProperty(hs.eventtap.event.properties.mouseEventButtonNumber) == 4 then
        -- hs.alert.show("event mouse 4")
        hs.eventtap.keyStroke({"cmd"}, "]")
    else
        return false
    end
end):start()
]]