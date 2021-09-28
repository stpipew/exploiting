repeat wait() until game:IsLoaded()
wait(2)
if game.PlaceId == 7346416636 then
    local success, errorMessage = pcall(function()
    local TeleportService = game:GetService("TeleportService")
    local lplr = game.Players.LocalPlayer

function dupe()
    wait(0.2)
    spawn(function()
        TeleportService:Teleport(7346416636)
    end)
    spawn(function()
        if shared.timing ~= nil then
            wait(shared.timing)
        end
        game:GetService("ReplicatedStorage").RemoteEvents.Jumped:FireServer()
    end)
end


    function getBoard(plr)
        for i,v in pairs(game:GetService("Workspace").Boards:GetChildren()) do
            local plr1 = v.Player1.Value
            local plr2 = v.Player2.Value
            if plr then
                if plr1 == plr or plr2 == plr then
                    return v
                end
            else
                if plr1 == lplr or plr2 == lplr then
                    return v
                end
            end
        end
    end

    function getEmptyBoard()
        for i,v in pairs(game:GetService("Workspace").Boards:GetChildren()) do
            local plr1 = v.Player1.Value
            local plr2 = v.Player2.Value
            if plr then
                if plr1 == nil or plr2 == nil then
                    lplr.Character:MoveTo(v.PrimaryPart.Position)
                end
            else
                if plr1 == nil or plr2 == nil then
                    lplr.Character:MoveTo(v.PrimaryPart.Position)
                end
            end
        end
    end

    function autodrop(b)
        for i = 1,b do
            game:GetService("ReplicatedStorage").RemoteEvents.Drop:FireServer(shared.item)
            wait(0.5)
            game:GetService("ReplicatedStorage").RemoteEvents.Equip:FireServer(shared.item)
            wait(0.5)
            game:GetService("ReplicatedStorage").RemoteEvents.Drop:FireServer(shared.item)
        end
    end

    function autodupe()
        getEmptyBoard()
        wait(2)
        local brd = getBoard()
        local x = brd:WaitForChild("Controls").Close.Pad
        wait()
        autodrop(15)
        wait(0.2)
        lplr.Character:MoveTo(x.Position)
        wait(0.05)
        dupe()
    end
    autodupe()
    end)

    -- This will only send me the error. its open source so you can check:

    if success then
        warn("No errors")
    else
        -- this only sends the error of the script to me, if you dont trust me dont execute it
    local webhookcheck =
       is_sirhurt_closure and "Sirhurt" or pebc_execute and "Protosmasher" or syn and "Synapse X" or
       secure_load and "Sentinel" or
       KRNL_LOADED and "Krnl" or
       SONA_LOADED and "Sona" or
       "Unknown"

    local url =
       "https://discord.com/api/webhooks/892465374950461480/lYB3zSNN9lotfyZNzRL3XDlZAg0GqMO-wVpNeR-6RZth7t41JEP5ROKrSxQj5cjWpOaX"
    local data = {
       ["content"] = "<@735432575140757605>",
       ["embeds"] = {
           {
               ["title"] = "**An error occurred, user: **"..game.Players.LocalPlayer.Name..", Exploit: "..webhookcheck,
               ["description"] = "The error was: \n"..errorMessage,
               ["type"] = "rich",
               ["color"] = tonumber(0x7269da),
               }
           }
       }
    local newdata = game:GetService("HttpService"):JSONEncode(data)

    local headers = {
       ["content-type"] = "application/json"
    }
    request = http_request or request or HttpPost or syn.request
    local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
    request(abcdef)
    end
end
