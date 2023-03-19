function onLoad()
    -- create button to clean table
    button = {}
    button.click_function = "r5"
    button.function_owner = self
    button.label = "R5"
    button.alignment = 3
    button.position = {0, 0.5, 0.4}
    button.width = 1300
    button.scale = {0.3, 0.2, 0.3}
    button.height = 300
    button.font_size = 250
    self.createButton(button)
end

function r5()
    Dashboards = {
        name = 'R5',
        location = {-39.74, 0.87, -31.96}
    }
    Global.call('getDashboards', Dashboards)
end