local BeatPorcent = 0
local BeatStyle = 0
local BeatStrentghGame = 0.07
local BeatStrentghHUD = 0.07

local Beated = false

function onStepHit()
    if curStep/4 % BeatPorcent == 0 then
        if BeatStyle == 0 then
            if Beated == false then
                Beated = true
                triggerEvent('Add Camera Zoom',BeatStrentghGame,BeatStrentghHUD)
            end
        elseif BeatStyle == 1 then
            if (curStep/4) % 4 ~= 0 then
                if  curStep/4 % BeatPorcent == 0 and Beated == false then
                    triggerEvent('Add Camera Zoom',BeatStrentghGame  * BeatValue,BeatStrentghHUD * BeatValue)
                    BeatValue = BeatValue * -1
                    Beated = true
                end
            else
                if (curStep/4) % BeatPorcent == 0 and Beated == false then
                    triggerEvent('Add Camera Zoom',BeatStrentghGame * BeatValue + (0.025 * BeatValue),BeatStrentghHUD * BeatValue + (0.03 * BeatValue))
                    BeatValue = BeatValue * -1
                    Beated = true
                end
            end
        end
    else
        Beated = false
    end
        if curStep == 415 then
            BeatPorcent = 0
            BeatStyle = 0
    end
       if curStep == 431 then
            BeatPorcent = 1
            BeatStyle = 0
    end
if curStep == 696 then
            BeatPorcent = -2
            BeatStyle = 0
    end
if curStep == 952 then
            BeatPorcent = 0
            BeatStyle = 0
    end
if curStep == 1208 then
            BeatPorcent = 1
            BeatStyle = 0
    end
if curStep == 2232 then
            BeatPorcent = 0
            BeatStyle = 0
    end
end
