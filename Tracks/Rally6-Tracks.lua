--Rally 6
function onload()
    createButtons()
end

function createButtons()
    self.createButton({
        click_function = "SS1",
        function_owner = self,
        position = {0.4, 0.3, -0.55},
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
        position = {0.6, 0.3, -0.25},
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
        position = {0.6, 0.3, 0.6},
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
        location = {-10.13, 0.96, -3.84},
        rotation = {0, 60, 0}
    }, {
        Number = '202b',
        location = {-14.75, 0.96, 4.21},
        rotation = {0, 240, 0}
    }, {
        Number = '203a',
        location = {-5.50, 0.96, -1.18},
        rotation = {0, 60, 0}
    }, {
        Number = '204a',
        location = {-0.90, 0.96, 1.52},
        rotation = {0, 60, 0}
    }, {
        Number = '208b',
        location = {-0.91, 0.96, 12.29},
        rotation = {0, 240, 0}
    }, {
        Number = '218a',
        location = {8.34, 0.96, 6.90},
        rotation = {0, 300, 0}
    }, {
        Number = '219a',
        location = {-5.52, 0.96, 4.21},
        rotation = {0, 0, 0}
    }, {
        Number = '220a',
        location = {8.34, 0.96, 1.52},
        rotation = {0, 0, 0}
    }, {
        Number = '222a',
        location = {-10.14, 0.96, 6.89},
        rotation = {0, 240, 0}
    }, {
        Number = '223a',
        location = {-5.53, 0.96, 9.59},
        rotation = {0, 180, 0}
    }, {
        Number = '226a',
        location = {3.72, 0.96, 9.60},
        rotation = {0, 120, 0}
    }, {
        Number = '229b',
        location = {3.73, 0.96, 4.22},
        rotation = {0, 240, 0}
    }, {
        Number = '901a',
        location = {-5.52, 0.96, -6.56},
        rotation = {0, 120, 0}
    }, {
        Number = '902a',
        location = {3.72, 0.96, -1.17},
        rotation = {0, 120, 0}
    }, {
        Number = '903a',
        location = {-0.91, 0.96, -3.87},
        rotation = {0, 120, 0}
    }, {
        Number = '904a',
        location = {-0.90, 0.96, 6.91},
        rotation = {0, 120, 0}
    }, {
        Number = '905a',
        location = {-10.14, 0.96, 1.52},
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
        location = {15.27, 0.96, -11.93},
        rotation = {0, 300, 0}
    }, {
        Number = '202a',
        location = {-17.07, 0.96, 12.28},
        rotation = {0, 180, 0}
    }, {
        Number = '203a',
        location = {10.65, 0.96, -9.24},
        rotation = {0, 300, 0}
    }, {
        Number = '205b',
        location = {6.03, 0.96, -6.55},
        rotation = {0, 120, 0}
    }, {
        Number = '209b',
        location = {-12.45, 0.96, 4.21},
        rotation = {0, 60, 0}
    }, {
        Number = '210a',
        location = {1.45, 0.96, 1.55},
        rotation = {0, 0, 0}
    }, {
        Number = '211b',
        location = {-3.21, 0.96, 4.21},
        rotation = {0, 180, 0}
    }, {
        Number = '214b',
        location = {-7.83, 0.96, 6.90},
        rotation = {0, 240, 0}
    }, {
        Number = '221b',
        location = {-17.07, 0.96, 6.90},
        rotation = {0, 120, 0}
    }, {
        Number = '225a',
        location = {-3.21, 0.96, 9.59},
        rotation = {0, 240, 0}
    }, {
        Number = '227a',
        location = {1.41, 0.96, 6.90},
        rotation = {0, 300, 0}
    }, {
        Number = '231b',
        location = {1.41, 0.96, -3.86},
        rotation = {0, 120, 0}
    }, {
        Number = '232b',
        location = {-3.21, 0.96, -1.17},
        rotation = {0, 120, 0}
    }, {
        Number = '901a',
        location = {15.27, 0.96, -6.55},
        rotation = {0, 120, 0}
    }, {
        Number = '902a',
        location = {-12.45, 0.96, 9.59},
        rotation = {0, 120, 0}
    }, {
        Number = '903a',
        location = {10.65, 0.96, -3.86},
        rotation = {0, 120, 0}
    }, {
        Number = '904a',
        location = {-7.83, 0.96, 1.52},
        rotation = {0, 120, 0}
    }, {
        Number = '905a',
        location = {6.03, 0.96, -1.17},
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
        location = {15.27, 0.96, -1.17},
        rotation = {0, 300, 0}
    }, {
        Number = '203b',
        location = {-12.45, 0.96, -1.17},
        rotation = {0, 180, 0}
    }, {
        Number = '206b',
        location = {-7.83, 0.96, 1.52},
        rotation = {0, 180, 0}
    }, {
        Number = '207b',
        location = {1.41, 0.96, 1.52},
        rotation = {0, 240, 0}
    }, {
        Number = '208a',
        location = {10.65, 0.96, 1.52},
        rotation = {0, 120, 0}
    }, {
        Number = '212b',
        location = {-7.82, 0.96, 6.90},
        rotation = {0, 240, 0}
    }, {
        Number = '215a',
        location = {6.03, 0.96, 4.21},
        rotation = {0, 60, 0}
    }, {
        Number = '217b',
        location = {-7.83, 0.96, -3.86},
        rotation = {0, 120, 0}
    }, {
        Number = '219b',
        location = {10.65, 0.96, 6.90},
        rotation = {0, 240, 0}
    }, {
        Number = '220b',
        location = {-3.21, 0.96, -6.55},
        rotation = {0, 0, 0}
    }, {
        Number = '222a',
        location = {-12.45, 0.96, 4.21},
        rotation = {0, 180, 0}
    }, {
        Number = '229b',
        location = {-3.21, 0.96, -1.17},
        rotation = {0, 180, 0}
    }, {
        Number = '901a',
        location = {-12.45, 0.96, -6.55},
        rotation = {0, 120, 0}
    }, {
        Number = '902a',
        location = {1.41, 0.96, 6.90},
        rotation = {0, 120, 0}
    }, {
        Number = '903a',
        location = {6.03, 0.96, -1.17},
        rotation = {0, 120, 0}
    }, {
        Number = '904a',
        location = {1.41, 0.96, -3.86},
        rotation = {0, 120, 0}
    }, {
        Number = '905a',
        location = {-3.21, 0.96, 4.21},
        rotation = {0, 120, 0}
    }}
    for _, Tile in ipairs(TileList) do
        Global.call('GetTile', Tile)
    end
end
