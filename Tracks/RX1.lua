-- RX 1
function onload()
    createButtons()
end

function createButtons()
    self.createButton({
        click_function = "SS1",
        function_owner = self,
        position = {0.6, 0.3, 0.25},
        height = 300,
        width = 600,
        scale = {0.3, 0.2, 0.3},
        font_size = 250,
        color = {0, 1, 0, 1},
        label = "RX 1"
    })
end

function SS1()
    Global.call('cleanTable')
    TileList = {{
        Number = '204a',
        location = {-0.869, 0.871, -9.237},
        rotation = {0, 60, 0}
    }, {
        Number = '205b',
        location = {-5.531, 0.871, 4.239},
        rotation = {0, 240, 0}
    }, {
        Number = '208a',
        location = {-10.146, 0.871, -9.24},
        rotation = {0, 120, 0}
    }, {
        Number = '209b',
        location = {-5.519, 0.871, -6.555},
        rotation = {0, 180, 0}
    }, {
        Number = '210a',
        location = {-0.892, 0.871, 6.914},
        rotation = {0, 240, 0}
    }, {
        Number = '218a',
        location = {-10.146, 0.871, 1.519},
        rotation = {0, 180, 0}
    }, {
        Number = '401b',
        location = {-5.532, 0.871, -1.141},
        rotation = {0, 60, 0}
    }, {
        Number = '404a',
        location = {-10.138, 0.871, -3.853},
        rotation = {0, 180, 0}
    }, {
        Number = '408a',
        location = {-5.518, 0.871, -11.935},
        rotation = {0, 300, 0}
    }, {
        Number = '410a',
        location = {3.727, 0.871, -6.561},
        rotation = {0, 300, 0}
    }, {
        Number = '411a',
        location = {-0.899, 0.871, 1.543},
        rotation = {0, 0, 0}
    }, {
        Number = '415a',
        location = {-0.894, 0.871, -3.842},
        rotation = {0, 0, 0}
    }}
    for _, Tile in ipairs(TileList) do
        Global.call('GetTile', Tile)
    end
end
