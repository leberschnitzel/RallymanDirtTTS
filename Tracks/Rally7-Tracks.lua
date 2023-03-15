function onload()
    createButtons()
end

function createButtons()
    self.createButton({
        click_function = 'SS1',
        function_owner = self,
        position = {0.65, 0.3, -0.3},
        height = 100,
        width = 200,
        color = {0, 1, 0, 1},
        label = 'SS1'
    })
    self.createButton({
        click_function = 'SS2',
        function_owner = self,
        position = {-0.45, 0.3, 0.2},
        height = 100,
        width = 200,
        color = {0, 1, 0, 1},
        label = 'SS2'
    })
    self.createButton({
        click_function = 'SS3',
        function_owner = self,
        position = {0.35, 0.3, 0.71},
        height = 100,
        width = 200,
        color = {0, 1, 0, 1},
        label = 'SS3'
    })
end

function SS1()
    Global.call('cleanTable')
    TileList = {{
        Number = '301a',
        location = {-17.07, 0.96, -9.24}
    }, {
        Number = '302a',
        location = {10.65, 0.96, 1.52}
    }, {
        Number = '308a',
        location = {1.41, 0.96, 1.52}
    }, {
        Number = '310a',
        location = {-3.21, 0.96, -1.17}
    }, {
        Number = '312a',
        location = {-3.21, 0.96, -6.55}
    }, {
        Number = '313a',
        location = {-7.83, 0.96, -3.86}
    }, {
        Number = '315a',
        location = {1.41, 0.96, -3.86}
    }, {
        Number = '320a',
        location = {-7.83, 0.96, -9.24}
    }, {
        Number = '322a',
        location = {-12.45, 0.96, -11.93}
    }, {
        Number = '323a',
        location = {6.03, 0.96, 4.21}
    }, {
        Number = '904a',
        location = {6.03, 0.96, -1.17}
    }, {
        Number = '903a',
        location = {-12.45, 0.96, -6.55}
    }, {
        Number = '901a',
        location = {10.65, 0.96, -3.86}
    }, {
        Number = '902a',
        location = {1.41, 0.96, 6.90}
    }, {
        Number = '905a',
        location = {6.03, 0.96, -6.55}
    }}
    for _, Tile in ipairs(TileList) do
        Global.call('GetTile', Tile)
    end
end

function SS2()
    Global.call('cleanTable')
    TileList = {{
        Number = '201b',
        location = {6.02, 0.96, -9.24}
    }, {
        Number = '301a',
        location = {-12.45, 0.96, 1.52}
    }, {
        Number = '302a',
        location = {10.65, 0.96, -6.55}
    }, {
        Number = '306a',
        location = {-7.83, 0.96, 4.21}
    }, {
        Number = '315a',
        location = {-12.42, 0.96, 6.90}
    }, {
        Number = '316a',
        location = {-3.21, 0.96, 1.52}
    }, {
        Number = '317a',
        location = {15.27, 0.96, -3.86}
    }, {
        Number = '319a',
        location = {1.41, 0.96, 4.21}
    }, {
        Number = '320a',
        location = {10.65, 0.96, 4.21}
    }, {
        Number = '321a',
        location = {15.27, 0.96, 1.52}
    }, {
        Number = '324a',
        location = {6.03, 0.96, 1.52}
    }, {
        Number = '901b',
        location = {6.03, 0.96, -3.87}
    }, {
        Number = '902a',
        location = {-3.22, 0.96, -3.86}
    }, {
        Number = '903a',
        location = {-7.83, 0.96, -1.17}
    }, {
        Number = '904b',
        location = {10.65, 0.96, -1.17}
    }, {
        Number = '905a',
        location = {1.41, 0.96, -1.17}
    }}
    for _, Tile in ipairs(TileList) do
        Global.call('GetTile', Tile)
    end
end

function SS3()
    Global.call('cleanTable')
    TileList = {{
        Number = '301a',
        location = {-5.52, 0.96, -1.17}
    }, {
        Number = '302a',
        location = {12.96, 0.96, -1.17}
    }, {
        Number = '309a',
        location = {-0.89, 0.96, 1.52}
    }, {
        Number = '310a',
        location = {3.70, 0.96, 4.23}
    }, {
        Number = '311a',
        location = {-0.90, 0.96, -3.85}
    }, {
        Number = '313a',
        location = {-5.52, 0.96, 4.21}
    }, {
        Number = '317a',
        location = {8.34, 0.96, 1.52}
    }, {
        Number = '318a',
        location = {12.96, 0.96, -6.55}
    }, {
        Number = '319a',
        location = {8.35, 0.96, -3.86}
    }, {
        Number = '320a',
        location = {3.72, 0.96, -1.17}
    }, {
        Number = '901a',
        location = {12.96, 0.96, 4.21}
    }, {
        Number = '902a',
        location = {-0.90, 0.96, 6.91}
    }, {
        Number = '903a',
        location = {-10.14, 0.96, 1.52}
    }, {
        Number = '904b',
        location = {8.34, 0.96, 6.90}
    }, {
        Number = '905a',
        location = {3.72, 0.96, -6.55}
    }}
    for _, Tile in ipairs(TileList) do
        Global.call('GetTile', Tile)
    end
end
