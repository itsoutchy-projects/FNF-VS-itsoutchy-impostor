function onCreate()
    makeLuaSprite('CreditsBG',nil,-300,200)
    makeGraphic('CreditsBG',300,100,'FFFFFF')
    setProperty('CreditsBG.alpha',0.4)
    setObjectCamera('CreditsBG','other')
    addLuaSprite('CreditsBG')
    Text=getTextFromFile('data/'..songName..'/info.txt')
    makeLuaText('CreditsTxt',Text,0,getProperty('CreditsBG.x')+12,getProperty('CreditsBG.y')+12)
    setTextAlignment('CreditsTxt','left')
    setTextSize('CreditsTxt',24)
    setObjectCamera('CreditsTxt','other')
    addLuaText('CreditsTxt')
end