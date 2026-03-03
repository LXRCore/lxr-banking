--[[
    ██╗     ██╗  ██╗██████╗ 
    ██║     ╚██╗██╔╝██╔══██╗
    ██║      ╚███╔╝ ██████╔╝
    ██║      ██╔██╗ ██╔══██╗
    ███████╗██╔╝ ██╗██║  ██║
    ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝
    ██████╗  █████╗ ███╗   ██╗██╗  ██╗██╗███╗   ██╗ ██████╗ 
    ██╔══██╗██╔══██╗████╗  ██║██║ ██╔╝██║████╗  ██║██╔════╝ 
    ██████╔╝███████║██╔██╗ ██║█████╔╝ ██║██╔██╗ ██║██║  ███╗
    ██╔══██╗██╔══██║██║╚██╗██║██╔═██╗ ██║██║╚██╗██║██║   ██║
    ██████╔╝██║  ██║██║ ╚████║██║  ██╗██║██║ ╚████║╚██████╔╝
    ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝ ╚═════╝

    🐺 LXR Banking System — Full Service Bank Management

    ═══════════════════════════════════════════════════════════════════════════════
    SERVER INFORMATION
    ═══════════════════════════════════════════════════════════════════════════════

    Server:      The Land of Wolves 🐺
    Developer:   iBoss21 / The Lux Empire
    Website:     https://www.wolves.land
    Discord:     https://discord.gg/CrKcWdfd3A
    GitHub:      https://github.com/iBoss21
    Store:       https://theluxempire.tebex.io

    ═══════════════════════════════════════════════════════════════════════════════

    Version:     1.0.1
    Resource:    lxr-banking

    Framework Support:
    - LXR Core  (Primary)
    - RSG Core  (Compatible)
    - VORP Core (Compatible)

    ═══════════════════════════════════════════════════════════════════════════════
    CREDITS
    ═══════════════════════════════════════════════════════════════════════════════

    Script Author: iBoss21 / The Lux Empire for The Land of Wolves

    © 2026 iBoss21 / The Lux Empire | wolves.land | All Rights Reserved
]]

fx_version 'cerulean'
game       'rdr3'

rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

name        'lxr-banking'
description '🐺 LXR Banking System | wolves.land — The Land of Wolves'
version     '1.0.1'
author      'iBoss21 / The Lux Empire | wolves.land'

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/*.lua',
    'server/wrappers/*.lua'
}

client_script 'client/*.lua'
shared_scripts {
    'config.lua'
}

ui_page 'nui/index.html'

files {
    'nui/images/*.png',
    'nui/scripting/jquery-ui.css',
    'nui/scripting/external/jquery/jquery.js',
    'nui/scripting/jquery-ui.js',
    'nui/style.css',
    'nui/index.html',
    'nui/lxr-banking.js',
}
