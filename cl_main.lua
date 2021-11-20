ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


Citizen.CreateThread(function()

     while true do

     Citizen.Wait(1)
       local ped = PlayerPedId()
	local playerPed = PlayerPedId()
       local mycords = GetEntityCoords(ped)
      for _, locations in pairs(Config.loot) do
      if GetDistanceBetweenCoords(mycords, locations, true) < Config.distance then
       DrawText3Ds(locations.x, locations.y, locations.z, Config.text) 
       if IsControlJustReleased(0,38) then
       
       FreezeEntityPosition(playerPed, true)
	TaskStartScenarioInPlace(playerPed, 'WORLD_HUMAN_WELDING', 0, true)
	Citizen.Wait(10000)

	ClearPedTasksImmediately(playerPed)
       TriggerServerEvent('lootmoney')
       FreezeEntityPosition(playerPed, false)
	Citizen.Wait(Config.cooldown)
end
end
end
end
end)

Citizen.CreateThread(function()

     while true do

     Citizen.Wait(5)
       local ped = PlayerPedId()
	local playerPed = PlayerPedId()
       local mycords = GetEntityCoords(ped)
      for _, locations in pairs(Config.loot2) do
      if GetDistanceBetweenCoords(mycords, locations, true) < Config.distance then
       DrawText3Ds(locations.x, locations.y, locations.z, Config.text) 
       if IsControlJustReleased(0,38) then

       FreezeEntityPosition(playerPed, true)
	TaskStartScenarioInPlace(playerPed, 'WORLD_HUMAN_WELDING', 0, true)
	Citizen.Wait(10000)

	ClearPedTasksImmediately(playerPed)
       TriggerServerEvent('lootcoral')
       FreezeEntityPosition(playerPed, false)
	Citizen.Wait(Config.cooldown)
end
end
end
end
end)

Citizen.CreateThread(function()

     while true do

     Citizen.Wait(5)
       local ped = PlayerPedId()
	local playerPed = PlayerPedId()
       local mycords = GetEntityCoords(ped)
      for _, locations in pairs(Config.loot3) do
      if GetDistanceBetweenCoords(mycords, locations, true) < Config.distance then
       DrawText3Ds(locations.x, locations.y, locations.z, Config.text) 
       if IsControlJustReleased(0,38) then

       FreezeEntityPosition(playerPed, true)
	TaskStartScenarioInPlace(playerPed, 'WORLD_HUMAN_WELDING', 0, true)
	Citizen.Wait(10000)

	ClearPedTasksImmediately(playerPed)
       TriggerServerEvent('lootcoral')
       FreezeEntityPosition(playerPed, false)
	Citizen.Wait(Config.cooldown)
end
end
end
end
end)

Citizen.CreateThread(function()

     while true do

     Citizen.Wait(5)
       local ped = PlayerPedId()
	local playerPed = PlayerPedId()
       local mycords = GetEntityCoords(ped)
      for _, locations in pairs(Config.loot4) do
      if GetDistanceBetweenCoords(mycords, locations, true) < Config.distance then
       DrawText3Ds(locations.x, locations.y, locations.z, Config.text) 
       if IsControlJustReleased(0,38) then

       FreezeEntityPosition(playerPed, true)
	TaskStartScenarioInPlace(playerPed, 'WORLD_HUMAN_WELDING', 0, true)
	Citizen.Wait(10000)

	ClearPedTasksImmediately(playerPed)
       TriggerServerEvent('lootgold')
       FreezeEntityPosition(playerPed, false)
	Citizen.Wait(Config.cooldown)
end
end
end
end
end)

Citizen.CreateThread(function()

     while true do

     Citizen.Wait(5)
       local ped = PlayerPedId()
	local playerPed = PlayerPedId()
       local mycords = GetEntityCoords(ped)
      for _, locations in pairs(Config.loot5) do
      if GetDistanceBetweenCoords(mycords, locations, true) < Config.distance then
       DrawText3Ds(locations.x, locations.y, locations.z, Config.text) 
       if IsControlJustReleased(0,38) then

       FreezeEntityPosition(playerPed, true)
	TaskStartScenarioInPlace(playerPed, 'WORLD_HUMAN_WELDING', 0, true)
	Citizen.Wait(10000)

	ClearPedTasksImmediately(playerPed)
       TriggerServerEvent('lootsilver')
       FreezeEntityPosition(playerPed, false)
	Citizen.Wait(Config.cooldown)
end
end
end
end
end)

Citizen.CreateThread(function()

     while true do

     Citizen.Wait(5)
       local ped = PlayerPedId()
	local playerPed = PlayerPedId()
       local mycords = GetEntityCoords(ped)
      for _, locations in pairs(Config.loot6) do
      if GetDistanceBetweenCoords(mycords, locations, true) < Config.distance then
       DrawText3Ds(locations.x, locations.y, locations.z, Config.text) 
       if IsControlJustReleased(0,38) then

       FreezeEntityPosition(playerPed, true)
	TaskStartScenarioInPlace(playerPed, 'WORLD_HUMAN_WELDING', 0, true)
	Citizen.Wait(10000)

	ClearPedTasksImmediately(playerPed)
       TriggerServerEvent('lootcoral')
       FreezeEntityPosition(playerPed, false)
	Citizen.Wait(Config.cooldown)
end
end
end
end
end)

Citizen.CreateThread(function()

     while true do

     Citizen.Wait(5)
       local ped = PlayerPedId()
	local playerPed = PlayerPedId()
       local mycords = GetEntityCoords(ped)
      for _, locations in pairs(Config.loot7) do
      if GetDistanceBetweenCoords(mycords, locations, true) < Config.distance then
       DrawText3Ds(locations.x, locations.y, locations.z, Config.text) 
       if IsControlJustReleased(0,38) then

       FreezeEntityPosition(playerPed, true)
	TaskStartScenarioInPlace(playerPed, 'WORLD_HUMAN_WELDING', 0, true)
	Citizen.Wait(10000)

	ClearPedTasksImmediately(playerPed)
       TriggerServerEvent('lootsilver')
       FreezeEntityPosition(playerPed, false)
	Citizen.Wait(Config.cooldown)
end
end
end
end
end)

Citizen.CreateThread(function()

     while true do

     Citizen.Wait(5)
       local ped = PlayerPedId()
	local playerPed = PlayerPedId()
       local mycords = GetEntityCoords(ped)
      for _, locations in pairs(Config.loot8) do
      if GetDistanceBetweenCoords(mycords, locations, true) < Config.distance then
       DrawText3Ds(locations.x, locations.y, locations.z, Config.text) 
       if IsControlJustReleased(0,38) then

       FreezeEntityPosition(playerPed, true)
	TaskStartScenarioInPlace(playerPed, 'WORLD_HUMAN_WELDING', 0, true)
	Citizen.Wait(10000)

	ClearPedTasksImmediately(playerPed)
       TriggerServerEvent('lootmoney')
       FreezeEntityPosition(playerPed, false)
	Citizen.Wait(Config.cooldown)
end
end
end
end
end)

Citizen.CreateThread(function()

     while true do

     Citizen.Wait(5)
       local ped = PlayerPedId()
       local playerPed = PlayerPedId()
       local mycords = GetEntityCoords(ped)
      for _, locations in pairs(Config.loot9) do
      if GetDistanceBetweenCoords(mycords, locations, true) < Config.distance then
       DrawText3Ds(locations.x, locations.y, locations.z, Config.text) 
       if IsControlJustReleased(0,38) then

       FreezeEntityPosition(playerPed, true)
	TaskStartScenarioInPlace(playerPed, 'WORLD_HUMAN_WELDING', 0, true)
	Citizen.Wait(10000)

	ClearPedTasksImmediately(playerPed)
       TriggerServerEvent('lootchest')
       FreezeEntityPosition(playerPed, false)
	Citizen.Wait(Config.cooldown)
end
end
end
end
end)

Citizen.CreateThread(function()

     while true do

     Citizen.Wait(5)
       local ped = PlayerPedId()
	local playerPed = PlayerPedId()
       local mycords = GetEntityCoords(ped)
      for _, locations in pairs(Config.loot10) do
      if GetDistanceBetweenCoords(mycords, locations, true) < Config.distance then
       DrawText3Ds(locations.x, locations.y, locations.z, Config.text) 
       if IsControlJustReleased(0,38) then

       FreezeEntityPosition(playerPed, true)
	TaskStartScenarioInPlace(playerPed, 'WORLD_HUMAN_WELDING', 0, true)
	Citizen.Wait(10000)

	ClearPedTasksImmediately(playerPed)
       TriggerServerEvent('lootchest')
       FreezeEntityPosition(playerPed, false)
	Citizen.Wait(Config.cooldown)
end
end
end
end
end)




Citizen.CreateThread(function()
	local nbObjetsCrees = 0
	while nbObjetsCrees < 1 do
        for _, locations in pairs(Config.loot) do
        local loot = CreateObject(Config.object, locations.x, locations.y, locations.z, false, false, false)
        PlaceObjectOnGroundProperly(loot)
		nbObjetsCrees = nbObjetsCrees + 1
		
	end
end
end)

Citizen.CreateThread(function()
	local nbObjetsCrees = 0
	while nbObjetsCrees < 1 do
       for _, locations in pairs(Config.loot2) do
       local loot = CreateObject(Config.object, locations.x, locations.y, locations.z, false, false, false)
        PlaceObjectOnGroundProperly(loot)
		nbObjetsCrees = nbObjetsCrees + 1
		
	end
end
end)
Citizen.CreateThread(function()
	local nbObjetsCrees = 0
	while nbObjetsCrees < 1 do
       for _, locations in pairs(Config.loot3) do
       local loot = CreateObject(Config.object, locations.x, locations.y, locations.z, false, false, false)
        PlaceObjectOnGroundProperly(loot)
		nbObjetsCrees = nbObjetsCrees + 1
		
	end
end
end)
Citizen.CreateThread(function()
	local nbObjetsCrees = 0
	while nbObjetsCrees < 1 do
       for _, locations in pairs(Config.loot4) do
       local loot = CreateObject(Config.object, locations.x, locations.y, locations.z, false, false, false)
        PlaceObjectOnGroundProperly(loot)
		nbObjetsCrees = nbObjetsCrees + 1
		
	end
end
end)
Citizen.CreateThread(function()
	local nbObjetsCrees = 0
	while nbObjetsCrees < 1 do
       for _, locations in pairs(Config.loot5) do
       local loot = CreateObject(Config.object, locations.x, locations.y, locations.z, false, false, false)
        PlaceObjectOnGroundProperly(loot)
		nbObjetsCrees = nbObjetsCrees + 1
		
	end
end
end)
Citizen.CreateThread(function()
	local nbObjetsCrees = 0
	while nbObjetsCrees < 1 do
       for _, locations in pairs(Config.loot6) do
       local loot = CreateObject(Config.object, locations.x, locations.y, locations.z, false, false, false)
        PlaceObjectOnGroundProperly(loot)
		nbObjetsCrees = nbObjetsCrees + 1
		
	end
end
end)
Citizen.CreateThread(function()
	local nbObjetsCrees = 0
	while nbObjetsCrees < 1 do
       for _, locations in pairs(Config.loot7) do
       local loot = CreateObject(Config.object, locations.x, locations.y, locations.z, false, false, false)
        PlaceObjectOnGroundProperly(loot)
		nbObjetsCrees = nbObjetsCrees + 1
		
	end
end
end)
Citizen.CreateThread(function()
	local nbObjetsCrees = 0
	while nbObjetsCrees < 1 do
       for _, locations in pairs(Config.loot8) do
       local loot = CreateObject(Config.object, locations.x, locations.y, locations.z, false, false, false)
        PlaceObjectOnGroundProperly(loot)
		nbObjetsCrees = nbObjetsCrees + 1
		
	end
end
end)
Citizen.CreateThread(function()
	local nbObjetsCrees = 0
	while nbObjetsCrees < 1 do
       for _, locations in pairs(Config.loot9) do
       local loot = CreateObject(Config.object, locations.x, locations.y, locations.z, false, false, false)
        PlaceObjectOnGroundProperly(loot)
		nbObjetsCrees = nbObjetsCrees + 1
		
	end
end
end)
Citizen.CreateThread(function()
	local nbObjetsCrees = 0
	while nbObjetsCrees < 1 do
       for _, locations in pairs(Config.loot10) do
       local loot = CreateObject(Config.object, locations.x, locations.y, locations.z, false, false, false)
        PlaceObjectOnGroundProperly(loot)
		nbObjetsCrees = nbObjetsCrees + 1
		
	end
end
end)

function DrawText3Ds(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    SetTextScale(0.30, 0.30)
    SetTextFont(22)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 255)
    SetTextEntry("STRING")
    SetTextCentre(1)
    SetTextDropshadow(0, 0, 0, 0, 255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextOutline()
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 370

end