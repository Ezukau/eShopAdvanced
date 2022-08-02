Citizen.CreateThread(function()
  while ESX == nil do
      TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
      Citizen.Wait(0)
  end
end)

Citizen.CreateThread(function()
  while true do 
      local wait = 70
      local PedPos = GetEntityCoords(PlayerPedId())

      for k,v in pairs(Config.Shops) do
          -- Caisse
          if #(PedPos - v.Caisse) < Config.MarkerDistance then
              wait = 0
              DrawMarker(Config.MarkerType, v.Caisse, 0.0, 0.0, 0.0, 0.0,0.0,0.0, Config.MarkerSizeLargeur, Config.MarkerSizeEpaisseur, Config.MarkerSizeHauteur, Config.MarkerColorR, Config.MarkerColorG, Config.MarkerColorB, Config.MarkerOpacite, Config.MarkerSaute, true, p19, Config.MarkerTourne)  
              if #(PedPos - v.Caisse) < 0.5 then
                  Visual.Subtitle(Config.Texte.Caisse, 1)
                  if IsControlJustPressed(0, 51) then
                    OpenMenu4()
                  end
              end
          end
          

          -- Nourritures
          if v.Nourritures ~= nil then
              if #(PedPos - v.Nourritures) < Config.MarkerDistance then
                  wait = 0
                  DrawMarker(Config.MarkerType, v.Nourritures, 0.0, 0.0, 0.0, 0.0,0.0,0.0, Config.MarkerSizeLargeur, Config.MarkerSizeEpaisseur, Config.MarkerSizeHauteur, Config.MarkerColorR, Config.MarkerColorG, Config.MarkerColorB, Config.MarkerOpacite, Config.MarkerSaute, true, p19, Config.MarkerTourne)  
                  if #(PedPos - v.Nourritures) < 0.5 then
                      Visual.Subtitle(Config.Texte.Nourritures, 1)
                      if IsControlJustPressed(0, 51) then
                        OpenMenu()
                      end
                  end
              end
          end

          -- Boissons
          if v.Boissons ~= nil then
              if #(PedPos - v.Boissons) < Config.MarkerDistance then
                  wait = 0
                  DrawMarker(Config.MarkerType, v.Boissons, 0.0, 0.0, 0.0, 0.0,0.0,0.0, Config.MarkerSizeLargeur, Config.MarkerSizeEpaisseur, Config.MarkerSizeHauteur, Config.MarkerColorR, Config.MarkerColorG, Config.MarkerColorB, Config.MarkerOpacite, Config.MarkerSaute, true, p19, Config.MarkerTourne)  
                  if #(PedPos - v.Boissons) < 0.5 then
                      Visual.Subtitle(Config.Texte.Boissons, 1)
                      if IsControlJustPressed(0, 51) then
                        OpenMenu2()
                      end
                  end
              end
          end

          -- Autre
          if v.Divers ~= nil then
              if #(PedPos - v.Divers) < Config.MarkerDistance then
                  wait = 0
                  DrawMarker(Config.MarkerType, v.Divers, 0.0, 0.0, 0.0, 0.0,0.0,0.0, Config.MarkerSizeLargeur, Config.MarkerSizeEpaisseur, Config.MarkerSizeHauteur, Config.MarkerColorR, Config.MarkerColorG, Config.MarkerColorB, Config.MarkerOpacite, Config.MarkerSaute, true, p19, Config.MarkerTourne)  
                  if #(PedPos - v.Divers) < 0.5 then
                      Visual.Subtitle(Config.Texte.Divers, 1)
                      if IsControlJustPressed(0, 51) then
                        OpenMenu3()
                      end
                  end
              end
          end
      end
      Citizen.Wait(wait)
  end
end)