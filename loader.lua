--[[
░██████╗██╗░░██╗██╗░░░██╗░██████╗██╗░░██╗██╗░██████╗░█████╗░██████╗░██╗██████╗░████████╗██╗░░██╗██╗░░░██╗██████╗░
██╔════╝██║░░██║██║░░░██║██╔════╝██║░░██║██║██╔════╝██╔══██╗██╔══██╗██║██╔══██╗╚══██╔══╝██║░░██║██║░░░██║██╔══██╗
╚█████╗░███████║██║░░░██║╚█████╗░███████║██║╚█████╗░██║░░╚═╝██████╔╝██║██████╔╝░░░██║░░░███████║██║░░░██║██████╦╝
░╚═══██╗██╔══██║██║░░░██║░╚═══██╗██╔══██║██║░╚═══██╗██║░░██╗██╔══██╗██║██╔═══╝░░░░██║░░░██╔══██║██║░░░██║██╔══██╗
██████╔╝██║░░██║╚██████╔╝██████╔╝██║░░██║██║██████╔╝╚█████╔╝██║░░██║██║██║░░░░░░░░██║░░░██║░░██║╚██████╔╝██████╦╝
╚═════╝░╚═╝░░╚═╝░╚═════╝░╚═════╝░╚═╝░░╚═╝╚═╝╚═════╝░░╚════╝░╚═╝░░╚═╝╚═╝╚═╝░░░░░░░░╚═╝░░░╚═╝░░╚═╝░╚═════╝░╚═════╝░]]--
if syn then getgenv().http_request=syn.request elseif SENTINEL_LOADED then getgenv().http_request=request elseif PROTOSMASHER_LOADED then getgenv().http_request=request elseif KRNL_LOADED then getgenv().http_request=request end
 
local function getexploit()
   local exploit =
       (syn and not is_sirhurt_closure and not pebc_execute and "Synapse") or
       (secure_load and "Sentinel") or
       (is_sirhurt_closure and "Sirhurt") or
       (pebc_execute and "ProtoSmasher") or
       (KRNL_LOADED and "Krnl") or
       (WrapGlobal and "WeAreDevs") or
       (isvm and "Proxo") or
       (shadow_env and "Shadow") or
       (jit and "EasyExploits") or
       (getreg()['CalamariLuaEnv'] and "Calamari") or
       (unit and "Unit.Fun") or
       (IS_VIVA_LOADED and "VIVA") or
       (IS_COCO_LOADED and "Coco") or
       ("Undetectable")
 
   return exploit
end
 
warn(getexploit())
 
 
if http_request ~= nil then
    if game.PlaceId == 5490351219 then
        content = http_request({Url="https://raw.githubusercontent.com/Farn2000/ShuShiScript/master/Clicker%20Madness!", Method="GET"}).Body
    elseif game.PlaceId == 3101667897 then
        content = http_request({Url="https://raw.githubusercontent.com/Farn2000/ShuShiScript/master/Legends%20Of%20Speed", Method="GET"}).Body
    elseif game.PlaceId == 5709572883 then
        content = http_request({Url="https://raw.githubusercontent.com/Farn2000/ShuShiScript/master/Lift%20Legends%20Simulator", Method="GET"}).Body
    elseif game.PlaceId == 1499872953 then
        content = http_request({Url="https://raw.githubusercontent.com/Farn2000/ShuShiScript/master/Boku%20No%20Roblox_%20Remastered", Method="GET"}).Body
    elseif game.PlaceId == 5486962185 then
        content = http_request({Url="https://raw.githubusercontent.com/Farn2000/ShuShiScript/master/Tapping%20Heroes", Method="GET"}).Body
    elseif game.PlaceId == 5455854502 then
        content = http_request({Url="https://raw.githubusercontent.com/Farn2000/ShuShiScript/master/OnePunchReborn", Method="GET"}).Body
    elseif game.PlaceId == 4634780456 then
        content = http_request({Url="https://raw.githubusercontent.com/Farn2000/ShuShiScript/master/PepperClickers", Method="GET"}).Body
    elseif game.PlaceId == 3400631762 then
        content = http_request({Url="https://raw.githubusercontent.com/Farn2000/ShuShiScript/master/JoJoBlox", Method="GET"}).Body
    elseif game.PlaceId == 5827078246 then
        content = http_request({Url="https://raw.githubusercontent.com/Farn2000/ShuShiScript/master/CoinsHeroSimulator", Method="GET"}).Body
    elseif game.PlaceId == 2512643572 then
        content = http_request({Url="https://raw.githubusercontent.com/Farn2000/ShuShiScript/master/Bubble%20Gum%20Simulator", Method="GET"}).Body
   elseif game.PlaceId == 4616652839 then
        content = http_request({Url="https://raw.githubusercontent.com/Farn2000/ShuShiScript/master/Shindo%20Life", Method="GET"}).Body
   elseif game.PlaceId == 4934471106 then
        content = http_request({Url="https://raw.githubusercontent.com/Farn2000/ShuShiScript/master/My%20Hero%20Mania", Method="GET"}).Body
   elseif game.PlaceId == 3237168 then
        content = http_request({Url="https://raw.githubusercontent.com/Farn2000/ShuShiScript/master/One%20Piece%20Legendary", Method="GET"}).Body
   elseif game.PlaceId == 4520749081 then
        content = http_request({Url="https://raw.githubusercontent.com/Farn2000/ShuShiScript/master/King%20Piece", Method="GET"}).Body
    else
        warn("Not Support This Game!!!")
    end
else
    while true do end
end
loadstring(content)()
 
