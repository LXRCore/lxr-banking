# 🐺 LXR Banking System

```
    ██╗     ██╗  ██╗██████╗        ██████╗  █████╗ ███╗   ██╗██╗  ██╗██╗███╗   ██╗ ██████╗
    ██║     ╚██╗██╔╝██╔══██╗      ██╔══██╗██╔══██╗████╗  ██║██║ ██╔╝██║████╗  ██║██╔════╝
    ██║      ╚███╔╝ ██████╔╝█████╗██████╔╝███████║██╔██╗ ██║█████╔╝ ██║██╔██╗ ██║██║  ███╗
    ██║      ██╔██╗ ██╔══██╗╚════╝██╔══██╗██╔══██║██║╚██╗██║██╔═██╗ ██║██║╚██╗██║██║   ██║
    ███████╗██╔╝ ██╗██║  ██║      ██████╔╝██║  ██║██║ ╚████║██║  ██╗██║██║ ╚████║╚██████╔╝
    ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝      ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝ ╚═════╝
```

**Full-featured banking system for RedM — The Land of Wolves 🐺**

═══════════════════════════════════════════════════════════════════════════════

## Server Information

| Field       | Details                                          |
|-------------|--------------------------------------------------|
| Server      | The Land of Wolves 🐺                            |
| Developer   | iBoss21 / The Lux Empire                         |
| Website     | https://www.wolves.land                          |
| Discord     | https://discord.gg/CrKcWdfd3A                    |
| Store       | https://theluxempire.tebex.io                    |
| GitHub      | https://github.com/iBoss21                       |

═══════════════════════════════════════════════════════════════════════════════

## Screenshots

![Banking](https://cdn.discordapp.com/attachments/1021700112776437760/1183270857511018496/image.png?ex=6587b9dc&is=657544dc&hm=9c70104b411b71a84e89d751c3a06938568165a903d2791eb69d9317dfe50690&)
![Banking](https://cdn.discordapp.com/attachments/1021700112776437760/1183270937735471154/image.png?ex=6587b9ef&is=657544ef&hm=cd87244f61c0bd5287a39ccbc6c21a03220649e85fa981c7b68290b2b8300876&)
![Banking](https://cdn.discordapp.com/attachments/1021700112776437760/1183271010410180729/image.png?ex=6587ba00&is=65754500&hm=05ec9cd81a4adcc54cfcf45c4c5f1672eb576853b8778fe6ea30a6b46a1f31f9&)
![Banking](https://cdn.discordapp.com/attachments/1021700112776437760/1183271063388434432/image.png?ex=6587ba0d&is=6575450d&hm=87da5ef6b2b76363c708a6af1c8b5d169b629e8e6d8bb879c3900575a630cd2a&)
![Banking](https://cdn.discordapp.com/attachments/1021700112776437760/1183271135127810099/image.png?ex=6587ba1e&is=6575451e&hm=aca9d18968a79ff6fe446ea94227c7a2a29199be2708a67262b546b6c00b3626&)

═══════════════════════════════════════════════════════════════════════════════

## Features

- Full player bank account management (deposit, withdraw, transfer)
- Savings account creation and management
- Business accounts with statement tracking
- Gang shared accounts
- Debit card system with PIN, lock/unlock, and card renewal
- Bank location blips on the map with configurable prompts
- Automatic door management for configured bank locations
- Seamless NUI (HTML/JS) interface

═══════════════════════════════════════════════════════════════════════════════

## Framework Support

| Framework        | Status    |
|-----------------|-----------|
| LXR Core        | ✅ Primary |
| RSG Core        | ✅ Primary |
| VORP Core       | ✅ Supported |
| RedEM:RP        | ⚙️ Optional |
| QBR Core        | ⚙️ Optional |
| QR Core         | ⚙️ Optional |
| Standalone      | ⚙️ Fallback |

Set `Config.Framework = 'auto'` for automatic detection, or specify manually in `config.lua`.

═══════════════════════════════════════════════════════════════════════════════

## Installation

1. Download the resource and place it in your `[lxr]` directory.
2. Rename the folder to **`lxr-banking`** (required — resource name is enforced at runtime).
3. Import `lxr-banking.sql` into your database.
4. Add `ensure lxr-banking` to your `server.cfg`.
5. Configure `config.lua` to your server's needs.

═══════════════════════════════════════════════════════════════════════════════

## Dependencies

- [lxr-core](https://github.com/LXRCore/lxr-core) (or compatible framework)
- [oxmysql](https://github.com/overextended/oxmysql)

═══════════════════════════════════════════════════════════════════════════════

## License

```
© 2026 iBoss21 / The Lux Empire | wolves.land | All Rights Reserved

LXR Core RedM Framework — lxr-banking
```

