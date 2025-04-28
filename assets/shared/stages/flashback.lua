function onCreate()
	-- background shit

	makeLuaSprite('flashback', 'flashback', -800, -200);
	setScrollFactor('flashback', 1, 1);
	setGraphicSize('flashback', 3400, 2040)
    scaleObject('flashback',2.5,2.5)
	addLuaSprite('flashback', false);
end