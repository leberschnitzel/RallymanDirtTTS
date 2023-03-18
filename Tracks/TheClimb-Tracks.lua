-- Rally - The Climb
function onload()
    createButtons()
end

function createButtons()
    self.createButton({
        click_function = 'SS1',
        function_owner = self,
        position = {0.65, 0.3, -0.2},
        height = 200,
        width = 700,
        scale = {0.5, 0.5, 0.5},
        font_size = 200,
        color = {0, 1, 0, 1},
        label = 'CLIMB 1'
    })
    self.createButton({
        click_function = 'SS2',
        function_owner = self,
        position = {-0.3, 0.3, 0.7},
        height = 200,
        width = 700,
        scale = {0.5, 0.5, 0.5},
        font_size = 200,
        color = {0, 1, 0, 1},
        label = 'CLIMB 2'
    })

end

function SS1()
    Global.call('cleanTable')
    TileList = {{
        Number = '202a',
        location = {-12.45, 0.96, -11.93},
        rotation = {0, 240, 0}
    }, {
        Number = '203a',
        location = {15.27, 0.96, 9.60},
        rotation = {0, 240, 0}
    }, {
        Number = '209a',
        location = {-7.82, 0.96, -9.24},
        rotation = {0, 0, 0}
    }, {
        Number = '213a',
        location = {10.70, 0.96, -3.85},
        rotation = {0, 0, 0}
    }, {
        Number = '214a',
        location = {-3.21, 0.96, -1.16},
        rotation = {0, 60, 0}
    }, {
        Number = '215a',
        location = {6.02, 0.96, -1.16},
        rotation = {0, 120, 0}
    }, {
        Number = '217a',
        location = {1.41, 0.96, 1.53},
        rotation = {0, 240, 0}
    }, {
        Number = '218a',
        location = {10.64, 0.96, 6.89},
        rotation = {0, 180, 0}
    }, {
        Number = '418b',
        location = {10.65, 0.96, 1.52},
        rotation = {0, 180, 0}
    }, {
        Number = '419b',
        location = {-7.83, 0.96, -3.86},
        rotation = {0, 180, 0}
    }, {
        Number = '901',
        location = {19.90, 0.96, 6.90},
        rotation = {0, 120, 0}
    }, {
        Number = '902',
        location = {1.41, 0.96, -3.86},
        rotation = {0, 120, 0}
    }, {
        Number = '903',
        location = {15.28, 0.96, 4.21},
        rotation = {0, 120, 0}
    }, {
        Number = '904',
        location = {-3.21, 0.96, 4.21},
        rotation = {0, 120, 0}
    }, {
        Number = '905',
        location = {6.03, 0.96, 4.21},
        rotation = {0, 120, 0}
    }}
    for _, Tile in ipairs(TileList) do
        Global.call('GetTile', Tile)
    end
end

function SS2()
    Global.call('cleanTable')
    TileList = {{
        Number = '301a',
        location = {-19.38, 0.96, -1.17},
        rotation = {0, 180, 0}
    }, {
        Number = '302a',
        location = {17.58, 0.96, -11.935},
        rotation = {0, 0, 0}
    }, {
        Number = '305a',
        location = {-5.516, 0.96, -3.865},
        rotation = {0, 120, 0}
    }, {
        Number = '310a',
        location = {3.718, 1.052, -3.855},
        rotation = {0, 180, 0}
    }, {
        Number = '311a',
        location = {-10.229, 1.056, -1.168},
        rotation = {0, 180, 0}
    }, {
        Number = '312a',
        location = {3.715, 0.96, -9.243},
        rotation = {0, 0, 0}
    }, {
        Number = '313a',
        location = {-19.38, 0.96, -6.55},
        rotation = {0, 60, 0}
    }, {
        Number = '318a',
        location = {-10.137, 0.96, -6.552},
        rotation = {0, 0, 0}
    }, {
        Number = '319a',
        location = {12.952, 0.96, -3.857},
        rotation = {0, 240, 0}
    }, {
        Number = '320a',
        location = {17.657, 0.96, -6.551},
        rotation = {0, 300, 0}
    }, {
        Number = '325a',
        location = {-0.899, 0.96, -6.551},
        rotation = {0, 300, 0}
    }, {
        Number = '326a',
        location = {-14.761, 0.96, -3.86},
        rotation = {0, 240, 0}
    }, {
        Number = '419a',
        location = {8.341, 0.96, -6.551},
        rotation = {0, 60, 0}
    }, {
        Number = '901b',
        location = {12.958, 0.96, -14.624},
        rotation = {0, 0, 0}
    }, {
        Number = '902a',
        location = {8.341, 0.96, -11.929},
        rotation = {0, 120, 0}
    }, {
        Number = '903a',
        location = {12.957, 0.96, -9.24},
        rotation = {0, 120, 0}
    }, {
        Number = '904b',
        location = {-0.824, 0.96, -1.185},
        rotation = {0, 240, 0}
    }, {
        Number = '905a',
        location = {-5.519, 0.96, -9.248},
        rotation = {0, 120, 0}
    }}

    for _, Tile in ipairs(TileList) do
        Global.call('GetTile', Tile)
    end
end
