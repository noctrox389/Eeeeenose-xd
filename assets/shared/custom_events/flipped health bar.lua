local flipped = false

function onEvent(name, value1, value2)
    if name == "Swap Healthbar" then
        flipped = not flipped

        -- Flip the health bar horizontally
        setProperty('healthBar.flipX', flipped)

        -- Flip the icons horizontally
        setProperty('iconP1.flipX', flipped)
        setProperty('iconP2.flipX', flipped)

        -- Update icon positions properly
        updateIconPositions()
    end
end

function updateIconPositions()
    local hbX = getProperty('healthBar.x')
    local hbWidth = getProperty('healthBar.width')
    local iconOffset = 26 -- This is the default offset value used in Psych Engine for icons

    if flipped then
        -- Position icons for flipped healthbar
        setProperty('iconP1.x', hbX + hbWidth - iconOffset - getProperty('iconP1.width') * getProperty('iconP1.scale.x'))
        setProperty('iconP2.x', hbX + iconOffset)
    else
        -- Default icon positions
        setProperty('iconP1.x', hbX + iconOffset)
        setProperty('iconP2.x', hbX + hbWidth - iconOffset - getProperty('iconP2.width') * getProperty('iconP2.scale.x'))
    end
end

function onUpdatePost()
    updateIconPositions()
end
