local MickeyDodge = false
local MickeyStopAnim = 0
local BFStopAnim = 0

local notehitHeatlh = 0.023

function onCreate()
    precacheImage('mechanics/warning')
    makeAnimatedLuaSprite('WarningMickey','mechanics/warning',0,250)
    setProperty('WarningMickey.x',-120)
    addAnimationByPrefix('WarningMickey','Warning','Advertencia',24,false)
    setObjectCamera('WarningMickey','other')
end

function onEvent(name)
    if name == 'Do Syringe' then
        MickeyAttack()
    end
end

function onUpdate()
    
    for i = 0,getProperty('eventNotes.length')-1 do
        if math.abs((getPropertyFromGroup('eventNotes', i,'strumTime') - getSongPosition())) < 600 and getPropertyFromGroup('eventNotes', i,'event') == 'Do Syringe' and not MickeyDodge then
            WarningMickey()
        end
    end
    if getProperty('WarningMickey.animation.curAnim.finished') then
        removeLuaSprite('WarningMickey',false)
    end
    if MickeyDodge == true and keyJustPressed('space') then
        MickeyDodgeWow()
    end
    if MickeyStopAnim == 2 then
        for i = 0,getProperty('notes.length')-1 do
            if getPropertyFromGroup('notes', i,'mustPress') == false then
                setPropertyFromGroup('notes', i, 'noAnimation',true)
            end
        end
        if getProperty('dad.animation.curAnim.name') == 'attack' and getProperty('dad.animation.curAnim.finished') or getProperty('dad.animation.curAnim.name') ~= 'attack' then
            MickeyStopAnim = 1
        end
    end
    if MickeyStopAnim == 1 then
        for i = 0,getProperty('notes.length')-1 do
            if getPropertyFromGroup('notes', i,'mustPress') == false then
                setPropertyFromGroup('notes', i, 'noAnimation',false)
            end
        end
        MickeyStopAnim = 0
    end
    if BFStopAnim == 2 then
        for j = 0,getProperty('notes.length')-1 do
            if getPropertyFromGroup('notes', j,'mustPress') == true then
                setPropertyFromGroup('notes', j, 'noAnimation',true)
            end
        end
        if getProperty('boyfriend.animation.curAnim.name') == 'dodge' and getProperty('boyfriend.animation.curAnim.finished') or getProperty('boyfriend.animation.curAnim.name') == 'hurt' and getProperty('boyfriend.animation.curAnim.finished') or getProperty('boyfriend.animation.curAnim.name') ~= 'dodge' and getProperty('boyfriend.animation.curAnim.name') ~= 'hurt' then
            BFStopAnim = 1
        end
    end
    if BFStopAnim == 1 then
        for j = 0,getProperty('notes.length')-1 do
            if getPropertyFromGroup('notes', j,'mustPress') == true then
                setPropertyFromGroup('notes', j, 'noAnimation',false)
            end
        end
        BFStopAnim = 0
    end

    if notehitHeatlh ~= 0.023 then
        for changeHealth = 0,getProperty('notes.length')-1 do
            if getPropertyFromGroup('notes', changeHealth,'mustPress') == true and getPropertyFromGroup('notes', changeHealth,'hitHealth') > notehitHeatlh then
                setPropertyFromGroup('notes', changeHealth, 'hitHealth',notehitHeatlh)
            end
        end
    end

    if notehitHeatlh < 0 then
        notehitHeatlh = 0
    end
end

function MickeyDodgeWow()
    BFStopAnim = 2
    characterPlayAnim('boyfriend','dodge',false)
    setProperty('boyfriend.specialAnim',true)
end
function WarningMickey()
    playSound('Warning',0.7)
    addLuaSprite('WarningMickey',true)
    objectPlayAnimation('WarningMickey','Warning',true)
    MickeyDodge = true
end
function MickeyAttack()
    MickeyStopAnim = 2
    characterPlayAnim('dad','attack',true)
    setProperty('dad.specialAnim',true)
    runTimer('MickeyDodge',0.4)
    if botPlay then
        MickeyDodgeWow()
    end
end
function onTimerCompleted(tag)
    if tag == 'MickeyDodge' then

        MickeyDodge = false
        if getProperty('boyfriend.animation.curAnim.name') ~= 'dodge' then
            characterPlayAnim('boyfriend','hurt',true)
            doEffect()
            setProperty('boyfriend.specialAnim',true)
            BFStopAnim = 2
            if notehitHeatlh > 0 then
                notehitHeatlh = notehitHeatlh - 0.005
            end
        end
    end
end

function doEffect()

bruh = getProperty('health');
setProperty('health', bruh - 0.3);

end
