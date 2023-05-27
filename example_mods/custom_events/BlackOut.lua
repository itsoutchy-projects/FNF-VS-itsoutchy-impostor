function onEvent(name, value1, value2)
	if name == 'BlackOut' then
		if value1 == 'true' then
			removeLuaSprite("polus", false);
		elseif value1 == 'false' then
			addLuaSprite("polus", false);
		end
	end
end