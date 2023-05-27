local bordersSize = 110
local boom = true
local bom = false
function onCreate()

	precacheImage('backgrounds/Destruido')
	precacheImage('backgrounds/VecindarioBG-old')
	precacheImage('mickey')
	precacheImage('HUD/daSTAT')
	precacheImage('HUD/grain')
	precacheImage('backgrounds/Dark')

    makeLuaSprite('new','backgrounds/Destruido',-660,-200)
    addLuaSprite('new',false)

    makeLuaSprite('dark','backgrounds/Dark',0,0)
        setObjectCamera('dark', 'other')
    addLuaSprite('dark',false)
      setProperty('dark.visible', false)

	makeLuaSprite('old', 'backgrounds/VecindarioBG-old', -550, -200);
	addLuaSprite('old', false);
          setProperty('old.visible', false)

    makeLuaSprite('m', 'mickey', 0, 0);
        setObjectCamera('m', 'other')
         addLuaSprite('m', false);
      setProperty('m.visible', false)   

        makeLuaSprite('cinematicMickeyBorder1',"10x10blacksquare",0,0)
        makeLuaSprite('cinematicMickeyBorder2',"10x10blacksquare",0,screenHeight - bordersSize)
        for borders = 1,2 do
            -- makeGraphic('cinematicMickeyBorder'..borders,screenWidth,bordersSize,'000000')
            setObjectCamera('cinematicMickeyBorder'..borders,'hud')
            addLuaSprite('cinematicMickeyBorder'..borders,false)

   makeLuaText("aspace", 'Your dodge keybinds are:', 0, 320, 585)
   setTextAlignment('aspace', 'left')
       setObjectCamera('aspace', 'other')
    setTextSize('aspace', '37')
   addLuaText('aspace')
	setProperty('aspace.alpha', 0)

   makeLuaText("space", 'SPACE', 0, 870, 585)
   setTextAlignment('space', 'left')
     setTextColor('space','FFFF00')
       setObjectCamera('space', 'other')
    setTextSize('space', '37')
   addLuaText('space')
	setProperty('space.alpha', 0)


   end


        makeAnimatedLuaSprite('mickeyStatic','HUD/daSTAT',0,0)
        addAnimationByPrefix('mickeyStatic','idle','staticFLASH',24,true)
        setObjectCamera('mickeyStatic','other')
        scaleObject('mickeyStatic',3.3,2.5)
        setProperty('mickeyStatic.alpha',0.05)
        addLuaSprite('mickeyStatic',true)

        makeAnimatedLuaSprite('mickeyGrain','HUD/grain',0,0)
        addAnimationByPrefix('mickeyGrain','idle','grain',24,true)
        setObjectCamera('mickeyGrain','other')
        scaleObject('mickeyGrain',1.25,1.25)
        addLuaSprite('mickeyGrain',true)


	makeLuaSprite('aa', "10x10blacksquare", -700, -500);
	-- makeGraphic('aa', screenWidth * 2, screenHeight * 2, 'FFFFFF');
	setScrollFactor('aa', 0, 0);
        setObjectCamera('aa', 'other')
	addLuaSprite('aa', true);
	-- setProperty('aa.color', getColorFromHex('000000'));

end

function onSongStart()
removeLuaSprite('aa', true);

end


function onCreatePost(elapsed)
setObjectOrder('m', getObjectOrder('uproarScreenThing')+1)
end


function onStepHit()

 if curStep == 400 or curStep == 1344 or curStep == 2568 or curStep == 800 then

      setProperty('m.visible', true)
	doTweenX('m.ScaleTweenX', 'm.scale', 2, 0.8, 'sineOut');
	doTweenY('m.ScaleTweenY', 'm.scale', 2, 0.8, 'sineOut');
	doTweenAlpha('m.AlphaTween', 'm', 0, 0.8, 'linear');
        runTimer('AAA', 0.8);

end

if getProperty('curStep') > 416 and boom == true then

   if curStep % 4 == 0 then

 triggerEvent('Add Camera Zoom',0.10,0.06)

end
   end

if getProperty('curStep') > 272 and boom == true then

   if curStep % 8 == 4 then

 triggerEvent('Add Camera Zoom',0.10,0.06)

end
   end

if getProperty('curStep') > 272 then

bom= true

end

 if curStep == 1096 then
          setProperty('old.visible', true)
          setProperty('new.visible', false)
          setProperty('cinematicMickeyBorder1.visible', false)
          setProperty('cinematicMickeyBorder2.visible', false)
          setProperty('mickeyStatic.visible', false)
            setProperty('defaultCamZoom', 0.7)
             boom = false

 elseif curStep == 1385 then
          setProperty('old.visible', false)
          setProperty('cinematicMickeyBorder1.visible', true)
          setProperty('cinematicMickeyBorder2.visible', true)
          setProperty('mickeyStatic.visible', true)
          setProperty('new.visible', true)
            setProperty('defaultCamZoom', 0.8)
              boom = true

end

if curStep == 64 then

	doTweenAlpha('space.AlphaTween', 'space', 0, 0.8, 'linear');
	doTweenAlpha('aspace.AlphaTween', 'aspace', 0, 0.8, 'linear');

elseif curStep == 2 then
	doTweenAlpha('space.AlphaTween', 'space', 1, 0.8, 'linear');
	doTweenAlpha('aspace.AlphaTween', 'aspace', 1, 0.8, 'linear');
end

    if curStep == 1488 then
      setProperty('dark.visible', true)

    elseif curStep == 2049 then

    setCharacterX('boyfriend', 30);

	setCharacterX('dad', 955);



      setProperty('dark.visible', false)
end
    end
function onUpdate()
  setProperty('barCam.zoom', getProperty 'camHUD.zoom')
end



function onTimerCompleted(tag, loops, loopsleft)
	if tag == 'AAA' then
		setProperty('m.visible', false)
	doTweenX('m.ScaleTweenX', 'm.scale', 1, 0.01, 'sineOut');
	doTweenY('m.ScaleTweenY', 'm.scale', 1, 0.01, 'sineOut');
	doTweenAlpha('m.AlphaTween', 'm', 1, 0.01, 'linear');

	end
end

function opponentNoteHit(id,data,type,sus)

if bom == true then
triggerEvent('Add Camera Zoom',0.01,0.02)
end
if dadName == 'suicide' then
triggerEvent('Screen Shake', '0.045, 0.005', '0.045, 0.005')

 elseif dadName == 'mouse-inferno' then
triggerEvent('Screen Shake', '0.055, 0.006', '0.055, 0.006')

end
    if getProperty('health') > 0.3 then
            if not sus then
                setProperty('health',getProperty('health') - 0.028)
            else
                setProperty('health',getProperty('health') - (0.028/3))
            end
        end
    end

function onUpdatePost(el)
	for i = 0, getProperty('grpNoteSplashes.length')-1 do
		setPropertyFromGroup('grpNoteSplashes', i, 'offset.x', -15)
		setPropertyFromGroup('grpNoteSplashes', i, 'offset.y', 10)
	end
end