-- resets the table by unlocking and moving tiles that are not part of the 110% expansion
function resetTable()
    print("Cleaning RX Tiles") -- prints message for debugging purposes
    local TileContent = getObjects() -- gets all objects on the table
    local PutObject = self.putObject -- retrieves the putObject function from the current object
    for _, Tile in ipairs(TileContent) do
        -- extracts the tile name, and if its a tile starting with "4" but not "418" or "419", unlock and move it
        local TileName = Tile.getName()
        if string.sub(TileName, 1, 1) == "4" and string.sub(TileName, 1, 3) ~= "418" and string.sub(TileName, 1, 3) ~= "419" then
            Tile.setLock(false)
            PutObject(Tile)
        end
    end
end
