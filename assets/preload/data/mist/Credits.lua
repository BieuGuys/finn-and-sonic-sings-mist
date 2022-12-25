--- Script Made By Skry#4271 ---
-- Please credit me :) --
-- Based on Sonic V2.5 --
-- You can put this in Scripts and make a credit lua in the song --
-- then use it like this --
--   function onCreatePost()
--    setTextString() --
--  end  --


enabled = true -- Set to true or false



RequestedUser = '13th Century Austin'--- Change to users if its only these people
CoverUser = 'Roy23s'
RestOfTheCreditsUser = 'In Gamejolt and YT'
mainColor =  '222222' -- Big Box Color
secondaryColor = 'ADBFCA' -- Lines Color
secondaryColor3 = '0058B7' -- Lines Color
SecondaryColor2 = 'FFFFFF' -- Text Color 
local speedthing = 0.6 --Speed Of it
local timething = 2.5 --Timer



function onCreate()
 if enabled == true then
      -- BIG BOX --
    makeLuaSprite('bigBox', 'BigBOX',  700, 1300)
    makeGraphic("bigBox", 700, 1300, mainColor)
    setObjectCamera('bigBox', 'other')
    setProperty('bigBox.alpha', 0.8)
    setProperty('bigBox.x', 300)
    setProperty('bigBox.y', -1300)
    addLuaSprite('bigBox', true)
    
      -- LINES FOR BIG BOX --
       ---LEFT---
    makeLuaSprite('lineLeft', 'lineLeft',  50, 1300)
    makeGraphic("lineLeft", 50, 1300, secondaryColor)
    setObjectCamera('lineLeft', 'other')
    setProperty('lineLeft.alpha', 0.85)
    setProperty('lineLeft.y', -1300)
    setProperty('lineLeft.x', 300)
    addLuaSprite('lineLeft', true)
       ---RIGHT--- 
    makeLuaSprite('lineRight', 'lineRight',  50, 1300)
    makeGraphic("lineRight", 50, 1300, secondaryColor3)
    setObjectCamera('lineRight', 'other')
    setProperty('lineRight.alpha', 0.85)
    setProperty('lineRight.y', -1300)
    setProperty('lineRight.x', 950)
    addLuaSprite('lineRight', true)
       ---LINES---
    makeLuaText("CREDITSthing", "CREDITS", 1000, 0, -1000)
    makeLuaText("Requestedthing", "Requested", 1000, 0, -1000)
    makeLuaText("Coverthing", "Cover", 1000, 0, -1000)
    makeLuaText("RestOfTheCreditsthing", "RestOfTheCredits", 1000, 0, -1000)
    addLuaText('CREDITSthing')
    addLuaText('Requestedthing')
    addLuaText('Coverthing')
    addLuaText('RestOfTheCreditsthing')
      --above notes--
    setObjectCamera('CREDITSthing', 'other')
    setObjectCamera('Requestedthing', 'other')
    setObjectCamera('Coverthing', 'other')
    setObjectCamera('RestOfTheCreditsthing', 'other')
    setObjectCamera('CREDITS', 'other')
    setObjectCamera('Requested', 'other')
    setObjectCamera('Cover', 'other')
    setObjectCamera('RestOfTheCredits', 'other')





        -- RequestedBy --
    makeLuaText("Requested", RequestedUser, 1000, 0, -1000)
    setObjectCamera('Requested', 'other')
    addLuaText('Requested')

        -- Cover --
    makeLuaText("Cover", CoverUser, 1000, 0, -1000)
    setObjectCamera('Cover', 'other')
    addLuaText('Cover')

        -- RestOfTheCredits --
    makeLuaText("RestOfTheCredits", RestOfTheCreditsUser, 1000, 0, -1000)
    setObjectCamera('RestOfTheCredits', 'other')
    addLuaText('RestOfTheCredits')

         -- COLORS --
    setTextColor('CREDITSthing', SecondaryColor2)
    setTextColor('Requestedthing', SecondaryColor2)
    setTextColor('Coverthing', SecondaryColor2)
    setTextColor('RestOfTheCreditsthing', SecondaryColor2)
    setTextColor('Requested', SecondaryColor2)
    setTextColor('Cover', SecondaryColor2)
    setTextColor('RestOfTheCredits', SecondaryColor2)
    

         -- largen --
     
    setTextSize('CREDITSthing', 35)
    setTextSize('Requestedthing', 35)
    setTextSize('Coverthing', 35)
    setTextSize('RestOfTheCreditsthing', 35)
    setTextSize('Requested', 35)
    setTextSize('Cover', 35)
    setTextSize('RestOfTheCredits', 35)

            -- texttAlignment --
         setProperty('CREDITSthing.x', 135)
         setProperty('Requestedthing.x', 135)
         setProperty('Coverthing.x', 135)
         setProperty('RestOfTheCreditsthing.x', 135)
         setProperty('CREDITS.x', 135)
         setProperty('Requested.x', 135)
         setProperty('Cover.x', 135)
         setProperty('RestOfTheCredits.x', 135)

 
 end
end
     
     
function onSongStart()
  if enabled == true then
    runTimer('ByeBye', timething)

    doTweenY("A", "bigBox", 0, speedthing, 'linear')
    doTweenY('B', 'CREDITSthing', 50, speedthing, 'linear')
	  doTweenY('C', 'Requestedthing', 150, speedthing, 'linear')
    doTweenY('D', 'Requested', 200, speedthing, 'linear')
  	doTweenY('E', 'Coverthing', 280, speedthing, 'linear')
    doTweenY('F', 'Cover', 340, speedthing, 'linear')
	  doTweenY('G', 'RestOfTheCreditsthing', 410, speedthing, 'linear')
	  doTweenY('H', 'RestOfTheCredits', 470, speedthing, 'linear')
    doTweenY('K', 'lineLeft', 0, speedthing, 'linear')
    doTweenY('L', 'lineRight', 0, speedthing, 'linear')
  end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'ByeBye' then
        doTweenY("M", "bigBox", -1300, speedthing, 'linear')
        doTweenY('N', 'CREDITSthing', -1300, speedthing, 'linear')
        doTweenY('O', 'Requestedthing', -1300, speedthing, 'linear')
        doTweenY('P', 'Requested', -1300, speedthing, 'linear')
        doTweenY('Q', 'Coverthing', -1300, speedthing, 'linear')
        doTweenY('R', 'Cover', -1300, speedthing, 'linear')
        doTweenY('S', 'RestOfTheCreditsthing', -1300, speedthing, 'linear')
        doTweenY('T', 'RestOfTheCredits', -1300, speedthing, 'linear')
        doTweenY('W', 'lineLeft', -1300, speedthing, 'linear')
        doTweenY('X', 'lineRight', -1300, speedthing, 'linear')
    end
end
-- Again made by Skry#4271 --

