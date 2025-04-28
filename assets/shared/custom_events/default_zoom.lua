function onEvent(name, value1, value2)
    if name == "Tween Zoom" then
        local targetZoom = tonumber(value1)  
        local duration = tonumber(value2)  

        doTween('zoomTween', 'defaultCamZoom', targetZoom, duration, 'sineInOut')
    end
end
