-- onLoad function sets up the button panel, input and loads required bags
function onLoad()
    hotkey_onload()
    -- Panel with setup buttons
    math.randomseed(os.time())
    -- get the button panel object by GUID
    gButtonPanel = getObjectFromGUID("4e93a3")

    -- create input field for tile number
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

    -- create button to clean table
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

    -- get required bags by GUID
    coreGame = getObjectFromGUID("f87580") -- CoreGame
    onehundretten = getObjectFromGUID("a760ed") -- Expansion 110%
    theclimb = getObjectFromGUID("c11c98") -- Expansion The Climb
    rx = getObjectFromGUID("2077ac") -- Expansion RX
    copilot = getObjectFromGUID("c45959") -- Expansion Copilot

    single = {-40.00, 0.90, -2.00}
end

-- function to reset the table
function cleanTable()
    print("Cleaning Table")
    coreGame.call('resetTable')
    copilot.call('resetTable')
    onehundretten.call('resetTable')
    theclimb.call('resetTable')
    rx.call('resetTable')
    print("Table clean!")
end

-- function to handle input of tile number
function input_func(obj, color, input, stillEditing)
    if not stillEditing then
        if string.len(input) < 4 then
            print("Enter Tile Name like 205a")
        else
            -- create a tile object with location and number
            Tile = {
                location = single,
                Number = input
            }
            GetTile(Tile)
        end
    end
end

function GetTile(Tile)
    -- parse tile number to extract relevant information
    local TileName = Tile.Number
    local TileNumber = TileName:sub(1, 3)
    local TileLocation = Tile.location

    -- set default tile rotation and tile lock
    local TileRotation = {0.00, 180.00, 0.00}
    local TileLock = false

    if Tile.rotation then
        TileRotation = Tile.rotation
        TileLock = true
    end

    local TileState = TileName:sub(-1) == "b" and 2 or 1

    -- select the relevant bag for the tile based on the tile number
    local TileBag
    local TileFirstDigit = TileNumber:sub(1, 1)

    if TileFirstDigit == "2" then
        TileBag = Global.getVar('coreGame')
    else
        if TileFirstDigit == "3" then
            TileBag = Global.getVar('onehundretten')
            if TileNumber == "325" or TileNumber == "326" then
                TileBag = Global.getVar('theclimb')
            end
        elseif TileFirstDigit == "4" then
            TileBag = Global.getVar('rx')
            if TileNumber == "418" or TileNumber == "419" then
                TileBag = Global.getVar('theclimb')
            end
        elseif TileFirstDigit == "9" then
            TileBag = Global.getVar('copilot')
        end
    end

    -- loop through objects in the selected bag to find the tile with the correct number
    for _, containedObject in ipairs(TileBag.getObjects()) do
        local TileShortNumber = containedObject.name

        if TileShortNumber:sub(1, 3) == TileNumber then
            -- take the tile object from the bag and set its position, rotation, and state
            local takenobject = TileBag.takeObject({
                index = containedObject.index,
                position = TileLocation,
                rotation = TileRotation,
                smooth = false
            })

            if takenobject.getStateId() ~= TileState then
                -- wait for the tile to finish moving and set its state
                Wait.condition(function()
                    local newobj = takenobject.setState(TileState)
                    if TileLock then
                        newobj.setLock(true)
                    end
                end, function()
                    return takenobject.resting
                end)
            elseif TileLock then
                takenobject.setLock(true)
            end

            break
        end
    end
end

-- function to set up hotkeys
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
