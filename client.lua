-- CONFIG --

local Proxy = module("vrp", "lib/Proxy")
vRP = Proxy.getInterface("vRP")

local Tunnel = module("vrp", "lib/Tunnel")
clientaccess = Tunnel.getInterface("myrsc")

-- Sound volume (0.0 - 1.0)
local volume = 0.4

-- CODE --

Citizen.CreateThread(function()
	while true do
		Wait(1)

		if  vRPclient.isInComa() then
		
				SendNUIMessage({
					playdeathsound = true,
					deathvolume = volume
					})
					
			end
		end
	end
end)