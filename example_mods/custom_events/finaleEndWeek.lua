local eventBeenRan = false;
function onEvent(eventName, value1, value2)
    if eventName == "finaleEndWeek" then
        if isStoryMode then
            eventBeenRan = true;
            -- openCustomSubstate("endState", true);
            makeLuaText("endText", "I am INSANE, the BEST impostor, better than black... \n \n \n \n Press enter for a surprise remember the capitalized words!", 300, 0.0, 0.0);
            screenCenter("endText", 'xy');
            addLuaText("endText");
            
            -- endSong();
        end
    end
end

function onUpdate(elapsed)
    if eventBeenRan then
        if keyboardJustPressed("ENTER") or keyboardJustPressed("SPACE") then
            runHaxeCode([[
                FlxG.switchState(new SecretState());
            ]]);
        end
    end
end