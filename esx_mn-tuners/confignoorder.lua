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
    position = {x = -191.36, y = -1323.56, z = 27.15},
    ShowPos = {x = -201.24, y = -1325.65, z = 26.14, h = 163.53},
    rdist = 10,

    HashGrabber = true,
}

Config.Cars = {
    --Sultan
    {
        Default = {
            Name = "Sultan",
            Hash = 970598228, --sultan
        },

        {
            Name = "Sultan RS",
            Hash = -295689028, --sultanrs
            Price = 100000,

            Tuning = {
                modTurbo = true,
                modEngine = 6,
                modBrakes = 4,
                modTransmission = 5,
            },
        },
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


    --Lamborghini Urus
    {
        Default = {
            Name = "Lamborghini Urus",
            Hash = 1094481404, --urus2018
        },

        {
            Name = "Lamborghini Urus Mansory",
            Hash = -184310767, --venatus
            Price = 325000,

            Tuning = {
                modTurbo = true,
                modEngine = 3,
                modBrakes = 3,
                modArmor = 2,
                modTransmission = 2,
                color1 = 0,
                windowTint = 5,

                extras = { 
                    [1] = true,
                    [2] = true,
                    [3] = true,
                    [12] = true,
                },
            },
        },
    },


    --Mercedes G class
    {
        Default = {
            Name = "Mercedes G65",
            Hash = 178350184, --g65
        },
    
        {
            Name = "Brabus G500",
            Hash = 974390719, --brabus500
            Price = 115000,
    
            Tuning = {
                modTurbo = true,
                modEngine = 2,
                modBrakes = 2,
                modTransmission = 2,
                modArmor = 6,
                plateIndex = 1,
    
                extras = { 
                    [1] = true,
                    [2] = false,
                    [3] = true,
                    [4] = false,
                    [5] = true,
                },
            },
        },
        {
            Name = "Amg 6x6",
            Hash = -1442200536, --g63amg6x6
            Price = 335000,
    
            Tuning = {
                modTurbo = true,
                modEngine = 2,
                modBrakes = 2,
                modTransmission = 2,
                modArmor = 6,
                plateIndex = 1,
            },
        },
    },


    --Aston Martin DBS
    {
        Default = {
            Name = "Aston Martin DBS",
            Hash = 801435487, --19dbs
        },

        {
            Name = "Mansory Cyrus",
            Hash = -1333692642, --cyrus
            Price = 250000,

            Tuning = {
                modTurbo = true,
                modEngine = 3,
                modBrakes = 3,
                modArmor = 2,
                modTransmission = 2,
                color1 = 0,
                windowTint = 5,

                extras = { 
                    [1] = false,
                    [2] = true,
                },
            },
        },
    },


    --Maserati Grand Tourismo
    {
        Default = {
            Name = "Maserati Grand Tourismo",
            Hash = 450852636, --mgrantur2010
        },

        {
            Name = "Maserati Grand Tourismo LB",
            Hash = -1907071539, --granlb
            Price = 235000,

            Tuning = {
                modTurbo = true,
                color1 = 0,
            },
        },
    },
    
    
    --Rolls Royce Phantom
    {
        Default = {
            Name = "Rolls Royce Phantom LW",
            Hash = -1724630220, --rrphantom
        },

        {
            Name = "Mansory VIII",
            Hash = -1057269014, --ph8m
            Price = 175000,

            Tuning = {
                modTurbo = true,
                modEngine = 3,
                modBrakes = 3,
                modArmor = 2,
                modTransmission = 2,
                color1 = 0,
                windowTint = 5,

                extras = { 
                    [1] = false,
                    [2] = true,
                },
            },
        },
    },


    --BMW M4
    {
        Default = {
            Name = "BMW M4",
            Hash = 1998346768, --f82
        },

        {
            Name = "Bmw M4 Liberty Walk",
            Hash = 1867789750, --m4lb
            Price = 201000,

            Tuning = {
                modTurbo = true,
                modEngine = 3,
                modBrakes = 3,
                modArmor = 2,
                modTransmission = 2,
                color1 = 0,
                windowTint = 5,
                plateIndex = 1,

                extras = { 
                    [1] = false,
                    [2] = true,   
                },
            },
        },
    },
    

    --Lamborgini Huracan evo
    {
        Default = {
            Name = "Lamborgini Huracan evo",
            Hash = -1176538962, --hurevo
        },

        {
            Name = "Mansory Trofeo",
            Hash = 926408113, --torofeo
            Price = 300000,

            Tuning = {
                modTurbo = true,
                modEngine = 3,
                modBrakes = 3,
                modTransmission = 2,
                color1 = 0,

                extras = { 
                    [1] = false,
                    [2] = true,   
                },
            },
        },
        
        {
            Name = "Huracan Liberty Walk",
            Hash = 1028745873, --lwhuracan
            Price = 231000,

            Tuning = {
                modTurbo = true,
                modEngine = 3,
                modBrakes = 3,
                modTransmission = 2,
                color1 = 0,
            },
        },

        {
            Name = "Huracan Liberty Walk Silhouette",
            Hash = 429522388, --lbsihu
            Price = 231000,

            Tuning = {
                modTurbo = true,
                modEngine = 2,
                modBrakes = 2,
                modTransmission = 2,
                color1 = 0,

                extras = { 
                    [1] = true,
                },
            },
        },
    },
        

    --BMW M8
    {
        Default = {
            Name = "BMW M8",
            Hash = -1404319008, --bmwm8
        },

        {
            Name = "BMW M8 Liberty Walk",
            Hash = 340487520, --mansm8
            Price = 265000,

            Tuning = {
                modTurbo = true,
                modEngine = 4,
                modBrakes = 4,
                modTransmission = 4,
                color1 = 0,
            },
        },
    },
            

    --Nissan GTR
    {
        Default = {
            Name = "Nissan GTR",
            Hash = -1752116803, --gtr
        },

        {
            Name = "Nissan GTR Liberty Walk Silhouette",
            Hash = 252937954, --gtrlb2
            Price = 33000,

            Tuning = {
                modTurbo = true,
                modEngine = 4,
                modBrakes = 2,
                modTransmission = 2,
                color1 = 0,

                extras = { 
                    [10] = true,
                    [12] = false,   
                },
            },
        },
    },
                    

    --Mercedes X class
    {
        Default = {
            Name = "Mercedes X class",
            Hash = 99671692, --mercxclass
        },

        {
            Name = "Mercedes x Pickup Design 6x6",
            Hash = -74953340, --xxxxx
            Price = 33000,

            Tuning = {
                modTurbo = true,
                modEngine = 3,
                modBrakes = 3,
                modTransmission = 2,
                color1 = 0,
                windowTint = 1,
                modArmor = 6,
                plateIndex = 1,
            },
        },
        
        {
            Name = "Mercedes x Pickup Design yacht edition",
            Hash = -371324973, --yachting
            Price = 33000,

            Tuning = {
                modTurbo = true,
                modEngine = 3,
                modBrakes = 3,
                modTransmission = 2,
                color1 = 0,
                modArmor = 3,
                plateIndex = 1,

                extras = { 
                    [1] = true,
                    [2] = true,   
                    [3] = true,   
                },
            },
        },
    },
                    

    --Bugatti Chiron
    {
        Default = {
            Name = "Bugatti Chiron",
            Hash = 10019767, --chiron17
        },

        {
            Name = "Mancory Centuria",
            Hash = 389821046, --centuria
            Price = 33000,

            Tuning = {
                modTurbo = true,
                modEngine = 2,
                modBrakes = 3,
                modTransmission = 2,
                color1 = 0,

                extras = { 
                    [1] = true,
                    [2] = false,   
                    [3] = false,   
                    [4] = true,   
                    [5] = true,   
                },
            },
        },
    },
                        

    --Ford Mustang 1965
    {
        Default = {
            Name = "Ford Mustang 1965",
            Hash = -1567919678, --mustang65
        },

        {
            Name = "Hoonicorn",
            Hash = -1733650958, --keenblock
            Price = 33000,

            Tuning = {
                modTurbo = true,
                color1 = 14,
            },
        },
    },
                            

    --Golf 7 GTI
    {
        Default = {
            Name = "Golf 7 GTI",
            Hash = -2114265264, --golf7gti
        },

        {
            Name = "Golf Pandem",
            Hash = 300680485, --mk7pandem
            Price = 33000,

            Tuning = {
                modTurbo = true,
                color1 = 0,
                plateIndex = 1,

                extras = { 
                    [1] = false,
                    [10] = false,   
                },
            },
        },
    },
                                

    --DMC-12 Dolorean
    {
        Default = {
            Name = "DMC-12 Dolorean",
            Hash = -690743858, --dmc12
        },

        {
            Name = "DMC-12 Dolorean WB",
            Hash = -1640135981, --dmc12wb
            Price = 33000,

            Tuning = {
                modTurbo = true,
                modEngine = 5,
                modBrakes = 4,
                modTransmission = 4,
                modSuspension = 5,
                color1 = 117,
                color2 = 118,

                extras = { 
                    [1] = false,  
                },
            },
        },
    },
                                    

    --Mazda MX-5
    {
        Default = {
            Name = "Mazmda MX-5",
            Hash = -1819709335, --surano3
        },

        {
            Name = "Mazda MX-5 Pandem",
            Hash = 1323262305, --mxpan
            Price = 33000,

            Tuning = {
                modTurbo = true,
                modEngine = 2,
                modBrakes = 2,
                modTransmission = 2,
                modSuspension = 5,

                extras = { 
                    [1] = false,  
                    [2] = true,  
                },
            },
        },
    },
                                        

    --Dodge Hellcat
    {
        Default = {
            Name = "Dodge Hellcat",
            Hash = 701998922, --hellcat
        },

        {
            Name = "Dodge Hellcat Liberty Walk",
            Hash = -1624886479, --hellcatlb
            Price = 33000,

            Tuning = {
                modTurbo = true,
                modEngine = 2,
                modBrakes = 2,
                modTransmission = 2,

                extras = { 
                    [1] = true,  
                },
            },
        },
    },
}