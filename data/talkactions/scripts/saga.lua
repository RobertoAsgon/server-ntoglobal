local transform = {

-- Naruto
[1] = {[1] = 1508, [2] = 1507, [3] = 951, [4] = 952, [5] = 92, [6] = 954, [7] = 955, [8] = 1357,  effect = 600},
-- Sasuke
[2] = {[1] = 2, [2] = 5, [3] = 6, [4] = 7, [5] = 93, [6] = 94, [7] = 165, [8] = 168, effect = 443},
-- Sakura
[3] = {[1] = 175, [2] = 173, [3] = 172, [4] = 169, [5] = 170, [6] = 194, [7] = 978, [8] = 979, effect = 5},
-- Lee
[4] = {[1] = 83, [2] = 78, [3] = 80, [4] = 190, [5] = 497, [6] = 191, [7] = 192, [8] = 193, effect = 617},
-- Neji
[5] = {[1] = 101, [2] = 104, [3] = 105, [4] = 108, [5] = 488, [6] = 489, [7] = 962, [8] = 963, effect = 513},
-- Tenten
[6] = {[1] = 308, [2] = 309, [3] = 310, [4] = 311, [5] = 313, [6] = 316, [7] = 980, [8] = 981, effect = 620},
-- Gaara
[7] = {[1] = 52, [2] = 53, [3] = 67, [4] = 72, [5] = 58, [6] = 61, [7] = 970, [8] = 971, effect = 142},
-- Kiba
[8] = {[1] = 50, [2] = 69, [3] = 70, [4] = 196, [5] = 198, [6] = 199, [7] = 200, [8] = 1031, effect = 23},
-- Shikamaru
[9] = {[1] = 425, [2] = 424, [3] = 426, [4] = 427, [5] = 431, [6] = 512, [7] = 1020, [8] = 1021, effect = 196},
-- Chouji
[10] = {[1] = 433, [2] = 440, [3] = 441, [4] = 1439, [5] = 1438, [6] = 1437, [7] = 1436, [8] = 1435, effect = 593},
-- Hashirama
[11] = {[1] = 750, [2] = 751, [3] = 753, [4] = 754, [5] = 1465, [6] = 1468, [7] = 1470, [8] = 1561, effect = 386},
-- Tobirama
[12] = {[1] = 788, [2] = 789, [3] = 792, [4] = 795, [5] = 1522, [6] = 1524, [7] = 1525, [8] = 1526, effect = 397},
-- Hiruzen
[13] = {[1] = 1190, [2] = 1191, [3] = 1192, [4] = 1193, [5] = 1195, [6] = 1197, [7] = 1200, [8] = 1201, effect = 591},
-- Minato
[14] = {[1] = 560, [2] = 562, [3] = 563, [4] = 564, [5] = 565, [6] = 709, [7] = 998, [8] = 999, effect = 589},
-- Tsunade
[15] = {[1] = 586, [2] = 587, [3] = 588, [4] = 592, [5] = 594, [6] = 1622, [7] = 1624, [8] = 1627, effect = 622},
-- Kakashi
[16] = {[1] = 9, [2] = 10, [3] = 11, [4] = 12, [5] = 14, [6] = 1537, [7] = 1540, [8] = 1541, effect = 607},
-- Madara
[17] = {[1] = 476, [2] = 477, [3] = 481, [4] = 1460, [5] = 1463, [6] = 1501, [7] = 1504, [8] = 1207, effect = 592},
-- Hidan
[18] = {[1] = 528, [2] = 529, [3] = 530, [4] = 531, [5] = 539, [6] = 540, [7] = 547, [8] = 550, effect = 0},
-- Obito
[19] = {[1] = 1566, [2] = 1569, [3] = 1571, [4] = 1572, [5] = 1573, [6] = 1575, [7] = 1576, [8] = 1577, effect = 608},
-- Killer Bee
[20] = {[1] = 732, [2] = 733, [3] = 735, [4] = 736, [5] = 739, [6] = 740, [7] = 741, [8] = 742, effect = 607},
-- Kisame
[21] = {[1] = 551, [2] = 552, [3] = 553, [4] = 554, [5] = 556, [6] = 557, [7] = 558, [8] = 1611, effect = 622},
-- Konan
[22] = {[1] = 1614, [2] = 1615, [3] = 1616, [4] = 846, [5] = 847, [6] = 1619, [7] = 1620, [8] = 1024, effect = 620},
-- Temari
[23] = {[1] = 578, [2] = 579, [3] = 580, [4] = 581, [5] = 582, [6] = 585, [7] = 992, [8] = 993, effect = 597},
}


local level = 50 -- Limite para liberar uma transform nova


function onSay(cid, words, param, channel)


 if(param == '') then
  doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "[Saga] Informe o número da saga Ex : !saga 2")
  return true
 end


if not transform[getPlayerVocation(cid)] then
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Você não pode trocar de saga agora.")
return true
end


local t = string.explode(param, ",")


 if(t[2]) then
  doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Comando não identificado.")
  return true
 end


 if not (tonumber(t[1])) then
  doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "[Saga] Informe o número da saga Ex : !saga 2")
  return true
 end


if tonumber(t[1]) > #transform[getPlayerVocation(cid)] or tonumber(t[1]) < 1  then
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "[Erro] Essa saga não existe.")
return true
end


if getPlayerLevel(cid) >= (tonumber(t[1])*level) then
doSetCreatureOutfit(cid, {lookType = transform[getPlayerVocation(cid)][tonumber(t[1])]}, -1)
doSendMagicEffect(getThingPos(cid), transform[getPlayerVocation(cid)].effect)
doPlayerSendTextMessage(cid, 25, "Parabéns, Você alterou sua saga !")
doPlayerSay(cid, "Aaahhh !", TALKTYPE_ORANGE_1)
else
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "[Aviso] Desculpe mas você precisa estar no level "..(tonumber(t[1]) * level).." para usar essa saga.")
end


return true
end