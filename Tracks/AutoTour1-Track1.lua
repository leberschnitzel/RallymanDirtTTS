--Auto Tour 1 - Track 1
function onload()
    createButtons()
end

function createButtons()
    self.createButton({
        click_function = "SS1",
        function_owner = self,
        position = {-0.35, 0.3, -0.5},
        height = 300,
        width = 800,
        scale = {0.3, 0.2, 0.3},
        font_size = 250,
        color = {0, 1, 0, 1},
        label = "Track 1"
    })
end

function SS1()
    --Global.call('cleanTable')
    print("Not implemented yet, GT Tiles missing.")
    --for _, Tile in ipairs(TileList) do
    --    Global.call('GetTile', Tile)
    --end
end
