TheSilva = {}

TheSilva.StaffGroup = "command" -- Put the name of the group you want to have access to the commands

TheSilva.EveryoneAllowed = false -- true = everyone is allowed || false = use steamIDs and IPs listed in allowed
TheSilva.Notifications = true -- true = enable notifications || false = disable notifications

TheSilva.AllowedList = { -- Enter your steam ids and ips as such. DO NOT forget the commas and do not add a comma at the end.
	"steam:000000000000000", 
	"steam:000000000000001",
	"ip:192.168.1.1",
	"ip:192.168.1.2",
	"steam:000000000000003"
}

TheSilva.Translations = { -- Change the notification language
	["noPerms"] = "~r~You dont have permissions to do this to your vehicle.",
	["vehStocked"] = "~g~Your vehicle has been stocked!",
	["playerNotDriver"] = "~r~You must be in the driver's seat to stocked the vehicle!",
	["notInVeh"] = "~r~You are not in a vehicle! There is no vehicle to stocked!"
}