PLUGIN.name = "Customizable Weaponry 2.0 Integration"
PLUGIN.author = "Black Tea"
PLUGIN.desc = "wepon"

local gunData = {}

gunData.ma85_wf_smg25 = {
	holster = {
		bone = "ValveBiped.Bip01_Spine2",
		ang = Angle(180, 90,0),
		pos = Vector(4, -15, -3),
	},
	slot = 2,
	width = 4,
	height = 2,
	price = 2000,
}
gunData.ma85_wf_smg26 = {
	holster = {
		bone = "ValveBiped.Bip01_Spine2",
		ang = Angle(180, 90,0),
		pos = Vector(4, -15, -3),
	},
	slot = 2,
	width = 4,
	height = 2,
	price = 2000,
}
gunData.ma85_wf_smg17 = {
	holster = {
		bone = "ValveBiped.Bip01_Spine2",
		ang = Angle(180, 90,0),
		pos = Vector(4, -15, -3),
	},
	slot = 2,
	width = 4,
	height = 2,
	price = 2000,
}
gunData.ma85_wf_smg33 = {
	holster = {
		bone = "ValveBiped.Bip01_Spine2",
		ang = Angle(180, 90,0),
		pos = Vector(4, -15, -3),
	},
	slot = 2,
	width = 4,
	height = 2,
	price = 2000,
}
gunData.ma85_wf_smg35 = {
	holster = {
		bone = "ValveBiped.Bip01_Spine2",
		ang = Angle(180, 90,0),
		pos = Vector(4, -15, -3),
	},
	slot = 2,
	width = 4,
	height = 2,
	price = 2000,
}
gunData.ma85_wf_smg31 = {
	holster = {
		bone = "ValveBiped.Bip01_Spine2",
		ang = Angle(180, 90,0),
		pos = Vector(4, -15, -3),
	},
	slot = 2,
	width = 4,
	height = 2,
	price = 2000,
}
gunData.ma85_wf_smg41 = {
	holster = {
		bone = "ValveBiped.Bip01_Spine2",
		ang = Angle(180, 90,0),
		pos = Vector(4, -15, -3),
	},
	slot = 2,
	width = 4,
	height = 2,
	price = 2000,
}
gunData.ma85_wf_smg10 = {
	holster = {
		bone = "ValveBiped.Bip01_Spine2",
		ang = Angle(180, 90,0),
		pos = Vector(4, -15, -3),
	},
	slot = 2,
	width = 4,
	height = 2,
	price = 2000,
}

gunData.ma85_wf_pt22 = {
	slot = 1,
	price = 2000,
}

gunData.ma85_wf_pt21 = {
	slot = 1,
	price = 2000,
}

gunData.ma85_wf_pt41_ww2 = {
	slot = 1,
	price = 2000,
}

gunData.ma85_wf_pt27 = {
	slot = 1,
	price = 2000,
}

gunData.ma85_wf_pt14 = {
	slot = 1,
	price = 2000,
}

gunData.ma85_wf_pt10 = {
	slot = 1,
	price = 2000,
}

local slotCategory = {
	[1] = "secondary",
	[2] = "primary",
	[3] = "primary",
	[4] = "primary",
}

local modelCam = {}
modelCam["models/weapons/w_rif_ak47.mdl"] = {
	pos = Vector(-0.73431813716888, 186.86952209473, 3.543244600296),
	ang = Angle(0, 270, 0),
	fov = 13.190396880435
}
local AMMO_BOX = "models/Items/BoxSRounds.mdl"
local AMMO_CASE = "models/Items/357ammo.mdl"
local AMMO_FLARE = "models/Items/BoxFlares.mdl"
local AMMO_BIGBOX = "models/Items/BoxMRounds.mdl"
local AMMO_BUCKSHOT = "models/Items/BoxBuckshot.mdl"
local AMMO_GREN = "models/Items/AR2_Grenade.mdl"
local ammoInfo = {}

local changeAmmo = {
	["7.92x33mm Kurz"] = "ar2",
	["300 AAC Blackout"] = "ar2",
	["5.7x28mm"] = "ar2",
	["7.62x25mm Tokarev"] = "smg1",
	[".50 BMG"] = "ar2",
	["5.56x45mm"] = "ar2",
	["7.62x51mm"] = "ar2",
	["7.62x31mm"] = "ar2",
	["Frag Grenades"] = "grenade",
	["Flash Grenades"] = "grenade",
	["Smoke Grenades"] = "grenade",
	["9x17MM"] = "pistol",
	["9x19MM"] = "pistol",
	["9x19mm"] = "pistol",
	[".45 ACP"] = "pistol",
	["9x18MM"] = "pistol",
	["9x39MM"] = "pistol",
	[".40 S&W"] = "pistol",
	[".44 Magnum"] = "357",
	[".50 AE"] = "357",
	["5.45x39MM"] = "ar2",
	["5.56x45MM"] = "ar2",
	["5.7x28MM"] = "ar2",
	["7.62x51MM"] = "ar2",
	["7.62x54mmR"] = "ar2",
	["12 Gauge"] = "buckshot",
	[".338 Lapua"] = "sniperround",
}

ammoInfo["pistol"] = {
	name = "권총탄",
	amount = 30,
	price = 200,
	model = AMMO_CASE,
}
ammoInfo["357"] = {
	name = "대구경 권총탄",
	amount = 10,
	price = 350,
	model = AMMO_BOX,
}
ammoInfo["ar2"] = {
	name = "소총탄",
	amount = 30,
	price = 400,
	model = AMMO_BIGBOX,
}
ammoInfo["buckshot"] = {
	name = "산탄총탄",
	amount = 10,
	price = 300,
	model = AMMO_BUCKSHOT,
}
ammoInfo["sniperround"] = {
	name = "저격소총탄",
	amount = 10,
	price = 500,
	model = AMMO_FLARE,
}

translatedAttachments = {
	["ma85_wf_smg_silencer"] = "기관단총용 소음기",
	["ma85_wf_smg_suppressor"] = "기관단총용 소염기",
	["ma85_wf_smg_bayonet"] = "기관단총용 총검",
	["ma85_wf_smg_grip"] = "기관단총용 수직손잡이",
	["ma85_wf_smg_grip_pod"] = "기관단총용 양각대",
	["ma85_wf_smg_basic_scope"] = "기관단총용 광학조준경",
	["ma85_wf_smg_adv_scope"] = "기관단총용 확대조준경",
	["ma85_wf_smg_ultra_scope"] = "기관단총용 원거리 조준경",

	["ma85_wf_medic_silencer"] = "산탄총용 소음기",
	["ma85_wf_medic_suppressor"] = "신탄총용 소염기",
	["ma85_wf_medic_bayonet"] = "신탄총용 총검",
	["ma85_wf_medic_bayonet_old"] = "신탄총용 총검",
	["ma85_wf_medic_aimpoint"] = "신탄총용 에임포인트",
	["ma85_wf_medic_adv_reflex"] = "신탄총용 신속 광학조준경",

	["ma85_wf_pistol_silencer"] = "권총용 소음기",
	["ma85_wf_pistol_suppressor"] = "권총용 소염기",
	["ma85_wf_pistol_bayonet"] = "권총용 총검",
	["ma85_wf_pistol_scope"] = "권총용 원거리 조준경",

	["ma85_wf_rifle_silencer"] = "소총용 소음기",
	["ma85_wf_rifle_suppressor"] = "소총용 소염기",
	["ma85_wf_rifle_bayonet"] = "소총용 총검",
	["ma85_wf_rifle_grip"] = "소총용 수직손잡이",
	["ma85_wf_rifle_grip_pod"] = "소총용 양각손잡이",
	["ma85_wf_rifle_gl"] = "소총용 유탄발사기",
	["ma85_wf_rifle_bipod"] = "소총용 양각대",
	["ma85_wf_rifle_basic_scope"] = "소총용 조준경",
	["ma85_wf_rifle_adv_scope"] = "소총용 신속조준경",
	["ma85_wf_rifle_ultra_scope"] = "소총용 확대조준경",

	["ma85_wf_shared_silencer"] = "공용 소음기",
	["ma85_wf_shared_grip"] = "공용 수직손잡이",
	["ma85_wf_shared_holo"] = "공용 광학조준경",
	["ma85_wf_shared_reflex"] = "공용 신속 광학조준경",
	["ma85_wf_shared_red_dot"] = "공용 레드닷 조준경",
	["ma85_wf_shared_reflex_old"] = "공용 신속 관학조준경",
	
	["ma85_wf_sniper_silencer"] = "저걱소총용 소음기",
	["ma85_wf_sniper_suppressor"] = "저걱소총용 소염기",
	["ma85_wf_sniper_bipod"] = "저걱소총용 양각대",
	["ma85_wf_sniper_bipod_special"] = "저걱소총용 충격흡수 양각대",
	["ma85_wf_sniper_scope_def"] = "저걱소총용 조준경",
	["ma85_wf_sniper_scope_mid"] = "저걱소총용 중거리 조준경",
	["ma85_wf_sniper_scope_close"] = "저걱소총용 단거리 조준경",
	["ma85_wf_sniper_scope_fast"] = "저걱소총용 고속 조준경",

	["bg_wf_zf4_scope"] = "ZF4용 스코프",
	["bg_wf_p226_silencer"] = "P226 소음기",
	["bg_wf_p226_rds"] = "P226용 광학조준기",
	["bg_wf_xlr5_rds"] = "XLR5용 광학조준기",
	["bg_wf_scarl_grip"] = "SCAR-L용 전술 수직손잡이",
	["bg_wf_cs5_silencer"] = "CS5여용 소음기",
	["bg_wf_scout_silencer"] = "SCOUT용 소음기",
}

function PLUGIN:PluginLoaded()
	-- Create Items with Lua
	do
		-- ammunition
		for name, data in pairs(ammoInfo) do
			local uniqueID = "ammo_"..name:lower()
			local ammoInfo = data

			local ITEM = nut.item.register(uniqueID, "base_ammo", nil, nil, true)
			ITEM.name = ammoInfo.name .. " 탄약"
			ITEM.ammo = name
			ITEM.ammoAmount = ammoInfo.amount or 30
			ITEM.desc = ammoInfo.name .. "탄환이 %s개 들어있는 박스"
			ITEM.price = ammoInfo.price or 200
			ITEM.model = ammoInfo.model or AMMO_BOX
		end

		-- they were ass.
		local assWeapons = {
			["cw_ber_cz75"] = "muzzleflash_6",
			["cw_ber_deagletoast"] = "muzzleflash_6",
			["cw_ber_fnp45"] = "muzzleflash_6",
			["cw_ber_m9"] = "muzzleflash_6",
			["cw_ber_p220"] = "muzzleflash_6",
			["cw_ber_model620"] = "muzzleflash_6",
			["cw_ber_usp"] = "muzzleflash_6",
		}

		for k, v in ipairs(weapons.GetList()) do
			local class = v.ClassName
			local prefix

			if (class:find("cw_")) then
				prefix = "cw_"
			elseif (class:find("ma85_")) then
				prefix = "ma85_"
			end
			
			if (prefix and !class:find("base")) then
				-- Configure Weapon's Variables
				v.CanRicochet = false
				v.isGoodWeapon = true
				v.canPenetrate = function() return false end
				v.canRicochet = function() return false end
				v.MuzzleEffect = "muzzleflash_ak74"
				v.Primary.DefaultClip = 0

				if (changeAmmo[v.Primary.Ammo]) then
					v.Primary.Ammo = changeAmmo[v.Primary.Ammo]
				end

				function v:recalculateDamage()
					local mult = hook.Run("GetSchemaCWDamage", self, self.Owner) or 1

					self.Damage = self.Damage_Orig * self.DamageMult * mult
				end

				function v:recalculateRecoil()
					local mult = hook.Run("GetSchemaCWRecoil", self, self.Owner) or 1

					self.Recoil = self.Recoil_Orig * self.RecoilMult * mult
				end

				function v:recalculateFirerate()
					local mult = hook.Run("GetSchemaCWFirerate", self, self.Owner) or 1

					self.FireDelay = self.FireDelay_Orig * self.FireDelayMult * mult
				end

				function v:recalculateVelocitySensitivity()
					local mult = hook.Run("GetSchemaCWVel", self, self.Owner) or 1

					self.VelocitySensitivity = self.VelocitySensitivity_Orig * self.VelocitySensitivityMult * mult
				end

				function v:recalculateAimSpread()
					local mult = hook.Run("GetSchemaCWAimSpread", self, self.Owner) or 1

					self.AimSpread = self.AimSpread_Orig * self.AimSpreadMult * mult
				end

				function v:recalculateHipSpread()
					local mult = hook.Run("GetSchemaCWHipSpread", self, self.Owner) or 1

					self.HipSpread = self.HipSpread_Orig * self.HipSpreadMult * mult
				end

				function v:recalculateDeployTime()
					local mult = hook.Run("GetSchemaCWDeployTime", self, self.Owner) or 1

					self.DrawSpeed = self.DrawSpeed_Orig * self.DrawSpeedMult * mult
				end

				function v:recalculateReloadSpeed()
					local mult = hook.Run("GetSchemaCWReloadSpeed", self, self.Owner) or 1

					self.ReloadSpeed = self.ReloadSpeed_Orig * self.ReloadSpeedMult * mult
				end

				function v:recalculateMaxSpreadInc()
					local mult = hook.Run("GetSchemaCWMaxSpread", self, self.Owner) or 1

					self.MaxSpreadInc = self.MaxSpreadInc_Orig * self.MaxSpreadIncMult * mult
				end

				-- Generate Items
				local uniqueID = string.Replace(class, prefix, ""):lower()
				local dat = gunData[prefix .. uniqueID] or {}

				v.Slot = dat.slot or 2
				local ITEM = nut.item.register(class:lower(), "base_weapons", nil, nil, true)
				ITEM.name = uniqueID
				ITEM.desc = v.Primary.Ammo .. "를 사용하는 총기"
				ITEM.price = dat.price or 4000
				ITEM.iconCam = modelCam[v.WorldModel:lower()]
				ITEM.class = prefix .. uniqueID
				ITEM.holsterDrawInfo = dat.holster

				if (dat.holster) then
					ITEM.holsterDrawInfo.model = v.WorldModel
				end

				ITEM.model = v.WorldModel

				local slot = slotCategory[v.Slot]
				ITEM.width = 1
				ITEM.height = 1
				ITEM.weaponCategory = slot or "primary"

				function ITEM:onEquipWeapon(client, weapon)
				end

				function ITEM:paintOver(item, w, h)
					local x, y = w - 14, h - 14

					if (item:getData("equip")) then
						surface.SetDrawColor(110, 255, 110, 100)
						surface.DrawRect(x, y, 8, 8)

						x = x - 8*1.6
					end

					if (item:getData("mod")) then
						surface.SetDrawColor(255, 255, 110, 100)
						surface.DrawRect(x, y, 8, 8)
					end
				end

				HOLSTER_DRAWINFO[ITEM.class] = ITEM.holsterDrawInfo

				if (CLIENT) then
					if (nut.lang.stored["english"] and nut.lang.stored["korean"]) then
						ITEM.name = v.PrintName 

						nut.lang.stored["english"][prefix .. uniqueID] = v.PrintName 
						nut.lang.stored["korean"][prefix .. uniqueID] = v.PrintName 
					end
				end
			end
		end

		-- attachments
		for k, v in pairs(CustomizableWeaponry.registeredAttachments) do
			local className = v.name
			local printName = v.displayName

			if (className:lower():find("am_")) then
				continue
			end

			local requiresWorkbench = false

			if (className:lower():find("bg_")) then
				requiresWorkbench = true
			end

			local ITEM = nut.item.register(className, nil, nil, nil, true)
			ITEM.name = className
			ITEM.desc = "총기 부착 가능한 부품." .. (requiresWorkbench and " 조합대에서만 장착이 가능하다." or "")
			ITEM.price = 800
			ITEM.model = "models/Items/BoxSRounds.mdl"
			ITEM.width = 1
			ITEM.height = 1
			ITEM.isAttachment = true
			ITEM.category = "Attachments"

			if (CLIENT) then
				if (nut.lang.stored["english"] and nut.lang.stored["korean"]) then
					ITEM.name = className

					nut.lang.stored["english"][className] = printName
					table.Merge(nut.lang.stored["korean"], translatedAttachments)
				end
			end

			ITEM.functions.use = {
			name = "장착",
			tip = "useTip",
			icon = "icon16/wrench.png",
			onRun = function(item)
						local client = item.player
						local char = client:getChar()
						local inv = char:getInv()
						local items = inv:getItems()

						for k, v in pairs(items) do
							if (v.isWeapon) then
								local class = v.class
								local SWEP = weapons.Get(class)


								if (SWEP and (class:find("cw_") or class:find("ma85_"))) then
									local atts = SWEP.Attachments

									local mods = v:getData("mod", {})
									
									if (atts) then		
										-- 장착이 가능한가
										local canAttach
										for atcat, data in pairs(atts) do
											for k, name in pairs(data.atts) do
												if (name == item.uniqueID) then
													canAttach = atcat

													break
												end
											end
										end
										
										-- I FUCKING HATE THIS CODE FUCK OFF
										local slotFilled
										if (atts[canAttach]) then
											for _, att1 in pairs(mods) do
												for _, att2 in pairs(atts[canAttach].atts) do
													print(att1
													, att2)
													if (att1 == att2) then
														slotFilled = true
													end
												end 
											end
										end

										if (slotFilled) then
											client:notifyLocalized("cantAttached")

											return false
										end

										if (!canAttach) then
											client:notifyLocalized("cantAttached")

											return false
										end

										if (!table.HasValue(mods, item.uniqueID)) then
											table.insert(mods, item.uniqueID)

											v:setData("mod", mods)

											local wepon = client:GetActiveWeapon()
											if (IsValid(wepon) and wepon:GetClass() == v.class) then
												wepon:attachSpecificAttachment(item.uniqueID)
											end
											return true
										else
											client:notifyLocalized("alreadyAttached")

											return false
										end
									else
										client:notifyLocalized("notCW")
									end
								end
							end
						end

						client:notifyLocalized("noWeapon")
						return false
					end,
			}

 		end
	end

	-- Reconfigure Customizable Weaponry in here	
	do

		CustomizableWeaponry.customizationMenuKey = "" -- the key we need to press to toggle the customization menu
		CustomizableWeaponry.canDropWeapon = false
		CustomizableWeaponry.enableWeaponDrops = false
		CustomizableWeaponry.quickGrenade.enabled = false
		CustomizableWeaponry.quickGrenade.canDropLiveGrenadeIfKilled = false
		CustomizableWeaponry.quickGrenade.unthrownGrenadesGiveWeapon = false
		CustomizableWeaponry.physicalBulletsEnabled = false
		CustomizableWeaponry.customizationEnabled = false

		hook.Remove("PlayerInitialSpawn", "CustomizableWeaponry.PlayerInitialSpawn")
		hook.Remove("PlayerSpawn", "CustomizableWeaponry.PlayerSpawn")
		hook.Remove("AllowPlayerPickup", "CustomizableWeaponry.AllowPlayerPickup")

		if (CLIENT) then
			local up = Vector(0, 0, -100)
			local shellMins, shellMaxs = Vector(-0.5, -0.15, -0.5), Vector(0.5, 0.15, 0.5)
			local angleVel = Vector(0, 0, 0)

			function CustomizableWeaponry.shells:finishMaking(pos, ang, velocity, soundTime, removeTime)
				velocity = velocity or up
				velocity.x = velocity.x + math.Rand(-5, 5)
				velocity.y = velocity.y + math.Rand(-5, 5)
				velocity.z = velocity.z + math.Rand(-5, 5)
				
				time = time or 0.5
				removetime = removetime or 5
				
				local t = self._shellTable or CustomizableWeaponry.shells:getShell("mainshell") -- default to the 'mainshell' shell type if there is none defined

				local ent = ClientsideModel(t.m, RENDERGROUP_BOTH) 
				ent:SetPos(pos)
				ent:PhysicsInitBox(shellMins, shellMaxs)
				ent:SetAngles(ang + AngleRand())
				ent:SetModelScale((self.ShellScale*.9 or .7), 0)
				ent:SetMoveType(MOVETYPE_VPHYSICS) 
				ent:SetSolid(SOLID_VPHYSICS) 
				ent:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
				
				local phys = ent:GetPhysicsObject()
				phys:SetMaterial("gmod_silent")
				phys:SetMass(10)
				phys:SetVelocity(velocity)
				
				angleVel.x = math.random(-500, 500)
				angleVel.y = math.random(-500, 500)
				angleVel.z = math.random(-500, 500)
				
				phys:AddAngleVelocity(ang:Right() * 100 + angleVel + VectorRand()*50000)

				timer.Simple(time, function()
					if t.s and IsValid(ent) then
						sound.Play(t.s, ent:GetPos())
					end
				end)
				
				SafeRemoveEntityDelayed(ent, removetime)
			end
		end

		do
			CustomizableWeaponry.callbacks:addNew("finishReload", "nutExperience", function(weapon)
				if (CLIENT) then return end

				local owner = weapon.Owner
				local char = owner:getChar()

				if (char) then
					if (char:getAttrib("gunskill") < 5) then
						char:updateAttrib("gunskill", 0.003)
					end
				end
			end)

			if (CLIENT) then
				netstream.Hook("nutUpdateWeapon", function(weapon) if (weapon and weapon:IsValid() and weapon.recalculateStats) then weapon:recalculateStats() end end)
			end

			function CustomizableWeaponry:hasAttachment(ply, att, lookIn)		
				return true
			end

			CustomizableWeaponry.callbacks:addNew("deployWeapon", "uploadAttachments", function(weapon)
				if (CLIENT) then return end

				timer.Simple(.1, function()
					weapon:recalculateStats()
					
					netstream.Start(weapon.Owner, "nutUpdateWeapon", weapon)
				end)

				local class = weapon:GetClass():lower()
				local client = weapon.Owner

				if (!client) then return end
				if (weapon.attLoaded) then return end

				local char = client:getChar()

				if (char) then
					local inv = char:getInv()

					for k, v in pairs(inv:getItems()) do
						if (v.class == class) then
							local attachments = v:getData("mod")

							if (attachments) then
								for a, b in pairs(attachments) do
									timer.Simple(0.2, function()
										if (weapon.attachSpecificAttachment) then
											weapon:attachSpecificAttachment(b)
										end
									end)
								end
							end
						end
					end

					weapon.attLoaded = true
				end
			end)
		end
	end
end

if (SERVER) then
	function PLUGIN:OnCharAttribUpdated(client, character, key, value)
		if (!client) then
			client = (character and character:getPlayer())
		end

		if (client and client:IsValid()) then
			local weapon = client:GetActiveWeapon()

			if (value == "gunskill") then
				if (weapon and weapon:IsValid() and weapon.recalculateStats) then
					weapon:recalculateStats()
					
					netstream.Start(client, "nutUpdateWeapon", weapon)
				end
			end
		end
	end

	function PLUGIN:OnCharAttribBoosted(client, character, attribID, boostID, boostAmount)
		if (!client) then
			client = (character and character:getPlayer())
		end

		if (client and client:IsValid()) then
			local weapon = client:GetActiveWeapon()

			if (value == "gunskill") then
				if (weapon and weapon:IsValid() and weapon.recalculateStats) then
					weapon:recalculateStats()
					
					netstream.Start(client, "nutUpdateWeapon", weapon)
				end
			end
		end
	end
end

if (CLIENT) then
	local function ASSPORTAL()
		local gayNames = {
			["ar2"] = "소총탄",
			["ar2altfire"] = "",
			["pistol"] = "권총탄",
			["smg1"] = "기관권총탄",
			["357"] = "매그넘탄",
			["xbowbolt"] = "",
			["buckshot"] = "산탄",
			["rpg_round"] = "",
			["smg1_grenade"] = "",
			["grenade"] = "",
			["slam"] = "",
			["alyxgun"] = "",
			["sniperround"] = "",
			["sniperpenetratedround"] = "",
			["thumper"] = "",
			["gravity"] = "",
			["battery"] = "",
			["gaussenergy	"] = "",
			["combinecannon"] = "",
			["airboatgun"] = "",
			["striderminigun"] = "",
			["helicoptergun"] = "",
			["9mmround"] = "",
			["mp5_grenade"] = "",
			["hornet"] = "",
			["striderminigundirect"] = "",
			["combineheavycannon"] = "",
		}

		surface.CreateFont("CW_HUD72", {font = "Malgun Gothic", extended = true, size = 72, weight = 700, blursize = 0, antialias = true, shadow = false})
		surface.CreateFont("CW_HUD60", {font = "Malgun Gothic", extended = true, size = 60, weight = 700, blursize = 0, antialias = true, shadow = false})
		surface.CreateFont("CW_HUD52", {font = "Malgun Gothic", extended = true, size = 52, weight = 700, blursize = 0, antialias = true, shadow = false})
		surface.CreateFont("CW_HUD48", {font = "Malgun Gothic", extended = true, size = 48, weight = 700, blursize = 0, antialias = true, shadow = false})
		surface.CreateFont("CW_HUD40", {font = "Malgun Gothic", extended = true, size = 40, weight = 700, blursize = 0, antialias = true, shadow = false})
		surface.CreateFont("CW_HUD38", {font = "Malgun Gothic", extended = true, size = 38, weight = 700, blursize = 0, antialias = true, shadow = false})
		surface.CreateFont("CW_HUD36", {font = "Malgun Gothic", extended = true, size = 36, weight = 700, blursize = 0, antialias = true, shadow = false})
		surface.CreateFont("CW_HUD32", {font = "Malgun Gothic", extended = true, size = 32, weight = 700, blursize = 0, antialias = true, shadow = false})
		surface.CreateFont("CW_HUD28", {font = "Malgun Gothic", extended = true, size = 28, weight = 700, blursize = 0, antialias = true, shadow = false})
		surface.CreateFont("CW_HUD24", {font = "Malgun Gothic", extended = true, size = 24, weight = 500, blursize = 0, antialias = true, shadow = false})
		surface.CreateFont("CW_HUD22", {font = "Malgun Gothic", extended = true, size = 22, weight = 500, blursize = 0, antialias = true, shadow = false})
		surface.CreateFont("CW_HUD20", {font = "Malgun Gothic", extended = true, size = 20, weight = 500, blursize = 0, antialias = true, shadow = false})
		surface.CreateFont("CW_HUD16", {font = "Malgun Gothic", extended = true, size = 16, weight = 500, blursize = 0, antialias = true, shadow = false})
		surface.CreateFont("CW_HUD14", {font = "Malgun Gothic", extended = true, size = 14, weight = 500, blursize = 0, antialias = true, shadow = false})
		surface.CreateFont("CW_HUD12", {font = "Malgun Gothic", extended = true, size = 12, weight = 500, blursize = 0, antialias = true, shadow = false})
		surface.CreateFont("CW_KillIcons", {font = "csd", extended = true, size = ScreenScale(20), weight = 500, blursize = 0, antialias = true, shadow = false})
		surface.CreateFont("CW_SelectIcons", {font = "csd", extended = true, size = ScreenScale(60), weight = 500, blursize = 0, antialias = true, shadow = false})

		surface.CreateFont("CW_KillIcons2", {font = "HalfLife2", extended = true, size = ScreenScale(30), weight = 500, blursize = 0, antialias = true, shadow = false})
		surface.CreateFont("CW_SelectIcons2", {font = "HalfLife2", extended = true, size = ScreenScale(60), weight = 500, blursize = 0, antialias = true, shadow = false})

		local SWEP = weapons.GetStored("cw_base")
			
		local Deploy, UnDeploy = surface.GetTextureID("cw2/gui/bipod_deploy"), surface.GetTextureID("cw2/gui/bipod_undeploy")
		local deployedOnObject = surface.GetTextureID("cw2/gui/deployonobject")
		local scopeTemplate = surface.GetTextureID("cw2/gui/scope_template")

		SWEP.CrossAmount = 0
		SWEP.CrossAlpha = 255
		SWEP.FadeAlpha = 0
		SWEP.AimTime = 0

		local ClumpSpread = surface.GetTextureID("cw2/gui/clumpspread_ring")
		local Bullet = surface.GetTextureID("cw2/gui/bullet")
		local GLCrosshair = surface.GetTextureID("cw2/gui/crosshair_gl")
		local Vignette = surface.GetTextureID("cw2/effects/vignette")

		local White, Black = Color(255, 255, 255, 255), Color(0, 0, 0, 255)
		local x, y, x2, y2, lp, size, FT, CT, tr, x3, x4, y3, y4, UCT, sc1, sc2
		local td = {}

		local surface = surface
		local math = math
		local draw = draw
		local dst = draw.SimpleText

		SWEP.HUD_HealthTextColor = Color(255, 255, 255, 255)
		SWEP.HUD_MagTextColor = Color(255, 255, 255, 255)
		SWEP.HUD_ReserveTextColor = Color(255, 255, 255, 255)
		SWEP.HUD_MagText = "MAG: "
		SWEP.HUD_BreathAlpha = 1

		function draw.ShadowText(text, font, x, y, colortext, colorshadow, dist, xalign, yalign)
			dst(text, font, x + dist, y + dist, colorshadow, xalign, yalign)
			dst(text, font, x, y, colortext, xalign, yalign)
		end

		-- pre-define strings to not generate them every frame and make life unbearable for gc
		local cwhud24 = "CW_HUD24"
		local cwhud22 = "CW_HUD22"
		local cwhud20 = "CW_HUD20"
		local cwhud16 =	"CW_HUD16"
		local cwhud14 = "CW_HUD14"
		local bullet = surface.GetTextureID("cw2/gui/bullet")

		local Vec0, Ang0 = Vector(0, 0, 0), Angle(0, 0, 0)
		local TargetPos, TargetAng, cos1, sin1, tan, ws, rs, mod, EA, delta, sin2, mul, vm, muz, muz2, tr, att, CT
		local td = {}
		local LerpVector, LerpAngle, Lerp = LerpVector, LerpAngle, Lerp

		local reg = debug.getregistry()
		local GetVelocity = reg.Entity.GetVelocity
		local Length = reg.Vector.Length
		local Right = reg.Angle.Right
		local Up = reg.Angle.Up
		local Forward = reg.Angle.Forward
		local RotateAroundAxis = reg.Angle.RotateAroundAxis
		local GetBonePosition = reg.Entity.GetBonePosition

		function SWEP:draw3D2DHUD()
			local att = self:getMuzzlePosition()
			
			if not att then
				return
			end
			
			local ang = EyeAngles()
			ang:RotateAroundAxis(ang:Right(), 90)
			ang:RotateAroundAxis(ang:Up(), -90)
			
			cam.Start3D2D(att.Pos + ang:Forward() * 4, ang, self.HUD_3D2DScale)
				cam.IgnoreZ(true)
					local FT = FrameTime()
					
					if self.dt.State == CW_AIMING or (self.InactiveWeaponStates[self.dt.State] and not (self.IsReloading and self.Cycle <= 0.98)) then
						self.HUD_3D2DAlpha = math.Approach(self.HUD_3D2DAlpha, 0, FT * 1000)
					else
						self.HUD_3D2DAlpha = math.Approach(self.HUD_3D2DAlpha, 255, FT * 1000)
					end
					
					self.HUDColors.white.a = self.HUD_3D2DAlpha
					self.HUDColors.black.a = self.HUD_3D2DAlpha
					
					local mag = self:Clip1()
					
					self.HUDColors.black.a = self.HUD_3D2DAlpha
					
					local reloadProgress = self:getReloadProgress()
					
					-- if our mag has not much ammo or we're reloading, make the text red
					if mag <= self.Primary.ClipSize * 0.25 or reloadProgress then
						self.HUD_3D2D_MagColor = LerpColor(FT * 10, self.HUD_3D2D_MagColor, self.HUDColors.red)
					else
						self.HUD_3D2D_MagColor = LerpColor(FT * 10, self.HUD_3D2D_MagColor, self.HUDColors.white)
					end
					
					self.HUD_3D2D_MagColor.a = self.HUD_3D2DAlpha
					
					-- only show the reload progress if we're reloading
					if reloadProgress then
						draw.ShadowText("장전중 " .. reloadProgress .. "%", "CW_HUD60", 90, 50, self.HUD_3D2D_MagColor, self.HUDColors.black, 2, TEXT_ALIGN_RIGHT, TEXT_ALIGN_CENTER)
					else
						draw.ShadowText(self:getMagCapacity() .. " / " .. self:getReserveAmmoText(), "CW_HUD60", 90, 50, self.HUD_3D2D_MagColor, self.HUDColors.black, 2, TEXT_ALIGN_RIGHT, TEXT_ALIGN_CENTER)
					end
					
					if self.BulletDisplay and self.BulletDisplay > 0 then
						local bulletDisplayAlpha = self.HUD_3D2DAlpha
						local bulletDisplayOffset = 0
						
						if #self.FireModes > 1 then -- if we have more than 1 firemode for the current weapon, we don't let the firemode display fade and instead reposition it a bit to let the player see what firemode he's using while aiming
							local aiming = self.dt.State == CW_AIMING
						
							bulletDisplayAlpha = aiming and 255 or self.HUD_3D2DAlpha
							bulletDisplayOffset = aiming and -255 or 0
						end
						
						surface.SetTexture(bullet)
						surface.SetDrawColor(0, 0, 0, bulletDisplayAlpha)
						
						for i = 1, self.BulletDisplay do
							surface.DrawTexturedRectRotated(115 + bulletDisplayOffset, 45 + (i - 1) * 18, 30, 30, 180)
						end
						
						surface.SetTexture(bullet)
						surface.SetDrawColor(255, 255, 255, bulletDisplayAlpha)
						
						for i = 1, self.BulletDisplay do
							surface.DrawTexturedRectRotated(113 + bulletDisplayOffset, 45 + (i - 1) * 18 - 2, 30, 30, 180)
						end
					end
					
					draw.ShadowText(gayNames[self.Primary.Ammo] or self.Primary.Ammo, "CW_HUD48", 90, 100, self.HUDColors.white, self.HUDColors.black, 2, TEXT_ALIGN_RIGHT, TEXT_ALIGN_CENTER)
					
					local grenades = self.Owner:GetAmmoCount("Frag Grenades")
					
					if grenades > 0 then
						draw.ShadowText(grenades .. "x 수류탄", "CW_HUD40", 90, 140, self.HUDColors.white, self.HUDColors.black, 2, TEXT_ALIGN_RIGHT, TEXT_ALIGN_CENTER)
					end
					
					self.HUDColors.white.a = 255
					self.HUDColors.black.a = 255
					
					if self.dt.M203Active then
						-- display the text when we either have a round in, or have no rounds but aren't aiming
						if (not self.M203Chamber and self.dt.State ~= CW_AIMING) or self.M203Chamber then
							if not self.M203Chamber then
								draw.ShadowText("M203 장전필요", "CW_HUD40", 90, -70, self.HUDColors.red, self.HUDColors.black, 1, TEXT_ALIGN_RIGHT, TEXT_ALIGN_CENTER)
							else
								draw.ShadowText("M203 장전완료", "CW_HUD40", 90, -70, self.HUDColors.white, self.HUDColors.black, 1, TEXT_ALIGN_RIGHT, TEXT_ALIGN_CENTER)
							end
							
							local curGrenade = CustomizableWeaponry.grenadeTypes.getGrenadeText(self)
							
							draw.ShadowText(self.Owner:GetAmmoCount("40MM") .. "x 유탄", "CW_HUD32", 90, -40, self.HUDColors.white, self.HUDColors.black, 1, TEXT_ALIGN_RIGHT, TEXT_ALIGN_CENTER)
							draw.ShadowText("탄종" .. curGrenade, "CW_HUD32", 90, -10, self.HUDColors.white, self.HUDColors.black, 1, TEXT_ALIGN_RIGHT, TEXT_ALIGN_CENTER)
						end
					end
					
					CustomizableWeaponry.callbacks.processCategory(self, "drawTo3D2DHUD")
				cam.IgnoreZ(false)
			cam.End3D2D()
		end
		

		function SWEP:DrawHUD()
			FT, CT, x, y = FrameTime(), CurTime(), ScrW(), ScrH()
			UCT = UnPredictedCurTime()
			
			if self.dt.State == CW_AIMING then
				-- if we have M203 mode enabled, but have no rounds in it, OR if we don't have M203 enabled, let us draw the overlays
				if (self.dt.M203Active and (not self.M203Chamber or CustomizableWeaponry.grenadeTypes:canUseProperSights(self.Grenade40MM))) or not self.dt.M203Active then
					local simpleTelescopics = not self:canUseComplexTelescopics()
					
					local hasZoom = (self.SimpleTelescopicsFOV)
					local canUseSimpleTelescopics = (simpleTelescopics and hasZoom)
					
					if UCT > self.AimTime or self.InstantDissapearOnAim then
						if self.DrawBlackBarsOnAim or canUseSimpleTelescopics then
							surface.SetDrawColor(0, 0, 0, 255)
							
							if self.ScaleOverlayToScreenHeight then
								x3 = (x - y) / 2
								y3 = y / 2
								x4 = x - x3
								y4 = y - y3
								
								surface.DrawRect(0, 0, x3, y)
								surface.DrawRect(x4, 0, x3, y)
							else
								x3 = (x - 1024) / 2
								y3 = (y - 1024) / 2
								x4 = x - x3
								y4 = y - y3
								
								surface.DrawRect(0, 0, x3, y)
								surface.DrawRect(x4, 0, x3, y)
								surface.DrawRect(0, 0, x, y3)
								surface.DrawRect(0, y4, x, y3)
							end
						end
					end
					
					if self.AimOverlay or canUseSimpleTelescopics then
						if UCT > self.AimTime or self.InstantDissapearOnAim then
							surface.SetDrawColor(255, 255, 255, 255)
							
							if canUseSimpleTelescopics then
								surface.SetTexture(scopeTemplate)
								surface.DrawTexturedRect(x * 0.5 - 512, y * 0.5 - 512, 1024, 1024)
							else
								surface.SetTexture(self.AimOverlay)
							end
							
							if self.StretchOverlayToScreen then
								if canUseSimpleTelescopics then
									for k, v in ipairs(self.ZoomTextures) do
										if v.color then
											surface.SetDrawColor(v.color)
										else
											surface.SetDrawColor(255, 255, 255, 255)
										end
										
										surface.SetTexture(v.tex)
										surface.DrawTexturedRect(v.offset[1], v.offset[2], x, y)
									end
								else
									surface.DrawTexturedRect(0, 0, x, y)
								end
								
							elseif self.ScaleOverlayToScreenHeight then
								if canUseSimpleTelescopics then
									for k, v in ipairs(self.ZoomTextures) do
										surface.SetTexture(v.tex)
										surface.DrawTexturedRect(x * 0.5 - y * 0.5 + v.offset[1], y * 0.5 - y * 0.5 + v.offset[2], y, y)
									end
								else
									surface.DrawTexturedRect(x * 0.5 - y * 0.5, y * 0.5 - y * 0.5, y, y)
								end
							else
								if canUseSimpleTelescopics then
									for k, v in ipairs(self.ZoomTextures) do
										local xSize, ySize = 1024, 1024
										
										if v.size then
											xSize, ySize = v.size[1], v.size[2]
										end
										
										
										if v.color then
											surface.SetDrawColor(v.color)
										else
											surface.SetDrawColor(255, 255, 255, 255)
										end
										
										surface.SetTexture(v.tex)
										surface.DrawTexturedRect(x * 0.5 - xSize * 0.5 + v.offset[1], y * 0.5 - ySize * 0.5 + v.offset[2], xSize, ySize)
									end
								else
									surface.DrawTexturedRect(x * 0.5 - 512, y * 0.5 - 512, 1024, 1024)
								end
							end
						end
					end
					
					if self.FadeDuringAiming or canUseSimpleTelescopics then
						if UCT < self.AimTime then
							self.FadeAlpha = math.Approach(self.FadeAlpha, 255, FT * 1500)
						else
							self.FadeAlpha = LerpCW20(FT * 10, self.FadeAlpha, 0)
						end
						
						surface.SetDrawColor(0, 0, 0, self.FadeAlpha)
						surface.DrawRect(0, 0, x, y)
					end
				end
			else
				self.FadeAlpha = 0
			end
			
			if not self.dt.BipodDeployed then 
				if self.BipodInstalled then
					if self:CanRestWeapon(self.BipodDeployHeightRequirement) then
						draw.ShadowText("[사용 키]", cwhud24, x / 2, y / 2 + 100, White, Black, 2, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
						
						surface.SetTexture(Deploy)
						
						surface.SetDrawColor(0, 0, 0, 255)
						surface.DrawTexturedRect(x / 2 - 47, y / 2 + 126, 96, 96)
						
						surface.SetDrawColor(255, 255, 255, 255)
						surface.DrawTexturedRect(x / 2 - 48, y / 2 + 125, 96, 96)
					end
				else
					if self.dt.State == CW_AIMING then
						if self.CanRestOnObjects then
							if self:CanRestWeapon(self.WeaponRestHeightRequirement) then
								surface.SetTexture(deployedOnObject)
								
								surface.SetDrawColor(0, 0, 0, 255)
								surface.DrawTexturedRect(x / 2 - 47, y / 2 + 150, 96, 96)
								
								surface.SetDrawColor(255, 255, 255, 255)
								surface.DrawTexturedRect(x / 2 - 48, y / 2 + 150, 96, 96)
							end
						end
					end
				end
			else
				draw.ShadowText("[사용 키]", cwhud24, x / 2, y / 2 + 100, White, Black, 2, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
					
				surface.SetTexture(UnDeploy)
					
				surface.SetDrawColor(0, 0, 0, 255)
				surface.DrawTexturedRect(x / 2 - 47, y / 2 + 126, 96, 96)
					
				surface.SetDrawColor(255, 255, 255, 255)
				surface.DrawTexturedRect(x / 2 - 48, y / 2 + 125, 96, 96)
			end
			
			if self.AimBreathingEnabled then
				self.HUD_BreathAlpha = LerpCW20(FT * 10, self.HUD_BreathAlpha, (1 - self.BreathLeft))

				if self.BreathLeft < 1 then
					surface.SetDrawColor(0, 0, 0, 255 * self.HUD_BreathAlpha)
					surface.SetTexture(Vignette)
					surface.DrawTexturedRect(0, 0, x, y)
				end
				
				if self.dt.State == CW_AIMING then
					if self.Owner:GetVelocity():Length() < self.BreathHoldVelocityMinimum then
						local finalColorMain = White
						local finalColorSecondary = White
						
						if self.noBreathHoldingUntilKeyRelease then
							finalColorMain = self.HUDColors.deepRed
						end
						
						if not self.holdingBreath and self.BreathLeft < 0.5 then
							finalColorSecondary = self.HUDColors.red
						end
						
						draw.ShadowText(self:getKeyBind("+speed") .. " - 안정화", cwhud24, x / 2, y / 2 + 120, finalColorMain, Black, 2, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
						draw.ShadowText(math.Round(self.BreathLeft * 100) .. "%", cwhud24, x / 2, y / 2 + 140, finalColorSecondary, Black, 2, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
					end
				else
					if self.holdingBreath then
						self:stopHoldingBreath(nil, nil, 0)
					end
				end
			end
			
			local disableCrosshair, disableCustomHUD, disableTabDisplay = CustomizableWeaponry.callbacks.processCategory(self, "suppressHUDElements", customHUD)
			
			if not disableCrosshair then
				if self.CrosshairEnabled and GetConVarNumber("cw_crosshair") > 0 then
					lp = self.Owner:ShouldDrawLocalPlayer()
					
					if lp or self.freeAimOn then
						td.start = self.Owner:GetShootPos()
						td.endpos = td.start + (self.Owner:EyeAngles() + self.Owner:GetPunchAngle()):Forward() * 16384
						td.filter = self.Owner
						
						tr = util.TraceLine(td)
						
						x2 = tr.HitPos:ToScreen()
						x2, y2 = x2.x, x2.y
					else
						x2, y2 = math.Round(x * 0.5), math.Round(y * 0.5)
					end
					
					if not self:crosshairVisible() then
						self.CrossAlpha = LerpCW20(FT * 15, self.CrossAlpha, 0)
					else
						self.CrossAlpha = LerpCW20(FT * 15, self.CrossAlpha, 255)
					end
					
					if self.dt.M203Active and self.M203Chamber then
						local curGrenade = CustomizableWeaponry.grenadeTypes:get(self.Grenade40MM)
						
						if self.dt.State == CW_AIMING then
							if not curGrenade or not curGrenade.clumpSpread then
								surface.SetTexture(GLCrosshair)
								surface.SetDrawColor(255, 255, 255, 255 - self.CrossAlpha)
								surface.DrawTexturedRect(x2 - 16, y2, 32, 32)
							end
						end
						
						if curGrenade and curGrenade.clumpSpread and self.M203Chamber then
							self:drawClumpSpread(x2, y2, curGrenade.clumpSpread, self.CrossAlpha * 0.35)
						end
					end
					
					self:drawClumpSpread(x2, y2, self.ClumpSpread, self.CrossAlpha)

					self.CrossAmount = LerpCW20(FT * 10, self.CrossAmount, (self.CurCone * 350) * (90 / (math.Clamp(GetConVarNumber("fov_desired"), 75, 90) - self.CurFOVMod)))
					surface.SetDrawColor(0, 0, 0, self.CrossAlpha * 0.75) -- BLACK crosshair parts
					
					if self.CrosshairParts.left then
						surface.DrawRect(x2 - 13 - self.CrossAmount, y2 - 1, 12, 3) -- left cross
					end
					
					if self.CrosshairParts.right then
						surface.DrawRect(x2 + 3 + self.CrossAmount, y2 - 1, 12, 3) -- right cross
					end
					
					if self.CrosshairParts.upper then
						surface.DrawRect(x2 - 1, y2 - 13 - self.CrossAmount, 3, 12) -- upper cross
					end
					
					if self.CrosshairParts.lower then
						surface.DrawRect(x2 - 1, y2 + 3 + self.CrossAmount, 3, 12) -- lower cross
					end
					
					surface.SetDrawColor(255, 255, 255, self.CrossAlpha) -- WHITE crosshair parts
					
					if self.CrosshairParts.left then
						surface.DrawRect(x2 - 12 - self.CrossAmount, y2, 10, 1) -- left cross
					end
					
					if self.CrosshairParts.right then
						surface.DrawRect(x2 + 4 + self.CrossAmount, y2, 10, 1) -- right cross
					end
					
					if self.CrosshairParts.upper then
						surface.DrawRect(x2, y2 - 12 - self.CrossAmount, 1, 10) -- upper cross
					end
					
					if self.CrosshairParts.lower then
						surface.DrawRect(x2, y2 + 4 + self.CrossAmount, 1, 10) -- lower cross
					end
				end
			end
			
			if not disableCustomHUD then
				local customHUD = GetConVarNumber("cw_customhud") >= 1
				
				if not customHUD and GetConVarNumber("cw_customhud_ammo") <= 0 then
					if self.FireModeDisplayPos == "right" then
						sc1, sc2 = ScreenScale(35), ScreenScale(44)
						draw.ShadowText(self.FireModeDisplay, cwhud16, x - sc1 - self.BulletDisplay * 20, y - sc2 - 20, White, Black, 1, TEXT_ALIGN_RIGHT, TEXT_ALIGN_CENTER)
						
						if self.BulletDisplay and self.BulletDisplay > 0 then
							surface.SetDrawColor(0, 0, 0, 255)
							surface.SetTexture(Bullet)
							
							for i = 1, self.BulletDisplay do
								surface.DrawTexturedRect(x - sc1 - (i - 1) * 20 - 5, y - sc2 - 25, 16, 16)
							end
							
							surface.SetDrawColor(255, 255, 255, 255)
							
							for i = 1, self.BulletDisplay do
								surface.DrawTexturedRect(x - sc1 - (i - 1) * 20 - 6, y - sc2 - 26, 16, 16)
							end
						end
					elseif self.FireModeDisplayPos == "middle" then
						draw.ShadowText(self.FireModeDisplay, cwhud16, x * 0.5, y - 100, White, Black, 1, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
						
						local grenades = self.Owner:GetAmmoCount("Frag Grenades")
						
						-- only display the frag ammo count if we have any grenades in reserve
						if grenades > 0 then
							draw.ShadowText(grenades .. "x 수류탄", cwhud16, x * 0.5, y - 120, self.HUD_ReserveTextColor, self.HUDColors.black, 1, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
						end
						
						if self.BulletDisplay and self.BulletDisplay > 0 then
							surface.SetDrawColor(0, 0, 0, 255)
							surface.SetTexture(Bullet)
							
							for i = 1, self.BulletDisplay do
								surface.DrawTexturedRect(x * 0.5 - 20 * i + self.BulletDisplay * 10 + 1, y - 89, 16, 16)
							end
							
							surface.SetDrawColor(255, 255, 255, 255)
							
							for i = 1, self.BulletDisplay do
								surface.DrawTexturedRect(x * 0.5 - 20 * i + self.BulletDisplay * 10, y - 90, 16, 16)
							end
						end
					elseif self.FireModeDisplayPos == "left" then
						sc1, sc2 = ScreenScale(35), ScreenScale(44)
						draw.ShadowText(self.FireModeDisplay, cwhud16, sc1, y - sc2 - 20, White, Black, 1, TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)
						
						if self.BulletDisplay and self.BulletDisplay > 0 then
							surface.SetDrawColor(0, 0, 0, 255)
							surface.SetTexture(Bullet)
							
							surface.SetFont(cwhud16)
							local size = surface.GetTextSize(self.FireModeDisplay)
							
							for i = 1, self.BulletDisplay do
								surface.DrawTexturedRect(sc1 + (i - 1) * 20 + size + 15, y - sc2 - 25, 16, 16)
							end
							
							surface.SetDrawColor(255, 255, 255, 255)
							
							for i = 1, self.BulletDisplay do
								surface.DrawTexturedRect(sc1 + (i - 1) * 20 - 1 + size + 15, y - sc2 - 26, 16, 16)
							end
						end
					end
					
					if self.dt.M203Active then
						self.HUDColors.red.a = 255
						self.HUDColors.black.a = 255
						self.HUDColors.white.a = 255
						
						if not self.M203Chamber then
							draw.ShadowText("M203 장전필요", cwhud24, x * 0.5, y - 170, self.HUDColors.red, self.HUDColors.black, 1, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
						else
							draw.ShadowText("M203 장전완료", cwhud24, x * 0.5, y - 170, self.HUDColors.white, self.HUDColors.black, 1, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
						end
						
						local curGrenade = CustomizableWeaponry.grenadeTypes.getGrenadeText(self)
						
						draw.ShadowText(self.Owner:GetAmmoCount("40MM") .. "x 유탄", cwhud22, x * 0.5, y - 150, self.HUDColors.white, self.HUDColors.black, 1, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
						draw.ShadowText("TYPE" .. curGrenade, cwhud22, x * 0.5, y - 130, self.HUDColors.white, self.HUDColors.black, 1, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
					end
				end
			
				if customHUD then
					self:drawCustomHUD()
				end
			end
			
			if not disableTabDisplay then
				if self.dt.State == CW_CUSTOMIZE then
					self:drawTabDisplay()
				end
				
				CustomizableWeaponry.callbacks.processCategory(self, "drawToHUD", customHUD)
			end
		end
	end
	timer.Simple(1, ASSPORTAL)
end
