-- Pseudo-global space
-- Require into other files as such:
-- Access via: gfm.setup(args)
-- Setup table used to store initial game setup functions.
-- These functions are referenced in the globalFunctionsMap file.

local composer = require("composer")

local setupFunction = {

      init = function(args)
            local args = args or {}

            math.randomseed(args.randomseed)
            if args.hideStatusBars.android then
                  display.setStatusBar(display.HiddenStatusBar)
            end

            if args.hideStatusBars.iOS then
                  print("TODO:hide iOS status bar")
            end

            if args.setStickyUI then
                  native.setProperty("androidSystemUiVisibility", "immersiveSticky")
            end

            if args.showTextMem then
                  local memoryRect = display.newRect(10, 10, gdm.w-20, 50)
                  memoryRect:setFillColor(1, 1, 1, 0.5)
                  memoryRect:setStrokeColor(1, 1, 1, 0.5)
                  memoryRect.x, memoryRect.y = 10, 100

                  local textureMemUsageText = display.newText("Texture Memory Usage", 0, 65, native.systemFont, 17)
                  textureMemUsageText:setTextColor(0.1, 0.1, 0.1)

                  local monitorTextMem = function()

                        collectgarbage()
                        local textMem = system.getInfo("textureMemoryUsed") / 1048576
                        textureMemUsageText.text = "TxMem " .. textMem
                        textureMemUsageText.anchorX = 0
                        textureMemUsageText.anchorY = 0
                        textureMemUsageText.x = memoryRect.x + 10
                        textureMemUsageText.y = memoryRect.y


                  end

                  Runtime:addEventListener("enterFrame", monitorTextMem)
            end

            if args.showMemUsage then
                  local memoryRect = display.newRect(10, 10, gdm.w-20, 50)
                  memoryRect:setFillColor(1, 1, 1, 0.5)
                  memoryRect:setStrokeColor(1, 1, 1, 0.5)
                  memoryRect.x, memoryRect.y = 10, 200

                  local memUsageText = display.newText("Memory Usage", 0, 25, native.systemFont, 17)
                  memUsageText:setTextColor(0.1, 0.1, 0.1)

                  local monitorMem = function()

                        collectgarbage()
                        memUsageText.text = "Memory " .. collectgarbage("count")
                        memUsageText.anchorX = 0
                        memUsageText.anchorY = 0
                        memUsageText.x = memoryRect.x + 10
                        memUsageText.y = memoryRect.y

                  end

                  Runtime:addEventListener("enterFrame", monitorMem)
            end

            display.setDefault("background", 0.3, 0.6, 0.3)
            print("Setup Complete!")
            local options = {
                  effect = "fade",
                  time = 800,
                  params = { }
              }
            
            return composer.gotoScene( args.initialScene, options )
              
      end
}


return setupFunction
