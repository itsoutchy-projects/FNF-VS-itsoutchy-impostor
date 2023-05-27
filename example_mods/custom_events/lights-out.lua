---
--- @param eventName string
--- @param value1 string
--- @param value2 string
---
function onEvent(eventName, value1, value2)
    if eventName == 'lights-out' then
        makeLuaSprite("blackout", "", -1000, -700.0);
        makeGraphic("blackout", 5500, 7500, "000000");
        addLuaSprite("blackout", false);
        triggerEvent("Change Character", "Dad", "itsoutchy lights down");
        triggerEvent("Change Character", "BF", "whitebf");
    end
end