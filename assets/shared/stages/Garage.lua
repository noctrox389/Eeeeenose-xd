function onCreate()
	-- background shit

	makeLuaSprite('Garage2', 'Garage2', -800, -200);
	setScrollFactor('Garage2', 1, 1);
	setGraphicSize('Garage2', 3400, 2040)
    scaleObject('Garage2',4,4)
	makeLuaSprite('Garage', 'Garage', -800, -200);
	setScrollFactor('Garage', 1, 1);
	setGraphicSize('Garage', 3400, 2040)
	scaleObject('Garage',4,4)
	makeAnimatedLuaSprite('unconscious_morty', 'unconscious_morty', 1200, 1000)
    addAnimationByPrefix('unconscious_morty', 'idle', 'morty_idle', 12, true)
    setScrollFactor('unconscious_morty', 1, 1)
    setGraphicSize('unconscious_morty', 500, 170)

	makeLuaSprite('vignette', 'vignette', -800, -500);
	setScrollFactor('vignette', 1, 1);
	setGraphicSize('vignette', 3400, 2040)
	

	addLuaSprite('vignette', true);
	addLuaSprite('Garage2', false);
	addLuaSprite('Garage', false);
	addLuaSprite('unconscious_morty', false);
end
