Config = {}
Config.Locale = 'en'

--[[────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
─██████──────────██████─██████████████─██████████████─██████──██████─██████──────────██████─██████████████─████████──████████─██████████████─████████████████───
─██░░██████████████░░██─██░░░░░░░░░░██─██░░░░░░░░░░██─██░░██──██░░██─██░░██████████──██░░██─██░░░░░░░░░░██─██░░░░██──██░░░░██─██░░░░░░░░░░██─██░░░░░░░░░░░░██───
─██░░░░░░░░░░░░░░░░░░██─██░░██████████─██░░██████████─██░░██──██░░██─██░░░░░░░░░░██──██░░██─██░░██████░░██─████░░██──██░░████─██░░██████████─██░░████████░░██───
─██░░██████░░██████░░██─██░░██─────────██░░██─────────██░░██──██░░██─██░░██████░░██──██░░██─██░░██──██░░██───██░░░░██░░░░██───██░░██─────────██░░██────██░░██───
─██░░██──██░░██──██░░██─██░░██████████─██░░██─────────██░░██████░░██─██░░██──██░░██──██░░██─██░░██──██░░██───████░░░░░░████───██░░██████████─██░░████████░░██───
─██░░██──██░░██──██░░██─██░░░░░░░░░░██─██░░██─────────██░░░░░░░░░░██─██░░██──██░░██──██░░██─██░░██──██░░██─────██░░░░░░██─────██░░░░░░░░░░██─██░░░░░░░░░░░░██───
─██░░██──██████──██░░██─██░░██████████─██░░██─────────██░░██████░░██─██░░██──██░░██──██░░██─██░░██──██░░██───████░░░░░░████───██░░██████████─██░░██████░░████───
─██░░██──────────██░░██─██░░██─────────██░░██─────────██░░██──██░░██─██░░██──██░░██████░░██─██░░██──██░░██───██░░░░██░░░░██───██░░██─────────██░░██──██░░██─────
─██░░██──────────██░░██─██░░██████████─██░░██████████─██░░██──██░░██─██░░██──██░░░░░░░░░░██─██░░██████░░██─████░░██──██░░████─██░░██████████─██░░██──██░░██████─
─██░░██──────────██░░██─██░░░░░░░░░░██─██░░░░░░░░░░██─██░░██──██░░██─██░░██──██████████░░██─██░░░░░░░░░░██─██░░░░██──██░░░░██─██░░░░░░░░░░██─██░░██──██░░░░░░██─
─██████──────────██████─██████████████─██████████████─██████──██████─██████──────────██████─██████████████─████████──████████─██████████████─██████──██████████─
─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────]]--

--[THIS IS THE GEREAL SETIINGS TAB FOR THE SCRIPT]--
Config.Settings = {
    position = {x = -221.3, y = -1329.79, z = 30.89}, --[POSITION OF THE POINT]--
    ShowPos = {x = -212.08, y = -1324.1, z = 30.89, h = 321.74}, --[SPAWN POSITION OF THE VEHICLE]--
    rdist = 10, --[RENDERDISTANCE OF THE POINT]--

    HashGrabber = false, --[ENABLE THIS FOR THE CONFIGURATION OF THE SCRIPT (WHEN PRESSING "E" IN THE POINT IT WILL SHOW THE HASS NUMBER OF CURREN VEHICLE)]--
}

--[THIS IS THE VEHCILE CONFIG]--
Config.Cars = {
    --Sultan
    {
        Default = {
            Name = "Sultan", --[THE NAME OF THE VEHICLE TO SHOW IN MENU]--
            Hash = 970598228,  --[HASH NAME IF YOU DON'T NOW IT ENABLE THE HASH GRABBER (THIS CAR IS THE sultan)]--
        },

        {
            Name = "Sultan RS", --[NAME OF THE MODIFICATION]--
            Hash = -295689028,  --[AGAIN THE HASH NAME OF THE CAR YOU WANT TO UPGRATE TO]--
            Price = 100000, --[THE PRICE OF THE UPRADE]--

             --[IF YOU WANT SOME DEFAULT MODS TO THE CAR LIKE COLOR ADD THEN HERE. FOLLOW THE LINKG FOR MORE INFO (https://esx-framework.github.io/es_extended/client/functions/game/setvehicleproperties/)]--
            Tuning = {
                modTurbo = true,
                modEngine = 6,
                modBrakes = 4,
                modTransmission = 5,
            },
        },

        --[IF YOU WANT MORE UPGRADES ADD THEM LIKE THIS]--
        --{
        --    Name = "Sultan RS",
        --    Hash = -295689028,
        --    Price = 100000, 

        --    Tuning = {
        --        modTurbo = true,
        --        modEngine = 6,
        --        modBrakes = 4,
        --        modTransmission = 5,
        --    },
        --},
    },


    --banshee
    {
        Default = {
            Name = "Banshee",
            Hash = -1041692462, --banshee
        },

        {
            Name = "Banshee WB",
            Hash = 633712403, --banshee2
            Price = 100000,

            Tuning = {
                modTurbo = true,
                modEngine = 6,
                modBrakes = 4,
                modTransmission = 5,
            },
        },
    },
    

    --buccaneer
    {
        Default = {
            Name = "Buccaneer",
            Hash = -682211828, --buccaneer
        },

        {
            Name = "Buccaneer LowRider",
            Hash = -1013450936, --buccaneer2
            Price = 90000,

            Tuning = {
                modTurbo = true,
                modEngine = 6,
                modBrakes = 4,
                modTransmission = 5,
                modHydrolic = 5,
            },
        },
    },
}