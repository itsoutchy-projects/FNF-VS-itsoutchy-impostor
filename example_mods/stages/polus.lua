
local u = false;
local r = 0;
local shot = false;
local agent = 1
local health = 0
local xx = 750;
local yy = 500;
local xx2 = 750;
local yy2 = 500;
local ofs = 20;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreate()
    makeLuaSprite('polus', 'polusBG', -600, -300)

    addLuaSprite('polus', false)
end




function onUpdate()
    setProperty('gf.alpha', 0);
    -- if songName == 'defeat' then
        if del > 0 then
            del = del - 1
        end
        if del2 > 0 then
            del2 = del2 - 1
        end
        if followchars == true then
            if mustHitSection == false then
                if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                    triggerEvent('Camera Follow Pos',xx-ofs,yy)
                end
                if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                    triggerEvent('Camera Follow Pos',xx+ofs,yy)
                end
                if getProperty('dad.animation.curAnim.name') == 'singUP' then
                    triggerEvent('Camera Follow Pos',xx,yy-ofs)
                end
                if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                    triggerEvent('Camera Follow Pos',xx,yy+ofs)
                end
                if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                    triggerEvent('Camera Follow Pos',xx-ofs,yy)
                end
                if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                    triggerEvent('Camera Follow Pos',xx+ofs,yy)
                end
                if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                    triggerEvent('Camera Follow Pos',xx,yy-ofs)
                end
                if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                    triggerEvent('Camera Follow Pos',xx,yy+ofs)
                end
                if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                    triggerEvent('Camera Follow Pos',xx,yy)
                end
                if getProperty('dad.animation.curAnim.name') == 'idle' then
                    triggerEvent('Camera Follow Pos',xx,yy)
                end
            else
                if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                    triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
                end
                if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                    triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
                end
                if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                    triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
                end
                if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                    triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
                end
                if getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
                    triggerEvent('Camera Follow Pos',xx2,yy2)
                end
                if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                    triggerEvent('Camera Follow Pos',xx2,yy2)
                end
            end
        else
            triggerEvent('Camera Follow Pos','','')
        end
        if curBeat == 16 then
            setProperty('defaultCamZoom',0.6)
            followchars = true
            xx = 750
            yy = 500
            xx2 = 750
            yy2 = 500
        end
        if curBeat == 32 then
            setProperty('defaultCamZoom',0.7)
            followchars = true
            xx = 750
            yy = 500
            xx2 = 750
            yy2 = 500
        end
        if curBeat == 48 then
            setProperty('defaultCamZoom',0.8)
            followchars = true
            xx = 750
            yy = 500
            xx2 = 750
            yy2 = 500
        end
        if curBeat == 68 then
            setProperty('defaultCamZoom',0.5)
            followchars = true
            xx = 750
            yy = 500
            xx2 = 750
            yy2 = 500
        end
        if curBeat == 100 then
            setProperty('defaultCamZoom',0.6)
            followchars = true
            xx = 500
            yy = 500
            xx2 = 900
            yy2 = 500
        end
        if curBeat == 164 then
            setProperty('defaultCamZoom',0.5)
            followchars = true
            xx = 750
            yy = 500
            xx2 = 750
            yy2 = 500
        end
        if curBeat == 194 then
            setProperty('defaultCamZoom',0.6)
            followchars = true
            xx = 750
            yy = 500
            xx2 = 750
            yy2 = 500
        end
        if curBeat == 196 then
            setProperty('defaultCamZoom',0.6)
            followchars = true
            xx = 750
            yy = 500
            xx2 = 750
            yy2 = 500
        end
        if curBeat == 212 then
            setProperty('defaultCamZoom',0.7)
            followchars = true
            xx = 750
            yy = 500
            xx2 = 750
            yy2 = 500
        end
        if curBeat == 228 then
            setProperty('defaultCamZoom',0.8)
            followchars = true
            xx = 750
            yy = 500
            xx2 = 750
            yy2 = 500
        end
        if curBeat == 244 then
            setProperty('defaultCamZoom',0.85)
            followchars = true
            xx = 750
            yy = 500
            xx2 = 750
            yy2 = 500
        end
        if curBeat == 260 then
            setProperty('defaultCamZoom',0.6)
            followchars = true
            xx = 750
            yy = 500
            xx2 = 750
            yy2 = 500
        end
        if curBeat == 292 then
            setProperty('defaultCamZoom',0.75)
            followchars = true
            xx = 750
            yy = 500
            xx2 = 750
            yy2 = 500
        end
        if curBeat == 360 then
            setProperty('defaultCamZoom',0.6)
            followchars = true
            xx = 500
            yy = 500
            xx2 = 900
            yy2 = 500
        end
        if curBeat == 424 then
            setProperty('defaultCamZoom',0.7)
            followchars = true
            xx = 750
            yy = 500
            xx2 = 750
            yy2 = 500
        end
        if curBeat == 456 then
            setProperty('defaultCamZoom',0.8)
            followchars = true
            xx = 750
            yy = 500
            xx2 = 750
            yy2 = 500
        end
        if curBeat == 472 then
            setProperty('defaultCamZoom',0.9)
            followchars = true
            xx = 750
            yy = 500
            xx2 = 750
            yy2 = 500
        end
        if curBeat == 488 then
            setProperty('defaultCamZoom',0.6)
            followchars = true
            xx = 750
            yy = 500
            xx2 = 750
            yy2 = 500
        end
    -- elseif songName == 'reactor' or songName == 'Reactor' then
    --     if del > 0 then
    --         del = del - 1
    --     end
    --     if del2 > 0 then
    --         del2 = del2 - 1
    --     end
    --     if followchars == true then
    --         if mustHitSection == false then
               
    --             if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
    --                 triggerEvent('Camera Follow Pos',xx-ofs,yy)
    --             end
    --             if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
    --                 triggerEvent('Camera Follow Pos',xx+ofs,yy)
    --             end
    --             if getProperty('dad.animation.curAnim.name') == 'singUP' then
    --                 triggerEvent('Camera Follow Pos',xx,yy-ofs)
    --             end
    --             if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
    --                 triggerEvent('Camera Follow Pos',xx,yy+ofs)
    --             end
    --             if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
    --                 triggerEvent('Camera Follow Pos',xx-ofs,yy)
    --             end
    --             if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
    --                 triggerEvent('Camera Follow Pos',xx+ofs,yy)
    --             end
    --             if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
    --                 triggerEvent('Camera Follow Pos',xx,yy-ofs)
    --             end
    --             if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
    --                 triggerEvent('Camera Follow Pos',xx,yy+ofs)
    --             end
    --             if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
    --                 triggerEvent('Camera Follow Pos',xx,yy)
    --             end
    --             if getProperty('dad.animation.curAnim.name') == 'idle' then
    --                 triggerEvent('Camera Follow Pos',xx,yy)
    --             end
    --         else
    
    --             if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
    --                 triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
    --             end
    --             if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
    --                 triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
    --             end
    --             if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
    --                 triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
    --             end
    --             if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
    --                 triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
    --             end
    --             if getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
    --                 triggerEvent('Camera Follow Pos',xx2,yy2)
    --             end
    --             if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
    --                 triggerEvent('Camera Follow Pos',xx2,yy2)
    --             end
    --         end
    --     else
    --         triggerEvent('Camera Follow Pos','','')
    --     end
    --     if curBeat == 64 then
    --         setProperty('defaultCamZoom',0.8)
    --         followchars = true
    --         xx = 1450
    --         yy = 1150
    --         xx2 = 1950
    --         yy2 = 1150
    --     end
    --     if curBeat == 128 then
    --         setProperty('defaultCamZoom',0.7)
    --         followchars = true
    --         xx = 1725
    --         yy = 1100
    --         xx2 = 1725
    --         yy2 = 1100
    --     end
    --     if curBeat == 192 then
    --         setProperty('defaultCamZoom',0.8)
    --         followchars = true
    --         xx = 1450
    --         yy = 1150
    --         xx2 = 1950
    --         yy2 = 1150
    --     end
    --     if curBeat == 224 then
    --         setProperty('defaultCamZoom',0.8)
    --         followchars = true
    --         xx = 1725
    --         yy = 1100
    --         xx2 = 1725
    --         yy2 = 1100
    --     end
    --     if curBeat == 256 then
    --         setProperty('defaultCamZoom',0.8)
    --         followchars = true
    --         xx = 1450
    --         yy = 1150
    --         xx2 = 1950
    --         yy2 = 1150
    --     end
    --     if curBeat == 320 then
    --         setProperty('defaultCamZoom',0.7)
    --         followchars = true
    --         xx = 1725
    --         yy = 1100
    --         xx2 = 1725
    --         yy2 = 1100
    --     end
    --     if curBeat == 384 then
    --         setProperty('defaultCamZoom',0.8)
    --         followchars = true
    --         xx = 1450
    --         yy = 1150
    --         xx2 = 1950
    --         yy2 = 1150
    --     end
    --     if curBeat == 479 then
    --         setProperty('defaultCamZoom',0.9)
    --         followchars = true
    --         xx = 1725
    --         yy = 1200
    --         xx2 = 1725
    --         yy2 = 1200
    --     end
    --     if curBeat == 544 then
    --         setProperty('defaultCamZoom',0.8)
    --         followchars = true
    --         xx = 1725
    --         yy = 1100
    --         xx2 = 1725
    --         yy2 = 1100
    --     end
    --     if curBeat == 608 then
    --         setProperty('defaultCamZoom',0.9)
    --         followchars = true
    --         xx = 1725
    --         yy = 1200
    --         xx2 = 1725
    --         yy2 = 1200
    --     end
    --     if curBeat == 672 then
    --         setProperty('defaultCamZoom',0.7)
    --         followchars = true
    --         xx = 1725
    --         yy = 1100
    --         xx2 = 1725
    --         yy2 = 1100
    --     end
    -- elseif songName == 'ejected' then
    --     if del > 0 then
    --         del = del - 1
    --     end
    --     if del2 > 0 then
    --         del2 = del2 - 1
    --     end
    --     if followchars == true then
    --         if mustHitSection == false then
    --             setProperty('defaultCamZoom',0.45)
    --             if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
    --                 triggerEvent('Camera Follow Pos',xx-ofs,yy)
    --             end
    --             if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
    --                 triggerEvent('Camera Follow Pos',xx+ofs,yy)
    --             end
    --             if getProperty('dad.animation.curAnim.name') == 'singUP' then
    --                 triggerEvent('Camera Follow Pos',xx,yy-ofs)
    --             end
    --             if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
    --                 triggerEvent('Camera Follow Pos',xx,yy+ofs)
    --             end
    --             if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
    --                 triggerEvent('Camera Follow Pos',xx-ofs,yy)
    --             end
    --             if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
    --                 triggerEvent('Camera Follow Pos',xx+ofs,yy)
    --             end
    --             if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
    --                 triggerEvent('Camera Follow Pos',xx,yy-ofs)
    --             end
    --             if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
    --                 triggerEvent('Camera Follow Pos',xx,yy+ofs)
    --             end
    --             if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
    --                 triggerEvent('Camera Follow Pos',xx,yy)
    --             end
    --             if getProperty('dad.animation.curAnim.name') == 'idle' then
    --                 triggerEvent('Camera Follow Pos',xx,yy)
    --             end
    --         else
    
    --             setProperty('defaultCamZoom',0.45)
    --             if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
    --                 triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
    --             end
    --             if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
    --                 triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
    --             end
    --             if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
    --                 triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
    --             end
    --             if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
    --                 triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
    --             end
    --             if getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
    --                 triggerEvent('Camera Follow Pos',xx2,yy2)
    --             end
    --             if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
    --                 triggerEvent('Camera Follow Pos',xx2,yy2)
    --             end
    --         end
    --     else
    --         triggerEvent('Camera Follow Pos','','')
    --     end
    -- end
end

