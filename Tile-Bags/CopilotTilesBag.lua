function resetTable()
    print("Cleaning CoPilot Tiles")
    local TileContent = getObjects() -- gets all objects on the table
    local PutObject = self.putObject -- retrieves the putObject function from the current object
    for _, Tile in ipairs(TileContent) do

        local TileName = Tile.getName()
        if string.sub(TileName, 1, 1) == "9" then
            Tile.setLock(false)
            PutObject(Tile)
        end
    end
end
