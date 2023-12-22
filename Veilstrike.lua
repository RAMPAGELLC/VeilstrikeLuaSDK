-- Copyright 2023 RAMPAGE INTERACTIVE, ALL RIGHTS RESERVED.
-- OPERATION VEILSTRIKE IS GAME BY RAMPAGE INTERACTIVE. A LEGAL COPY IS REQUIRED TO UTILIZE THIS API.

--[[
    Developer API:
        Requires flag: VeilstrikeDeveloper.
        Library: VeilstrikeDev.{method}
    
    VeilstrikeDev.ToggleFreecam()
    VeilstrikeDev.ClearAI()
    
    Admin API:
        Requires flag: VeilstrikeDeveloper or VeilstrikeGlobalModerator.
        Library: VeilstrikeAdmin.{method}

    VeilstrikeAdmin.GlobalBan(Steam64, String reason, Int unix epoch end (0 for perm))
    VeilstrikeAdmin.RevokeGlobalBan(Steam64, String reason)
   
    Moderator API:
        Requires flag: VeilstrikeDeveloper, VeilstrikeGlobalModerator, Moderator, or Host.
        Library: VeilstrikeDev.{method}
    
    VeilstrikeMod.Ban(NetId, String reason (optional)) - Non effective for player's with Flags VeilstrikeDeveloper or VeilstrikeGlobalModerator.
    VeilstrikeMod.Unban(NetId) - Non effective for player's with Flags VeilstrikeDeveloper or VeilstrikeGlobalModerator.
    VeilstrikeMod.Kick(NetId) - Non effective for player's with Flags VeilstrikeDeveloper or VeilstrikeGlobalModerator.

    VeilstrikeMod.GetPlayers()
        {
            {
                NetId = 1,
                Name = "Metatable.dev",
                Flags = {
                    VeilstrikeDeveloper = true,
                    VeilstrikeGlobalModerator = true,
                    Moderator = true,
                    Host = true,
                },
            },
            {
                NetId = 2,
                Name = "franyDev",
                Flags = {
                    VeilstrikeDeveloper = true,
                    VeilstrikeGlobalModerator = true,
                    Moderator = true,
                    Host = true,
                },
            }
        }

    Host API:
        Requires flag: VeilstrikeDeveloper, VeilstrikeGlobalModerator, or Host.
        Library: VeilstrikeHost.{method}
    
    VeilstrikeHost.GrantModerator(NetId)
        Grant a player's moderator perms - Non effective for player's with Flags VeilstrikeDeveloper or VeilstrikeGlobalModerator.
    
    VeilstrikeHost.RevokeModerator(NetId)
        Revoke a player's moderator perms - Non effective for player's with Flags VeilstrikeDeveloper or VeilstrikeGlobalModerator.

    VeilstrikeHost.EndGame()
        Everyone is disconnected to menu.
    
    VeilstrikeHost.Respawn(NetId)
    VeilstrikeHost.Kill(NetId)
    VeilstrikeHost.Revive(NetId)
    VeilstrikeHost.SetHealth(NetId, int Health)
    VeilstrikeHost.God(NetId, bool Enabled)
    
    Client API:
        Requires flag: NO
        Library: VeilstrikeClient.{method}
    VeilstrikeClient.quit() - Leave game
]]