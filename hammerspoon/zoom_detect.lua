-- Hammerspoon script to automatically update your slack status when in zoom
--
-- To use:
--
-- * Install and set up the slack_status.sh script (make sure it's in your path)
-- * Ensure there is a 'zoom' preset (one is created by default during setup)
-- * Install hammerspoon (brew install hammerspoon) if you don't have it already.
-- * Copy this file to ~/.hammerspoon
-- * Add the following line to ~/.hammerspoon/init.lua
--      local zoom_detect = require("zoom_detect")
-- * If it's a fresh `brew install` of Hammerspoon, start it and make sure accessibility is enabled

-- Configuration
check_interval=60 -- How often to check if you're in zoom, in seconds

local log_zd = hs.logger.new('_log_zd','verbose')
log_zd.i("loading zoom_detect")

function update_status(status)
    task = hs.execute("slack_status.sh " .. status, true)
end

function in_zoom_meeting()
    local a = hs.application.find("zoom.us")
    if a ~= nil then
        m = a:findMenuItem("Join Meeting...")
        -- Start meeting menu item exists and is disabled
        return m ~= nil and not m["enabled"]
    else
        -- Zoom isn't running
        log_zd.w("Zoom not running")
        return false
    end
end

inzoom = false

zoomTimer = hs.timer.doEvery(check_interval, function()
    if in_zoom_meeting() then
        if inzoom == false then
            inzoom = true
            hs.notify.show("Started zoom meeting", "Updating slack status", "")
            log_zd.i("Started zoom meeting .. Updating slack status")
            update_status("zoom")
        end
    else
        if inzoom == true then
            inzoom = false
            hs.notify.show("Left zoom meeting", "Updating slack status", "")
            log_zd.i("Left zoom meeting .. Updating slack status")
            update_status("none")
        end
    end
end)

zoomTimer:start()
