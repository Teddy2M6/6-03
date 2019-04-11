local ageTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 100, 600, 110 )
ageTextField.id = "age textField"

local enterTextField = display.newText( "Enter your Age", display.contentCenterX, display.contentCenterY - 10, native.systemFont, 55 )
enterTextField.id = "enter textField"
enterTextField:setFillColor( 1, 1, 1 )

local calculateButton = display.newImageRect( "./calculate.png", 406, 157 )
calculateButton.x = display.contentCenterX
calculateButton.y = 1300
calculateButton.id = "calculate button"

display.setDefault("background", 0, 155, 0)

local function calculateButtonTouch( event )

	local ageInput
	
	ageInt = ageTextField.text
	
	if ageInt >= '17' then
		display.newText('You can see an R movie alone', display.contentCenterX, display.contentCenterY - 330, native.systemFont, 70 )

	else if ageInt >= '13' then
		display.newText('You can see a PG-13 movie alone', display.contentCenterX, display.contentCenterY - 330, native.systemFont, 70 )

	else if ageInt >= '5' then
		display.newText('You can see a G or PG movie alone', display.contentCenterX, display.contentCenterY - 330, native.systemFont, 70 )

	else
		display.newText('Your to young for most things', display.contentCenterX, display.contentCenterY - 330, native.systemFont, 70 )
	
	end
	
	return true

end

end

end

calculateButton:addEventListener( "touch", calculateButtonTouch )