-- Rally 1
function onload()
    createButtons()
end

function createButtons()
    self.createButton({
        click_function = "all",
        function_owner = self,
        position = {0.6, 0.3, -0.4},
        height = 300,
        width = 600,
        scale = {0.3, 0.2, 0.3},
        font_size = 250,
        color = {0, 1, 0, 1},
        label = "All"
    })
    self.createButton({
        click_function = "SS1",
        function_owner = self,
        position = {0.5, 0.3, 0.5},
        height = 300,
        width = 600,
        scale = {0.3, 0.2, 0.3},
        font_size = 250,
        color = {0, 1, 0, 1},
        label = "Stage 1"
    })
    self.createButton({
        click_function = "SS2",
        function_owner = self,
        position = {0.1, 0.3, 0.7},
        height = 300,
        width = 600,
        scale = {0.3, 0.2, 0.3},
        font_size = 250,
        color = {0, 1, 0, 1},
        label = "Stage 2"
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
        label = "Stage 3"
    })
    self.createButton({
        click_function = "SS4",
        function_owner = self,
        position = {0.1, 0.3, 0.7},
        height = 300,
        width = 600,
        scale = {0.3, 0.2, 0.3},
        font_size = 250,
        color = {0, 1, 0, 1},
        label = "Stage 4"
    })

end

function all()
    Global.call('cleanTable')
    TileList = {{
        Number = '202b',
        location = {-0.901, 0.96, -11.931},
        rotation = {0, 180, 0}
    }, {
        Number = '203a',
        location = {-0.897, 0.96, 14.968},
        rotation = {0, 120, 0}
    }, {
        Number = '204b',
        location = {-14.761, 0.96, 12.279},
        rotation = {0, 180, 0}
    }, {
        Number = '208b',
        location = {-14.762, 0.96, 6.901},
        rotation = {0, 120, 0}
    }, {
        Number = '209a',
        location = {-14.76, 0.96, 17.659},
        rotation = {0, 180, 0}
    }, {
        Number = '217a',
        location = {-10.138, 0.96, 20.351},
        rotation = {0, 240, 0}
    }, {
        Number = '223a',
        location = {-10.141, 0.96, 4.21},
        rotation = {0, 300, 0}
    }, {
        Number = '224a',
        location = {-10.144, 0.96, -1.168},
        rotation = {0, 120, 0}
    }, {
        Number = '402b',
        location = {-5.518, 0.96, 17.658},
        rotation = {0, 120, 0}
    }, {
        Number = '404b',
        location = {-5.515, 0.96, -3.863},
        rotation = {0, 120, 0}
    }, {
        Number = '415b',
        location = {-0.9, 0.96, -6.55},
        rotation = {0, 180, 0}
    }, {
        Number = '202b',
        location = {-0.901, 0.96, -11.931},
        rotation = {0, 180, 0}
    }, {
        Number = '203a',
        location = {-0.897, 0.96, 14.968},
        rotation = {0, 120, 0}
    }, {
        Number = '207b',
        location = {-5.519, 0.96, 6.9},
        rotation = {0, 180, 0}
    }, {
        Number = '210a',
        location = {-10.141, 0.96, 14.969},
        rotation = {0, 120, 0}
    }, {
        Number = '221a',
        location = {-5.522, 0.96, 12.279},
        rotation = {0, 300, 0}
    }, {
        Number = '231b',
        location = {-5.519, 0.96, 1.519},
        rotation = {0, 180, 0}
    }, {
        Number = '402b',
        location = {-5.518, 0.96, 17.658},
        rotation = {0, 120, 0}
    }, {
        Number = '404b',
        location = {-5.515, 0.96, -3.863},
        rotation = {0, 120, 0}
    }, {
        Number = '415b',
        location = {-0.9, 0.96, -6.55},
        rotation = {0, 180, 0}
    }, {
        Number = '202b',
        location = {-0.901, 0.96, -11.931},
        rotation = {0, 180, 0}
    }, {
        Number = '203a',
        location = {-0.897, 0.96, 14.968},
        rotation = {0, 120, 0}
    }, {
        Number = '218a',
        location = {3.72, 0.96, 1.52},
        rotation = {0, 180, 0}
    }, {
        Number = '219a',
        location = {8.341, 0.96, 4.211},
        rotation = {0, 300, 0}
    }, {
        Number = '229b',
        location = {3.718, 0.96, 6.901},
        rotation = {0, 120, 0}
    }, {
        Number = '403b',
        location = {3.722, 0.96, -3.859},
        rotation = {0, 240, 0}
    }, {
        Number = '405b',
        location = {3.726, 0.96, 12.275},
        rotation = {0, 300, 0}
    }, {
        Number = '415b',
        location = {-0.9, 0.96, -6.55},
        rotation = {0, 180, 0}
    }, {
        Number = '202b',
        location = {-0.901, 0.96, -11.931},
        rotation = {0, 180, 0}
    }, {
        Number = '203a',
        location = {-0.897, 0.96, 14.968},
        rotation = {0, 120, 0}
    }, {
        Number = '215a',
        location = {8.343, 0.96, -1.168},
        rotation = {0, 240, 0}
    }, {
        Number = '226b',
        location = {8.339, 0.96, 9.589},
        rotation = {0, 300, 0}
    }, {
        Number = '230a',
        location = {12.959, 0.96, 6.9},
        rotation = {0, 300, 0}
    }, {
        Number = '232b',
        location = {12.962, 0.96, 1.521},
        rotation = {0, 0, 0}
    }, {
        Number = '403b',
        location = {3.722, 0.96, -3.859},
        rotation = {0, 240, 0}
    }, {
        Number = '405b',
        location = {3.726, 0.96, 12.275},
        rotation = {0, 300, 0}
    }, {
        Number = '415b',
        location = {-0.9, 0.96, -6.55},
        rotation = {0, 180, 0}
    }}
    for _, Tile in ipairs(TileList) do
        Global.call('GetTile', Tile)
    end
end

function SS1()
    Global.call('cleanTable')
    TileList = {{
        Number = '202b',
        location = {-0.901, 0.96, -11.931},
        rotation = {0, 180, 0}
    }, {
        Number = '203a',
        location = {-0.897, 0.96, 14.968},
        rotation = {0, 120, 0}
    }, {
        Number = '204b',
        location = {-14.761, 0.96, 12.279},
        rotation = {0, 180, 0}
    }, {
        Number = '208b',
        location = {-14.762, 0.96, 6.901},
        rotation = {0, 120, 0}
    }, {
        Number = '209a',
        location = {-14.76, 0.96, 17.659},
        rotation = {0, 180, 0}
    }, {
        Number = '217a',
        location = {-10.138, 0.96, 20.351},
        rotation = {0, 240, 0}
    }, {
        Number = '223a',
        location = {-10.141, 0.96, 4.21},
        rotation = {0, 300, 0}
    }, {
        Number = '224a',
        location = {-10.144, 0.96, -1.168},
        rotation = {0, 120, 0}
    }, {
        Number = '402b',
        location = {-5.518, 0.96, 17.658},
        rotation = {0, 120, 0}
    }, {
        Number = '404b',
        location = {-5.515, 0.96, -3.863},
        rotation = {0, 120, 0}
    }, {
        Number = '415b',
        location = {-0.9, 0.96, -6.55},
        rotation = {0, 180, 0}
    }}
    for _, Tile in ipairs(TileList) do
        Global.call('GetTile', Tile)
    end
end

function SS2()
    Global.call('cleanTable')
    TileList = {{
        Number = '202b',
        location = {-0.901, 0.96, -11.931},
        rotation = {0, 180, 0}
    }, {
        Number = '203a',
        location = {-0.897, 0.96, 14.968},
        rotation = {0, 120, 0}
    }, {
        Number = '207b',
        location = {-5.519, 0.96, 6.9},
        rotation = {0, 180, 0}
    }, {
        Number = '210a',
        location = {-10.141, 0.96, 14.969},
        rotation = {0, 120, 0}
    }, {
        Number = '221a',
        location = {-5.522, 0.96, 12.279},
        rotation = {0, 300, 0}
    }, {
        Number = '231b',
        location = {-5.519, 0.96, 1.519},
        rotation = {0, 180, 0}
    }, {
        Number = '402b',
        location = {-5.518, 0.96, 17.658},
        rotation = {0, 120, 0}
    }, {
        Number = '404b',
        location = {-5.515, 0.96, -3.863},
        rotation = {0, 120, 0}
    }, {
        Number = '415b',
        location = {-0.9, 0.96, -6.55},
        rotation = {0, 180, 0}
    }}
    for _, Tile in ipairs(TileList) do
        Global.call('GetTile', Tile)
    end
end

function SS3()
    Global.call('cleanTable')
    TileList = {{
        Number = '202b',
        location = {-0.901, 0.96, -11.931},
        rotation = {0, 180, 0}
    }, {
        Number = '203a',
        location = {-0.897, 0.96, 14.968},
        rotation = {0, 120, 0}
    }, {
        Number = '218a',
        location = {3.72, 0.96, 1.52},
        rotation = {0, 180, 0}
    }, {
        Number = '219a',
        location = {8.341, 0.96, 4.211},
        rotation = {0, 300, 0}
    }, {
        Number = '229b',
        location = {3.718, 0.96, 6.901},
        rotation = {0, 120, 0}
    }, {
        Number = '403b',
        location = {3.722, 0.96, -3.859},
        rotation = {0, 240, 0}
    }, {
        Number = '405b',
        location = {3.726, 0.96, 12.275},
        rotation = {0, 300, 0}
    }, {
        Number = '415b',
        location = {-0.9, 0.96, -6.55},
        rotation = {0, 180, 0}
    }}
    for _, Tile in ipairs(TileList) do
        Global.call('GetTile', Tile)
    end
end

function SS4()
    Global.call('cleanTable')
    TileList = {{
        Number = '202b',
        location = {-0.901, 0.96, -11.931},
        rotation = {0, 180, 0}
    }, {
        Number = '203a',
        location = {-0.897, 0.96, 14.968},
        rotation = {0, 120, 0}
    }, {
        Number = '215a',
        location = {8.343, 0.96, -1.168},
        rotation = {0, 240, 0}
    }, {
        Number = '226b',
        location = {8.339, 0.96, 9.589},
        rotation = {0, 300, 0}
    }, {
        Number = '230a',
        location = {12.959, 0.96, 6.9},
        rotation = {0, 300, 0}
    }, {
        Number = '232b',
        location = {12.962, 0.96, 1.521},
        rotation = {0, 0, 0}
    }, {
        Number = '403b',
        location = {3.722, 0.96, -3.859},
        rotation = {0, 240, 0}
    }, {
        Number = '405b',
        location = {3.726, 0.96, 12.275},
        rotation = {0, 300, 0}
    }, {
        Number = '415b',
        location = {-0.9, 0.96, -6.55},
        rotation = {0, 180, 0}
    }}
    for _, Tile in ipairs(TileList) do
        Global.call('GetTile', Tile)
    end
end
