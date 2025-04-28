function onEvent(name, value1, value2)
    debugPrint('Event: ', name, ', Value1: ', value1, ', Value2: ', value2)
    if name == 'ready' then
        makeLuaSprite('countdownready', 'ready', 262, 178)
        setObjectCamera('countdownready', 'hud')
        addLuaSprite('countdownready', true)
        local duration = (getProperty('crochet') or 600) / 1000
        debugPrint('Crochet: ', getProperty('crochet'), ', Duration: ', duration)
        doTweenAlpha('readyend', 'countdownready', 0, duration, 'cubeInOut')
    end
end