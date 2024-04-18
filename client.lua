local isExpanded = false
CreateThread(function()
	while true do
		local waitMs = 500

		if IsControlPressed(1, 19) then
			if not isExpanded then
				isExpanded = true
				SendNUIMessage({
					expanded = isExpanded
				})
			end
			waitMs = 200
		else
			if isExpanded then
				isExpanded = false
				SendNUIMessage({
					expanded = isExpanded
				})
			end
		end

		Wait(waitMs)
	end
end)

RegisterNetEvent("Notify")
AddEventHandler("Notify", function(type, message, timeout)
    SendNUIMessage({
		type = type,
        message = message,
        timeout = timeout
    })
end)

RegisterNetEvent("GMDev_Notify")
AddEventHandler("GMDev_Notify", function(type, title, description, timeout)
    SendNUIMessage({
		type = type,
        title = title,
		description = description,
        timeout = timeout
    })
end)


-- TriggerEvent("Notify","importante","Todas as vagas estão ocupadas no momento.",10000)
