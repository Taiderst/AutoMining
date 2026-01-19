  GNU nano 8.7                               Auto
-- HARVEST AUTOMÁTICO Y RÁPIDO

local prompt = script.Parent:WaitForChild("ProximityPrompt")

-- Ajustes
prompt.HoldDuration = 0.2 -- velocidad del harvest
prompt.RequiresLineOfSight = false
prompt.MaxActivationDistance = 12

prompt.PromptShown:Connect(function(player)
        -- Inicia el harvest automáticamente
        prompt:InputHoldBegin(player)

        task.wait(prompt.HoldDuration)

        prompt:InputHoldEnd(player)
end)
