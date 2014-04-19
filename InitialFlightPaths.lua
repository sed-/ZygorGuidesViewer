function loadFlightPaths()
	if not ZGV.db.char.initialFlightPathsLoaded then
		local initialPaths = {
			["Human"] = {
				["Goldshire"] = true,
				["Ironforge"] = true,
				["Gol'Bolar Quarry"] = true,
				["Serpent's Overlook"] = false,
				["Eastvale Logging Camp"] = true,
				["Stormwind"] = true,
				["Kharanos"] = true,
			},
			["Dwarf"] = {
				["Goldshire"] = true,
				["Ironforge"] = true,
				["Gol'Bolar Quarry"] = true,
				["Serpent's Overlook"] = false,
				["Eastvale Logging Camp"] = true,
				["Stormwind"] = true,
				["Kharanos"] = true,
			},
			["NightElf"] = {
				["Darnassus"] = true,
				["The Exodar"] = true,
				["Moonglade"] = true,
				["Lor'danel"] = true,
				["Dolanaar"] = true,
				["Azure Watch"] = true,
				["Rut'theran Village"] = true,
			},
			["Gnome"] = {
				["Goldshire"] = true,
				["Ironforge"] = true,
				["Gol'Bolar Quarry"] = true,
				["Serpent's Overlook"] = false,
				["Eastvale Logging Camp"] = true,
				["Stormwind"] = true,
				["Kharanos"] = true,
			},
			["Draenei"] = {
				["Darnassus"] = true,
				["The Exodar"] = true,
				["Moonglade"] = true,
				["Lor'danel"] = true,
				["Dolanaar"] = true,
				["Azure Watch"] = true,
				["Rut'theran Village"] = true,
			},
			["Worgen"] = {
				["Darnassus"] = true,
				["The Exodar"] = true,
				["Moonglade"] = true,
				["Lor'danel"] = true,
				["Dolanaar"] = true,
				["Azure Watch"] = true,
				["Rut'theran Village"] = true,
			},
			["Orc"] = {
				["Orgrimmar"] = true,
				["Sen'jin Village"] = true,
				["Razor Hill"] = true,
				["Thunder Bluff"] = true,
				["Bloodhoof Village"] = true,
			},
			["Scourge"] = { -- Undead
				["Undercity"] = true,
				["The Bulwark"] = true,
				["Brill"] = true,
			},
			["Tauren"] = {
				["Orgrimmar"] = true,
				["Sen'jin Village"] = true,
				["Razor Hill"] = true,
				["Thunder Bluff"] = true,
				["Bloodhoof Village"] = true,
			},
			["Troll"] = {
				["Orgrimmar"] = true,
				["Sen'jin Village"] = true,
				["Razor Hill"] = true,
				["Thunder Bluff"] = true,
				["Bloodhoof Village"] = true,
			},
			["BloodElf"] = {
				["Silvermoon City"] = true,
				["Falconwing Square"] = true,
				["Fairbreeze Village"] = true,
			},
			["Goblin"] = {
				["Orgrimmar"] = true,
				["Sen'jin Village"] = true,
				["Razor Hill"] = true,
				["Thunder Bluff"] = true,
				["Bloodhoof Village"] = true,
			},
			-- Nothing set for Pandaren because they are a special case.
		}
		
		local classDisplayName, class, classID = UnitClass("player")
		local raceName, raceID = UnitRace("player")
		local englishFaction, localizedFaction = UnitFactionGroup("player")
		
		-- Special handling for Pandaren: They start neutral, and select a faction later.
		if raceID == "Pandaren" then
			if englishFaction == "Neutral" then
				-- Wait for player to select the Pandaren's faction.
				ZGV:DelayedRun(function()
					local englishFaction, localizedFaction = UnitFactionGroup("player")
					
					-- Assuming Pandaren start similar to Worgen and Goblins.
					if englishFaction == "Alliance" then
						ZGV.db.char.taxis = {
							["Goldshire"] = true,
							["Ironforge"] = true,
							["Gol'Bolar Quarry"] = true,
							["Serpent's Overlook"] = false,
							["Eastvale Logging Camp"] = true,
							["Stormwind"] = true,
							["Kharanos"] = true,
						}
					elseif englishFaction == "Horde" then
						ZGV.db.char.taxis = {
							["Orgrimmar"] = true,
							["Sen'jin Village"] = true,
							["Razor Hill"] = true,
							["Thunder Bluff"] = true,
							["Bloodhoof Village"] = true,
						}
					else
						error("Setting up initial flight points for Pandaren failed, please report to dev team (InitialFlightPaths.lua).")
					end
				end, NEUTRAL_FACTION_SELECT_RESULT)
			elseif englishFaction == "Alliance" then
				ZGV.db.char.taxis = {
					["Goldshire"] = true,
					["Ironforge"] = true,
					["Gol'Bolar Quarry"] = true,
					["Serpent's Overlook"] = false,
					["Eastvale Logging Camp"] = true,
					["Stormwind"] = true,
					["Kharanos"] = true,
				}
				ZGV.db.char.initialFlightPathsLoaded = true
			elseif englishFaction == "Horde" then
				ZGV.db.char.taxis = {
					["Orgrimmar"] = true,
					["Sen'jin Village"] = true,
					["Razor Hill"] = true,
					["Thunder Bluff"] = true,
					["Bloodhoof Village"] = true,
				}
				ZGV.db.char.initialFlightPathsLoaded = true
			end
		end
		
		if classID == "DEATHKNIGHT" then
			-- Death knights have their own starting experience
			-- Currently assuming Death Knights start similar to pandaren ~~ Jeremiah
			if englishFaction == "Alliance" then
				ZGV.db.char.taxis = {
					["Goldshire"] = true,
					["Ironforge"] = true,
					["Gol'Bolar Quarry"] = true,
					["Serpent's Overlook"] = false,
					["Eastvale Logging Camp"] = true,
					["Stormwind"] = true,
					["Kharanos"] = true,
				}
				ZGV.db.char.initialFlightPathsLoaded = true
			elseif englishFaction == "Horde" then
				ZGV.db.char.taxis = {
					["Orgrimmar"] = true,
					["Sen'jin Village"] = true,
					["Razor Hill"] = true,
					["Thunder Bluff"] = true,
					["Bloodhoof Village"] = true,
				}
				ZGV.db.char.initialFlightPathsLoaded = true
			end
		else
			if initialPaths[raceID] then
				ZGV.db.char.taxis=initialPaths[raceID]
				ZGV.db.char.initialFlightPathsLoaded = true
			else
				ZGV:Debug("Missing initial flight paths for race: "..raceID)
			end
		end
		initialPaths = nil
	end
end

tinsert(ZGV.startups, loadFlightPaths)


	

