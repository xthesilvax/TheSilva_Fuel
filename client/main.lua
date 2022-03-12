RegisterNetEvent('thesilva:Fuel')
AddEventHandler('thesilva:Fuel', function()
    local playerPed = GetPlayerPed(-1)
    local playerVeh = GetVehiclePedIsIn(playerPed, false)

    if (DoesEntityExist(playerPed) and not IsEntityDead(playerPed)) then
        if (IsPedSittingInAnyVehicle(playerPed)) then
			if (GetPedInVehicleSeat(playerVeh, -1) == playerPed) then
            exports["LegacyFuel"]:SetFuel(playerVeh, 100)
                if TheSilva.Notifications then
                    ShowNotification(TheSilva.Translations.vehStocked)
                end
            else
                if TheSilva.Notifications then
                    ShowNotification(TheSilva.Translations.playerNotDriver)
                end
            end
        else
            if TheSilva.Notifications then
                ShowNotification(TheSilva.Translations.notInVeh)
            end
        end
    end
end)

RegisterNetEvent('thesilva:FuelnoPerms')
AddEventHandler('thesilva:FuelnoPerms', function()
	ShowNotification(TheSilva.Translations.vehStocked)
end)

function ShowNotification(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(false, false)
end