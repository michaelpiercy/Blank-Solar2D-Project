-- Pseudo-global space
-- Require into other files as such:
-- local gfx = require( "gfxFunctions" )
-- Game State Functions table is used to store key value pairs that are useful in multiple files across the game.
-- These variables can be altered for the gaming session and will return to their hard-coded start when the game is restarted.

local gfxFunctions = {
    drawImage = function(args)
        local newImage = display.newImageRect( args.sceneGroup, args.imageFile, args.width, args.height )
        newImage.anchorX, newImage.anchorY = 0.5, 0.5
        newImage.x = args.posX
        newImage.y = args.posY
        return newImage

    end,

    drawText = function(args)
        local newText = display.newText( args.sceneGroup, args.copy or "", 0, 0, "fonts/Winter Snow.ttf", args.fontsize or 19 )
        --local color = {r = args.color.r or 1, g = args.color.g or 0, b = args.color.b or 0}
        local color = args.color or {r = 1, g = 0, b = 0}
        newText:setFillColor(color.r, color.g, color.b)
        newText.x, newText.y = args.xPos or gdm.w * 0.5, args.yPos or gdm.h * 0.5

        return newText

    end
}

return gfxFunctions
