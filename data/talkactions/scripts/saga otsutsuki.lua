local config = {
--Naruto
[1] = { {lvl = {1, 1000}, look = 1412, eff = 600},
},
-- Sasuke
[2] = { {lvl = {1, 1000}, look = 1415, eff = 443},
},
--Sakura
[3] = { {lvl = {1, 1000}, look = 1397, eff = 5},
},
--Lee
[4] = { {lvl = {1, 1000}, look = 1411, eff = 617},
},
--Neji
[5] = { {lvl = {1, 1000}, look = 1413, eff = 513},
},
--Tenten
[6] = { {lvl = {1, 1000}, look = 1402, eff = 142},
},
--Gaara
[7] = { {lvl = {1, 1000}, look = 1408, eff = 620},
},
--Kiba
[8] = { {lvl = {1, 1000}, look = 1410, eff = 23},
},
--Shikamaru
[9] = { {lvl = {1, 1000}, look = 1417, eff = 197},
},
--Chouji
[10] = { {lvl = {1, 1000}, look = 1407, eff = 593},
},
--Hashirama
[11] = { {lvl = {1, 1000}, look = 1379, eff = 386},
},
--Tobirama
[12] = { {lvl = {1, 1000}, look = 1403, eff = 397},
},
--Hiruzen
[13] = { {lvl = {1, 1000}, look = 1398, eff = 591},
},
--Minato
[14] = { {lvl = {1, 1000}, look = 1392, eff = 589},
},
--Tsunade
[15] = { {lvl = {1, 1000}, look = 1404, eff = 622},
},
--Kakashi
[16] = { {lvl = {1, 1000}, look = 1409, eff = 607},
},
--Madara
[17] = { {lvl = {1, 1000}, look = 1418, eff = 593},
},
--Hidan
[18] = { {lvl = {1, 1000}, look = 1382, eff = 593},
},
--Obito
[19] = { {lvl = {1, 1000}, look = 1394, eff = 593},
},
--Killer Bee
[20] = { {lvl = {1, 1000}, look = 1380, eff = 593},
},
--Kisame
[21] = { {lvl = {1, 1000}, look = 1390, eff = 593},
},
--Konan
[22] = { {lvl = {1, 1000}, look = 1391, eff = 593},
},
--Temari
[23] = { {lvl = {1, 1000}, look = 1401, eff = 593},
},
--
}
function onSay(cid, words, param, channel)
local verifiq = 89311
local waittime = 10 -- Tempo de exhaustion
local storage = 58124
local from,to = {x=1001, y=705, z=7},{x=1031, y=737, z=7} -- começo e final do mapa
local from2,to2 = {x=1011, y=705, z=6},{x=1031, y=738, z=6} -- começo e final do mapa
local from3,to3 = {x=1012, y=706, z=5},{x=1032, y=739, z=5} -- começo e final do mapa
local from4,to4 = {x=985, y=598, z=7},{x=1044, y=652, z=7} -- começo e final do mapa
local from5,to5 = {x=986, y=615, z=6},{x=1039, y=647, z=7} -- começo e final do mapa
local from6,to6 = {x=990, y=616, z=5},{x=1040, y=647, z=5} -- começo e final do mapa
if isInRange(getCreaturePosition(cid), from, to) or isInRange(getCreaturePosition(cid), from2, to2) or isInRange(getCreaturePosition(cid), from3, to3) or isInRange(getCreaturePosition(cid), from4, to4) or isInRange(getCreaturePosition(cid), from5, to5) or isInRange(getCreaturePosition(cid), from6, to6) then
doPlayerSendCancel(cid, "Não pode usar esse comando aqui.") return true
end

if getPlayerStorageValue(cid, verifiq) < 1 then
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "Você não tem permissão para usar esta saga.")
return false
end

if exhaustion.check(cid, storage) then
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "Já está com a saga atual.")
return false
end
doPlayerSay(cid, "Aaahh")
local voc = config[getPlayerVocation(cid)]
if voc then
for i = 1, #voc do
if getPlayerLevel(cid) >= voc[i].lvl[1] and getPlayerLevel(cid) <= voc[i].lvl[2] then
doPlayerSendTextMessage(cid, MESSAGE_STATUS_WARNING, "Você Transformou!")
exhaustion.set(cid, storage, waittime)
local outfit = {lookType = voc[i].look}
doCreatureChangeOutfit(cid, outfit)
doSendMagicEffect(getCreaturePosition(cid), voc[i].eff)
return true
end
end
doPlayerSendTextMessage(cid, MESSAGE_STATUS_WARNING, "Você precisa de level 25 para usar sua primeira transformação e passar para a proxima saga!")
else
doPlayerSendCancel(cid, "Diga Desbugar para poder transformar !!")
end
return true
end