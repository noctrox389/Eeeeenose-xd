function onEvent(name, value1, value2)
    if name == 'FlashbackEvent' then
        
        removeLuaSprite('garage', true)
        removeLuaSprite('garage2', true)

        makeLuaSprite('flashback', 'flashback', -800, -200);
        setScrollFactor('flashback', 1, 1);
        setGraphicSize('flashback', 3400, 2040)
    
        addLuaSprite('flashback', false);

        setProperty('boyfriend.x', -100)
        setProperty('boyfriend.y', 350)
        setProperty('gf.x', 1220)
        setProperty('gf.y', 190)
        setProperty('dad.x', 1400)
        setProperty('dad.y', 370)

 
        setProperty('defaultCamZoom', 0.7)
    end
end