function resetTable()
    print("Cleaning Core Tiles")
    TableContent = getObjects()
    for _, Tile in ipairs(TableContent) do
        TileName = Tile.getName()
        if string.sub(TileName, 1, 1) == "2" then
            Tile.setLock(false)
            self.putObject(Tile)
        end
    end
end
