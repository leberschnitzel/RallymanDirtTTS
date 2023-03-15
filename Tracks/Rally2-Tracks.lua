--Rally 2
function onload()
    createButtons()
end

function createButtons()
    self.createButton({
        click_function = "SS1",
        function_owner = self,
        position = {-0.4, 0.3, -0.6},
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
        position = {0.5, 0.3, -0.4},
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
        position = {0, 0.3, 0.7},
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
        location = {-14.76, 0.96, 9.59},
        rotation = {0, 120, 0}
    }, {
        Number = '202a',
        location = {8.33, 0.96, 12.28},
        rotation = {0, 300, 0}
    }, {
        Number = '203b',
        location = {-10.14, 0.96, 6.90},
        rotation = {0, 120, 0}
    }, {
        Number = '204a',
        location = {12.96, 0.96, -1.17},
        rotation = {0, 60, 0}
    }, {
        Number = '207a',
        location = {12.96, 0.96, 9.59},
        rotation = {0, 120, 0}
    }, {
        Number = '209a',
        location = {17.58, 0.96, 6.90},
        rotation = {0, 300, 0}
    }, {
        Number = '212b',
        location = {-0.90, 0.96, 6.90},
        rotation = {0, 240, 0}
    }, {
        Number = '214b',
        location = {8.33, 0.96, -3.86},
        rotation = {0, 60, 0}
    }, {
        Number = '219b',
        location = {3.72, 0.96, -6.56},
        rotation = {0, 60, 0}
    }, {
        Number = '223b',
        location = {-5.52, 0.96, 4.21},
        rotation = {0, 60, 0}
    }, {
        Number = '224a',
        location = {17.58, 0.96, 1.52},
        rotation = {0, 0, 0}
    }, {
        Number = '228a',
        location = {3.71, 0.96, -1.17},
        rotation = {0, 300, 0}
    }, {
        Number = '229a',
        location = {-0.91, 0.96, 1.52},
        rotation = {0, 120, 0}
    }}
    for _, Tile in ipairs(TileList) do
        Global.call('GetTile', Tile)
    end
end

function SS2()
    Global.call('cleanTable')
    TileList = {{
        Number = '201b',
        location = {-0.90, 0.96, 12.28},
        rotation = {0, 120, 0}
    }, {
        Number = '202a',
        location = {-14.76, 0.96, -1.17},
        rotation = {0, 240, 0}
    }, {
        Number = '203b',
        location = {3.72, 0.96, 9.59},
        rotation = {0, 120, 0}
    }, {
        Number = '206a',
        location = {8.34, 0.96, 6.90},
        rotation = {0, 120, 0}
    }, {
        Number = '208a',
        location = {-5.52, 0.96, -6.55},
        rotation = {0, 60, 0}
    }, {
        Number = '215b',
        location = {3.72, 0.96, -6.55},
        rotation = {0, 120, 0}
    }, {
        Number = '218a',
        location = {12.96, 0.96, 4.21},
        rotation = {0, 300, 0}
    }, {
        Number = '220a',
        location = {-10.14, 0.96, 1.52},
        rotation = {0, 240, 0}
    }, {
        Number = '222b',
        location = {8.34, 0.96, -9.24},
        rotation = {0, 60, 0}
    }, {
        Number = '225a',
        location = {-10.14, 0.96, -3.86},
        rotation = {0, 120, 0}
    }, {
        Number = '227b',
        location = {12.96, 0.96, -6.55},
        rotation = {0, 0, 0}
    }, {
        Number = '231a',
        location = {12.96, 0.96, -1.17},
        rotation = {0, 0, 0}
    }, {
        Number = '232b',
        location = {-0.90, 0.96, -3.85},
        rotation = {0, 240, 0}
    }}
    for _, Tile in ipairs(TileList) do
        Global.call('GetTile', Tile)
    end
end

function SS3()
    Global.call('cleanTable')
    TileList = {{
        Number = '202a',
        location = {-14.76, 0.96, 4.21},
        rotation = {0, 240, 0}
    }, {
        Number = '203b',
        location = {3.72, 0.96, 4.21},
        rotation = {0, 60, 0}
    }, {
        Number = '205a',
        location = {8.33, 0.96, 1.53},
        rotation = {0, 60, 0}
    }, {
        Number = '210a',
        location = {-0.90, 0.96, -3.85},
        rotation = {0, 60, 0}
    }, {
        Number = '211b',
        location = {-0.90, 0.96, 1.52},
        rotation = {0, 240, 0}
    }, {
        Number = '213b',
        location = {12.97, 0.96, 4.25},
        rotation = {0, 300, 0}
    }, {
        Number = '216a',
        location = {-5.52, 0.96, -1.16},
        rotation = {0, 60, 0}
    }, {
        Number = '217b',
        location = {8.34, 0.96, 6.90},
        rotation = {0, 240, 0}
    }, {
        Number = '221b',
        location = {-10.14, 0.96, 6.91},
        rotation = {0, 240, 0}
    }, {
        Number = '226b',
        location = {3.72, 0.96, -1.17},
        rotation = {0, 60, 0}
    }, {
        Number = '230b',
        location = {-5.52, 0.96, 4.21},
        rotation = {0, 300, 0}
    }}
    for _, Tile in ipairs(TileList) do
        Global.call('GetTile', Tile)
    end
end
