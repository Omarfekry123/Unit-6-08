display.setDefault( "background", 147/255, 252/555, 244/255 )



input1Field = native.newTextField( 155, display.contentCenterY + 50, 100, 40 )

input1Field.id = "Input1 textField"



input2Field = native.newTextField( 155, display.contentCenterY + 160, 100, 40 )

input2Field.id = "Input2 textField"



responseText = display.newText( "Answer:", 110, 450, native.systemFont, 20 )

responseText:setFillColor( 255/255, 255/255, 255/255 )



multiplicationText = display.newText( "X", 160, 340, native.systemFont, 50 )

multiplicationText:setFillColor( 255/255, 255/255, 255/255 )



local calculateButton = display.newImageRect( "assets/images/enterButton.png", 200, 100 )

calculateButton.x = 160

calculateButton.y = 100

calculateButton.id = "calculate button"



local function calculateButtonTouch (event)

	number1 = tonumber(input1Field.text)

	number2 = tonumber(input2Field.text)

	addFunction = 1

	answer = number1



	repeat 

		while addFunction < number2 do

			addFunction = addFunction + 1

			answer = answer + number1

		end



	until

	addFunction == number2

		print (answer)

		responseText.text = "The answer is ".. answer



	end



calculateButton:addEventListener( "touch", calculateButtonTouch )-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here