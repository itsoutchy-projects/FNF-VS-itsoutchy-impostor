-- please make the freeze stop :(
function onCreate()
    makeLuaSprite("blackout", "", -1000, -700.0);
    screenCenter("blackout", 'xy');
    makeGraphic("blackout", screenWidth + 500, screenHeight + 500, "000000");
    addLuaSprite("blackout", false);
    setProperty("blackout.visible", false);
end