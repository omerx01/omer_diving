Config = {}

--Coordinates
Config.loot = {
	vector3(3192.51, -377.45, -15.38), --1
}
Config.loot2 = {
	vector3(3151.06, -362.9, -24.38), --2
}
Config.loot3 = {
	vector3(3135.69, -232.01, -24.38), --3
}
Config.loot4 = {
	vector3(3146.46, -416.23, -16.38), --4
}

Config.loot5 = {
	vector3(3091.69, -395.74, -7.24), --5
}
Config.loot6 = {
	vector3(3199.04, -374.96, -33.24), --6
}
Config.loot7 = {
	vector3(3111.56, -482.95, -44.24), --7
}
Config.loot8 = {
	vector3(3016.44, -363.72, -13.24), --8
}
Config.loot9 = {
	vector3(3150.87, -273.96, -8.24), --9
}
Config.loot10 = {
	vector3(3171.85, -317.71, -13.24), --10
}

Config.Minichest = {
    'hackerDevice',

}

--The object name
Config.object = "xm_prop_x17_chest_closed"

--How far would player see the text of the treasure chest (in coords)
Config.distance = 2

--Messages and text
Config.text = "Treasure chest [~y~E~w~]"

--Cooldown for every loot
Config.cooldown = 600000 --60000Miliseconds - 10Minutes


--Money
Config.money = math.random(3000, 6000)

-- Items list
Config.items = 'silver'
Config.items2 = 'minichest'
Config.items3 = 'goldsilver'
Config.items4 = 'coral'



--SELL SHOP
Config.sellitemprices = { --You can add here other items
  silver = 600,
  minichest = 600,
  goldsilver = 800,
  coral = 120,

}
