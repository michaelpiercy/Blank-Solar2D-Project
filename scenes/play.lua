--======================================================================--
--== Play Scene - a Composer Scene
--== Shows gameplay
--======================================================================--

--======================================================================--
--== Scene Setup
--== Load Composer settings and local forward references
--======================================================================--

---- Local forward references and require files
local composer = require( "composer" )
local scene = composer.newScene()

--======================================================================--
--== Scene functions
--======================================================================--


--== create()
function scene:create( event )
  -- Code here runs when the scene is first created but has not yet appeared on screen
  print("Creating Play Scene")
  
  local sceneGroup = self.view

  -- Draw Background
  local bg = gfm.draw("assets/img-boardBg.png", 3377*0.5, 1462*0.5, sceneGroup, gdm.w/2, gdm.h/2)
  
end

--== ready()
function scene:ready( event )
  local sceneGroup = self.view

end



--== show()
function scene:show( event )

  local sceneGroup = self.view
  local phase = event.phase

  if ( phase == "will" ) then
    -- Code here runs when the scene is still off screen (but is about to come on screen)

  elseif ( phase == "did" ) then
    -- Code here runs when the scene is entirely on screen
    print("Showing Play Scene")

  end
end


--== hide()
function scene:hide( event )

  local sceneGroup = self.view
  local phase = event.phase

  if ( phase == "will" ) then
    -- Code here runs when the scene is on screen (but is about to go off screen)

  elseif ( phase == "did" ) then
    -- Code here runs immediately after the scene goes entirely off screen

  end
end


--== destroy()
function scene:destroy( event )

  local sceneGroup = self.view
  -- Code here runs prior to the removal of scene's view

end

--======================================================================--
--== Scene event function listeners
--======================================================================--
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
--======================================================================--

return scene
