---
--- @param eventName string
--- @param value1 string
--- @param value2 string
---
function onEvent(eventName, value1, value2)
    if eventName == 'lights-on' then
        setProperty("blackout.visible", false);
        triggerEvent("Change Character", "Dad", "itsoutchy");
        triggerEvent("Change Character", "BF", "bf");
    end
end