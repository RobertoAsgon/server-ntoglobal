local monstro = "Ashura Otsutsuki" -- nome do monstro
local NPC = "Ashura Otsutsuki" -- nome do NPC
function onKill(cid, target, damage, flags)
	if getCreatureName(target) == monstro then
		doCreateNpc(NPC, getCreaturePosition(target))
		
	end
	if getCreatureName(cid) == monstro then
		local pos = getCreaturePosition(cid)
		doRemoveCreature(cid)
		doCreateNpc(NPC, pos)
	end
	return true
end