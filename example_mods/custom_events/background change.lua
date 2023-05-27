---
--- @param eventName string
--- @param value1 string
--- @param value2 string
---
function onEvent(eventName, value1, value2)
    if eventName == 'background change' then
        -- splits value2 to determine the x and y values the user entered
        local x = stringSplit(value2, ", ")[0];
        local y = stringSplit(value2, ", ")[1];

        -- adds the new background
        makeLuaSprite("newBG", value1, x, y);
        addLuaSprite("newBG", false);
    end
end