ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

local open = false
local Main = RageUI.CreateMenu(Config.Menu.NomMenu, Config.Menu.DescriptionMenu, nil, nil, 'root_cause5', Config.Menu.Banner)
local VoirPanier = RageUI.CreateSubMenu(Main, "Mon Panier", "Interaction")
Main.Closed = function()
  FreezeEntityPosition(GetPlayerPed(-1), false)
  RageUI.Visible(Main, false)
  main = false
end

local Panier = {}
local PrixTot = 0

local Nourritures = {}
for i = 1, 10 do
	table.insert(Nourritures, i)
end

function OpenMenu()
  if main then 
    main = false
    RageUI.Visible(Main, false)
    return
  else
    main = true 
    RageUI.Visible(Main, true)
    FreezeEntityPosition(GetPlayerPed(-1), true)
    Citizen.CreateThread(function()
    while main do 
    RageUI.IsVisible(Main,function()

      RageUI.Button("~"..Config.Menu.CouleurMenu.."~→ ~s~Voir mon panier", nil, {RightLabel = '→→'}, true, {
        onSelected = function()
        end
      }, VoirPanier)

      RageUI.Button("~"..Config.Menu.CouleurMenu.."~→ ~s~Prix total : ".."~g~"..PrixTot.."$", nil, {RightLabel = nil}, true, {
        onSelected = function()
        end
      })

      RageUI.Separator("~"..Config.Menu.CouleurMenu.."~_____________")
      for k,v in pairs(Config.Items.Nourritures) do
        RageUI.List("~"..Config.Menu.CouleurMenu.."~→ ~s~"..v.label.." : "..v.prix.."~g~$~s~", Nourritures, v.ListIndex, nil, {Preview}, true, {


          onListChange = function(i, Item)
            v.ListIndex = i;
          end,

          onSelected = function()
              
            table.insert(Panier, {name = v.name, number = v.ListIndex, prix = v.prix, label = v.label})
            PrixTot = PrixTot + (v.prix*v.ListIndex)
            ESX.ShowNotification("+ ".."~g~"..v.ListIndex.."~b~ "..v.label.."~s~ ".."dans le panier")

          end, 

        })
      end
    end)

    RageUI.IsVisible(VoirPanier,function()
      for k,v in pairs(Panier) do
        ParA = v.prix*v.number
        RageUI.Button("~"..Config.Menu.CouleurMenu.."~→ ~s~ x"..v.number.. " ~s~" ..v.label, "Cliquez sur ~"..Config.Menu.CouleurMenu.."~[ENTER] ~s~pour supprimer l'article", {RightLabel = ParA.."~"..Config.Menu.CouleurMenu.."~$"}, true, {
          onSelected = function()
            table.remove(Panier, k)
            PrixTot = PrixTot - (v.prix*v.number)
          end
        })
      end
    end)

    Wait(0)
  end
end)
end
end    

local Boissons = {}
for i = 1, 10 do
	table.insert(Boissons, i)
end

function OpenMenu2()
  if main then 
    main = false
    RageUI.Visible(Main, false)
    return
  else
    main = true 
    RageUI.Visible(Main, true)
    FreezeEntityPosition(GetPlayerPed(-1), true)
    Citizen.CreateThread(function()
    while main do 
    RageUI.IsVisible(Main,function()

      RageUI.Button("~"..Config.Menu.CouleurMenu.."~→ ~s~Voir mon panier", nil, {RightLabel = '→→'}, true, {
        onSelected = function()
        end
      }, VoirPanier)

      RageUI.Button("~"..Config.Menu.CouleurMenu.."~→ ~s~Prix total : ".."~g~"..PrixTot.."$", nil, {RightLabel = nil}, true, {
        onSelected = function()
        end
      })
      RageUI.Separator("~"..Config.Menu.CouleurMenu.."~_____________")
      for k,v in pairs(Config.Items.Boissons) do
        RageUI.List("~"..Config.Menu.CouleurMenu.."~→ ~s~"..v.label.." : "..v.prix.."~g~$~s~", Boissons, v.ListIndex, nil, {Preview}, true, {

          onListChange = function(i, Item)
            v.ListIndex = i;
          end,

          onSelected = function()
              
            table.insert(Panier, {name = v.name, number = v.ListIndex, prix = v.prix, label = v.label})
            PrixTot = PrixTot + (v.prix*v.ListIndex)
            ESX.ShowNotification("+ ".."~g~"..v.ListIndex.."~b~ "..v.label.."~s~ ".."dans le panier")

          end, 

        })
      end
    end)

    RageUI.IsVisible(VoirPanier,function()
      for k,v in pairs(Panier) do
        ParA = v.prix*v.number
        RageUI.Button("~"..Config.Menu.CouleurMenu.."~→ ~s~ x"..v.number.. " ~s~" ..v.label, "Cliquez sur ~"..Config.Menu.CouleurMenu.."~[ENTER] ~s~pour supprimer l'article", {RightLabel = ParA.."~"..Config.Menu.CouleurMenu.."~$"}, true, {
          onSelected = function()
            table.remove(Panier, k)
            PrixTot = PrixTot - (v.prix*v.number)
          end
        })
      end
    end)

    Wait(0)
  end
end)
end
end   

local Divers = {}
for i = 1, 10 do
	table.insert(Divers, i)
end

function OpenMenu3()
  if main then 
    main = false
    RageUI.Visible(Main, false)
    return
  else
    main = true 
    RageUI.Visible(Main, true)
    FreezeEntityPosition(GetPlayerPed(-1), true)
    Citizen.CreateThread(function()
    while main do 
    RageUI.IsVisible(Main,function()

      RageUI.Button("~"..Config.Menu.CouleurMenu.."~→ ~s~Voir mon panier", nil, {RightLabel = '→→'}, true, {
        onSelected = function()
        end
      }, VoirPanier)

      RageUI.Button("~"..Config.Menu.CouleurMenu.."~→ ~s~Prix total : ".."~g~"..PrixTot.."$", nil, {RightLabel = nil}, true, {
        onSelected = function()
        end
      })

      RageUI.Separator("~"..Config.Menu.CouleurMenu.."~_____________")
      for k,v in pairs(Config.Items.Divers) do
        RageUI.List("~"..Config.Menu.CouleurMenu.."~→ ~s~"..v.label.." : "..v.prix.."~g~$~s~", Divers, v.ListIndex, nil, {Preview}, true, {

          onListChange = function(i, Item)
            v.ListIndex = i;
          end,

          onSelected = function()
              
            table.insert(Panier, {name = v.name, number = v.ListIndex, prix = v.prix, label = v.label})
            PrixTot = PrixTot + (v.prix*v.ListIndex)
            ESX.ShowNotification("+ ".."~g~"..v.ListIndex.."~b~ "..v.label.."~s~ ".."dans le panier")

          end, 

        })
      end
    end)

    RageUI.IsVisible(VoirPanier,function()
      for k,v in pairs(Panier) do
        ParA = v.prix*v.number
        RageUI.Button("~"..Config.Menu.CouleurMenu.."~→ ~s~ x"..v.number.. " ~s~" ..v.label, "Cliquez sur ~"..Config.Menu.CouleurMenu.."~[ENTER] ~s~pour supprimer l'article", {RightLabel = ParA.."~"..Config.Menu.CouleurMenu.."~$"}, true, {
          onSelected = function()
            table.remove(Panier, k)
            PrixTot = PrixTot - (v.prix*v.number)
          end
        })
      end
    end)

    Wait(0)
  end
end)
end
end 





function OpenMenu4()
  if main then 
    main = false
    RageUI.Visible(Main, false)
    return
  else
    main = true 
    RageUI.Visible(Main, true)
    FreezeEntityPosition(GetPlayerPed(-1), true)
    Citizen.CreateThread(function()
    while main do 
    RageUI.IsVisible(Main,function()

      RageUI.Button("~"..Config.Menu.CouleurMenu.."~→ ~s~Voir mon panier", nil, {RightLabel = '→→'}, true, {
        onSelected = function()
        end
      }, VoirPanier)

      RageUI.Button("~"..Config.Menu.CouleurMenu.."~→ ~s~Prix total : ".."~g~"..PrixTot.."$", nil, {RightLabel = nil}, true, {
        onSelected = function()
        end
      })

      if PrixTot > 0 then 
        RageUI.Separator("~"..Config.Menu.CouleurMenu.."~_____________")

        RageUI.Checkbox("~"..Config.Menu.CouleurMenu.."~→~s~ Carte bancaire", nil, bancaire, {}, {
          onChecked = function()
            bancaire = true
            espece = false
            sale = false
          end,
          onUnChecked = function()
            bancaire = false
          end
        })
        
        RageUI.Checkbox("~"..Config.Menu.CouleurMenu.."~→~s~ Espéce", nil, espece, {}, {
          onChecked = function()
            espece = true
            bancaire = false
            sale = false
          end,
          onUnChecked = function()
            espece = false
          end
        })

        if Config.PayerEnSale then
          RageUI.Checkbox("~"..Config.Menu.CouleurMenu.."~→~s~ Argent non declaré", nil, sale, {}, {
            onChecked = function()
              sale = true
              bancaire = false
              espece = false
            end,
            onUnChecked = function()
              sale = false
            end
          })
        end
        RageUI.Separator("~"..Config.Menu.CouleurMenu.."~_____________")

        if bancaire or espece or sale == true then
          RageUI.Button("~"..Config.Menu.CouleurMenu.."~→~s~ Confirmer l'achat", nil, {RightBadge = RageUI.BadgeStyle.Tick}, true , {
            onSelected = function()
              if bancaire or espece or sale == true then
                TriggerServerEvent("eAdvancedShop:Pay", Panier, PrixTot, bancaire, espece, sale)
                PrixTot = 0
                Panier = {}
                sale = false
                bancaire = false
                espece = false
              end
            end
          })
        end
      elseif PrixTot == 0 then
        RageUI.Separator("~"..Config.Menu.CouleurMenu.."~_____________")
        RageUI.Button("~"..Config.Menu.CouleurMenu.."~→~c~ Votre panier est vide", nil, {RightBadge = RageUI.BadgeStyle.Lock}, true , {
          onSelected = function()
          end
        })
      end
    end)

    RageUI.IsVisible(VoirPanier,function()
      for k,v in pairs(Panier) do
        ParA = v.prix*v.number
        RageUI.Button("~"..Config.Menu.CouleurMenu.."~→ ~s~ x"..v.number.. " ~s~" ..v.label, "Cliquez sur ~"..Config.Menu.CouleurMenu.."~[ENTER] ~s~pour supprimer l'article", {RightLabel = ParA.."~"..Config.Menu.CouleurMenu.."~$"}, true, {
          onSelected = function()
            table.remove(Panier, k)
            PrixTot = PrixTot - (v.prix*v.number)
          end
        })
      end
    end)

    Wait(0)
  end
end)
end
end 




--- Ezukau#1144