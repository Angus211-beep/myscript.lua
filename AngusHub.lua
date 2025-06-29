local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Angus Hub",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Angus Interface Suite",
   LoadingSubtitle = "by Angus",
   ShowText = "Angus", -- for mobile users to unhide rayfield, change if you'd like
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "K", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = true,
   DisableBuildWarnings = true, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = true, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "QnpzKTAesH", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local PlayerTab = Window:CreateTab("Player", nil) -- Title, Image
local Section = PlayerTab:CreateSection("Movement")

local Slider = PlayerTab:CreateSlider({
   Name = "WalkSpeed",
   Range = {0, 300},
   Increment = 1,
   Suffix = "WalkSpeed",
   CurrentValue = 16,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
   end,
})
local Slider = PlayerTab:CreateSlider({
   Name = "JumpPower",
   Range = {0, 300},
   Increment = 5,
   Suffix = "JumpPower",
   CurrentValue = 50,
   Flag = "Slider2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Value)
   end,
})

local Button = PlayerTab:CreateButton({
   Name = "Headless & Korblox",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/ozashub/FAKE/refs/heads/main/Protected_8087317323440302.lua"))()
   end,
})

local DaHoodTab = Window:CreateTab("Da Hood", nil) -- Title, Image

local Button = DaHoodTab:CreateButton({
   Name = "Lock On",
   Callback = function()
getgenv().MTXClient_Settings = {
    ["Aim"] = {
       ["AimPart"] = "Head",
       ["AimlockKey"] = "c",
       ["AimRadius"] = 35,
    }, 

    ["Verifications"] = {
        ["ThirdPerson"] = true,
        ["FirstPerson"] = true,
        ["TeamCheck"] = false,

        ["K_O"] = true,
        ["Grabing"] = true,
    },

    ["Utility"] = {
        ["NoSlow"] = true,
        ["AntiGroundShots"] = true,
    },

    ["Predict"] = {
        ["PredictMovement"] = false,
        ["PredictionVelocity"] = 7,
    },
};

loadstring(game:HttpGet("https://raw.githubusercontent.com/MTXClient/MTX-Client/refs/heads/main/Games/DH.lua"))()
   end,
})
