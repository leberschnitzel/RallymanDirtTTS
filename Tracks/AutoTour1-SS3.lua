-- AutoTour 1 SS3 
function onload()
    createButtons()
end

function createButtons()
    self.createButton({
        click_function = "SS3",
        function_owner = self,
        position = {0.2, 0.3, 0.6},
        height = 300,
        width = 600,
        scale = {0.3, 0.2, 0.3},
        font_size = 250,
        color = {0, 1, 0, 1},
        label = "SS3"
    })
end

function SS3()
    Global.call('cleanTable')
    TileList = {{
        Number = '202b',
        location = {-10.144, 0.871, -1.169},
        rotation = {0, 300, 0}
    }, {
        Number = '203b',
        location = {-14.764, 0.871, -9.243},
        rotation = {0, 240, 0}
    }, {
        Number = '212b',
        location = {-0.898, 0.871, -6.552},
        rotation = {0, 0, 0}
    }, {
        Number = '215b',
        location = {-10.145, 0.871, -6.553},
        rotation = {0, 240, 0}
    }, {
        Number = '410b',
        location = {-0.897, 0.871, -1.17},
        rotation = {0, 240, 0}
    }, {
        Number = '414b',
        location = {-5.52, 0.871, -3.861},
        rotation = {0, 120, 0}
    }, {
        Number = '901a',
        location = {-10.143, 0.871, 4.211},
        rotation = {0, 120, 0}
    }, {
        Number = '902b',
        location = {-14.763, 0.871, 1.52},
        rotation = {0, 120, 0}
    }, {
        Number = '903a',
        location = {-5.521, 0.871, 1.522},
        rotation = {0, 120, 0}
    }, {
        Number = '904a',
        location = {-14.763, 0.871, -3.859},
        rotation = {0, 60, 0}
    }, {
        Number = '905a',
        location = {3.723, 0.871, -3.862},
        rotation = {0, 120, 0}
    }}

    for _, Tile in ipairs(TileList) do
        Global.call('GetTile', Tile)
    end
end
