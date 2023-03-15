--Rally 1
function onload()
    createButtons()
end

function createButtons()
    self.createButton({
        click_function = "SS1",
        function_owner = self,
        position = {0.6, 0.3, -0.4},
        height = 300,
        width = 600,
        scale = {0.3, 0.2, 0.3},
        font_size = 250,
        color = {0, 1, 0, 1},
        label = "SS1"
    })
    self.createButton({
        click_function = "SS2",
        function_owner = self,
        position = {0.5, 0.3, 0.5},
        height = 300,
        width = 600,
        scale = {0.3, 0.2, 0.3},
        font_size = 250,
        color = {0, 1, 0, 1},
        label = "SS2"
    })
    self.createButton({
        click_function = "SS3",
        function_owner = self,
        position = {0.1, 0.3, 0.7},
        height = 300,
        width = 600,
        scale = {0.3, 0.2, 0.3},
        font_size = 250,
        color = {0, 1, 0, 1},
        label = "SS3"
    })

end

function SS1()
    Global.call('cleanTable')
    TileList = {{
        Number = '201a',
        location = {12.94, 0.96, 1.51},
        rotation = {0, 300, 0}
    }, {
        Number = '202a',
        location = {-5.52, 0.96, -3.86},
        rotation = {0, 60, 0}
    }, {
        Number = '203a',
        location = {8.34, 0.96, 4.21},
        rotation = {0, 120, 0}
    }, {
        Number = '205a',
        location = {-5.54, 0.96, 1.54},
        rotation = {0, 120, 0}
    }, {
        Number = '208a',
        location = {-5.57, 0.96, 6.91},
        rotation = {0, 60, 0}
    }, {
        Number = '210b',
        location = {-0.90, 0.96, -1.17},
        rotation = {0, 300, 0}
    }, {
        Number = '213a',
        location = {-10.14, 0.96, 9.59},
        rotation = {0, 180, 0}
    }, {
        Number = '216a',
        location = {-0.90, 0.96, 9.59},
        rotation = {0, 240, 0}
    }, {
        Number = '217a',
        location = {3.71, 0.96, 6.90},
        rotation = {0, 240, 0}
    }, {
        Number = '219a',
        location = {-0.90, 0.96, 4.21},
        rotation = {0, 60, 0}
    }, {
        Number = '227a',
        location = {-10.15, 0.96, 4.21},
        rotation = {0, 120, 0}
    }, {
        Number = '904a',
        location = {3.72, 0.96, -3.86},
        rotation = {0, 120, 0}
    }, {
        Number = '903a',
        location = {-0.93, 0.96, -6.55},
        rotation = {0, 120, 0}
    }, {
        Number = '901a',
        location = {-10.14, 0.96, -1.18},
        rotation = {0, 120, 0}
    }, {
        Number = '902a',
        location = {-5.52, 0.96, 12.28},
        rotation = {0, 120, 0}
    }, {
        Number = '905a',
        location = {3.72, 0.96, 1.52},
        rotation = {0, 120, 0}
    }}
    for _, Tile in ipairs(TileList) do
        Global.call('GetTile', Tile)
    end
end

function SS2()
    Global.call('cleanTable')
    TileList = {{
        Number = '201a',
        location = {10.65, 0.96, 9.59},
        rotation = {0, 240, 0}
    }, {
        Number = '202a',
        location = {-7.83, 0.96, 9.59},
        rotation = {0, 120, 0}
    }, {
        Number = '203a',
        location = {6.03, 0.96, 6.90},
        rotation = {0, 240, 0}
    }, {
        Number = '205a',
        location = {-3.21, 0.96, -3.86},
        rotation = {0, 240, 0}
    }, {
        Number = '208a',
        location = {-7.83, 0.96, -1.17},
        rotation = {0, 180, 0}
    }, {
        Number = '210b',
        location = {-7.83, 0.96, 4.21},
        rotation = {0, 120, 0}
    }, {
        Number = '213a',
        location = {-7.83, 0.96, -6.55},
        rotation = {0, 60, 0}
    }, {
        Number = '216a',
        location = {-3.21, 0.96, 1.52},
        rotation = {0, 300, 0}
    }, {
        Number = '217a',
        location = {1.41, 0.96, -1.17},
        rotation = {0, 0, 0}
    }, {
        Number = '219a',
        location = {-3.21, 0.96, 6.90},
        rotation = {0, 300, 0}
    }, {
        Number = '227a',
        location = {1.41, 0.96, 4.21},
        rotation = {0, 180, 0}
    }, {
        Number = '901b',
        location = {6.03, 0.96, 1.52},
        rotation = {0, 120, 0}
    }, {
        Number = '902a',
        location = {-12.45, 0.96, -3.86},
        rotation = {0, 120, 0}
    }, {
        Number = '903a',
        location = {10.65, 0.96, 4.21},
        rotation = {0, 120, 0}
    }, {
        Number = '904b',
        location = {1.41, 0.96, 9.59},
        rotation = {0, 120, 0}
    }, {
        Number = '905a',
        location = {-12.45, 0.96, 1.52},
        rotation = {0, 120, 0}
    }}
    for _, Tile in ipairs(TileList) do
        Global.call('GetTile', Tile)
    end
end

function SS3()
    Global.call('cleanTable')
    TileList = {{
        Number = '202b',
        location = {6.03, 0.96, 1.52},
        rotation = {0, 120, 0}
    }, {
        Number = '203a',
        location = {6.03, 0.96, -3.86},
        rotation = {0, 120, 0}
    }, {
        Number = '205a',
        location = {-3.21, 0.96, 6.90},
        rotation = {0, 60, 0}
    }, {
        Number = '208a',
        location = {1.41, 0.96, 4.21},
        rotation = {0, 120, 0}
    }, {
        Number = '210a',
        location = {-7.83, 0.96, 4.21},
        rotation = {0, 120, 0}
    }, {
        Number = '213a',
        location = {-7.83, 0.96, -1.17},
        rotation = {0, 120, 0}
    }, {
        Number = '216a',
        location = {1.41, 0.96, 9.59},
        rotation = {0, 240, 0}
    }, {
        Number = '217a',
        location = {1.41, 0.96, -1.17},
        rotation = {0, 240, 0}
    }, {
        Number = '219a',
        location = {-3.21, 0.96, 1.52},
        rotation = {0, 300, 0}
    }, {
        Number = '227a',
        location = {-3.21, 0.96, -3.86},
        rotation = {0, 60, 0}
    }, {
        Number = '901a',
        location = {1.41, 0.96, -6.55},
        rotation = {0, 120, 0}
    }, {
        Number = '902a',
        location = {-3.21, 0.96, 12.28},
        rotation = {0, 120, 0}
    }, {
        Number = '903a',
        location = {10.65, 0.96, -1.17},
        rotation = {0, 120, 0}
    }, {
        Number = '904b',
        location = {-12.45, 0.96, 1.52},
        rotation = {0, 120, 0}
    }, {
        Number = '905a',
        location = {-7.83, 0.96, -6.55},
        rotation = {0, 120, 0}
    }}
    for _, Tile in ipairs(TileList) do
        Global.call('GetTile', Tile)
    end
end
