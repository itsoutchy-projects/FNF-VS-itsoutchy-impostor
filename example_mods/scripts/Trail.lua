-- -- Customisable variables
-- local char = "all"; -- should be either "dad", "bf", or "all"
-- local bfColour = "007CFF"; -- BF's trail colour
-- local dadColour = "FF0000"; -- Dad's trail colour
-- local delay = 1; -- Trail delay

-- -- variables for the script, DO NOT MODIFY UNLESS YOU KNOW WHAT YOU'RE DOING!!1!1!!!!1!!
-- local dadImage; -- Dad's image name 
-- local bfImage; -- BF's image name
-- local dadOffsetX; -- Dad's X animation offset
-- local dadOffsetY; -- Dad's Y animation offset

-- local dadAnim; -- Dad's current animation
-- local bfAnim; -- BF's current animation

-- local dadAnimXML; -- Dad's anim on the XML file
-- local bfAnimXML; -- BF's anim on the XML file

-- local startedDelayDad = false; -- If dad's trail is in delay
-- function onCreate()
--     if char == "all" then
--         -- set the character's images
--         dadImage = getProperty("dad.imageFile");
--         bfImage = getProperty("boyfriend.imageFile");

--         -- set the offsets
--         dadOffsetX = getProperty('dad.offset.x');
--         dadOffsetY = getProperty('dad.offset.y');
--     end
-- end

-- ---
-- --- @param elapsed float
-- ---
-- function onUpdate(elapsed)
--     -- Updating the animations
--     dadAnim = getProperty('dad.animation.curAnim.name');
--     bfAnim = getProperty('dad.animation.curAnim.name');
--     dadAnimXML = getProperty("dad.animation.frameName");
--     bfAnimXML = getProperty("boyfriend.animation.frameName");

--     setGraphicSize("dadTrail", getProperty("dad.frameWidth"), getProperty("dad.frameHeight"));

--     if not startedDelayDad then -- Make sure we aren't already delaying trail animation
--         if luaSpriteExists("dadTrail") then
--             removeLuaSprite("dadTrail");
--         end
    
--         -- adding the trail sprite
--         makeAnimatedLuaSprite("dadTrail", getProperty("dad.imageFile"), 0, 0);
--         setProperty("dadTrail.color", dadColour);
--         addLuaSprite("dadTrail", false);
--         runTimer("dadAnimDelay", delay, 1); -- Delays playing the animation
--         startedDelayDad = true;
--     end
-- end

-- function onTimerCompleted(tag, loops, loopsLeft)
--     if tag == "dadAnimDelay" then
--         addAnimationByPrefix("dadTrail", dadAnim, DadAnimXML, 24, false);
--         playAnim("dadTrail", dadAnim, false, false, 0); -- Plays the current animation
--         startedDelayDad = false; -- Allows the trail to be delayed again
--     end
-- end