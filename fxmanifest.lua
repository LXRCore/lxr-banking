--[[
    ██╗     ██╗  ██╗██████╗        ██████╗  █████╗ ███╗   ██╗██╗  ██╗██╗███╗   ██╗ ██████╗
    ██║     ╚██╗██╔╝██╔══██╗      ██╔══██╗██╔══██╗████╗  ██║██║ ██╔╝██║████╗  ██║██╔════╝
    ██║      ╚███╔╝ ██████╔╝█████╗██████╔╝███████║██╔██╗ ██║█████╔╝ ██║██╔██╗ ██║██║  ███╗
    ██║      ██╔██╗ ██╔══██╗╚════╝██╔══██╗██╔══██║██║╚██╗██║██╔═██╗ ██║██║╚██╗██║██║   ██║
    ███████╗██╔╝ ██╗██║  ██║      ██████╔╝██║  ██║██║ ╚████║██║  ██╗██║██║ ╚████║╚██████╔╝
    ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝      ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝ ╚═════╝

    🐺 LXR Banking System - Resource Manifest

    ═══════════════════════════════════════════════════════════════════════════════
    RESOURCE INFORMATION
    ═══════════════════════════════════════════════════════════════════════════════

    Resource Name:  lxr-banking
    Version:        1.0.1
    Author:         iBoss21 / The Lux Empire
    Description:    Full-featured banking system for RedM supporting player
                    accounts, savings, business, gang funds, and card management.

    Server:         The Land of Wolves 🐺
    Developer:      iBoss21 / The Lux Empire
    Website:        https://www.wolves.land
    Discord:        https://discord.gg/CrKcWdfd3A
    Store:          https://theluxempire.tebex.io

    ═══════════════════════════════════════════════════════════════════════════════
    FRAMEWORK SUPPORT
    ═══════════════════════════════════════════════════════════════════════════════

    Primary:
    - LXR Core (lxr-core)
    - RSG Core (rsg-core)

    Supported:
    - VORP Core (vorp_core)

    Optional (if detected):
    - RedEM:RP (redem_roleplay)
    - QBR Core (qbr-core)
    - QR Core (qr-core)
    - Standalone (no framework)

    ═══════════════════════════════════════════════════════════════════════════════

    © 2026 iBoss21 / The Lux Empire | wolves.land | All Rights Reserved
]]

fx_version 'cerulean'
game 'rdr3'

rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

-- Resource Metadata
name        'LXR Banking System'
author      'iBoss21 / The Lux Empire'
description 'Full-featured banking system for RedM with player, savings, business, and gang accounts'
version     '1.0.1'

-- Lua 5.4
lua54 'yes'

-- Shared Scripts
shared_scripts {
    'config.lua'
}

-- Client Scripts
client_scripts {
    'client/*.lua'
}

-- Server Scripts
server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/*.lua',
    'server/wrappers/*.lua'
}

-- NUI
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
