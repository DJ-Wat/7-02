local upArrow = display.newImage( "./assets/upArrow.png" )

upArrow.x = 150

upArrow.y = display.contentHeight - 250

upArrow.id = "up arrow"

local downArrow = display.newImage( "./assets/downArrow.png" )

downArrow.x = 150

downArrow.y = display.contentHeight - 120

downArrow.id = "down arrow"

local leftArrow = display.newImage( "./assets/leftArrow.png" )

leftArrow.x = 100

leftArrow.y = display.contentHeight - 190

leftArrow.id = "left arrow"

local rightArrow = display.newImage( "./assets/rightArrow.png" )

rightArrow.x = 200

rightArrow.y = display.contentHeight - 190

rightArrow.id = "right arrow"


local theCharacter = display.newImageRect( "./assets/Idle.png", 50, 150 )

theCharacter.x = display.contentCenterX

theCharacter.y = display.contentCenterY

theCharacter.id = "the character"

 

function upArrow:touch( event )

    if ( event.phase == "ended" ) then

        -- move the character up

        transition.moveBy( theCharacter, { 

        	x = 0, -- move 0 in the x direction 

        	y = -50, -- move up 50 pixels

        	time = 100 -- move in a 1/10 of a second

        	} )

    end



    return true

end

function downArrow:touch( event )

    if ( event.phase == "ended" ) then

        -- move the character down

        transition.moveBy( theCharacter, { 

        	x = 0, -- move 0 in the x direction 

        	y = 50, -- move down 50 pixels

        	time = 100 -- move in a 1/10 of a second

        	} )

    end



    return true

end

function leftArrow:touch( event )

    if ( event.phase == "ended" ) then

        -- move the character up

        transition.moveBy( theCharacter, { 

        	x = -50, -- move 50 pixels left 

        	y = 0, 

        	time = 100 -- move in a 1/10 of a second

        	} )

    end



    return true

end

function rightArrow:touch( event )

    if ( event.phase == "ended" ) then

        -- move the character up

        transition.moveBy( theCharacter, { 

        	x = 50, -- move 50 pixelfs right

        	y = 0, 

        	time = 100 -- move in a 1/10 of a second

        	} )

    end



    return true

end

upArrow:addEventListener( "touch", upArrow )
downArrow:addEventListener( "touch", downArrow )
leftArrow:addEventListener( "touch", leftArrow )
rightArrow:addEventListener( "touch", rightArrow )