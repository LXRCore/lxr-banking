local banks
local showing, playerLoaded = false, false
InBank = false
blips = {}


RegisterNetEvent('lxr-banking:client:syncBanks')
AddEventHandler('lxr-banking:client:syncBanks', function(data)
    banks = data
    if showing then
        showing = false
    end
end)

function openAccountScreen()
    exports['lxr-core']:TriggerCallback('lxr-banking:getBankingInformation', function(banking)
        if banking ~= nil then
            InBank = true
            SetNuiFocus(true, true)
            SendNUIMessage({
                status = "openbank",
                information = banking
            })

            TriggerEvent("debug", 'Banking: Open UI', 2000, 0, 'hud_textures', 'check')
        end
    end)
end

function atmRefresh()
    exports['lxr-core']:TriggerCallback('lxr-banking:getBankingInformation', function(infor)
        InBank = true
        SetNuiFocus(true, true)
        SendNUIMessage({
            status = "refreshatm",
            information = infor
        })
    end)
end

RegisterNetEvent('lxr-banking:openBankScreen')
AddEventHandler('lxr-banking:openBankScreen', function()
    openAccountScreen()
end)

Citizen.CreateThread(function()
    for banks, v in pairs(Config.BankLocations) do
        exports['lxr-core']:createPrompt(v.name, v.coords, 0xF3830D8E, 'Open ' .. v.name, {
            type = 'client',
            event = 'lxr-banking:openBankScreen',
            args = { false, true, false },
        })
        if v.showblip == true then
            local StoreBlip = N_0x554d9d53f696d002(1664425300, v.coords)
            SetBlipSprite(StoreBlip, -2128054417, 52)
            SetBlipScale(StoreBlip, 0.2)
        end
    end
end)

Citizen.CreateThread(function()
    for k,v in pairs(Config.BankDoors) do
        --for v, door in pairs(k) do
        Citizen.InvokeNative(0xD99229FE93B46286,v,1,1,0,0,0,0)
        Citizen.InvokeNative(0x6BAB9442830C7F53,v,0)
    end
end)


RegisterNetEvent('lxr-banking:transferError')
AddEventHandler('lxr-banking:transferError', function(msg)
    SendNUIMessage({
        status = "transferError",
        error = msg
    })
end)

RegisterNetEvent('lxr-banking:successAlert')
AddEventHandler('lxr-banking:successAlert', function(msg)
    SendNUIMessage({
        status = "successMessage",
        message = msg
    })
end)
