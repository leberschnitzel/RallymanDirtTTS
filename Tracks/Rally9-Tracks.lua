--Rally 9
function onload()
    createButtons()
end

function createButtons()
    self.createButton({
        click_function = 'SS1',
        function_owner = self,
        position = {0.4, 0.3, -0.55},
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
        position = {-0.4, 0.3, 0.7},
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
        position = {0.7, 0.3, 0.45},
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
        location = {-12.45, 0.96, 4.21},
        rotation = {0, 120, 0}
    }, {
        Number = '204b',
        location = {10.65, 0.96, -3.86},
        rotation = {0, 180, 0}
    }, {
        Number = '215b',
        location = {6.03, 0.96, 4.21},
        rotation = {0, 120, 0}
    }, {
        Number = '219b',
        location = {10.65, 0.96, -9.24},
        rotation = {0, 0, 0}
    }, {
        Number = '225b',
        location = {10.65, 0.96, 1.52},
        rotation = {0, 300, 0}
    }, {
        Number = '226a',
        location = {6.03, 0.96, -6.55},
        rotation = {0, 300, 0}
    }, {
        Number = '301a',
        location = {-7.83, 0.96, 6.90},
        rotation = {0, 120, 0}
    }, {
        Number = '302a',
        location = {-7.83, 0.96, 1.52},
        rotation = {0, 120, 0}
    }, {
        Number = '315a',
        location = {1.40, 0.96, -3.85},
        rotation = {0, 180, 0}
    }, {
        Number = '316a',
        location = {-3.21, 0.96, 4.21},
        rotation = {0, 60, 0}
    }, {
        Number = '318a',
        location = {1.41, 0.96, -9.24},
        rotation = {0, 0, 0}
    }, {
        Number = '319a',
        location = {1.41, 0.96, 6.91},
        rotation = {0, 240, 0}
    }, {
        Number = '320a',
        location = {-3.21, 0.96, -1.17},
        rotation = {0, 300, 0}
    }, {
        Number = '323a',
        location = {-3.21, 0.96, -6.54},
        rotation = {0, 120, 0}
    }, {
        Number = '901b',
        location = {-12.45, 0.96, -1.17},
        rotation = {0, 120, 0}
    }, {
        Number = '902a',
        location = {-7.83, 0.96, -3.86},
        rotation = {0, 120, 0}
    }, {
        Number = '903a',
        location = {-12.45, 0.96, 9.59},
        rotation = {0, 120, 0}
    }, {
        Number = '904a',
        location = {6.03, 0.96, -1.17},
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

function SS2()
    Global.call('cleanTable')
    TileList = {{
        Number = '201a',
        location = {15.27, 0.96, -9.24},
        rotation = {0, 300, 0}
    }, {
        Number = '205b',
        location = {-12.45, 0.96, 1.52},
        rotation = {0, 60, 0}
    }, {
        Number = '213b',
        location = {6.03, 0.96, 6.90},
        rotation = {0, 240, 0}
    }, {
        Number = '218b',
        location = {-7.83, 0.96, 4.21},
        rotation = {0, 240, 0}
    }, {
        Number = '220a',
        location = {-17.07, 0.96, -1.17},
        rotation = {0, 120, 0}
    }, {
        Number = '226b',
        location = {-12.45, 0.96, -3.87},
        rotation = {0, 120, 0}
    }, {
        Number = '231b',
        location = {1.41, 0.96, 4.19},
        rotation = {0, 60, 0}
    }, {
        Number = '232b',
        location = {-3.20, 0.96, 1.50},
        rotation = {0, 60, 0}
    }, {
        Number = '301a',
        location = {-7.83, 0.96, -11.93},
        rotation = {0, 180, 0}
    }, {
        Number = '302b',
        location = {10.65, 0.96, -6.55},
        rotation = {0, 120, 0}
    }, {
        Number = '306b',
        location = {6.03, 0.96, -3.86},
        rotation = {0, 120, 0}
    }, {
        Number = '318b',
        location = {1.41, 0.96, -1.17},
        rotation = {0, 120, 0}
    }, {
        Number = '320b',
        location = {6.07, 0.96, 1.50},
        rotation = {0, 0, 0}
    }, {
        Number = '323a',
        location = {-7.79, 0.96, -6.59},
        rotation = {0, 300, 0}
    }, {
        Number = '901b',
        location = {10.65, 0.96, -11.93},
        rotation = {0, 120, 0}
    }, {
        Number = '902a',
        location = {-3.20, 0.96, -3.90},
        rotation = {0, 120, 0}
    }, {
        Number = '903b',
        location = {15.27, 0.96, -3.86},
        rotation = {0, 120, 0}
    }, {
        Number = '904b',
        location = {-7.83, 0.96, -1.17},
        rotation = {0, 120, 0}
    }, {
        Number = '905b',
        location = {10.64, 0.96, -1.17},
        rotation = {0, 120, 0}
    }}
    for _, Tile in ipairs(TileList) do
        Global.call('GetTile', Tile)
    end
end

function SS3()
    Global.call('cleanTable')
    TileList = {{
        Number = '301b',
        location = {-14.76, 0.96, -1.17},
        rotation = {0, 120, 0}
    }, {
        Number = '302a',
        location = {12.96, 0.96, -11.93},
        rotation = {0, 60, 0}
    }, {
        Number = '306a',
        location = {8.34, 0.96, 1.52},
        rotation = {0, 60, 0}
    }, {
        Number = '308b',
        location = {-0.90, 0.96, 1.52},
        rotation = {0, 240, 0}
    }, {
        Number = '309a',
        location = {12.96, 0.96, -1.17},
        rotation = {0, 120, 0}
    }, {
        Number = '314b',
        location = {-5.52, 0.96, -1.17},
        rotation = {0, 60, 0}
    }, {
        Number = '317a',
        location = {17.58, 0.96, -9.24},
        rotation = {0, 0, 0}
    }, {
        Number = '318a',
        location = {12.96, 0.96, 4.21},
        rotation = {0, 240, 0}
    }, {
        Number = '319b',
        location = {-10.14, 0.96, -3.86},
        rotation = {0, 60, 0}
    }, {
        Number = '320a',
        location = {17.59, 0.96, -3.86},
        rotation = {0, 300, 0}
    }, {
        Number = '324b',
        location = {3.72, 0.96, -1.17},
        rotation = {0, 60, 0}
    }, {
        Number = '901a',
        location = {12.96, 0.96, -6.55},
        rotation = {0, 120, 0}
    }, {
        Number = '902b',
        location = {8.34, 0.96, -9.24},
        rotation = {0, 120, 0}
    }, {
        Number = '903a',
        location = {8.34, 0.96, -3.86},
        rotation = {0, 120, 0}
    }, {
        Number = '904a',
        location = {17.58, 0.96, 1.52},
        rotation = {0, 120, 0}
    }, {
        Number = '905b',
        location = {3.72, 0.96, -6.55},
        rotation = {0, 120, 0}
    }}
    for _, Tile in ipairs(TileList) do
        Global.call('GetTile', Tile)
    end
end
