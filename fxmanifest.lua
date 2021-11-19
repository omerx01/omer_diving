fx_version 'cerulean'

game 'gta5'

client_scripts {
    "src/RMenu.lua",
    "src/menu/RageUI.lua",
    "src/menu/Menu.lua",
    "src/menu/MenuController.lua",
    "src/components/*.lua",
    "src/menu/elements/*.lua",
    "src/menu/items/*.lua",
    "src/menu/panels/*.lua",
    "src/menu/panels/*.lua",
    "src/menu/windows/*.lua",
}

client_scripts{
    'cl_main.lua',
    'ob-blips.lua',
    'ob-shops.lua',
    'oxygen.lua',
    'config.lua',
}

server_scripts{
    'sv_main.lua',
    'config.lua',
}