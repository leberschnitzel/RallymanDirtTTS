--Auto Tour 1 - SS2
function onload()
    createButtons()
end

function createButtons()
    self.createButton({
        click_function = "SS2",
        function_owner = self,
        position = {0.3, 0.3, 0.6},
        height = 300,
        width = 600,
        scale = {0.3, 0.2, 0.3},
        font_size = 250,
        color = {0, 1, 0, 1},
        label = "SS2"
    })
end

function SS2()
    --Global.call('cleanTable')
    print("Not implemented yet, GT Tiles missing.")
    --for _, Tile in ipairs(TileList) do
    --    Global.call('GetTile', Tile)
    --end
end
