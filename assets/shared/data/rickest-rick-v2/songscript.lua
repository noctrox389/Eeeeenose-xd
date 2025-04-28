function onCreate()
    setProperty('showRating', false) -- Rating
    setProperty('showCombo', false) -- Combo Word, is already false by default
    setProperty('showComboNum', false) -- Numbers

    setProperty('gf.visible', false)

    setProperty("camGame.alpha", 0);

    makeLuaSprite('whiteFade', nil, -500, -500)
    makeGraphic('whiteFade', 5000, 5000, 'ffffff')
    setScrollFactor('whiteFade', 0, 0)
    setObjectCamera('whiteFade', 'camGame')
    setProperty('whiteFade.alpha', 0)
    addLuaSprite('whiteFade', true)
    setProperty('gf.visible', false)
end

function onStepHit()
    if curStep == 288 then
        setProperty("camGame.alpha", 0); 
    end
    if curStep == 300 then
        setProperty("camGame.alpha", 1); 
    end
    if curStep == 560 then
        setProperty("camGame.alpha", 0); 
    end
    if curStep == 576 then
        setProperty("camGame.alpha", 1); 
    end
    if curStep == 1472 then
        setProperty("camGame.alpha", 0); 
    end
    if curStep == 1 then
        setProperty("camGame.alpha", 1);
    end
    if curStep == 1200 then
        removeLuaSprite('unconscious_morty', true)

    end
    if curStep == 1760 then
        removeLuaSprite('garage', true)
        removeLuaSprite('garage2', true)
        removeLuaSprite('vignette', true)

        makeLuaSprite('flashback', 'flashback', -800, -200)
        setScrollFactor('flashback', 1, 1)
        setGraphicSize('flashback', 3400, 2040)
        addLuaSprite('flashback', false)

        setProperty('defaultCamZoom', 0.8)
        setProperty('gf.visible', false)

    end

    if curStep == 2016 then
        makeLuaSprite('Garage2', 'Garage2', -800, -200)
        setScrollFactor('Garage2', 1, 1)
        setGraphicSize('Garage2', 3400, 2040)

        makeLuaSprite('Garage', 'Garage', -800, -200)
        setScrollFactor('Garage', 1, 1)
        setGraphicSize('Garage', 3400, 2040)

        makeLuaSprite('vignette', 'vignette', -800, -200)
        setScrollFactor('vignette', 1, 1)
        setGraphicSize('vignette', 3400, 2040)

        addLuaSprite('vignette', true)
        addLuaSprite('Garage2', false)
        addLuaSprite('Garage', false)
        setProperty('gf.visible', true)

        setProperty('defaultCamZoom', 0.8)
    end

    if curStep == 1472 then
        setProperty("camGame.alpha", 0); 
    end

    if curStep == 1504 then
        setProperty("camGame.alpha", 1); 
    end
    if curStep == 1968 then
        doTweenAlpha('fadeToWhite', 'whiteFade', 1, 3.2, 'quadInOut')
    end
    if curStep == 2016 then
        setProperty('whiteFade.alpha', 0)
    end
    if curStep == 2272 then
        setProperty("camGame.alpha", 0); 
    end
end
