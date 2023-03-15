--Rally 8
function onload()
    createButtons()
end

function createButtons()
    self.createButton({
        click_function = 'SS1',
        function_owner = self,
        position = {0.4, 0.3, -0.5},
        height = 300,
        width = 600,
        scale = {0.4, 0.2, 0.4},
        font_size = 250,
        color = {0, 1, 0, 1},
        label = 'SS1'
    })
    self.createButton({
        click_function = 'SS2',
        function_owner = self,
        position = {-0.6, 0.3, 0.1},
        height = 300,
        width = 600,
        scale = {0.4, 0.2, 0.4},
        font_size = 250,
        color = {0, 1, 0, 1},
        label = 'SS2'
    })
    self.createButton({
        click_function = 'SS3',
        function_owner = self,
        position = {0.45, 0.3, 0.7},
        height = 300,
        width = 600,
        scale = {0.4, 0.2, 0.4},
        font_size = 250,
        color = {0, 1, 0, 1},
        label = 'SS3'
    })

end

function SS1()
    Global.call('cleanTable')
    TileList = {{
        Number = '201b',
        location = {-0.90, 0.96, 6.91},
        rotation = {0, 120, 0}
    }, {
        Number = '301b',
        location = {-10.14, 0.96, 1.52},
        rotation = {0, 180, 0}
    }, {
        Number = '302a',
        location = {3.73, 0.96, 4.21},
        rotation = {0, 120, 0}
    }, {
        Number = '306a',
        location = {3.71, 0.96, -6.55},
        rotation = {0, 120, 0}
    }, {
        Number = '307b',
        location = {-5.52, 0.96, -6.56},
        rotation = {0, 120, 0}
    }, {
        Number = '308b',
        location = {-10.15, 0.96, -3.86},
        rotation = {0, 120, 0}
    }, {
        Number = '313a',
        location = {8.34, 0.96, -9.24},
        rotation = {0, 0, 0}
    }, {
        Number = '314a',
        location = {8.34, 0.96, -3.86},
        rotation = {0, 180, 0}
    }, {
        Number = '315b',
        location = {-0.91, 0.96, -3.85},
        rotation = {0, 180, 0}
    }, {
        Number = '318b',
        location = {-0.91, 0.96, -9.23},
        rotation = {0, 0, 0}
    }, {
        Number = '323a',
        location = {8.34, 0.96, 1.52},
        rotation = {0, 300, 0}
    }, {
        Number = '901b',
        location = {-0.93, 0.96, 1.53},
        rotation = {0, 120, 0}
    }, {
        Number = '902a',
        location = {8.34, 0.96, 6.90},
        rotation = {0, 120, 0}
    }, {
        Number = '903b',
        location = {-5.52, 0.96, 4.21},
        rotation = {0, 120, 0}
    }, {
        Number = '904a',
        location = {3.71, 0.96, -1.17},
        rotation = {0, 120, 0}
    }, {
        Number = '905a',
        location = {-5.52, 0.96, -1.17},
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
        location = {15.28, 0.96, -6.55},
        rotation = {0, 300, 0}
    }, {
        Number = '203b',
        location = {10.65, 0.96, -3.86},
        rotation = {0, 300, 0}
    }, {
        Number = '211a',
        location = {1.41, 0.96, -3.86},
        rotation = {0, 240, 0}
    }, {
        Number = '212a',
        location = {1.40, 0.96, -9.25},
        rotation = {0, 60, 0}
    }, {
        Number = '218b',
        location = {6.03, 0.96, -6.55},
        rotation = {0, 0, 0}
    }, {
        Number = '219a',
        location = {6.03, 0.96, -1.17},
        rotation = {0, 180, 0}
    }, {
        Number = '301a',
        location = {-12.45, 0.96, 9.59},
        rotation = {0, 300, 0}
    }, {
        Number = '307a',
        location = {-7.84, 0.96, 1.52},
        rotation = {0, 0, 0}
    }, {
        Number = '308a',
        location = {-7.83, 0.96, 6.90},
        rotation = {0, 300, 0}
    }, {
        Number = '316a',
        location = {-7.83, 0.96, -3.86},
        rotation = {0, 120, 0}
    }, {
        Number = '317a',
        location = {-3.20, 0.96, -6.53},
        rotation = {0, 60, 0}
    }, {
        Number = '901b',
        location = {10.65, 0.96, 1.52},
        rotation = {0, 120, 0}
    }, {
        Number = '902a',
        location = {-3.21, 0.96, -1.17},
        rotation = {0, 120, 0}
    }, {
        Number = '903a',
        location = {-12.45, 0.96, 4.21},
        rotation = {0, 120, 0}
    }, {
        Number = '904b',
        location = {6.03, 0.98, -11.93},
        rotation = {0, 120, 0}
    }, {
        Number = '905a',
        location = {1.41, 0.96, 1.52},
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
        location = {-10.14, 0.96, -1.17},
        rotation = {0, 60, 0}
    }, {
        Number = '208b',
        location = {-14.76, 0.96, -3.86},
        rotation = {0, 180, 0}
    }, {
        Number = '209a',
        location = {-10.13, 0.96, -6.56},
        rotation = {0, 240, 0}
    }, {
        Number = '212a',
        location = {-14.76, 0.96, -9.24},
        rotation = {0, 60, 0}
    }, {
        Number = '214b',
        location = {-0.90, 0.96, -6.55},
        rotation = {0, 60, 0}
    }, {
        Number = '229a',
        location = {-5.54, 0.96, -9.24},
        rotation = {0, 60, 0}
    }, {
        Number = '302b',
        location = {8.34, 0.96, -1.17},
        rotation = {0, 120, 0}
    }, {
        Number = '306b',
        location = {3.72, 0.96, 1.52},
        rotation = {0, 120, 0}
    }, {
        Number = '315b',
        location = {-0.90, 0.96, 4.21},
        rotation = {0, 180, 0}
    }, {
        Number = '318b',
        location = {3.72, 0.96, -3.86},
        rotation = {0, 300, 0}
    }, {
        Number = '321b',
        location = {-0.90, 0.96, -1.17},
        rotation = {0, 120, 0}
    }, {
        Number = '901b',
        location = {8.34, 0.96, -6.55},
        rotation = {0, 120, 0}
    }, {
        Number = '902a',
        location = {-10.14, 0.96, -11.93},
        rotation = {0, 120, 0}
    }, {
        Number = '903b',
        location = {12.96, 0.96, -3.86},
        rotation = {0, 120, 0}
    }, {
        Number = '904a',
        location = {-5.52, 0.96, -3.86},
        rotation = {0, 120, 0}
    }, {
        Number = '905a',
        location = {-5.52, 0.96, 1.52},
        rotation = {0, 120, 0}
    }}
    for _, Tile in ipairs(TileList) do
        Global.call('GetTile', Tile)
    end
end
