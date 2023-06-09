-- resets the table by unlocking and moving tiles that are not part of the 110% expansion
function resetTable()
    print("Cleaning 110% Tiles") -- prints message for debugging purposes
    local TileContent = getObjects() -- gets all objects on the table
    local PutObject = self.putObject -- retrieves the putObject function from the current object
    for _, Tile in ipairs(TileContent) do
        -- extracts the tile name, and if its a tile starting with "3" but not "325" or "326", unlock and move it
        local TileName = Tile.getName()
        if string.sub(TileName, 1, 1) == "3" and string.sub(TileName, 1, 3) ~= "325" and string.sub(TileName, 1, 3) ~= "326" then
            Tile.setLock(false)
            PutObject(Tile)
        end
    end
end