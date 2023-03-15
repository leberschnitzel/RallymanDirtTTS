function resetTable()
    print("Cleaning 110% Tiles")
    TableContent = getObjects()
    for _, Tile in ipairs(TableContent) do
        TileName = Tile.getName()
        if string.sub(TileName, 1, 3) ~= "325" and string.sub(TileName, 1, 3) ~= "326" then
            if string.sub(TileName, 1, 1) == "3" then
                Tile.setLock(false)
                self.putObject(Tile)
            end
        end
    end
end
