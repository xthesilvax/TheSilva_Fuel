AddEventHandler('chatMessage', function(source, n, msg)
	local msg = string.lower(msg)
	local identifier = GetPlayerIdentifiers(source)[1]
	if msg == "/fuel" then
		CancelEvent()
		if TheSilva.EveryoneAllowed == true then
			TriggerClientEvent('thesilva:Fuel', source)
		else
			if IsPlayerAceAllowed(source, TheSilva.StaffGroup) then
				TriggerClientEvent('thesilva:Fuel', source)
			else
				if checkAllowed(identifier) then
					TriggerClientEvent('thesilva:Fuel', source)
				else
					TriggerClientEvent('thesilva:FuelnoPerms', source)
				end
			end
		end
	end
end)

function checkAllowed(id)
	for k, v in pairs(TheSilva.AllowedList) do
		if id == v then
			return true
		end
	end
	return false
end