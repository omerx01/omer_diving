ESX = nil
local Licenses  = {}
--Make peds face playerped
Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
	ESX.Game.MakeEntityFaceEntity = function(entity1, entity2)
		local p1 = GetEntityCoords(entity1, true)
		local p2 = GetEntityCoords(entity2, true)
	
		local dx = p2.x - p1.x
		local dy = p2.y - p1.y
	
		local heading = GetHeadingFromVector_2d(dx, dy)
		SetEntityHeading( entity1, heading )
	end
end)

--Add as many sellpoints as you wish
local shopnpc = {
    {x =-1711.07, y = -1111.0, z = 13.15},

}

--Function to spawn shopnpc
function spawnshopnpc()
	Citizen.CreateThread(function()
		local sleep = 1000
		local ped = GetHashKey("s_m_m_linecook")
		RequestModel(ped)
		while not HasModelLoaded(ped) do 
			Citizen.Wait(1)
		end
		for k,v in pairs(shopnpc) do
			shop = CreatePed(4, ped, v.x, v.y, v.z, 78.20, false, true)
			local npc = GetEntityCoords(shop)
			local playerped = GetEntityCoords(PlayerPedId())
			local dist = #(npc - playerped)
			SetEntityInvincible(shop, true)
			PlaceObjectOnGroundProperly(shop)
			TaskSetBlockingOfNonTemporaryEvents(shop, true)
			Citizen.Wait(1000)
			FreezeEntityPosition(shop, true)
			while true do
				Citizen.Wait(50)
				playerped = GetEntityCoords(PlayerPedId())
				dist = #(npc - playerped)
				if dist < 5 then
					ESX.Game.MakeEntityFaceEntity(shop, PlayerPedId())
				else
					Citizen.Wait(sleep)
				end
			end
		end
	end)
end

RMenu.Add('diving', 'main', RageUI.CreateMenu("Pawnshop", "~y~Sell items", 10, 80))

--Shop sell 
CreateThread(function()
	while true do
	RageUI.IsVisible(RMenu:Get('diving', 'main'), true, true, true, function()   

    RageUI.ButtonWithStyle("Sell items", nil, {RightLabel = "→→→"}, true, function(Hovered, Active, Selected)
    if (Selected) then
		TriggerServerEvent("diving-omer:sell", source)
	end
end)

end, function()
end)


Citizen.Wait(0)
end
end)


--Store stuff 
Citizen.CreateThread(function()
	while true do
	Citizen.Wait(5)
	local playerped = GetEntityCoords(PlayerPedId())
	local dist = #(vector3(-1711.07, -1111.0, 13.15) - playerped)
	local x,y,z = -1711.07, -1111.0, 13.15
	local w = 1000
        if dist < 5 then
            Draw3DText2(x, y, z + 0.5, "[~y~E~w~] Sell your items")
            if IsControlJustPressed(0, 38) then
				RageUI.Visible(RMenu:Get('diving', 'main'), not RageUI.Visible(RMenu:Get('diving', 'main')))
            end
        else
            Citizen.Wait(w)
        end
	end
end)



--Blip and npc stuff
Citizen.CreateThread(function()
	spawnshopnpc()
    sellblip = AddBlipForCoord(-1711.07, -1111.0, 13.15)
	SetBlipSprite(sellblip, 278)
	SetBlipColour(sellblip, 42)
	SetBlipScale(sellblip, 1.5)
	SetBlipAsShortRange(sellblip, true)
	BeginTextCommandSetBlipName('STRING')
	AddTextComponentString('Pawnshop') -- set blip's "name"
	EndTextCommandSetBlipName(sellblip)
end)

--3D text stuff
function Draw3DText2(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    
    SetTextScale(0.35, 0.35)
    SetTextFont(8)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
	SetTextEdge(1, 0, 0, 0, 255)
	SetTextDropshadow(0, 0, 0, 0, 255)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
	SetTextOutline()

    DrawText(_x,_y)
    local factor = (string.len(text)) / 370
end