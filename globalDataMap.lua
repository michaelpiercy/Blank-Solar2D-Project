-- Pseudo-global space
-- Require into other files as such:
-- local gd = require( "globalData" )
-- Global Data table is a convenient place to store key value pairs that are useful to access from various files across the game.
-- These variables can be altered for the current gaming session and will return to their hard-coded values when the game is restarted.

local globalData = {
    gameTitle               = "Example Game",
    gameVersion             = "0.0.1",
    gameDetails             = {},
    isGameRunning           = false,
    isGameOver              = false,
    sessionDetails          = {},
    w                       = display.contentWidth,
    h                       = display.contentHeight,
    timeUnit                = 500
}

return globalData
