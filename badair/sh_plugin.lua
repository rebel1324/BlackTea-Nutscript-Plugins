local PLUGIN = PLUGIN
PLUGIN.name = "Bad Air Remastered"
PLUGIN.author = "Black Tea"
PLUGIN.desc = "Remasted Bad Air Plugin"
PLUGIN.toxicAreas = PLUGIN.toxicAreas or {}

DEFAULT_GASMASK_HEALTH = 100
DEFAULT_GASMASK_FILTER = 600

if (SERVER) then
	resource.AddFile("sound/gasmaskon.wav")
	resource.AddFile("sound/gasmaskoff.wav")
	resource.AddFile("sound/gmsk_in.wav")
	resource.AddFile("sound/gmsk_out.wav")
	resource.AddFile("materials/gasmask_fnl.vmt")
	resource.AddFile("materials/gasmask3.vtf")
	resource.AddFile("materials/gasmask3_n.vtf")
	resource.AddFile("materials/shtr_01.vmt")
	resource.AddFile("materials/shtr.vtf")
	resource.AddFile("materials/shtr_n.vtf")
end

local langkey = "english"
do
	local langTable = {
		gmskNeedFilter = "You don't have any filter to exchange.",
		gmskFilter = "You exchanged the filter.",
		badairAdded = "You added new Toxic Air Area",
		badairCommand = "Run the command again at a different position to set a maximum point.",
		badairRemoved = "Toxic Air Area is removed.",
		badairBeArea = "You need to be in Toxic Air Area to remove.",
		filterTip = "Changes the filter to make it functional again.",
		maskEquipped = "You're trying to equip another Gas Mask on your face!",
		noFilter = "There is no Gas Mask Filter in the inventory.",
		maskFull = "This Gas Mask's filter is already new.",
		gasMaskDesc = "A Gas-mask type Respirator that protects you from bad airs.\nCondition: %s (%s)</color>\nFilter: %s (%s)</color>\n<color=192, 57, 43>Must be equipped to avoid harzadous environments.",
		gasMaskDescEntity = "A Gas-mask type Respirator that protects you from bad airs.",
		filterDesc = "A Filter for Gas Mask. Gas Mask won't be functional without filters.\n<color=39, 174, 96>You can Drag and Drop this item on Gas Mask to change the filter.",
		filterDescEntity = "A Filter for Gas Mask.",
		txtCond0 = "<color=39, 174, 96>Factory New",
		txtCond1 = "<color=80, 174, 80>Almost New",
		txtCond2 = "<color=182, 174, 60>Visibly Wornout",
		txtCond3 = "<color=222, 100, 50>Barely Functional",
		txtCond4 = "<color=192, 57, 43>Broken",
		txtFunc = "<color=39, 174, 96>Functional",
		txtFail = "<color=192, 57, 43>Empty",
	}

	table.Merge(nut.lang.stored[langkey], langTable)
end

langkey = "korean"
do
	local langTable = {
		["Respirator"] = "방독면",
		["Filter"] = "필터",
		gmskFilter = "You exchanged the filter.",
		badairAdded = "You added new Toxic Air Area",
		badairCommand = "Run the command again at a different position to set a maximum point.",
		badairRemoved = "Toxic Air Area is removed.",
		badairBeArea = "You need to be in Toxic Air Area to remove.",
		filterTip = "방독면은 필터가 작동해야만 효과가 발동됩니다.",
		maskEquipped = "이미 방독면을 착용하고 있습니다!",
		noFilter = "교체할 필터를 가지고 있지 않습니다.",
		maskFull = "이 방독면의 필터는 이미 새거입니다.",
		gasMaskDesc = "나쁜 환경으로부터 보호해주는 호흡기관을 보호해주는 방독면입니다.\n상태: %s (%s)</color>\n필터: %s (%s)</color>\n<color=192, 57, 43>필터가 작동하는 상태로 착용을 해야 효과가 발동됩니다.",
		gasMaskDescEntity = "나쁜 환경으로부터 보호해주는 호흡기관을 보호해주는 방독면입니다.",
		filterDesc = "방독면에 쓸 수 있는 필터입니다. 방독면은 필터가 있어야만 제대로 작동합니다.\n<color=39, 174, 96>방독면에 아이템을 끌어다 놓는 것으로도 필터를 교체할 수 있습니다.",
		filterDescEntity = "방독면에 쓸 수 있는 필터입니다.",
		txtCond0 = "<color=39, 174, 96>새것 같음",
		txtCond1 = "<color=80, 174, 80>잘 관리됨",
		txtCond2 = "<color=182, 174, 60>상처가 보임",
		txtCond3 = "<color=222, 100, 50>거의 작동 안함",
		txtCond4 = "<color=192, 57, 43>박살남",
		txtFunc = "<color=39, 174, 96>기능 중",
		txtFail = "<color=192, 57, 43>비어있음",
	}

	table.Merge(nut.lang.stored[langkey], langTable)
end

local PLAYER = FindMetaTable("Player")

function PLAYER:getGasMask()
	return self.nutGasMaskItem 
end

if (CLIENT) then
	local gasmaskTexture2 = Material("gasmask_fnl")
	local gasmaskTexture = Material("shtr_01")
	local w, h, gw, gh, margin, move, healthFactor, ft
	local nextBreath = CurTime()
	local exhale = false

	-- Local function for condition.
	local function canEffect(client)
		return (
			client:getChar() and
			client:getGasMask() and
			!client:ShouldDrawLocalPlayer() and
			(!nut.gui.char or !nut.gui.char:IsVisible())
		)
	end

	shtrPos = {}

	-- Draw the Gas Mask Overlay. But other essiential stuffs must be visible.
	function PLUGIN:HUDPaintBackground()
		if (canEffect(LocalPlayer())) then
			w, h = ScrW(), ScrH()
			gw, gh = h/3*4, h

			surface.SetMaterial(gasmaskTexture)
			for k, v in ipairs(shtrPos) do
				surface.SetDrawColor(255, 255, 255)
				surface.DrawTexturedRectRotated(v[1], v[2], 512*v[3], 512*v[3], v[4])
			end

			render.UpdateScreenEffectTexture()
			surface.SetMaterial(gasmaskTexture2)
			surface.SetDrawColor(255, 255, 255)
			surface.DrawTexturedRect(w/2 - gw/2, h/2 - gh/2, gw, gh)

			surface.SetDrawColor(0, 0, 0)
			surface.DrawRect(0, 0, w/2 - gw/2, h)
			surface.DrawRect(0, 0, w, h/2 - gh/2)
			surface.DrawRect(0, h/2 + gh/2, w, h/2 - gh/2)
			surface.DrawRect(w/2 + gw/2, 0, w/2 - gw/2, h)
		end
	end

	function PLUGIN:Think()
		local client = LocalPlayer()
		local item = client:getGasMask()

		if (client:getChar() and client:Alive() and item) then
			healthFactor = math.Clamp(client:Health()/client:GetMaxHealth(), 0, 1)

			if (!client.nextBreath or client.nextBreath < CurTime()) then
				client:EmitSound(!exhale and "gmsk_in.wav" or "gmsk_out.wav", 
				(LocalPlayer() == client and client:ShouldDrawLocalPlayer() or item:getHealth() <= 0) and 20 or 50, math.random(90, 100) + 15*(1 - healthFactor))
				
				local f = healthFactor*.5
				client.nextBreath = CurTime() + 1 + f + (exhale and f or 0)
				exhale = !exhale
			end
		end
	end

	-- Local functions for the Visibility of the crack.
	local function addCrack()
		table.insert(shtrPos, {math.random(0, ScrW()), math.random(0, ScrH()), math.Rand(.9, 2), math.random(0, 360)})
	end

	local function initCracks(crackNums)
		for i = 1, math.max(crackNums, 1) do
			addCrack()
		end
	end

	netstream.Hook("nutMaskOn", function(id, health)
		local client = LocalPlayer()
		local item = nut.item.instances[id]

		if (item) then
			local crackNums = math.Round((1 - health/DEFAULT_GASMASK_HEALTH)*6)

			shtrPos = {}
			if (crackNums > 1) then
				initCracks(crackNums)
			end

			client.nutGasMaskItem = item
		end
	end)

	netstream.Hook("nutMaskOff", function()
		local client = LocalPlayer()

		client.nutGasMaskItem = nil
	end)

	netstream.Hook("mskAdd", function()
		LocalPlayer():EmitSound("player/bhit_helmet-1.wav")

		addCrack()
	end)
else
	function PLUGIN:PlayerLoadedChar(client, character, lastChar)
		if (character) then
			local inv = character:getInv()
			local items = inv:getItems()

			if (items) then
				local gasItem 
				for k, v in pairs(items) do
					if (v.isGasMask) then
						if (v:isEquipped()) then
							gasItem = v
							
							break
						end
					end	
				end

				if (gasItem) then
					client.nutGasMaskItem = gasItem
					netstream.Start(client, "nutMaskOn", gasItem:getID(), gasItem:getHealth()) 
				else
					client.nutGasMaskItem = nil
					netstream.Start(client, "nutMaskOff")
				end
			end
		end
	end

	function PLUGIN:PlayerDeath(client)
		local item = client:getGasMask()

		if (item and item.isGasMask) then
			if (item:isEquipped()) then
				client.nutGasMaskItem = nil
				client:removePart(item.uniqueID)
				item:setData("equip", false)

				netstream.Start(client, "nutMaskOff")
			end
		end
	end

	-- gets two vector and gives min and max vector for Vector:WithinAA(min, max)
	local function sortVector(vector1, vector2)
		local minVector = Vector(0, 0, 0)
		local maxVector = Vector(0, 0, 0)

		for i = 1, 3 do
			if (vector1[i] >= vector2[i]) then
				maxVector[i] = vector1[i]
				minVector[i] = vector2[i]
			else
				maxVector[i] = vector2[i]
				minVector[i] = vector1[i]
			end
		end

		return minVector, maxVector
	end

	nut.badair = nut.badair or {}

	-- get all bad air area.
	function nut.badair.getAll()
		return PLUGIN.toxicAreas
	end

	-- Add toxic bad air area.
	function nut.badair.addArea(vMin, vMax)
		vMin, vMax = sortVector(vMin, vMax)

		if (vMin and vMax) then
			table.insert(PLUGIN.toxicAreas, {vMin, vMax})
		end
	end

	-- This hook simulates the damage of the Gas Mask.
	function PLUGIN:EntityTakeDamage(client, dmgInfo)
		if (client and client:IsPlayer()) then
			local item = client:getGasMask()
			local char = client:getChar()

			if (item and item.isGasMask) then
				local damage = dmgInfo:GetDamage() * .5
				item:damageHealth(damage)

				local crackNums = math.Round((1 - item:getHealth()/DEFAULT_GASMASK_HEALTH)*6)

				if (item.curCracks and item.curCracks < crackNums) then
					netstream.Start(client, "mskAdd")
				end

				item.curCracks = crackNums
			end
		end
	end

	function PLUGIN:SaveData()
		self:setData(nut.badair.getAll())
	end
	
	function PLUGIN:LoadData()
		PLUGIN.toxicAreas = self:getData()
	end

	-- This timer does the effect of bad air.
	timer.Create("badairTick", 1, 0, function()
		for _, client in ipairs(player.GetAll()) do
			local char = client:getChar()
			local clientPos = client:GetPos() + client:OBBCenter()
			client.currentArea = nil

			for index, vec in ipairs((nut.badair.getAll() or {})) do
				if (clientPos:WithinAABox(vec[1], vec[2])) then
					if (client:IsAdmin()) then
						client.currentArea = index
					end

					if (client:Alive() and char) then
						local item = client:getGasMask()
						local bool

						if (item and item.isGasMask) then
							if (item:getHealth() <= 0) then
								bool = false
							else
								if (item:getFilter() <= 0) then
									bool = false
								else
									bool = true
								end
							end
						else
							bool = false
						end

						if (bool) then
							item:damageFilter(1)
						else
							client:TakeDamage(3)
							client:ScreenFade(1, ColorAlpha(color_white, 150), .5, 0)
						end		

						break
					end
				end
			end
		end
	end)

	netstream.Start("addArea", function(client, v1, v2)
		if (!client:IsAdmin()) then
			client:notify(L("notAllowed", client))
		end

		client:notify(L("badairAdded", client))
		nut.badair.addArea(v1, v2)
	end)
end

-- This hook is for my other plugin, "Grenade" Plugin.
function PLUGIN:CanPlayerTearGassed(client)
	local item = client:getGasMask()

	if (!item) then 
		return true
	else
		if (!item.isGasMask) then
			return true
		elseif (item:getHealth() <= 0) then
			return true
		elseif (item:getFilter() <= 0) then
			return true
		end
	end

	return false
end

-- If the player is wearing Gas Mask, His some voice should be muffled a bit.
function PLUGIN:EntityEmitSound(sndTable)
	local client = sndTable.Entity
	if (client and IsValid(client) and client:IsPlayer()) then
		local item = client:getGasMask()

		if (item and item.isGasMask) then
			local sndName = sndTable.SoundName:lower()

			if (sndName:find("male") or sndName:find("voice")) then
				sndTable.DSP = 15
			end
		
			return true
		end
	end
end

nut.command.add("badairadd", {
	syntax = "",
	adminOnly = true,
	onRun = function(client, arguments)
		local pos = client:GetEyeTraceNoCursor().HitPos

		if (!client:getNetVar("badairMin")) then
			netstream.Start(client, "displayPosition", pos)

			client:setNetVar("badairMin", pos, client)
			client:notify(L("badairCommand", client))
		else
			local vMin = client:getNetVar("badairMin")
			local vMax = pos

			netstream.Start(client, "displayPosition", pos)
			nut.badair.addArea(vMin, vMax)

			client:setNetVar("badairMin", nil, client)
			client:notify(L("badairAdded", client))
		end
	end
})

nut.command.add("badairremove", {
	syntax = "",
	adminOnly = true,
	onRun = function(client, arguments)
		if (client.currentArea) then
			client:notify(L("badairRemoved", client))

			table.remove(PLUGIN.toxicAreas, client.currentArea)	
		else
			client:notify(L("badairBeArea", client))
		end
	end
})
