   function Sell(current_shop)
        local ped = PlayerPedId()
        local coords = GetEntityCoords(ped)
        local holding = Citizen.InvokeNative(0xD806CD2A4F2C2996, ped) -- ISPEDHOLDING
        local quality = Citizen.InvokeNative(0x31FEF6A20F00B963, holding)
        local model = GetEntityModel(holding)
        local pedtype = GetPedType(holding)
        --print(quality, model, pedtype)
        if holding ~= false then
            for i, row in pairs(Animal) do
                if model == Animal[i]["model"] then
                            entity = holding
                                local endpiece = shops[current_shop]["gain"] * Animal[i]["reward"]
                                --DetachEntity(entity, 1, 1)
                                Wait(500)
                                SetEntityAsMissionEntity(entity, true, true)
                                Wait(500)
                                DeleteEntity(entity)
                                Wait(10)
                                TriggerServerEvent("hunting:add", Animal[i]["item"])
                                TriggerServerEvent("hunting:money", endpiece)
                                TriggerServerEvent("hunting:xp", endpiece)
                                TriggerEvent("redemrp_notification:start", "You sold your "..Animal[i]["name"], 2, "success")
                                Wait(500)
                                if holding == 0 then
                                    print("sold carcass")
                                else
                                    print("Something went wrong")
                                end
                       
                 
                elseif quality == Animal[i]["poor"] then
                            entity = holding
                                local endpiece = shops[current_shop]["gain"] * Animal[i]["reward"]
                                --DetachEntity(entity, 1, 1)
                                Wait(500)
                                SetEntityAsMissionEntity(entity, true, true)
                                Wait(500)
                                DeleteEntity(entity)
                                Wait(10)
                                TriggerServerEvent("hunting:money", endpiece)
                                TriggerServerEvent("hunting:xp", endpiece)
                                TriggerEvent("redemrp_notification:start", "You sold your poor "..Animal[i]["name"].." pelt", 2, "success")
                                Wait(500)
                                if holding == 0 then
                                    print("sold Hide")
                                else
                                    print("Something went wrong")
                                end
           
                elseif quality == Animal[i]["good"] then
     
                            entity = holding
                            if IsControlPressed(0, 0x760A9C6F) then
                                local endpiece = shops[a]["gain"] * Animal[i]["reward"]
                                --DetachEntity(entity, 1, 1)
                                Wait(500)
                                SetEntityAsMissionEntity(entity, true, true)
                                Wait(500)
                                DeleteEntity(entity)
                                Wait(10)
                                TriggerServerEvent("hunting:money", endpiece)
                                TriggerServerEvent("hunting:xp", endpiece)
                                TriggerServerEvent("hunting:money", endpiece)
                                TriggerServerEvent("hunting:xp", endpiece)
                                TriggerEvent("redemrp_notification:start", "You sold your good "..Animal[i]["name"].." pelt", 2, "success")
                                Wait(500)
                                if holding == 0 then
                                    print("sold Hide")
                                else
                                    print("Something went wrong")
                                end
                 
                elseif quality == Animal[i]["perfect"] then
         
                            entity = holding
                            if IsControlPressed(0, 0x760A9C6F) then
                                local endpiece = shops[a]["gain"] * Animal[i]["reward"]
                                --DetachEntity(entity, 1, 1)
                                Wait(500)
                                SetEntityAsMissionEntity(entity, true, true)
                                Wait(500)
                                DeleteEntity(entity)
                                Wait(10)
                                TriggerServerEvent("hunting:money", endpiece)
                                TriggerServerEvent("hunting:xp", endpiece)
                                TriggerServerEvent("hunting:money", endpiece)
                                TriggerServerEvent("hunting:xp", endpiece)
                                TriggerServerEvent("hunting:money", endpiece)
                                TriggerServerEvent("hunting:xp", endpiece)
                                TriggerEvent("redemrp_notification:start", "You sold your perfect "..Animal[i]["name"].." pelt", 2, "success")
                                Wait(500)
                                if holding == 0 then
                                    print("sold Hide")
                                else
                                    print("Something went wrong")
                                end
           
                end
            end
        elseif holding == false then
            -------------------
            Wait(50)
        end
    end

RegisterNetEvent("hunting:showprompt")
AddEventHandler("hunting:showprompt", function(msg)
    SetTextScale(0.5, 0.5)
    local str = Citizen.InvokeNative(0xFA925AC00EB830B9, 10, "LITERAL_STRING", msg, Citizen.ResultAsLong())
    Citizen.InvokeNative(0xFA233F8FE190514C, str)
    Citizen.InvokeNative(0xE9990552DEC71600)
end)
  

  --SNIPPET FROM CRYPTOGENICS, HOW I BUILT IT--
--[[Citizen.CreateThread(function()
    Wait(500)
    while true do
        Wait(100)
        local entity = Citizen.InvokeNative(0xD806CD2A4F2C2996, PlayerPedId())
        local model = GetEntityModel(entity)
        local carriedEntityHash = Citizen.InvokeNative(0x31FEF6A20F00B963, entity)
        local type = GetPedType(entity)
            if type == 28 then
                print(" ")
                print("Carcass Model")
                print(model)
        else
            print(" ")
            print("Not holding carcass")
        end
        if carriedEntityHash then
            print(" ")
            print("Pelt Model")
            print(carriedEntityHash)
        elseif carriedEntityHash == nil then
            print(" ")
            print("Not holding Provision")
            Wait(1000)
        end
    end
end)]]--
