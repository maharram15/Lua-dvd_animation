local sx,sy = guiGetScreenSize()
local x = 400
local y = 100
local speed1 = 10
local speed2 = 10
function colors()
    r = math.random(1,255)
    g = math.random(1,255)
    b = math.random(1,255)
end
addEventHandler("onClientRender", root, function()
showChat(false)
x = x + speed1
y = y + speed2
if(x + 240 == sx) then 
    speed1 = speed1 * -1
    colors()
elseif(x == 0) then 
    speed1 = speed1 * -1
    colors()
end

if(y + 130 == sy or y == 0) then 
    speed2 = speed2 * -1
    colors()
end 
dxDrawRectangle(0,0,sx,sy, tocolor(0,0,0))
dxDrawImage(x,y,250,130, "file/dvd.png",0,0,0, tocolor(r,g,b))

end)