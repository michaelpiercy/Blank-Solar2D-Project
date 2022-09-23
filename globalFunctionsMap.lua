-- Pseudo-global space
-- Global Functions Map table provides convenient access to functions across multiple files.
-- Functions files should be stored in relevant directories and this table should, in turn, map/govern their access.
-- Access via: gfm.setup(args) for example.

local globalFunctionsMap = {
      setup             =     function(args) require("functions.setup").init(args) end,
      draw              =     function(imageFile, width, height, sceneGroup, posX, posY) require("functions.gfxFunctions").drawImage{imageFile=imageFile, width=width, height=height, sceneGroup=sceneGroup, posX=posX, posY=posY} end,
      text              =     function(copy, sceneGroup, xPos, yPos, fontsize, color) require("functions.gfxFunctions").drawText{copy=copy, sceneGroup=sceneGroup, xPos=xPos, yPos=yPos, fontsize=fontsize, color=color} end,
      changeScene       =     function(sceneName, time, effect, params) require("functions.gsFunctions").changeScene(sceneName, time, effect, params) end,
}

return globalFunctionsMap
