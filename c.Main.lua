local Gravity = 15.0 -- Vehicle
local heliGravity = 5.0

SetAudioFlag('PoliceScannerDisabled', true)

Citizen.CreateThread(function()
    while true do
        Wait(1000);
        local Vehicles = GetGamePool("CVehicle")

        for _,v in pairs(Vehicles) do
            Wait(1)
		if DoesEntityExist(v) then
			if GetVehicleClass(v) == 15 then
				SetVehicleGravityAmount(v, heliGravity)
			else
				SetVehicleGravityAmount(v, Gravity)
			end
        end
    end
end)
