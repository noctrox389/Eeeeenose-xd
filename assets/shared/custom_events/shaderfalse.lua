function onEvent(eventName, value1, value2)
    if eventName=='shaderfalse' then
removeLuaScript('data/rgb effect2.lua')
    end
    if eventName=='flash' and luaSpriteExists('dialogue') then
        setProperty('dialogue.visible',false)
        removeLuaSprite('dialogue',true)
    end
end