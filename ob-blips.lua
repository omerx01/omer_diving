local blips = {

     {title="Diving Area", colour=0, id=568, x = 3158.36, y = -306.57, z = -16.38},

  }
      
Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      zoneblip = AddBlipForRadius(3158.36,-306.57,-16.38, 250.0)
      SetBlipColour(zoneblip, 26)
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 0.8)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)


