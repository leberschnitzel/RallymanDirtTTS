-- RX 2
function onload()
    createButtons()
end

function createButtons()
    self.createButton({
        click_function = "SS1",
        function_owner = self,
        position = {-0.45, 0.3, -0.55},
        height = 300,
        width = 600,
        scale = {0.3, 0.2, 0.3},
        font_size = 250,
        color = {0, 1, 0, 1},
        label = "RX 2"
    })
end

function SS1()
    Global.call('cleanTable')
    TileList = {{
        Number = '207a',
        location = {-12.45, 0.871, -3.86},
        rotation = {0, 240, 0}
    }, {
        Number = '208b',
        location = {-7.833, 0.871, -1.17},
        rotation = {0, 240, 0}
    }, {
        Number = '209a',
        location = {-12.45, 0.871, -14.624},
        rotation = {0, 60, 0}
    }, {
        Number = '216b',
        location = {-3.213, 0.871, -3.861},
        rotation = {0, 0, 0}
    }, {
        Number = '226b',
        location = {-3.213, 0.871, -9.241},
        rotation = {0, 240, 0}
    }, {
        Number = '229b',
        location = {-3.212, 0.871, 1.519},
        rotation = {0, 180, 0}
    }, {
        Number = '307a',
        location = {-12.455, 0.871, -9.238},
        rotation = {0, 300, 0}
    }, {
        Number = '315a',
        location = {1.41, 0.871, 4.21},
        rotation = {0, 240, 0}
    }, {
        Number = '316a',
        location = {-17.073, 0.871, -11.932},
        rotation = {0, 120, 0}
    }, {
        Number = '401a',
        location = {1.409, 0.871, -11.936},
        rotation = {0, 180, 0}
    }, {
        Number = '404b',
        location = {-7.837, 0.871, -11.934},
        rotation = {0, 60, 0}
    }, {
        Number = '405a',
        location = {1.41, 0.871, -6.552},
        rotation = {0, 0, 0}
    }, {
        Number = '408a',
        location = {-17.073, 0.871, -6.549},
        rotation = {0, 60, 0}
    }, {
        Number = '411a',
        location = {1.409, 0.871, -1.17},
        rotation = {0, 0, 0}
    }, {
        Number = '904b',
        location = {-7.829, 0.871, -6.55},
        rotation = {0, 60, 0}
    }}
    for _, Tile in ipairs(TileList) do
        Global.call('GetTile', Tile)
    end
end
