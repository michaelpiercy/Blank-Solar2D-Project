--======================================================================--
--== Blank Solar 2D Project
--== Author: Michael Piercy
--== Site: MichaelPiercy.ie
--== Copyright 2022
--== A starting point for Solar 2D projects. Includes file structure,
--== typical composer scenes, memory display toggle and more.
--======================================================================--
--== Main.lua
--== Set up global maps and init game settings.
--== When ready, move to splash screen.
--======================================================================--
--== Game Details
--== Set up requires, forward references and game settings
--======================================================================--
--== Local forward references and require files
--NA

--== Global variable references
gfm = require("globalFunctionsMap")
gdm = require("globalDataMap")
printr = require("functions.printr")

--== Game Settings
gfm.setup {
      randomseed = os.time(),
      hideStatusBars = {
            android=true,
            iOS=true
      },
      setStickyUI = true,
      showMemUsage = true,
      showTextMem = true,
      initialScene = "scenes.splash" -- Scene to go to once gamesettings are complete
}
