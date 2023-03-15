function onload()
    createButtons()
end

function createButtons()
    self.createButton({
        click_function = "R6",
        function_owner = self,
        position = {0, 0.5, -0.3},
        height = 100,
        width = 400,
        color = {0, 1, 0, 1},
        label = "R6"
    })
    self.createButton({
        click_function = "R5",
        function_owner = self,
        position = {0, 0.5, 0},
        height = 100,
        width = 400,
        color = {0, 1, 0, 1},
        label = "R5"
    })
    self.createButton({
        click_function = "R4",
        function_owner = self,
        position = {0, 0.5, 0.3},
        height = 100,
        width = 400,
        color = {0, 1, 0, 1},
        label = "R4"
    })
end

function R6()
    Global.call('GetDashboard', 'R6-Gravel')
end

function R5()
    Global.call('GetDashboard', 'R5-Gravel')
end

function R4()
    Global.call('GetDashboard', 'R4-Gravel')
end
