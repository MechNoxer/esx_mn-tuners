IsTuner = false
xPlayerLoaded = false


--Some ESX shit
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


--When player is loaded check job
Citizen.CreateThread(function()
    ESX.UI.Menu.CloseAll()
    while not xPlayerLoaded do
        xPlayerLoaded = ESX.IsPlayerLoaded()
        if xPlayerLoaded then
            CheckJob()
        end
        Citizen.Wait(1000)
    end
end)


--function thats checks the players job
function CheckJob()
    ESX.TriggerServerCallback("esx_mn-tuners:CheckPlayerJob", function(cb)
        if cb.name == "tuner" then
            IsTuner = true
        else
            IsTuner = false
        end
    end)
end


--Shows point if you are tuner and gets car data
Citizen.CreateThread(function()
    while true do
        while IsTuner do
            local Sleeping = true
            local Show = false

            local Cnf = Config.Settings
            local x = Cnf.position.x
            local y = Cnf.position.y
            local z = Cnf.position.z

            local pedCoords = GetEntityCoords(PlayerPedId())
            local distance = GetDistanceBetweenCoords(pedCoords, x, y, z, true)


            if distance < Cnf.rdist + 2 then 
                Sleeping = false
            else
                Sleeping = true
            end

            if distance < Cnf.rdist then
                Show = true
            else
                Show = false
            end

            if IsPedInAnyVehicle(PlayerPedId(), true) then
                if Show then
                    DrawMarker(36, x, y, z , 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2.0, 2.0, 2.0, 255, 255, 255, 100, false, true, 2, nil, nil, true)
    
                    if distance < 2 then
                        ESX.ShowHelpNotification(_U('PRESS'))
                        
                        if IsControlJustReleased(0, 38) then
                            local vehicle = ESX.Game.GetClosestVehicle(pedCoords)
                            local CurrentVeh = ESX.Game.GetVehicleProperties(vehicle)  
                            
                            if Config.Settings.HashGrabber then

                                TriggerEvent('chat:addMessage', {
                                    color = { 255, 0, 0},
                                    multiline = true,
                                    args = {"Current Vechilce's Hash", CurrentVeh.model}
                                })
                                
                            end
                            
                            CheckCar(CurrentVeh)
                        end
                    else
                        ESX.UI.Menu.CloseAll()
                    end
                end
            end

            if IsControlJustReleased(0, 177) then
                ESX.UI.Menu.CloseAll()
            end

            if Sleeping then
                Citizen.Wait(1000)
            else
                Citizen.Wait(0)
            end
        end
        CheckJob()
        Citizen.Wait(2000)
    end
end)


--Cheks if it is a tunable car
function CheckCar(CurrentVeh)
    local CarIsGood = false
    local ID = nil
    for i=1, #Config.Cars do
        local DefaultCar = Config.Cars[i].Default
        if DefaultCar.Hash == CurrentVeh.model then
            ID = i
            CarIsGood = true
        end
    end

    if CarIsGood then
       CheckOwnership(CurrentVeh, ID)
    else
        ESX.ShowNotification(_U("not"), true)
    end
end


--Cheks if you are the owner of the car
function CheckOwnership(CurrentVeh, ID) 
    local VehPlate = CurrentVeh.plate

    ESX.TriggerServerCallback("esx_mn-tuners:CheckOwnerShip", function(cb)
        local IsOwner = cb[1][1]
        local Owner = cb[1][2]

        if IsOwner then
            OpenMenu(ID, Owner, VehPlate)
        else
            ESX.ShowNotification(_U("not_owner"), true)
        end
    end, VehPlate)
end


--Open the first menu
function OpenMenu(ID, Owner, VehPlate)
    local VehID = Config.Cars[ID] 
    local elements = {}

    for i=1, #VehID do
        table.insert(elements, { ["label"] = VehID[i].Name .. " - " .. VehID[i].Price ,["value"] = i })
    end
    table.insert(elements, { ["label"] = _U("close") ,["value"] = "close" })


    ESX.UI.Menu.Open("default", GetCurrentResourceName(), "tuner_menu", 
        {
            title    = VehID.Default.Name,
            align    = 'top-left',
            elements = elements
        },
        function(data, menu)
            local action = data.current.value
            local TuneSelectName = nil
            local TuneSelectValue = nil

            if action == "close" then
                ESX.UI.Menu.CloseAll()
            else
                for i=1, #elements do
                    if action == elements[i].value then
                        TuneSelectName = elements[i].label
                        TuneSelectValue = elements[i].value
                    end
                end
                ESX.UI.Menu.CloseAll()
                Citizen.Wait(1)
                OpenTuneSelectMenu(TuneSelectName, TuneSelectValue, VehID, ID, Owner, VehPlate)
            end            
        end
    )
end


--Opens the second menu
function OpenTuneSelectMenu(TuneSelectName, TuneSelectValue, VehID, ID, Owner, VehPlate)
    local elements = {}

    table.insert(elements, { ["label"] = _U("tune") ,["value"] = "tune" })
    table.insert(elements, { ["label"] = _U("show_car") ,["value"] = "showcar" })
    table.insert(elements, { ["label"] = _U("remove_car") ,["value"] = "removecar" })
    table.insert(elements, { ["label"] = _U("back") ,["value"] = "back" })
    table.insert(elements, { ["label"] = _U("close") ,["value"] = "close" })

    ESX.UI.Menu.Open("default", GetCurrentResourceName(), "tuner_menu", 
        {
            title    = TuneSelectName,
            align    = 'top-left',
            elements = elements
        },
        function(data, menu)
            local action = data.current.value

            if action == "close" then
                ESX.UI.Menu.CloseAll()

            elseif action == "back" then
                ESX.UI.Menu.CloseAll()
                Citizen.Wait(1)
                OpenMenu(ID, Owner, VehPlate)

            elseif action == "tune" then
                StartTune(VehID[TuneSelectValue].Hash, VehID[TuneSelectValue].Price, Owner, VehPlate, VehID[TuneSelectValue])

            elseif action == "showcar" then
               ShowCar(VehID[TuneSelectValue].Hash, VehID[TuneSelectValue])

            elseif action =="removecar" then
                RemoveCar()
            end
        end
    )
end


--Spawns a show model
function ShowCar(Hash, SelectedTune)
    local SpawnClear = ESX.Game.IsSpawnPointClear(Config.Settings.ShowPos, 5)
    local vehicle = nil

    while not HasModelLoaded(Hash) do
		RequestModel(Hash)
		Citizen.Wait(1)
    end
    
    if not SpawnClear then
        vehicle = ESX.Game.GetVehiclesInArea(Config.Settings.ShowPos, 5)
        for i=1, #vehicle do
            ESX.Game.DeleteVehicle(vehicle[i])
        end
    end

    local X = Config.Settings.ShowPos.x
    local Y = Config.Settings.ShowPos.y
    local Z = Config.Settings.ShowPos.z
    local H = Config.Settings.ShowPos.h

    local veh = CreateVehicle(Hash, X, Y, Z, H, true)
    SetEntityAsMissionEntity(veh, true, true)
    SetModelAsNoLongerNeeded(Hash)

    FreezeEntityPosition(veh, true)

    ESX.Game.SetVehicleProperties(veh, SelectedTune.Tuning)

end


--removes show model
function RemoveCar()
    local vehicle = ESX.Game.GetVehiclesInArea(Config.Settings.ShowPos, 5)
    for i=1, #vehicle do
        local veh = ESX.Game.GetClosestVehicle(Config.Settings.ShowPos)
        DeleteEntity(veh)
    end
end


function StartTune(Hash, Price, Owner, VehPlate, SelectedTune)
    local X = Config.Settings.ShowPos.x
    local Y = Config.Settings.ShowPos.y
    local Z = Config.Settings.ShowPos.z
    local H = Config.Settings.ShowPos.h
    
    local coords = {x = X, y = Y, z = Z}

    while not HasModelLoaded(Hash) do
		RequestModel(Hash)
		Citizen.Wait(1)
    end

    ESX.Game.SpawnVehicle(Hash, coords, H, function(vehicle)
        Citizen.Wait(50)

        ESX.Game.SetVehicleProperties(vehicle, SelectedTune.Tuning)

        ESX.Game.SetVehicleProperties(vehicle, {
            plate = VehPlate,
        })

        Citizen.Wait(50)
    
        local VehProps = json.encode(ESX.Game.GetVehicleProperties(vehicle))
    
    
        ESX.TriggerServerCallback("esx_mn-tuners:StartTune", function(Callback)
            if Callback then
                ESX.UI.Menu.CloseAll()
                local pedCoords = GetEntityCoords(PlayerPedId())
                
                local CurrentVehicle = ESX.Game.GetClosestVehicle(pedCoords)
        
                ESX.Game.Teleport(PlayerPedId(), pedCoords, cb)
                Citizen.Wait(10)
        
                ESX.Game.DeleteVehicle(CurrentVehicle)
            end
        end, VehProps, Price, Owner, VehPlate)
    end)
end
