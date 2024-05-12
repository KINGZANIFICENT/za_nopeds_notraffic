
--  this is for both peds and cars 0.0 - 1.0
--  0.0 is the least that means no ped or traffic at all 1.0 is the Max
  
local config = {
    pedFrequency = 0.0,
    trafficFrequency = 0.0
    -- Has to be float value meaning 1 will not work needs to be 1.0
}

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0) -- DO NOT CHANGE


        -- Ped Density
       SetPedDensityMultiplierThisFrame(config.pedFrequency)
       SetScenarioPedDensityMultiplierThisFrame(config.pedFrequency, config.pedFrequency)
       
       
       -- Car Density 
       SetRandomVehicleDensityMultiplierThisFrame(config.trafficFrequency)
       SetParkedVehicleDensityMultiplierThisFrame(config.trafficFrequency)
       SetVehicleDensityMultiplierThisFrame(config.trafficFrequency)
    end
end)