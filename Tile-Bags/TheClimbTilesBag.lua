function resetTable()
    print("Cleaning The Climb Tiles")
    for _, tile in ipairs(getObjects()) do
        local name = tile.getName()
        local first3 = name:sub(1, 3)
        if first3 == "325" or first3 == "326" or first3 == "418" or first3 == "419" then
            tile.setLock(false)
            self.putObject(tile)
        end
    end
end