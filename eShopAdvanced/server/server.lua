ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent("eAdvancedShop:Pay")
AddEventHandler("eAdvancedShop:Pay", function(Panier, PrixTot, bancaire, espece, sale)
    local _src = source
    local xPlayer = ESX.GetPlayerFromId(_src)
    
    if bancaire == true then 
      if xPlayer.getAccount('bank').money >= PrixTot then
        xPlayer.removeAccountMoney('bank', PrixTot)
        TriggerClientEvent('esx:showAdvancedNotification', source, 'Fleeca Bank', 'Virement', 'Paiement accepté d\'un montant de '..PrixTot..'~g~$~s~ !', 'CHAR_BANK_FLEECA', 2)
        for k,v in pairs(Panier) do
          xPlayer.addInventoryItem(v.name, v.number)
        end
      else
        TriggerClientEvent('esx:showAdvancedNotification', source, 'Fleeca Bank', 'Virement', 'Paiement refuser d\'un montant de '..PrixTot..'~g~$~s~ !', 'CHAR_BANK_FLEECA', 2)
      end
      
    elseif espece == true then
      if xPlayer.getMoney() >= PrixTot then
        xPlayer.removeMoney(PrixTot)
        TriggerClientEvent('esx:showAdvancedNotification', source, 'Epicier', 'Apu', 'Et hop '..PrixTot..'~g~$~s~ dans ma caisse, merci et a bientot !', 'CHAR_ORTEGA', 9)
        for k,v in pairs(Panier) do
          xPlayer.addInventoryItem(v.name, v.number)
        end
      else
        TriggerClientEvent('esx:showAdvancedNotification', source, 'Epicier', 'Apu', 'Vous n\'avez pas assez d\'argent, allez retirer !', 'CHAR_ORTEGA', 9)
      end
    elseif sale == true then
      if xPlayer.getAccount('black_money').money >= PrixTot then
        xPlayer.removeAccountMoney('black_money', PrixTot)
        TriggerClientEvent('esx:showAdvancedNotification', source, 'Epicier', 'Apu', 'Et hop '..PrixTot..'~g~$~s~ dans ma caisse, merci et a bientot !', 'CHAR_ORTEGA', 9)
        for k,v in pairs(Panier) do
          xPlayer.addInventoryItem(v.name, v.number)
        end
      else
        TriggerClientEvent('esx:showAdvancedNotification', source, 'Epicier', 'Apu', 'Vous n\'avez pas assez d\'argent, allez retirer !', 'CHAR_ORTEGA', 9)
      end
    end
end)