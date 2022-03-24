Config = {}

-- Model NPC https://docs.fivem.net/docs/game-references/ped-models/
-- Blip https://docs.fivem.net/docs/game-references/blips/

Config["ESX_Version"] = true -- ปรับเป็น true เมื่อใช้ es_extended 1.2 ขึ้นไป

Config["font"] = "sarabun"

Config["pNotify"] = "centerLeft"

Config["ProcessBar"] = {
    [1] = function(time, textZone)
        -------
        TriggerEvent("mythic_progbar:client:progress", {
            name = "unique_action_name",
            duration = time,
            label = textZone,
            useWhileDead = false,
            canCancel = false,
            controlDisables = {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = false,
            },
        }, function(status)
            if not status then

            end
        end)
        -------
    end,
    [2] = function(time, textZone, Direct, Scene)
        -------
        TriggerEvent("mythic_progbar:client:progress", {
            name = "unique_action_name",
            duration = time,
            label = textZone,
            useWhileDead = false,
            canCancel = false,
            controlDisables = {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = false,
            },
            animation = {
                animDict = Direct,
                anim = Scene,
                flags = 49
            },
        }, function(status)
            if not status then
            end
        end)
        ---------
    end
}

Config["ProcessZone"] = {
    ["Stone"] = {
        Animation = {Scenario = false, AnimationDirect = "anim@gangops@facility@servers@bodysearch@", AnimationScene = "player_search", },
        NPC = {
			Model = "s_m_y_airworker",
            Pos = vector3(2663.37, 2891.93, 36.87),
            Heading = 20.93,
            PosText3D =  vector3(2663.37, 2891.93, 36.87),
            Text = "~b~Process Stone"
        },
        Text = "กำลังล้างหิน..",
        TimeProcessing = 4,
        ShowHelp = "Press ~INPUT_CONTEXT~ to Process ~b~Stone",
        Blips = {
			Id = 318,
			Color = 5,
			Size = 0.5,
			Text = "Stone Process"
        },
        Marker = {
			Type = -1,
            Pos = vector3(2663.37, 2891.93, 36.87),
			Color = { r = 255, g = 0, b = 0, a = 200 },
			DrawDistance = 2,
            Size = 0.2,
            Ur = false,
        },
        Items = {
            {
                ItemName = "stone", 
                ItemCount = 2, 
                Get = {
                    ItemName = "raw_ore", 
                    ItemCount = 1, 
                    Bonus = { 
                        {
                            ItemName = "gangcoin", 
                            ItemCount = 1, 
                            Text = "เหรียญแก๊งค์",
                            Percent = 9 
                        },
                        {
                            ItemName = "sincoinfighter", 
                            ItemCount = 1, 
                            Text = "เหรียญสู้งาน",
                            Percent = 9 
                        },
	 				}
                }
            }
        }
    },
    ["Mine"] = {
        Animation = {Scenario = false, AnimationDirect = "anim@gangops@facility@servers@bodysearch@", AnimationScene = "player_search", },
        NPC = {
			Model = "s_f_y_migrant_01",
            Pos = vector3(1109.93, -2008.14, 31.06),
            Heading = 58.06,
            PosText3D =  vector3(1109.93, -2008.14, 31.06),
            Text = "~b~Process Mine"
        },
        Text = "กำลังหลอมแร่หิน..",
        TimeProcessing = 4,
        ShowHelp = "Press ~INPUT_CONTEXT~ to Process ~b~Mine",
        Blips = {
			Id = 318,
			Color = 5,
			Size = 0.5,
			Text = "Mine Process"
        },
        Marker = {
			Type = -1,
            Pos = vector3(1109.93, -2008.14, 31.06),
			Color = { r = 255, g = 0, b = 0, a = 200 },
			DrawDistance = 2,
            Size = 0.2,
            Ur = false,
        },
        Items = {
            {
                ItemName = "raw_ore", 
                ItemCount = 2, 
                Get = {
                    ItemName = "charcoal", 
                    ItemCount = 1, 
                    Bonus = { 
                        {
                            ItemName = "copper_nugget", 
                            ItemCount = 1, 
                            Text = "เศษทองแดง",
                            Percent = 30 
                        },
                        {
                            ItemName = "gold_nugget", 
                            ItemCount = 1, 
                            Text = "เศษทองคำ",
                            Percent = 10 
                        },
                        {
                            ItemName = "rough_diamond", 
                            ItemCount = 1, 
                            Text = "เศษเพชร",
                            Percent = 7 
                        },		
	 				} 
                }
            }
        }
    },
    ["Copper"] = {
        Animation = {Scenario = false, AnimationDirect = "anim@gangops@facility@servers@bodysearch@", AnimationScene = "player_search", },
        NPC = {
			Model = "s_f_y_migrant_01",
            Pos = vector3(1093.61, -1998.69, 29.53),
            Heading = 240.19,
            PosText3D =  vector3(1093.61, -1998.69, 29.53),
            Text = "~b~Process Copper"
        },
        Text = "กำลังหลอมทองแดง..",
        TimeProcessing = 4,
        ShowHelp = "Press ~INPUT_CONTEXT~ to Process ~b~Copper",
        Blips = {
			Id = 318,
			Color = 5,
			Size = 0.5,
			Text = "Copper Process"
        },
        Marker = {
			Type = -1,
            Pos = vector3(1109.93, -2008.14, 31.06),
			Color = { r = 255, g = 0, b = 0, a = 200 },
			DrawDistance = 2,
            Size = 0.2,
            Ur = false,
        },
        Items = {
            {
                ItemName = "copper_nugget", 
                ItemCount = 1, 
                Get = {
                    ItemName = "copper_bar", 
                    ItemCount = 1, 
                    Bonus = { 
                        {
                            ItemName = "sincoinfighter", 
                            ItemCount = 1, 
                            Text = "เหรียญสู้งาน",
                            Percent = 9 
                        },
                        {
                            ItemName = "gangcoin", 
                            ItemCount = 1, 
                            Text = "เหรียญแก๊งค์",
                            Percent = 9 
                        },
	 				}  
                }
            }
        }
    },
    ["Gold"] = {
        Animation = {Scenario = false, AnimationDirect = "anim@gangops@facility@servers@bodysearch@", AnimationScene = "player_search", },
        NPC = {
			Model = "s_f_y_migrant_01",
            Pos = vector3(1114.86, -2006.68, 35.44),
            Heading = 50.68,
            PosText3D =  vector3(1114.86, -2006.68, 35.44),
            Text = "~b~Process Gold"
        },
        Text = "กำลังหลอมทองคำ..",
        TimeProcessing = 4,
        ShowHelp = "Press ~INPUT_CONTEXT~ to Process ~b~Gold",
        Blips = {
			Id = 318,
			Color = 5,
			Size = 0.5,
			Text = "Gold Process"
        },
        Marker = {
			Type = -1,
            Pos = vector3(1114.86, -2006.68, 35.44),
			Color = { r = 255, g = 0, b = 0, a = 200 },
			DrawDistance = 2,
            Size = 0.2,
            Ur = false,
        },
        Items = {
            {
                ItemName = "gold_nugget", 
                ItemCount = 1, 
                Get = {
                    ItemName = "gold_bar", 
                    ItemCount = 1, 
                    Bonus = { 
                        {
                            ItemName = "sincoinfighter", 
                            ItemCount = 1, 
                            Text = "เหรียญสู้งาน",
                            Percent = 9 
                        },
                        {
                            ItemName = "gangcoin", 
                            ItemCount = 1, 
                            Text = "เหรียญแก๊งค์",
                            Percent = 9 
                        },
	 				} 
                }
            }
        }
    },
    ["Diamond"] = {
        Animation = {Scenario = false, AnimationDirect = "anim@gangops@facility@servers@bodysearch@", AnimationScene = "player_search", },
        NPC = {
			Model = "s_m_m_cntrybar_01",
            Pos = vector3(1109.81, -2013.62, 35.46),
            Heading = 52.85,
            PosText3D =  vector3(1109.81, -2013.62, 35.46),
            Text = "~b~Process Diamond"
        },
        Text = "กำลังหลอมเพชร..",
        TimeProcessing = 4,
        ShowHelp = "Press ~INPUT_CONTEXT~ to Process ~b~Diamond",
        Blips = {
			Id = 318,
			Color = 5,
			Size = 0.5,
			Text = "Diamond Process"
        },
        Marker = {
			Type = -1,
            Pos = vector3(1109.81, -2013.62, 35.46),
			Color = { r = 255, g = 0, b = 0, a = 200 },
			DrawDistance = 2,
            Size = 0.2,
            Ur = false,
        },
        Items = {
            {
                ItemName = "rough_diamond", 
                ItemCount = 1, 
                Get = {
                    ItemName = "diamond", 
                    ItemCount = 1, 
                    Bonus = { 
                        {
                            ItemName = "sincoinfighter", 
                            ItemCount = 1, 
                            Text = "เหรียญสู้งาน",
                            Percent = 9 
                        },
                        {
                            ItemName = "gangcoin", 
                            ItemCount = 1, 
                            Text = "เหรียญแก๊งค์",
                            Percent = 9 
                        },
	 				}  
                }
            }
        }
    },
    ["Steel"] = {
        Animation = {Scenario = false, AnimationDirect = "anim@gangops@facility@servers@bodysearch@", AnimationScene = "player_search", },
        NPC = {
			Model = "s_m_m_cntrybar_01",
            Pos = vector3(1103.22, -2001.55, 29.6),
            Heading = 62.12,
            PosText3D =  vector3(1103.22, -2001.55, 29.6),
            Text = "~b~Process Steel"
        },
        Text = "กำลังหลอมเหล็ก..",
        TimeProcessing = 4,
        ShowHelp = "Press ~INPUT_CONTEXT~ to Process ~b~Steel",
        Blips = {
			Id = 318,
			Color = 5,
			Size = 0.5,
			Text = "Steel Process"
        },
        Marker = {
			Type = -1,
            Pos = vector3(1103.22, -2001.55, 29.6),
			Color = { r = 255, g = 0, b = 0, a = 200 },
			DrawDistance = 2,
            Size = 0.2,
            Ur = false,
        },
        Items = {
            {
                ItemName = "steel", 
                ItemCount = 1, 
                Get = {
                    ItemName = "steel_bar", 
                    ItemCount = 1, 
                    Bonus = { 
                        {
                            ItemName = "sincoinfighter", 
                            ItemCount = 1, 
                            Text = "เหรียญสู้งาน",
                            Percent = 9 
                        },
                        {
                            ItemName = "gangcoin", 
                            ItemCount = 1, 
                            Text = "เหรียญแก๊งค์",
                            Percent = 9 
                        },
	 				} 
                }
            }
        }
    },
    ["Meat"] = {
        Animation = {Scenario = false, AnimationDirect = "anim@gangops@facility@servers@bodysearch@", AnimationScene = "player_search", },
        NPC = {
			Model = "a_m_y_dhill_01",
            Pos = vector3(-1270.7, -305.16, 37.07),
            Heading = 246.22,
            PosText3D =  vector3(-1270.7, -305.16, 37.07),
            Text = "~b~Process Meat"
        },
        Text = "กำลังแปรรูปเนื้อวัว..",
        TimeProcessing = 4,
        ShowHelp = "Press ~INPUT_CONTEXT~ to Process ~b~Meat",
        Blips = {
			Id = 464,
			Color = 8,
			Size = 0.8,
			Text = "Meat Process"
        },
        Marker = {
			Type = -1,
            Pos = vector3(-1270.7, -305.16, 37.07),
			Color = { r = 255, g = 0, b = 0, a = 200 },
			DrawDistance = 2,
            Size = 0.2,
            Ur = false,
        },
        Items = {
            {
                ItemName = "meat", 
                ItemCount = 2, 
                Get = {
                    ItemName = "meatfood", 
                    ItemCount = 1, 
                    Bonus = { 
                        {
                            ItemName = "sincoinfighter", 
                            ItemCount = 1, 
                            Text = "เหรียญสู้งาน",
                            Percent = 9 
                        },
                        {
                            ItemName = "gangcoin", 
                            ItemCount = 1, 
                            Text = "เหรียญแก๊งค์",
                            Percent = 9 
                        },
	 				} 
                }
            }
        }
    },
    ["Milk"] = {
        Animation = {Scenario = false, AnimationDirect = "anim@gangops@facility@servers@bodysearch@", AnimationScene = "player_search", },
        NPC = {
			Model = "a_m_y_dhill_01",
            Pos = vector3(-3147.36, 1121.3, 20.87),
            Heading = 244.05,
            PosText3D =  vector3(-3147.36, 1121.3, 20.87),
            Text = "~b~Process Milk"
        },
        Text = "กำลังแปรรูปนมวัว..",
        TimeProcessing = 4,
        ShowHelp = "Press ~INPUT_CONTEXT~ to Process ~b~Milk",
        Blips = {
			Id = 478,
			Color = 58,
			Size = 0.8,
			Text = "Milk Process"
        },
        Marker = {
			Type = -1,
            Pos = vector3(-3147.36, 1121.3, 20.87),
			Color = { r = 255, g = 0, b = 0, a = 200 },
			DrawDistance = 2,
            Size = 0.2,
            Ur = false,
        },
        Items = {
            {
                ItemName = "milk_can", 
                ItemCount = 2, 
                Get = {
                    ItemName = "milk_bottle", 
                    ItemCount = 1, 
                    Bonus = { 
                        {
                            ItemName = "sincoinfighter", 
                            ItemCount = 1, 
                            Text = "เหรียญสู้งาน",
                            Percent = 9 
                        },
                        {
                            ItemName = "gangcoin", 
                            ItemCount = 1, 
                            Text = "เหรียญแก๊งค์",
                            Percent = 9 
                        },
	 				}
                }
            }
        }
    },
    ["Pock"] = {
        Animation = {Scenario = false, AnimationDirect = "anim@gangops@facility@servers@bodysearch@", AnimationScene = "player_search", },
        NPC = {
			Model = "a_m_y_dhill_01",
            Pos = vector3(-2189.72, -400.07, 13.27),
            Heading = 246.22,
            PosText3D =  vector3(-2189.72, -400.07, 13.27),
            Text = "~b~Process Pock"
        },
        Text = "กำลังแปรรูปเนื้อหมู..",
        TimeProcessing = 4,
        ShowHelp = "Press ~INPUT_CONTEXT~ to Process ~b~Pock",
        Blips = {
			Id = 273,
			Color = 55,
			Size = 0.8,
			Text = "Pock Process"
        },
        Marker = {
			Type = -1,
            Pos = vector3(-2189.72, -400.07, 13.27),
			Color = { r = 255, g = 0, b = 0, a = 200 },
			DrawDistance = 2,
            Size = 0.2,
            Ur = false,
        },
        Items = {
            {
                ItemName = "pork", 
                ItemCount = 2, 
                Get = {
                    ItemName = "pork_pack", 
                    ItemCount = 1, 
                    Bonus = { 
                        {
                            ItemName = "sincoinfighter", 
                            ItemCount = 1, 
                            Text = "เหรียญสู้งาน",
                            Percent = 9 
                        },
                        {
                            ItemName = "gangcoin", 
                            ItemCount = 1, 
                            Text = "เหรียญแก๊งค์",
                            Percent = 9 
                        },
	 				}
                }
            }
        }
    },
    ["Wood"] = {
        Animation = {Scenario = false, AnimationDirect = "anim@gangops@facility@servers@bodysearch@", AnimationScene = "player_search", },
        NPC = {
			Model = "a_m_y_dhill_01",
            Pos = vector3(1210.88, -1311.6, 35.23),
            Heading = 87.93,
            PosText3D =  vector3(1210.88, -1311.6, 35.23),
            Text = "~b~Process Wood"
        },
        Text = "กำลังแปรรูปไม้..",
        TimeProcessing = 4,
        ShowHelp = "Press ~INPUT_CONTEXT~ to Process ~b~Wood",
        Blips = {
			Id = 285,
			Color = 17,
			Size = 0.8,
			Text = "Wood Process"
        },
        Marker = {
			Type = -1,
            Pos = vector3(1210.88, -1311.6, 35.23),
			Color = { r = 255, g = 0, b = 0, a = 200 },
			DrawDistance = 2,
            Size = 0.2,
            Ur = false,
        },
        Items = {
            {
                ItemName = "wood_log", 
                ItemCount = 2, 
                Get = {
                    ItemName = "wood_plank", 
                    ItemCount = 1, 
                    Bonus = { 
                        {
                            ItemName = "sincoinfighter", 
                            ItemCount = 1, 
                            Text = "เหรียญสู้งาน",
                            Percent = 9 
                        },
                        {
                            ItemName = "gangcoin", 
                            ItemCount = 1, 
                            Text = "เหรียญแก๊งค์",
                            Percent = 9 
                        },
	 				}
                }
            }
        }
    },
    ["Rice"] = {
        Animation = {Scenario = false, AnimationDirect = "anim@gangops@facility@servers@bodysearch@", AnimationScene = "player_search", },
        NPC = {
			Model = "a_m_y_dhill_01",
            Pos = vector3(868.8, -1639.79, 30.34),
            Heading = 89.92,
            PosText3D =  vector3(868.8, -1639.79, 30.34),
            Text = "~b~Process Rice"
        },
        Text = "กำลังแปรรูปข้าว..",
        TimeProcessing = 4,
        ShowHelp = "Press ~INPUT_CONTEXT~ to Process ~b~Rice",
        Blips = {
			Id = 496,
			Color = 33,
			Size = 0.8,
			Text = "Rice Process"
        },
        Marker = {
			Type = -1,
            Pos = vector3(868.8, -1639.79, 30.34),
			Color = { r = 255, g = 0, b = 0, a = 200 },
			DrawDistance = 2,
            Size = 0.2,
            Ur = false,
        },
        Items = {
            {
                ItemName = "rice", 
                ItemCount = 2, 
                Get = {
                    ItemName = "rice_pro", 
                    ItemCount = 1, 
                    Bonus = { 
                        {
                            ItemName = "sincoinfighter", 
                            ItemCount = 1, 
                            Text = "เหรียญสู้งาน",
                            Percent = 9 
                        },
                        {
                            ItemName = "gangcoin", 
                            ItemCount = 1, 
                            Text = "เหรียญแก๊งค์",
                            Percent = 9 
                        },
	 				}  
                }
            }
        }
    },
    ["Shell"] = {
        Animation = {Scenario = false, AnimationDirect = "anim@gangops@facility@servers@bodysearch@", AnimationScene = "player_search", },
        NPC = {
			Model = "s_m_m_ammucountry",
            Pos = vector3(169.63, -1634.05, 29.29),
            Heading = 33.41,
            PosText3D =  vector3(169.63, -1634.05, 29.29),
            Text = "~b~Process Shell"
        },
        Text = "กำลังแปรรูปหอย..",
        TimeProcessing = 4,
        ShowHelp = "Press ~INPUT_CONTEXT~ to Process ~b~Shell",
        Blips = {
			Id = 496,
			Color = 33,
			Size = 0.8,
			Text = "Shell Process"
        },
        Marker = {
			Type = -1,
            Pos = vector3(169.63, -1634.05, 29.29),
			Color = { r = 255, g = 0, b = 0, a = 200 },
			DrawDistance = 2,
            Size = 0.2,
            Ur = false,
        },
        Items = {
            {
                ItemName = "shell_a", 
                ItemCount = 2, 
                Get = {
                    ItemName = "shell_b", 
                    ItemCount = 1, 
                    Bonus = { 
                        {
                            ItemName = "sincoinfighter", 
                            ItemCount = 1, 
                            Text = "เหรียญสู้งาน",
                            Percent = 9 
                        },
                        {
                            ItemName = "gangcoin", 
                            ItemCount = 1, 
                            Text = "เหรียญแก๊งค์",
                            Percent = 9 
                        },
	 				} 
                }
            }
        }
    },
    ["Grape"] = {
        Animation = {Scenario = false, AnimationDirect = "anim@gangops@facility@servers@bodysearch@", AnimationScene = "player_search", },
        NPC = {
			Model = "a_m_m_hillbilly_01",
            Pos = vector3(152.45, 237.31, 106.79),
            Heading = 166.07,
            PosText3D =  vector3(152.45, 237.31, 106.79),
            Text = "~b~Process Grape"
        },
        Text = "กำลังแปรรูปองุุ่น..",
        TimeProcessing = 4,
        ShowHelp = "Press ~INPUT_CONTEXT~ to Process ~b~Grape",
        Blips = {
			Id = 478,
			Color = 33,
			Size = 0.8,
			Text = "Grape Process"
        },
        Marker = {
			Type = -1,
            Pos = vector3(811.04, -750.23, 26.73),
			Color = { r = 255, g = 0, b = 0, a = 200 },
			DrawDistance = 2,
            Size = 0.2,
            Ur = false,
        },
        Items = {
            {
                ItemName = "grape", 
                ItemCount = 2, 
                Get = {
                    ItemName = "Grape_juice", 
                    ItemCount = 1, 
                    Bonus = { 
                        {
                            ItemName = "sincoinfighter", 
                            ItemCount = 1, 
                            Text = "เหรียญสู้งาน",
                            Percent = 9 
                        },
                        {
                            ItemName = "gangcoin", 
                            ItemCount = 1, 
                            Text = "เหรียญแก๊งค์",
                            Percent = 9 
                        },
	 				} 
                }
            }
        }
    },
    ["Cabbage"] = {
        Animation = {Scenario = false, AnimationDirect = "anim@gangops@facility@servers@bodysearch@", AnimationScene = "player_search", },
        NPC = {
			Model = "a_m_m_hillbilly_01",
            Pos = vector3(811.04, -750.23, 26.73),
            Heading = 267.73,
            PosText3D =  vector3(811.04, -750.23, 26.73),
            Text = "~b~Process Cabbage"
        },
        Text = "กำลังล้างกะหล่ำปลี..",
        TimeProcessing = 4,
        ShowHelp = "Press ~INPUT_CONTEXT~ to Process ~b~Cabbage",
        Blips = {
			Id = 484,
			Color = 2,
			Size = 0.8,
			Text = "Cabbage Process"
        },
        Marker = {
			Type = -1,
            Pos = vector3(811.04, -750.23, 26.73),
			Color = { r = 255, g = 0, b = 0, a = 200 },
			DrawDistance = 2,
            Size = 0.2,
            Ur = false,
        },
        Items = {
            {
                ItemName = "acabbage", 
                ItemCount = 2, 
                Get = {
                    ItemName = "bcabbage", 
                    ItemCount = 1, 
                    Bonus = { 
                        {
                            ItemName = "sincoinfighter", 
                            ItemCount = 1, 
                            Text = "เหรียญสู้งาน",
                            Percent = 9 
                        },
                        {
                            ItemName = "gangcoin", 
                            ItemCount = 1, 
                            Text = "เหรียญแก๊งค์",
                            Percent = 9 
                        },
	 				}  
                }
            }
        }
    },
    ["Crab"] = {
        Animation = {Scenario = false, AnimationDirect = "anim@gangops@facility@servers@bodysearch@", AnimationScene = "player_search", },
        NPC = {
			Model = "s_m_m_ammucountry",
            Pos = vector3(-430.7, -24.24, 46.23),
            Heading = 265.86,
            PosText3D =  vector3(-430.7, -24.24, 46.23),
            Text = "~b~Process Crab"
        },
        Text = "กำลังล้างปูทะเล..",
        TimeProcessing = 4,
        ShowHelp = "Press ~INPUT_CONTEXT~ to Process ~b~Crab",
        Blips = {
			Id = 280,
			Color = 67,
			Size = 0.8,
			Text = "Crab Process"
        },
        Marker = {
			Type = -1,
            Pos = vector3(-430.7, -24.24, 46.23),
			Color = { r = 255, g = 0, b = 0, a = 200 },
			DrawDistance = 2,
            Size = 0.2,
            Ur = false,
        },
        Items = {
            {
                ItemName = "crab", 
                ItemCount = 2, 
                Get = {
                    ItemName = "crab_fried", 
                    ItemCount = 1, 
                    Bonus = { 
                        {
                            ItemName = "sincoinfighter", 
                            ItemCount = 1, 
                            Text = "เหรียญสู้งาน",
                            Percent = 9 
                        },
                        {
                            ItemName = "gangcoin", 
                            ItemCount = 1, 
                            Text = "เหรียญแก๊งค์",
                            Percent = 9 
                        },
	 				}  
                }
            }
        }
    }
}

Config["translate"] = {
    want_item_1 = "คุณต้องมี",
    want_item_2 = "จำนวน",
    want_item_3 = "ขึ้นไป",
    item_full = "ของคุณเต็ม",
    player_distance = "ออกมาไกลเกินไป",
    showhelp_1 = "Press ~g~X~w~ ~r~Cancle~s~",
    showhelp_2 = "Process round ~b~",
}