count = 0
lamp = game.Workspace.Streetlamp.Lamp_lightcontainer
while true do
	if count > 24 then
		count = 0
	end	
	
	count = count + 1
	game.Lighting:SetMinutesAfterMidnight(count*60)
	
	if game.Lighting:GetMinutesAfterMidnight() == 7*60 then
		lamp.LampSpotLight.Enabled = false
	end	
	
	if game.Lighting:GetMinutesAfterMidnight() == 18*60 then
		lamp.LampSpotLight.Enabled = true
	end
	
	wait(0.3)	
end
