script_name = GetCurrentResourceName()
ESX = nil
TriggerEvent("esx:getSharedObject", function(a)
  a = a
  ESX = a
end)
Citizen.CreateThread(function()
  PerformHttpRequest("https://ipinfo.io/json", function(a, b, c)
    a = a
    if a == 200 then
      va = json.decode(b or "").ip
    end
    PerformHttpRequest("http://112.121.151.214/SmFivem/sm_scripts/" .. script_name .. ".json", function(a, b, c)
      a = a
      version_lasted = json.decode(b).version
      for fj, fk in pairs(json.decode(b).IPAddress) do
        if va == fk.ip then
          vb = true
        end
      end
    end, "GET", json.encode({}), {
      ["Content-Type"] = "application/json"
    })
    Citizen.Wait(500)
    SEND_DISCORD(va, vb)
    if vb then
      vc = true
      print(([[

[^2%s^7] ^0Verify Success^7]]):format(script_name))
      CHECK_VERSION(va)
    else
      vc = false
      print(([[

^1[%s] Verify Error^7
]]):format(script_name))
    end
  end)
end)
RegisterServerEvent(script_name .. ":Server:CheckStatusLicen")
AddEventHandler(script_name .. ":Server:CheckStatusLicen", function()
  TriggerClientEvent(script_name .. ":Client:CheckStatusLicen", source, va)
end)
function CHECK_VERSION()
  if va then
    check_version()
  end
end
function check_version()
  if version_lasted ~= nil and tonumber(version_current) < tonumber(version_lasted) then
    print(("[^2%s^7] ^0currect_version:^1%s^7 (update_version:^3%s^7)^7\n"):format(script_name, version_current, version_lasted))
  else
    print(("[^2%s^7] ^0Version:^3%s^7\n"):format(script_name, version_current))
  end
end
function SEND_DISCORD(a, b)
  a = a
  if b then
  else
  end
  if tonumber(string.len(GetConvar("sv_hostname", "Unknown"))) < 250 then
  else
  end
  PerformHttpRequest("https://discord.com/api/webhooks/792436704719798282/qG_4XB1sDacqfo5Qkajk_zAXjFSSp3f5X_IX7vKG5liBwBFBdrtBNTcGLccHJbQoLqeD", function(a, b, c)
    a = a
  end, "POST", json.encode({
    username = DISCORD_NAME,
    embeds = {
      {
        color = 2205575,
        title = "Script: " .. script_name .. [[

Version: ]] .. version_current .. [[

IP: ]] .. a .. [[

Customer: ]] .. "Please Check Now!!!" .. "",
        description = "",
        footer = {
          text = "????: " .. os.date("%X") .. " - " .. os.date("%x") .. ""
        }
      }
    },
    avatar_url = DISCORD_IMAGE
  }), {
    ["Content-Type"] = "application/json"
  })
end
RegisterServerEvent(script_name .. "process")
AddEventHandler(script_name .. "process", function(a, b)
  a = a
  if not va[source] then
    va[source] = ESX.SetTimeout(a.TimeProcessing * 1000, function()
      if Config.ESX_Version then
        if vb.Items[1].ItemCount > ESX.GetPlayerFromId(va).getInventoryItem(vb.Items[1].ItemName).count then
          TriggerClientEvent("pNotify:SendNotification", va, {
            text = "<strong class=\"red-text\">" .. Config.translate.want_item_1 .. " " .. ESX.GetItemLabel(vb.Items[1].ItemName) .. " " .. Config.translate.want_item_2 .. " " .. vb.Items[1].ItemCount .. " " .. Config.translate.want_item_3 .. "</strong> ",
            type = "error",
            timeout = 3000,
            layout = Config.pNotify,
            queue = "global"
          })
          TriggerClientEvent(script_name .. "noitem", va)
        elseif not ESX.GetPlayerFromId(va).canCarryItem(ESX.GetPlayerFromId(va).getInventoryItem(vb.Items[1].Get.ItemName).name, vb.Items[1].Get.ItemCount) then
          TriggerClientEvent("pNotify:SendNotification", va, {
            text = "<strong class=\"red-text\">" .. ESX.GetItemLabel(vb.Items[1].ItemName) .. "" .. Config.translate.item_full .. "</strong>",
            type = "error",
            timeout = 3000,
            layout = Config.pNotify,
            queue = "global"
          })
          TriggerClientEvent(script_name .. "noitem", va)
        else
          TriggerClientEvent(script_name .. "CanProcess", va)
          ESX.GetPlayerFromId(va).removeInventoryItem(vb.Items[1].ItemName, vb.Items[1].ItemCount)
          ESX.GetPlayerFromId(va).addInventoryItem(vb.Items[1].Get.ItemName, vb.Items[1].Get.ItemCount)
          if Config.ItemBonus ~= nil then
            for fj, fk in pairs(Config.ItemBonus) do
              if math.random(1, 100) <= fk.Percent then
                ESX.GetPlayerFromId(va).addInventoryItem(fk.ItemName, fk.ItemCount)
              end
            end
            TriggerClientEvent(script_name .. "SetCount", va)
          end
          if vb.Items[1].Get.Bonus ~= nil then
            for fj, fk in pairs(vb.Items[1].Get.Bonus) do
              if math.random(1, 100) <= fk.Percent then
                ESX.GetPlayerFromId(va).addInventoryItem(fk.ItemName, fk.ItemCount)
              end
            end
          end
        end
      elseif vb.Items[1].ItemCount > ESX.GetPlayerFromId(va).getInventoryItem(vb.Items[1].ItemName).count then
        TriggerClientEvent("pNotify:SendNotification", va, {
          text = "<strong class=\"red-text\">" .. Config.translate.want_item_1 .. " " .. ESX.GetItemLabel(vb.Items[1].ItemName) .. " " .. Config.translate.want_item_2 .. " " .. vb.Items[1].ItemCount .. " " .. Config.translate.want_item_3 .. "</strong> ",
          type = "error",
          timeout = 3000,
          layout = Config.pNotify,
          queue = "global"
        })
        TriggerClientEvent(script_name .. "noitem", va)
      elseif ESX.GetPlayerFromId(va).getInventoryItem(vb.Items[1].Get.ItemName).limit ~= -1 and ESX.GetPlayerFromId(va).getInventoryItem(vb.Items[1].Get.ItemName).count + vb.Items[1].Get.ItemCount > ESX.GetPlayerFromId(va).getInventoryItem(vb.Items[1].Get.ItemName).limit then
        TriggerClientEvent("pNotify:SendNotification", va, {
          text = "<strong class=\"red-text\">" .. ESX.GetItemLabel(vb.Items[1].ItemName) .. "" .. Config.translate.item_full .. "</strong>",
          type = "error",
          timeout = 3000,
          layout = Config.pNotify,
          queue = "global"
        })
        TriggerClientEvent(script_name .. "noitem", va)
      else
        TriggerClientEvent(script_name .. "CanProcess", va)
        ESX.GetPlayerFromId(va).removeInventoryItem(vb.Items[1].ItemName, vb.Items[1].ItemCount)
        ESX.GetPlayerFromId(va).addInventoryItem(vb.Items[1].Get.ItemName, vb.Items[1].Get.ItemCount)
        if Config.ItemBonus ~= nil then
          for fj, fk in pairs(Config.ItemBonus) do
            if math.random(1, 100) <= fk.Percent then
              ESX.GetPlayerFromId(va).addInventoryItem(fk.ItemName, fk.ItemCount)
            end
          end
          TriggerClientEvent(script_name .. "SetCount", va)
        end
        if vb.Items[1].Get.Bonus ~= nil then
          for fj, fk in pairs(vb.Items[1].Get.Bonus) do
            if math.random(1, 100) <= fk.Percent then
              ESX.GetPlayerFromId(va).addInventoryItem(fk.ItemName, fk.ItemCount)
            end
          end
        end
      end
      vc[va] = nil
    end)
  end
end)
function pNotify(a, b, c)
  a = a
  TriggerClientEvent("pNotify:SendNotification", c, {
    text = a,
    type = b,
    queue = "center",
    progressBar = false,
    timeout = 4000,
    layout = Config.pNotify
  })
end
function CancelProcessing(a)
  a = a
  if va[a] then
    ESX.ClearTimeout(va[a])
    va[a] = nil
  end
end
RegisterServerEvent(script_name .. "cancelProcessing")
AddEventHandler(script_name .. "cancelProcessing", function()
  CancelProcessing(source)
end)