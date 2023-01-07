local PLUGIN = PLUGIN
PLUGIN.name = "Staff Faction"
PLUGIN.author = "Prussian Punk"
PLUGIN.description = "Adds staff and event factions."

function PLUGIN:ShouldShowPlayerOnScoreboard(client)
    if(!LocalPlayer():IsAdmin()) then
        if (client:Team() == FACTION_STAFF or client:Team() == FACTION_EVENT) then
            return false --hides them
        end
    end
end