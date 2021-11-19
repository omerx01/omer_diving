ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


--USABLE ITEMS
ESX.RegisterUsableItem('minichest', function(source)
	local _source = source
         local xPlayer = ESX.GetPlayerFromId(_source)
    local chance = math.random(1, 100)
xPlayer.removeInventoryItem('minichest', 1)
        if chance <= 6 then
        xPlayer.showNotification('~w~You found ~g~Cracker Module')
        xPlayer.addInventoryItem(Config['Minichest'][math.random(#Config['Minichest'])], 1)

    else
        xPlayer.showNotification('~o~You have not found anything')
    end

end)

ESX.RegisterUsableItem('oxygen_mask', function(source)
	TriggerClientEvent('omer_diving:oxygen_mask', source)
	local xPlayer  = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('oxygen_mask', 1)
end)

--END



--EVENT
RegisterServerEvent('lootmoney')
AddEventHandler('lootmoney', function()
    local src = source
    local xPlayer = ESX.GetPlayerFromId(source)
       if xPlayer.getInventoryItem('hammer').count > 0 then

         xPlayer.addMoney(Config.money) 
         xPlayer.showNotification('~o~You found ~g~money')
    else
        xPlayer.showNotification('~r~You do not have Chest Hammer')
    end

    end)

RegisterServerEvent('lootgold')
AddEventHandler('lootgold', function()
    local src = source
    local xPlayer = ESX.GetPlayerFromId(source)
       if xPlayer.getInventoryItem('hammer').count > 0 then

         xPlayer.addInventoryItem(Config.items3, 7)   
         xPlayer.showNotification('~o~You found x7 ~y~Gold Coins~w~ Seller available at pawnshop')
    else
        xPlayer.showNotification('~r~You do not have Chest Hammer')
    end

end)

RegisterServerEvent('lootsilver')
AddEventHandler('lootsilver', function()
    local src = source
    local xPlayer = ESX.GetPlayerFromId(source)
       if xPlayer.getInventoryItem('hammer').count > 0 then

         xPlayer.addInventoryItem(Config.items, 12)   
         xPlayer.showNotification('~o~You found x12 ~m~Silver Coins~w~ Seller available at pawnshop')
    else
        xPlayer.showNotification('~r~You do not have Chest Hammer')
    end

 end)


RegisterServerEvent('lootchest')
AddEventHandler('lootchest', function()
    local src = source
    local xPlayer = ESX.GetPlayerFromId(source)
       if xPlayer.getInventoryItem('hammer').count > 0 then

         xPlayer.addInventoryItem(Config.items2, 1)   
         xPlayer.showNotification('~o~You found ~g~MiniChest~w~ you can use this or sell in pawnshop')
    else
        xPlayer.showNotification('~r~You do not have Chest Hammer')
    end

    end)

RegisterServerEvent('lootcoral')
AddEventHandler('lootcoral', function()
    local src = source
    local xPlayer = ESX.GetPlayerFromId(source)
       if xPlayer.getInventoryItem('hammer').count > 0 then


         xPlayer.addInventoryItem(Config.items4, 1)   
         xPlayer.showNotification('~o~You found ~p~Coral~r~ you can use this or sell in pawnshop!')
    else
        xPlayer.showNotification('~r~You do not have Chest Hammer')
    end

    end)
    
--END



--SHOPS EVENT
RegisterServerEvent('diving-omer:sell')
AddEventHandler('diving-omer:sell', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local name = GetPlayerName(_source)
    for q,p in pairs(Config.sellitemprices) do 
        local item = xPlayer.getInventoryItem(q)
        if item.count >= 1 then
            xPlayer.addMoney(item.count * p)
            xPlayer.removeInventoryItem(q, item.count)
            xPlayer.showNotification('Sold ~b~' ..item.label..  '~s~ for ~g~'..item.count * p ..'$')
        end
    end
end)
--END

