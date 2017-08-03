ITEM.name = "Filter"
ITEM.desc = "A Gas Mask filter"
ITEM.model = "models/props_lab/rotato.mdl"
ITEM.price = 80
ITEM.isFilter = true
ITEM.filterHealth = DEFAULT_GASMASK_FILTER
ITEM.iconCam = {
	pos = Vector(57.318908691406, 48.096267700195, 34.891246795654),
	ang = Angle(25, 220, 0),
	fov = 6.508287169279,
}
function ITEM:onGetDropModel(item) return "models/props_lab/box01a.mdl" end

function ITEM:getFilterHealth()
    return self:getData("health", self.filterHealth)
end

function ITEM:onChangeFilter(gasMask, filter)
    -- if filter does matters. (like high density shit)
end

function ITEM:getDesc()
	if (self.entity) then
		return L"filterDescEntity"
	else
        return L"filterDesc"
	end
end

ITEM.functions.combine = {
    onCanRun = function(item, datao)
        local targetItem = nut.item.instances[data]
        
        if (data and targetItem) then
            -- Yeah, You can't see me when item is dropped on the ground!
            if (IsValid(item.entity)) then
                return false
            end
        end
    end,
    onRun = function(item, data)
        local client = item.player

        if (IsValid(client)) then
            local targetItem = nut.item.instances[data]

            if (targetItem) then
                if (targetItem.isGasMask) then
                    return targetItem:changeFilter(client, targetItem, item)
                else
                    client:notifyLocalized("notGasMask")
                end
            end
        end

        return false
    end,
}