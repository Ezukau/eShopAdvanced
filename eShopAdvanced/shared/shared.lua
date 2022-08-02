Config = {}

Config = {

    PayerEnSale = true, -- true pour pouvoir payer en sale / false pour ne pas pouvoir payer en sale
    
    Menu = {
        CouleurMenu = "g",  --"r" = rouge, "b" = bleu, "g" = vert, "y" = jaune, "p" = violet, "c" = gris, "m" = gris foncé, "u" = noir, "o" = orange
        Banner ="img_vert", --Couleur de la banière : img_red, img_bleu, img_vert, img_jaune, img_violet, img_gris, img_grisf, img_orange
        NomMenu = "Superette", --Nom du menu 
        DescriptionMenu = "Interaction", --Nom de la Description du menu
    },

    Items = {
        Nourritures = {
            {name = 'bread', label = 'Pain', prix = 5,  ListIndex = 1, MaxItem = 10}
        },
        Boissons = {
            {name = 'water', label = 'Bouteille d\'eau', prix = 1,  ListIndex = 1, MaxItem = 10}
        },
        Divers = {
            {name = 'phone', label = 'Téléphone', prix = 700,  ListIndex = 1, MaxItem = 10}
        }
    },

    Shops = {
        {Ped = vector4(-1820.6, 794.9, 137.1, 130.0), Caisse = vector3(-1821.6, 794.0, 138.1), Nourritures = vector3(-1830.9, 790.3, 138.3), Boissons = vector3(-1830.5, 787.7, 138.3), Divers = vector3(-1825.5, 789.2, 138.2)},
        {Ped = vector4(-705.9, -912.8, 18.23, 90.0), Caisse = vector3(-707.4, -912.8, 19.2), Nourritures = vector3(-716.7, -909.1, 19.2), Boissons = vector3(-718.2, -911.4, 19.2), Divers = vector3(-713.5, -913.7, 19.2)},
        {Ped = vector4(1698.7, 4922.5, 41.1, -35.0), Caisse = vector3(1699.4, 4923.5, 42.1), Nourritures = vector3(1707.9, 4929.0, 42.1), Boissons = vector3(1707.2, 4931.2, 42.1), Divers = vector3(1702.2, 4928.8, 42.1)},
        {Ped = vector4(1164.5, -322.0, 68.2, 100.0), Caisse = vector3(1163.3, -322.2, 69.2), Nourritures = vector3(1153.7, -320.1, 69.2), Boissons = vector3(1152.3, -322.3, 69.2), Divers = vector3(1157.5, -324.0, 69.2)},
        {Ped = vector4(24.4, -1347.1, 28.5, -90.0), Caisse = vector3(25.6, -1347.7, 29.5), Nourritures = vector3(31.9, -1343.1, 29.5), Boissons = vector3(27.6, -1345.2, 29.5), Divers = vector3(29.0, -1342.7, 29.5)},
        {Ped = vector4(-3038.9, 584.5, 6.9, 20.0), Caisse = vector3(-3039.1, 585.7, 7.9), Nourritures = vector3(-3045.5, 590.7, 7.9), Boissons = vector3(-3042.0, 586.9, 7.9), Divers = vector3(-3044.8, 587.4, 7.9)},
        {Ped = vector4(-3242.2, 999.9, 11.8, 0.0), Caisse = vector3(-3241.8, 1001.2, 12.8), Nourritures = vector3(-3245.9, 1007.7, 12.8), Boissons = vector3(-3244.3, 1003.2, 12.8), Divers = vector3(-3246.5, 1004.9, 12.8)},
        {Ped = vector4(549.1, 2671.4, 41.15, 90.0), Caisse = vector3(547.7, 2671.6, 42.2), Nourritures = vector3(541.5, 2666.0, 42.2), Boissons = vector3(546.3, 2668.8, 42.2), Divers = vector3(545.1, 2666.1, 42.2)},
        {Ped = vector4(2677.9, 3279.3, 54.25, -25.0), Caisse = vector3(2679.0, 3280.2, 55.2), Nourritures = vector3(2678.2, 3288.5, 55.2), Boissons = vector3(2677.6, 3283.1, 55.2), Divers = vector3(2676.2, 3285.6, 55.2)},
        {Ped = vector4(1960.0, 3740.1, 31.35, -60.0), Caisse = vector3(1961.2, 3740.7, 32.3), Nourritures = vector3(1964.8, 3747.8, 32.3), Boissons = vector3(1961.6, 3743.4, 32.3), Divers = vector3(1961.7, 3746.3, 32.3)},
        {Ped = vector4(1727.8, 6415.2, 34.03, -110.0), Caisse = vector3(1728.8, 6414.6, 35.0), Nourritures = vector3(1737.16, 6415.47, 35.04), Boissons = vector3(1731.56, 6415.74, 35.04), Divers = vector3(1734.07, 6417.44, 35.04)},
        {Ped = vector4(2557.17, 380.86, 107.62, 4.74), Caisse = vector3(2557.5, 382.1, 108.6), Nourritures = vector3(2553.23, 389.02, 108.62), Boissons = vector3(2555.19, 383.99, 108.62), Divers = vector3(2552.65, 385.49, 108.62)},
        {Ped = vector4(372.59, 326.42, 102.57, 256.76), Caisse = vector3(373.57, 325.54, 103.57), Nourritures = vector3(381.61, 328.55, 103.57), Boissons = vector3(376.06, 327.76, 103.57), Divers = vector3(378.15, 329.81, 103.57)},
        {Ped = vector4(-1486.8, -377.5, 39.2, 130.0), Caisse = vector3(-1487.8, -378.5, 40.2), Nourritures = nil, Boissons = nil, Divers = nil},
        {Ped = vector4(-1221.6, -908.3, 11.33, 30.0), Caisse = vector3(-1222.2, -906.7, 12.3), Nourritures = nil, Boissons = nil, Divers = nil},
        {Ped = vector4(-2966.3, 391.6, 14.03, 90.0), Caisse = vector3(-2967.75, 391.6, 15.0), Nourritures = nil, Boissons = nil, Divers = nil},
        {Ped = vector4(1165.34, 2710.81, 37.16, 181.71), Caisse = vector3(1165.27, 2709.44, 38.16), Nourritures = nil, Boissons = nil, Divers = nil},
        {Ped = vector4(1134.33, -983.08, 45.42, 274.71), Caisse = vector3(1135.7, -982.9, 46.4), Nourritures = nil, Boissons = nil, Divers = nil},

    },

    BlipName = 'Superette', -- Nom du blip
    BlipId = 52, -- Id du blip voir: https://wiki.gtanet.work/index.php?title=Blips
    BlipTaille = 0.6, -- Taille du blip
    BlipCouleur = 2, -- Couleur du blip voir: https://wiki.gtanet.work/index.php?title=Blips
    BlipRange = true, -- Garder le blip sur la map (true = désactiver, false = activé)
    
    Texte = {
        Caisse = "Appuyez sur ~g~[E] ~s~pour accèder a la ~g~Caisse ~s~!",
        Nourritures = "Appuyez sur ~g~[E] ~s~pour accèder a la ~g~Nourritures ~s~!",
        Boissons = "Appuyez sur ~g~[E] ~s~pour accèder aux ~g~Boissons ~s~!",
        Divers = "Appuyez sur ~g~[E] ~s~pour accèder aux ~g~Divers ~s~!",
    },

    --Marker Shop
    MarkerType = 21, -- https://docs.fivem.net/docs/game-references/markers/
    MarkerColorR = 0, -- https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
    MarkerColorG = 255, -- https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
    MarkerColorB = 0, -- https://www.google.com/search?q=html+color+picker&rlz=1C1GCEA_enFR965FR965&oq=html+color+&aqs=chrome.2.69i59j0i131i433i512j0i512l5j69i60.3367j0j7&sourceid=chrome&ie=UTF-8
    MarkerOpacite = 180, 
    MarkerSizeLargeur = 0.3,
    MarkerSizeEpaisseur = 0.3,
    MarkerSizeHauteur = 0.3,
    MarkerDistance = 25,
    MarkerSaute = false, 
    MarkerTourne = false, 

}

--- Ezukau#1144