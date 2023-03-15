--Rally 4
function onload()
    createButtons()
end

function createButtons()
    self.createButton({
        click_function = "SS1",
        function_owner = self,
        position = {0.3, 0.3, -0.6},
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
        position = {-0.5, 0.3, 0.1},
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
        position = {0.7, 0.3, 0.7},
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
        Number = '202a',
        location = {15.27, 0.96, 1.52},
        rotation = {0, 240, 0}
    }, {
        Number = '203a',
        location = {-12.45, 0.96, -9.24},
        rotation = {0, 240, 0}
    }, {
        Number = '204a',
        location = {1.41, 0.96, 4.21},
        rotation = {0, 120, 0}
    }, {
        Number = '208a',
        location = {10.65, 0.96, -1.17},
        rotation = {0, 60, 0}
    }, {
        Number = '209b',
        location = {-7.87, 0.96, -6.57},
        rotation = {0, 0, 0}
    }, {
        Number = '214a',
        location = {6.03, 0.96, 1.52},
        rotation = {0, 120, 0}
    }, {
        Number = '224b',
        location = {-3.21, 0.96, 6.90},
        rotation = {0, 240, 0}
    }, {
        Number = '227a',
        location = {-7.83, 0.96, 4.21},
        rotation = {0, 180, 0}
    }, {
        Number = '231b',
        location = {-7.83, 0.96, -1.17},
        rotation = {0, 180, 0}
    }, {
        Number = '901a',
        location = {-12.45, 0.96, -3.86},
        rotation = {0, 120, 0}
    }, {
        Number = '902a',
        location = {6.03, 0.96, 6.90},
        rotation = {0, 120, 0}
    }, {
        Number = '903a',
        location = {10.65, 0.96, 4.21},
        rotation = {0, 120, 0}
    }, {
        Number = '904a',
        location = {-7.83, 0.96, 9.59},
        rotation = {0, 120, 0}
    }, {
        Number = '905a',
        location = {-3.21, 0.96, 1.52},
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
        location = {8.34, 0.96, 17.66},
        rotation = {0, 180, 0}
    }, {
        Number = '202b',
        location = {-14.76, 0.96, -1.17},
        rotation = {0, 300, 0}
    }, {
        Number = '203a',
        location = {8.34, 0.96, 12.28},
        rotation = {0, 180, 0}
    }, {
        Number = '206b',
        location = {8.34, 0.96, -3.86},
        rotation = {0, 60, 0}
    }, {
        Number = '209b',
        location = {-10.14, 0.96, -3.86},
        rotation = {0, 60, 0}
    }, {
        Number = '210b',
        location = {3.72, 0.96, -6.55},
        rotation = {0, 60, 0}
    }, {
        Number = '213b',
        location = {12.96, 0.96, 9.59},
        rotation = {0, 240, 0}
    }, {
        Number = '218a',
        location = {12.96, 0.96, -1.18},
        rotation = {0, 0, 0}
    }, {
        Number = '220a',
        location = {8.34, 0.96, 6.90},
        rotation = {0, 60, 0}
    }, {
        Number = '224b',
        location = {3.72, 0.96, -1.17},
        rotation = {0, 300, 0}
    }, {
        Number = '226a',
        location = {12.96, 0.96, 4.21},
        rotation = {0, 180, 0}
    }, {
        Number = '227a',
        location = {-0.90, 0.96, 1.52},
        rotation = {0, 240, 0}
    }, {
        Number = '231b',
        location = {-5.52, 0.96, -1.17},
        rotation = {0, 60, 0}
    }, {
        Number = '901b',
        location = {12.96, 0.96, 14.97},
        rotation = {0, 120, 0}
    }, {
        Number = '902a',
        location = {8.34, 0.96, 1.52},
        rotation = {0, 120, 0}
    }, {
        Number = '903a',
        location = {-10.14, 0.96, 1.52},
        rotation = {0, 120, 0}
    }, {
        Number = '904b',
        location = {3.72, 0.96, 4.21},
        rotation = {0, 120, 0}
    }, {
        Number = '905a',
        location = {-0.90, 0.96, -3.85},
        rotation = {0, 120, 0}
    }}
    for _, Tile in ipairs(TileList) do
        Global.call('GetTile', Tile)
    end
end

function SS3()
    Global.call('cleanTable')
    TileList = {{
        Number = '202a',
        location = {-12.45, 0.96, -6.55},
        rotation = {0, 240, 0}
    }, {
        Number = '203a',
        location = {15.27, 0.96, 9.59},
        rotation = {0, 180, 0}
    }, {
        Number = '206b',
        location = {1.41, 0.96, 1.52},
        rotation = {0, 120, 0}
    }, {
        Number = '208a',
        location = {15.27, 0.96, 4.21},
        rotation = {0, 0, 0}
    }, {
        Number = '213b',
        location = {-12.45, 0.96, -1.17},
        rotation = {0, 120, 0}
    }, {
        Number = '214a',
        location = {10.65, 0.96, 1.52},
        rotation = {0, 240, 0}
    }, {
        Number = '218a',
        location = {-3.21, 0.96, 4.21},
        rotation = {0, 240, 0}
    }, {
        Number = '220a',
        location = {-7.83, 0.96, -3.86},
        rotation = {0, 300, 0}
    }, {
        Number = '226a',
        location = {-7.85, 0.96, 1.53},
        rotation = {0, 60, 0}
    }, {
        Number = '229a',
        location = {6.03, 0.96, -1.17},
        rotation = {0, 60, 0}
    }, {
        Number = '901a',
        location = {6.03, 0.96, 4.21},
        rotation = {0, 120, 0}
    }, {
        Number = '902a',
        location = {-3.21, 0.96, -1.17},
        rotation = {0, 120, 0}
    }, {
        Number = '903a',
        location = {1.41, 0.96, 6.96},
        rotation = {0, 120, 0}
    }, {
        Number = '904a',
        location = {10.65, 0.96, 6.90},
        rotation = {0, 120, 0}
    }, {
        Number = '905a',
        location = {-12.46, 0.96, 4.21},
        rotation = {0, 120, 0}
    }}
    for _, Tile in ipairs(TileList) do
        Global.call('GetTile', Tile)
    end
end
