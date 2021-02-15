player = game:GetService("Players").LocalPlayer
repeat wait() until not player.PlayerGui.UI.title.Visible
UIersr = player.PlayerGui:WaitForChild("UI")
TAtimer = UIersr:WaitForChild("UI"):WaitForChild("timer")
RTAtimer = UIersr:WaitForChild("UI").timerRTA
Loadpicture = UIersr.load
icecreamtext = UIersr:WaitForChild("UI").icedcream.tx.outline
titlersr = UIersr:WaitForChild("title")
loadremover = UIersr:WaitForChild("loop").center
starttimer = false
RunService = game:GetService("RunService")
alreadydoingit = false
player.PlayerGui.ChildRemoved:Connect(function(instance)
  if tostring(instance.Name) == "UI" and starttimer then
    Input.KeyPress(0x63)
    starttimer = false
  end
end)
TAtimer.Changed:Connect(function(property)
 if property == "Text" then
  if (tostring(TAtimer.Text):find("0:00") ~= nil) and (not starttimer) then
    Input.KeyPress(0x61)
    starttimer = true
  end
 end
end)
loadremover.Changed:Connect(function(property)
  if property == "AbsoluteSize" and (not alreadydoingit) and starttimer then
    if loadremover.AbsoluteSize.X < 135 then
      alreadydoingit = true
      lowestersr = loadremover.AbsoluteSize.X
      Input.KeyPress(0x67)
      repeat
        currentlersr = loadremover.AbsoluteSize.X  
        if currentlersr < lowestersr then
          lowestersr = currentlersr
        end
        if not starttimer then
          break
        end
        wait()
      until currentlersr > lowestersr
      if starttimer then  
        Input.KeyPress(0x67)
        repeat wait() until loadremover.AbsoluteSize.X >= 135
      end
      alreadydoingit = false
    end
  end
end)
icecreamtext.Changed:Connect(function(property)
	if property == "Text" then
      if starttimer then
		Input.KeyPress(0x61)
      end
	end
end)
player.PlayerGui.ChildRemoved:Connect(function(instance)
 if tostring(instance.Name) == "UI" then
  repeat wait() until player.PlayerGui.UI.title.Visible
  repeat wait() until not player.PlayerGui.UI.title.Visible
  UIersr = player.PlayerGui:WaitForChild("UI")
  TAtimer = UIersr:WaitForChild("UI"):WaitForChild("timer")
  RTAtimer = UIersr:WaitForChild("UI").timerRTA
  Loadpicture = UIersr.load
  icecreamtext = UIersr:WaitForChild("UI").icedcream.tx.outline
  titlersr = UIersr:WaitForChild("title")
  RunService = game:GetService("RunService")
  loadremover = UIersr:WaitForChild("loop").center
  TAtimer.Changed:Connect(function(property)
   if property == "Text" then
    if (tostring(TAtimer.Text):find("0:00") ~= nil) and (not starttimer) then
      Input.KeyPress(0x61)
      starttimer = true
    end
   end
  end)
  loadremover.Changed:Connect(function(property)
    if property == "AbsoluteSize" and (not alreadydoingit) and starttimer then
      if loadremover.AbsoluteSize.X < 135 then
        alreadydoingit = true
        lowestersr = loadremover.AbsoluteSize.X
        Input.KeyPress(0x67)
        repeat
          currentlersr = loadremover.AbsoluteSize.X  
          if currentlersr < lowestersr then
            lowestersr = currentlersr
          end
          if not starttimer then
            break
          end
          wait()
        until currentlersr > lowestersr
        if starttimer then  
          Input.KeyPress(0x67)
          repeat wait() until loadremover.AbsoluteSize.X >= 135
        end
        alreadydoingit = false
      end
    end
  end)
  icecreamtext.Changed:Connect(function(property)
  	if property == "Text" then
        if starttimer then
	  	Input.KeyPress(0x61)
       end
  	end
  end)
 end
end)
