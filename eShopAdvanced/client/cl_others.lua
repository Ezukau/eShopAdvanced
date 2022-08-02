-- Blips

Citizen.CreateThread(function()
    for k, v in pairs(Config.Shops) do
        local blip = AddBlipForCoord(v.Caisse)

        SetBlipSprite(blip, Config.BlipId)
        SetBlipScale (blip, Config.BlipTaille)
        SetBlipColour(blip, Config.BlipCouleur)
        SetBlipAsShortRange(blip, Config.BlipRange)

        BeginTextCommandSetBlipName('STRING')
        AddTextComponentSubstringPlayerName(Config.BlipName)
        EndTextCommandSetBlipName(blip)
    end
end)

Citizen.CreateThread(function()
    for k,v in pairs(Config.Shops) do
        local HashPedCaissier = GetHashKey('mp_m_shopkeep_01')
        while not HasModelLoaded(HashPedCaissier) do
        RequestModel(HashPedCaissier)
        Wait(20)
        end

        PedCaissier = CreatePed("PED_TYPE_CIVMALE", HashPedCaissier, v.Ped, false, true)
        SetBlockingOfNonTemporaryEvents(PedCaissier, true)
        FreezeEntityPosition(PedCaissier, true)
        SetEntityInvincible(PedCaissier, true)
    end
end)

--- Ezukau#1144 