function onCreate()
	makeLuaSprite('uproarScreenThing', "10x10blacksquare", -700, -500);
	-- makeGraphic('uproarScreenThing', screenWidth * 2, screenHeight * 2, '0000FF');
	setScrollFactor('uproarScreenThing', 0, 0);
        setObjectCamera('uproarScreenThing', 'other')
	addLuaSprite('uproarScreenThing', true);
	setProperty('uproarScreenThing.alpha', 0.0000001);
	-- setProperty('uproarScreenThing.color', getColorFromHex('0000FF'));
end

function onEvent(name, value1, value2)
	if name == 'Uproar Screen Thing' then
		if value1 == '1' then
			doTweenAlpha('uproarScreenThingTween', 'uproarScreenThing', 0, 1.9, 'sineOut');
			-- setProperty('uproarScreenThing.color', getColorFromHex('0000FF'));
			if flashingLights then
				setBlendMode('uproarScreenThing', 'add');
			end
		else
			doTweenAlpha('uproarScreenThingTween', 'uproarScreenThing', 1, 0.4, 'sineOut');
			-- setProperty('uproarScreenThing.color', getColorFromHex('0000FF'));
			setBlendMode('uproarScreenThing', 'normal');
		end
	end
end
