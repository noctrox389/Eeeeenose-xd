
local y = 0
local t = 0
-- stolen from bbpanzu lol -Uhard
local u = false;
local r = 0;
local shot = false;
local agent = 1
local health = 0;
local xx = 500
local yy = 730
local xx2 = 1400
local yy2 = 870
local xx3 = 1400
local yy3 = 870

function onCreate()
    -- Initialize variables before step 1700
    xx = 500
    yy = 800
    xx2 = 1400
    yy2 = 870
    xx3 = 1400
    yy3 = 870
end

function onStepHit()
    if curStep == 1760 then
        xx = 1500
        yy = 650
        xx2 = 250
        yy2 = 700
        xx3 = 1400
        yy3 = 870
    elseif curStep == 2017 then
        xx = 500
        yy = 800
        xx2 = 1400
        yy2 = 870
        xx3 = 1400
        yy3 = 870
    end
end

local ofs = 30;
local followchars = true;
local del = 0;
local del2 = 0;
local drain = 0.50 -- the funne
local allowCountdown = false




function onUpdate()
    if followchars == true then
        if mustHitSection == false then
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos', xx - ofs, yy)
            elseif getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos', xx + ofs, yy)
            elseif getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos', xx, yy - ofs)
            elseif getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos', xx, yy + ofs)
            elseif getProperty('dad.animation.curAnim.name') == 'idle' or getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos', xx, yy)
            end
        else
            -- Camera Follow for Boyfriend (when it's Boyfriend's turn)
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos', xx2 - ofs, yy2)
            elseif getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos', xx2 + ofs, yy2)
            elseif getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos', xx2, yy2 - ofs)
            elseif getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos', xx2, yy2 + ofs)
            elseif getProperty('boyfriend.animation.curAnim.name') == 'idle' or getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos', xx2, yy2)
            end
        end

        if gfSection == true then
            if getProperty('gf.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos', xx3 - ofs, yy2)
            elseif getProperty('gf.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos', xx3 + ofs, yy2)
            elseif getProperty('gf.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos', xx3, yy2 - ofs)
            elseif getProperty('gf.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos', xx3, yy2 + ofs)
            elseif getProperty('gf.animation.curAnim.name') == 'idle' or getProperty('gf.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos', xx3, yy2)
            end
        end
    else
        -- Reset the camera when no character is followed
        triggerEvent('Camera Follow Pos', '', '')
    end
end



function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.4 then
        setProperty('health', health- 0.017);
    end
end