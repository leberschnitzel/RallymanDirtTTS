-- Ice Track 1
function onload()
    createButtons()
end

function createButtons()
    self.createButton({
        click_function = "SS1",
        function_owner = self,
        position = {-0.6, 0.3, 0.6},
        height = 300,
        width = 600,
        scale = {0.3, 0.2, 0.3},
        font_size = 250,
        color = {0, 1, 0, 1},
        label = "Ice Track"
    })
end

function SS1()
    Global.call('cleanTable')
    TileList = {{
        Number = '301b',
        location = {-0.894, 0.871, -3.851},
        rotation = {0, 180, 0}
    }, {
        Number = '304b',
        location = {-10.141, 0.871, -3.86},
        rotation = {0, 60, 0}
    }, {
        Number = '307b',
        location = {-10.147, 0.871, 1.527},
        rotation = {0, 60, 0}
    }, {
        Number = '308b',
        location = {-0.896, 0.871, -9.242},
        rotation = {0, 0, 0}
    }, {
        Number = '309b',
        location = {-5.511, 0.871, 4.229},
        rotation = {0, 240, 0}
    }, {
        Number = '310b',
        location = {-14.766, 0.871, -6.547},
        rotation = {0, 60, 0}
    }, {
        Number = '312b',
        location = {-5.521, 0.871, -1.171},
        rotation = {0, 240, 0}
    }, {
        Number = '316b',
        location = {-5.523, 0.871, -6.56},
        rotation = {0, 0, 0}
    }, {
        Number = '318b',
        location = {-10.143, 0.871, -9.257},
        rotation = {0, 120, 0}
    }, {
        Number = '322b',
        location = {-0.886, 0.871, 1.518},
        rotation = {0, 300, 0}
    }, {
        Number = '323b',
        location = {-14.769, 0.871, -1.17},
        rotation = {0, 180, 0}
    }, {
        Number = '324b',
        location = {-5.516, 0.871, -11.931},
        rotation = {0, 60, 0}
    }}
    for _, Tile in ipairs(TileList) do
        Global.call('GetTile', Tile)
    end
end
