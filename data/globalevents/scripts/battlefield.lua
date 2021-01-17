function onSay(cid, words, param)
    if(param == '') then
        return doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "/battlefield players"), TRUE
    end
    if (tonumber(param) %2 == 0) then
        local tp = doCreateItem(1387, 1, _Lib_Battle_Info.tpPos)
        doItemSetAttribute(tp, "aid", 45000)
        CheckEvent(_Lib_Battle_Info.limit_Time)
        doBroadcastMessage("The event BattleField was opened. We are waiting "..param.." Players! Team divided into "..((param)/2).." VS "..((param)/2)..".")
        return setGlobalStorageValue(_Lib_Battle_Info.storage_count, param)
    end
    return TRUE
end