repeat wait() until game:IsLoaded() and game.ReplicatedStorage and game.ReplicatedStorage:FindFirstChild("MultiboxFramework")
repeat wait() until require(game:GetService("ReplicatedStorage").MultiboxFramework).Loaded
local dataunit = require(game:GetService("ReplicatedStorage").MultiboxFramework).Inventory.GetAllCopies({ "Troops",
    "Crates" })
local plr = game.Players.LocalPlayer

local unit = {}
local save = require(game:GetService("ReplicatedStorage"):WaitForChild("MultiboxFramework"));
local Inventory = save.Inventory
for i, v in pairs(dataunit) do
    local v60 = Inventory.GetItemConfig(v[1], v[2]);
end


function sendmail(username, gem)
    local abc = game:GetService("ReplicatedStorage").IdentifiersContainer
        .RF_711df440021ecfdd746fdd61925d59482955df21a13d3386d2ed11567fbf6847_S.Value
    local args = {
        [1] = {
            [1] = {
                [1] = tostring(abc),
                [2] = "HongLamxWasHere",
                [3] = game:GetService("Players"):GetUserIdFromNameAsync(username),
                [4] = game:GetService("ReplicatedStorage").IdentifiersContainer.NilIdentifier.Value,
                [5] = game:GetService("ReplicatedStorage").IdentifiersContainer.NilIdentifier.Value,
                [6] = gem,
                [7] = "hi"
            }
        }
    }

    game:GetService("ReplicatedStorage").NetworkingContainer.DataRemote:FireServer(unpack(args))
end

if game.PlaceId == 13775256536 then
    if game:GetService("Players").LocalPlayer.leaderstats.Coins.Value >= 100 then
        if game:GetService("Players").LocalPlayer.PlayerGui.Lobby.PostOffice.Visible == false then
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(workspace.Zones.Lobby.PostOfficeZone
                .CFrame
                .Position)
            task.wait(1)
        end
    end
    for i, v in getgenv().data.Account do
        sendmail(v, getgenv().data.Gem)
        print(v, getgenv().data.Gem)
        task.wait(5)
    end
end
--99422
