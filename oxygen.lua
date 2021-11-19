Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)






--EVENT OXYGEN MASK
RegisterNetEvent('omer_diving:oxygen_mask')
AddEventHandler('omer_diving:oxygen_mask', function()
	local playerPed  = GetPlayerPed(-1)
	local coords     = GetEntityCoords(playerPed)
	local boneIndex  = GetPedBoneIndex(playerPed, 12844)
	local boneIndex2 = GetPedBoneIndex(playerPed, 24818)
	
	ESX.Game.SpawnObject('p_s_scuba_mask_s', {
		x = coords.x,
		y = coords.y,
		z = coords.z - 3
	}, function(object)
		ESX.Game.SpawnObject('p_s_scuba_tank_s', {
			x = coords.x,
			y = coords.y,
			z = coords.z - 3
		}, function(object2)
			AttachEntityToEntity(object2, playerPed, boneIndex2, -0.30, -0.22, 0.0, 0.0, 90.0, 180.0, true, true, false, true, 1, true)
			AttachEntityToEntity(object, playerPed, boneIndex, 0.0, 0.0, 0.0, 0.0, 90.0, 180.0, true, true, false, true, 1, true)
			SetPedDiesInWater(playerPed, false)
			
            ESX.ShowNotification('You put on the diving mask & secure the oxygen tank. Oxygen level: ~g~100%~w~')
			Citizen.Wait(100000)
            ESX.ShowNotification('Remaining ~b~oxygen~y~ in the tank: ~w~50%')
			Citizen.Wait(85000)
            ESX.ShowNotification('Remaining ~b~oxygen~y~ in the tank: ~w~25%')
			Citizen.Wait(150000)
            ESX.ShowNotification('Remaining ~b~oxygen~y~ in the tank: ~w~5%')
            Citizen.Wait(30000)
            ESX.ShowNotification('Oxygen has ended.')
			Citizen.Wait(1000)
			
			SetPedDiesInWater(playerPed, true)
			DeleteObject(object)
			DeleteObject(object2)
			ClearPedSecondaryTask(playerPed)
		end)
	end)
end)
-- End of Oxygen Mask
