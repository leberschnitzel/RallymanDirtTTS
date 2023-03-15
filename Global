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
                rotation = TileRotation
            })
            if takenobject.getStateId() == TileState then
            else
                Wait.condition(function()
                    newobj = takenobject.setState(TileState)
                end, function()
                    return takenobject.resting
                end)
            end
            if tilelock then
                takenobject.setLock(true) -- I like it if tiles are locked. This way you can drag/select dice on the map to roll without worrying about drag selecting tiles.
            end
            break
        end
    end
end
