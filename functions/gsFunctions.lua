-- Pseudo-global space
-- Require into other files as such:
-- local gsf = require( "gsFunctions" )
-- Game State Functions table is used to store key-value pairs that are useful in multiple files across the game.
-- These functions are referenced in the globalFunctions file.

local composer = require( "composer" )

local gsFunctions = {
    handleFinishGame = function(result, detail)
        
        if(gdm.isGameRunning == false) then
            return
        end

        if (result == "WIN") then
            print("Congrats! You Won")
        elseif(result == "LOSE") then
            print("Sorry! You Lost")
        elseif(result == "DRAW") then
            print("Match Draw")
        end

        if (detail == "OPPONENT_LEFT") then
            print("OPPONENT_LEFT")
        elseif (detail == "TIME_OVER") then
            print("TIME_OVER")
        elseif (detail == "GAME_DRAW") then
            print("GAME_DRAW")
        elseif (detail == "GAME_WIN") then
            print("GAME_COMPLETED")
        elseif (detail == "GAME_LOOSE") then
            print("GAME_COMPLETED")
        end

        gdm.isGameRunning = false
        gdm.isGameOver = true

    end,

    changeScene = function(scene, time, effect, params)
    	local options = {
    		effect = effect or "crossFade",
    		time = time or 1000,
    		params = params or {}
    	}
    	composer.gotoScene( scene, options )
    end,

    resetGlobalData = function()
        print("RESETTING DATA")
        --TODO: List keys and their values that need to be reset. These should be housed in Global Data table.
    end,

    getMatchResults = function()
        print("getting results of match...")
        local args = {winner="PLAYER WHO WON", loser="PLAYER WHO LOST", spoils="spoils for e'ryone!"}
        return args
    end
}

return gsFunctions
