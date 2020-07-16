--ESX Bootup
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


--Cheks the job of the player
ESX.RegisterServerCallback("esx_mn-tuners:CheckPlayerJob", function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)
    local playerJob = xPlayer.getJob()

    cb(playerJob)
end)


--Checks the ownership of a car
ESX.RegisterServerCallback("esx_mn-tuners:CheckOwnerShip", function(source, cb, data)

    local xPlayer = ESX.GetPlayerFromId(source)
    local identifier = xPlayer.identifier
    local xPlayerVehicles = {}
    local IsOwner = false



    MySQL.Async.fetchAll("SELECT * FROM owned_vehicles WHERE owner = @identifier", {['@identifier'] = identifier}, function(result) 
        local TempTable = {}

		for id, values in pairs(result) do
            local plate = values.plate

            if data == plate then
                IsOwner = true
            end
        end
        table.insert(TempTable,{IsOwner, identifier})
        cb(TempTable)
	end)
end)


ESX.RegisterServerCallback("esx_mn-tuners:StartTune", function(source, Callback, VehProps, Price, Owner, Plate)
    local identifier = Owner
    local owner = identifier

    MySQL.Async.fetchAll("SELECT * FROM owned_vehicles WHERE owner = @identifier", {['@identifier'] = identifier}, function(result) 

		for id, values in pairs(result) do
            local DBP = values.plate
            local vehicle = VehProps

            if Plate == DBP then
                local plate = DBP

                MySQL.Async.execute('INSERT INTO owned_vehicles (owner, plate, vehicle) VALUES (@owner, @plate, @vehicle) ON DUPLICATE KEY UPDATE owner = @owner, plate = @plate, vehicle = @vehicle',
                {
                    ['@owner']   = owner,
                    ['@plate']   = plate,
                    ['@vehicle'] = vehicle
                }, function (rowsChanged)
                    if rowsChanged > 0 then
                        Callback(true)

                        TriggerEvent('esx_addonaccount:getSharedAccount', 'society_tuner', function(account)
                            account.removeMoney(Price)
                        end)
                    end
                end)
            end
        end
    end)
end)