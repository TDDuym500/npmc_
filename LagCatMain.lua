repeat task.wait() until game:IsLoaded() and game.Players.LocalPlayer

getgenv().AutoExecute = true

local MainScript = "https://raw.githubusercontent.com/TDDuym500/npmc_/refs/heads/main/LagCatMain.lua"

local GameList = {
    ["2753915549"] = "Games/LagCatBloxFruit.lua",
    ["4442272183"] = "Games/LagCatBloxFruit.lua",
    ["7449423635"] = "Games/LagCatBloxFruit.lua",

    ["79546208627805"] = "LagCat99NightsInTheForest.lua",
    ["10260193230"] = "Games/LagCatMemeSea.lua",
    ["18687417158"] = "Games/LagCatForsaken.lua",

    ["127742093697776"] = "LagCatPlantsVsBrainrots.lua",
}

local function AutoQueue()
    if not getgenv().AutoExecute then return end
    local qtp = queue_on_teleport
        or (syn and syn.queue_on_teleport)
        or (fluxus and fluxus.queue_on_teleport)
        or (KRNL_LOADED and queue_on_teleport)
    if type(qtp) == "function" then
        local Code = ([[loadstring(game:HttpGet("%s"))()]]):format(MainScript)
        pcall(qtp, Code)
    end
end

AutoQueue()

local function LoadGameScript()
    local file = GameList[tostring(game.PlaceId)]
    if not file then return end
    local base = "https://raw.githubusercontent.com/TDDuym500/npmc_/refs/heads/main/"
    local ok, src = pcall(function()
        return game:HttpGet(base .. file)
    end)
    if not ok then return end
    local fn = loadstring(src)
    if not fn then return end
    fn()
end

if getgenv().AutoExecute then
    LoadGameScript()
end

game.Players.LocalPlayer.CharacterAdded:Connect(function()
    task.wait(1)
    if getgenv().AutoExecute then
        AutoQueue()
        LoadGameScript()
    end
end)
