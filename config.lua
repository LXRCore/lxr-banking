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

    This configuration file controls bank locations, door hashes, and
    framework settings for the LXR Banking resource.

    ═══════════════════════════════════════════════════════════════════════════════
    SERVER INFORMATION
    ═══════════════════════════════════════════════════════════════════════════════

    Server:      The Land of Wolves 🐺
    Tagline:     Georgian RP 🇬🇪 | მგლების მიწა - რჩეულთა ადგილი!
    Description: ისტორია ცოცხლდება აქ! (History Lives Here!)
    Type:        Serious Hardcore Roleplay
    Access:      Discord & Whitelisted

    Developer:   iBoss21 / The Lux Empire
    Website:     https://www.wolves.land
    Discord:     https://discord.gg/CrKcWdfd3A
    GitHub:      https://github.com/iBoss21
    Store:       https://theluxempire.tebex.io

    ═══════════════════════════════════════════════════════════════════════════════

    Version:           1.0.1
    Performance Target: Optimized for minimal server overhead and client FPS impact

    Tags: RedM, Banking, Economy, Whitelist, SeriousRP, Georgian

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

-- ═══════════════════════════════════════════════════════════════════════════════
-- 🐺 RESOURCE NAME PROTECTION - RUNTIME CHECK
-- ═══════════════════════════════════════════════════════════════════════════════

local REQUIRED_RESOURCE_NAME = "lxr-banking"
local currentResourceName = GetCurrentResourceName()

if currentResourceName ~= REQUIRED_RESOURCE_NAME then
    error(string.format([[

        ═══════════════════════════════════════════════════════════════════════════════
        ❌ CRITICAL ERROR: RESOURCE NAME MISMATCH ❌
        ═══════════════════════════════════════════════════════════════════════════════

        Expected: %s
        Got: %s

        This resource is branded and must maintain the correct name.
        Rename the folder to "%s" to continue.

        🐺 wolves.land - The Land of Wolves

        ═══════════════════════════════════════════════════════════════════════════════

    ]], REQUIRED_RESOURCE_NAME, currentResourceName, REQUIRED_RESOURCE_NAME))
end

Config = {}

-- ████████████████████████████████████████████████████████████████████████████████
-- ████████████████████████ SERVER BRANDING & INFO ████████████████████████████████
-- ████████████████████████████████████████████████████████████████████████████████

Config.ServerInfo = {
    name        = 'The Land of Wolves 🐺',
    tagline     = 'Georgian RP 🇬🇪 | მგლების მიწა - რჩეულთა ადგილი!',
    description = 'ისტორია ცოცხლდება აქ!', -- History Lives Here!
    type        = 'Serious Hardcore Roleplay',
    access      = 'Discord & Whitelisted',

    -- Contact & Links
    website      = 'https://www.wolves.land',
    discord      = 'https://discord.gg/CrKcWdfd3A',
    github       = 'https://github.com/iBoss21',
    store        = 'https://theluxempire.tebex.io',

    -- Developer Info
    developer = 'iBoss21 / The Lux Empire',

    -- Tags
    tags = { 'RedM', 'Georgian', 'SeriousRP', 'Whitelist', 'Banking', 'Economy' }
}

-- ████████████████████████████████████████████████████████████████████████████████
-- ████████████████████████ FRAMEWORK CONFIGURATION ███████████████████████████████
-- ████████████████████████████████████████████████████████████████████████████████

--[[
    Framework Priority (in order):
    1. LXR-Core  (Primary)
    2. RSG-Core  (Primary)
    3. VORP Core (Supported)
    4. Standalone (Fallback)
]]

Config.Framework = 'lxr-core' -- Options: 'lxr-core', 'rsg-core', 'vorp_core', 'standalone'

-- Framework-specific settings
Config.FrameworkSettings = {
    ['lxr-core'] = {
        resource      = 'lxr-core',
        notifications = 'lxr-core',
        inventory     = 'lxr-inventory',
        events = {
            server   = 'lxr-core:server:%s',
            client   = 'lxr-core:client:%s',
            callback = 'lxr-core:callback:%s'
        }
    },
    ['rsg-core'] = {
        resource      = 'rsg-core',
        notifications = 'rsg-core',
        inventory     = 'rsg-inventory',
        events = {
            server   = 'RSGCore:Server:%s',
            client   = 'RSGCore:Client:%s',
            callback = 'RSGCore:Callback:%s'
        }
    },
    ['vorp_core'] = {
        resource      = 'vorp_core',
        notifications = 'vorp',
        inventory     = 'vorp_inventory',
        events = {
            server = 'vorp:server:%s',
            client = 'vorp:client:%s'
        }
    },
    ['standalone'] = {
        notifications = 'print',
        inventory     = 'none'
    }
}

-- ████████████████████████████████████████████████████████████████████████████████
-- ████████████████████████ BANK LOCATIONS ████████████████████████████████████████
-- ████████████████████████████████████████████████████████████████████████████████

Config.BankLocations = {
    {name = 'Bank of Rhodes',           bankType = "BANKS",     coords = vector3(1292.307, -1301.539, 77.04012),    showblip = true},
    {name = 'Lemoyne National Bank',    bankType = "BANKS2",    coords = vector3(2644.579, -1292.313, 52.24956),    showblip = true},
    {name = 'Valentine Savings Bank',   bankType = "BANKS3",    coords = vector3(-308.4189, 775.8842, 118.7017),    showblip = true},
    {name = 'First National Bank',      bankType = "BANKS4",    coords = vector3(-813.1633, -1277.486, 43.63771),   showblip = true},
}

-- ████████████████████████████████████████████████████████████████████████████████
-- ████████████████████████ BANK DOORS ████████████████████████████████████████████
-- ████████████████████████████████████████████████████████████████████████████████

Config.BankDoors = { --Doors that will always be open unless robbery has started
	-- Valentine Savings Bank
	2642457609, -- main door
	3886827663, -- main door
	1340831050, -- bared right
	2343746133, -- bared left
	334467483, -- inner door1
	3718620420, -- inner door2
	576950805, -- vault door
	
	-- Bank of Rhodes
	3317756151, -- main door
	3088209306, -- main door
	2058564250, -- inner door1
	3142122679, -- inner door2
	1634148892, -- inner door3
	3483244267, -- vault
  
	-- Lemoyne National Bank Saint Denis
	2158285782, -- main door
	1733501235, -- main door
	2089945615, -- main door
	2817024187, -- main door
	1830999060, -- inner private door
	965922748, -- manager door
	1634115439, -- manager door
	1751238140, -- vault
	
	-- West Elizabeth Co-Operative Bank Blackwater
	531022111, -- main door
	2117902999, -- inner door
	2817192481, -- manager door
	1462330364, -- vault door
	
	-- Bank of Armadillo
	3101287960, -- main door
	3550475905, -- inner door
	1329318347, -- inner door
	1366165179, -- back door
}