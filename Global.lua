function onLoad()
    hotkey_onload()
    -- Panel with setup buttons
    math.randomseed(os.time())
    gButtonPanel = getObjectFromGUID("4e93a3")

    input = {}
    input.input_function = "input_func"
    input.function_owner = self
    input.label = "Tile No."
    input.alignment = 3
    input.position = {0, 0.5, -0.3}
    input.width = 1300
    input.scale = {0.3, 0.2, 0.3}
    input.height = 300
    input.font_size = 250

    gButtonPanel.createInput(input)
    -- gButtonPanel.createButton(button)
    single = {-19.38, 2, 14.97}

    button = {}
    button.click_function = "cleanTable"
    button.function_owner = self
    button.label = "Clean Table"
    button.alignment = 3
    button.position = {0, 0.5, 0.4}
    button.width = 1300
    button.scale = {0.3, 0.2, 0.3}
    button.height = 300
    button.font_size = 250

    gButtonPanel.createButton(button)

    -- List of Bags for cleaning
    coreGame = getObjectFromGUID("6f2bdd") -- CoreGame
    copilot = getObjectFromGUID("97d97c") -- Expansion Copilot
    onehundretten = getObjectFromGUID("47eb2d") -- Expansion 110%
    theclimb = getObjectFromGUID("1cc01f") -- Expansion The Climb
    rx = getObjectFromGUID("1cc01f") -- Expansion RX

end
-- Panel has been created

function cleanTable()
    print("Cleaning Table")
    coreGame.call('resetTable')
    copilot.call('resetTable')
    onehundretten.call('resetTable')
    theclimb.call('resetTable')
    print("Table clean!")
end

function input_func(obj, color, input, stillEditing)
    if not stillEditing then
        Tile = {
            location = single,
            Number = input
        }
        GetTile(Tile)
    end
end

function GetTile(Tile)
    local TileName = Tile.Number
    local TileNumber = string.sub(TileName, 1, 3)
    local TileLocation = Tile.location
    if Tile.rotation == nil then
        TileRotation = {0, 120, 0} -- Default rotation if.
        tilelock = false
    else
        TileRotation = Tile.rotation
        tilelock = true
    end

    local TileState = 1
    if string.sub(TileName, -1) == "b" then
        TileState = 2
    else
        TileState = 1
    end
    if string.sub(TileNumber, 1, 1) == "2" then
        TileBag = Global.getVar('coreGame')
    elseif string.sub(TileNumber, 1, 1) == "3" then
        TileBag = Global.getVar('onehundretten')
        if string.sub(TileNumber, 1, 3) == "325" or string.sub(TileNumber, 1, 3) == "326" then
            TileBag = Global.getVar('theclimb')
        end
    elseif string.sub(TileNumber, 1, 1) == "4" then
        TileBag = Global.getVar('rx')
        if string.sub(TileNumber, 1, 3) == "418" or string.sub(TileNumber, 1, 3) == "419" then
            TileBag = Global.getVar('theclimb')
        end
    elseif string.sub(TileNumber, 1, 1) == "9" then
        TileBag = Global.getVar('copilot')
    end
    for _, containedObject in ipairs(TileBag.getObjects()) do
        TileShortNumber = containedObject.name
        if string.sub(TileShortNumber, 1, 3) == TileNumber then
            local takenobject = TileBag.takeObject({
                index = containedObject.index,
                position = TileLocation,
                rotation = TileRotation,
                smooth = false
                -- callback_function = function(SpawnObj) if tilelock then SpawnObj.setLock(true) end end, --I wanted to lock tiles on placement, but instead we can lock after checking the stateID below.
            })
            if takenobject.getStateId() == TileState then
                if tilelock then
                    takenobject.setLock(true) -- I like it if tiles are locked. This way you can drag/select dice on the map to roll without worrying about drag selecting tiles.
                end
            else
                Wait.condition(function()
                    newobj = takenobject.setState(TileState)
                    if tilelock then
                        newobj.setLock(true)
                    end
                end, function()
                    return takenobject.resting
                end)
            end
            break
        end
    end
end

function hotkey_onload()
    addHotkey("Return Object (y)", function(S_color, object, pointerPosition, isKeyUp)
        return_action = isKeyUp and "released" or "pressed";
        KBS_return_obj(S_color, object, pointerPosition, isKeyUp)
    end, true)
    addHotkey("Roll individual Die (i)", function(S_color, object, pointerPosition, isKeyUp)
        -- roll_die = isKeyUp and "released" or "pressed";
        roll_die = isKeyUp and "released" or "pressed";
        KBS_roll_die(S_color, object, pointerPosition, isKeyUp)
    end, true)
    addHotkey("Roll flat out (o)", function(S_color, object, pointerPosition, isKeyUp)
        -- roll_flat_out = isKeyUp and "released" or "pressed";
        roll_flat_out = isKeyUp and "released" or "pressed";
        KBS_roll_flat_out(S_color, object, pointerPosition, isKeyUp)
    end, true)
end
function KBS_roll_die(player_color, object, pointerPosition, isKeyUp, overide)
    if isKeyUp == true or roll_die == "released" then -- ignore key release
        return 1
    end
    if object.hasTag("Dice") then
        -- check to see if the die is on a tile or not)
        result = ray_scan(object.getPosition(), {"TILE"})
        if result ~= nil and #result > 0 then
            object.randomize()
            broadcastToAll(player_color .. " rolled 1 [individual] dice.", Table)
        end
    end
end
function KBS_roll_flat_out(player_color, object, pointerPosition, isKeyUp, overide)
    if isKeyUp == true or roll_flat_out == "released" then -- ignore key release
        return 1
    end
    if object.type == "Dice" then
        flat_out_Dicelist = {}
        dicelist = getObjectsWithTag("Dice")
        for x = 1, #dicelist do
            result = ray_scan(dicelist[x].getPosition(), {"TILE"})
            if result ~= nil and #result > 0 then
                dicelist[x].randomize()
                table.insert(flat_out_Dicelist, dicelist[x])
            end
        end
        if #flat_out_Dicelist > 0 then
            broadcastToAll(player_color .. " rolled " .. #flat_out_Dicelist .. " [flat out] dice.", Table)
        end
    end
    -- list = ray_scan( object.getPosition(), {"Map"} )
end
function KBS_return_obj(player_clicker_color, object, pointerPosition, isKeyUp) -- Return object to
    if isKeyUp == true or return_action == "released" then -- ignore key release
        return 1
    end
    if return_action == "pressed" and object ~= nil and object.hasTag("Bag") then
        -- ignore bags.
    elseif return_action == "pressed" and object ~= nil then

        if object.hasTag("Dice") then
            dice_return_Pos = {{-14.19, 1.29, -19.32}, {-13.43, 1.29, -19.32}}
            value = tonumber(object.getGMNotes()) - 1
            offset = 0.76

            if value < 6 then
                pos = {-14.19 + (offset * value), 1.29, -19.32}
                rot = {270, 0, 0}
            else
                pos = {-14.19 + (offset * (value - 6)), 1.29, -20.54}
                rot = {90, 0, 0}
            end
            object.setPosition(pos)
            object.setRotation(rot)
        elseif object.hasTag("Damage Token") then
            -- Objects with tags could be returned to specific locations. Damage tokens -> Damage token bag; same for time Cards; tokens from infinite bags could be destruct(), etc.
        end
    end
end
function ray_scan(pos, tag_list) -- Scan a point at position pos for objects with {tags} or "CARD" or "TILE" for a obj.type="Tile" -returns list of objects if applicable.
    scan_origin = {
        x = pos.x,
        y = 0,
        z = pos.z
    }
    scan_objects = Physics.cast({
        origin = scan_origin,
        direction = {0, 1, 0},
        type = 1, -- int (1: Ray, 2: Sphere, 3: Box),
        size = {0.1, 0.01, 0.1},
        orientation = {0, 0, 0},
        max_distance = 4,
        debug = scandebug -- bool (true = visualize cast),
    }) -- returns {{Vector point, Vector normal, float distance, Object hit_object}, ...}
    list = {}
    for x = 1, #scan_objects do
        scan_found = false
        for t = 1, #tag_list do
            if tag_list[t] == "TILE" and (scan_objects[x].hit_object.type == "Tile") and scan_found == false then
                table.insert(list, scan_objects[x].hit_object)
                scan_found = true
            elseif tag_list[t] == "CARD" and
                (scan_objects[x].hit_object.type == "Card" or scan_objects[x].hit_object.type == "Deck") and scan_found ==
                false then
                table.insert(list, scan_objects[x].hit_object)
                scan_found = true
            elseif scan_objects[x].hit_object.hasTag(tag_list[t]) and scan_found == false then
                table.insert(list, scan_objects[x].hit_object)
                scan_found = true
            end
        end
    end
    return list -- Scan a position for objects with any {tag}
end
