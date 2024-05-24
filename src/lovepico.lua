---@diagnostic disable: undefined-global, lowercase-global

love.graphics.setDefaultFilter("nearest", "nearest")
canvas = love.graphics.newCanvas(128, 128)

function startCanvas(color)
    love.graphics.setCanvas(canvas)
    love.graphics.clear(love.math.colorFromBytes(color)) -- Background color
    love.graphics.setDefaultFilter("nearest", "nearest")
end

function endCanvas()
    love.graphics.setCanvas()
    local maxScaleX = love.graphics.getWidth() / canvas:getWidth()
    local maxScaleY = love.graphics.getHeight() / canvas:getHeight()
    local scale = math.min(maxScaleX, maxScaleY)
    love.graphics.draw(canvas, love.graphics.getWidth() / 2, love.graphics.getHeight() / 2, 0, scale, scale, canvas:getWidth() / 2, canvas:getHeight() / 2)
end

color = {}
color.black = {0, 0, 0}
color.dark_blue = {29, 43, 83}
color.dark_purple = {126, 37, 83}
color.dark_green = {0, 135, 81}
color.brown = {171, 82, 54}
color.dark_grey = {95, 87, 79}
color.light_grey = {194, 195, 199}
color.white = {255, 241, 232}
color.red = {255, 0, 77}
color.orange = {255, 163, 0}
color.yellow = {255, 236, 39}
color.green = {0, 228, 54}
color.blue = {41, 173, 255}
color.lavender = {131, 118, 156}
color.pink = {255, 119, 168}
color.light_peach = {255, 204, 170}

function numberToColor(n)
    if n == 0 then return color.black end
    if n == 1 then return color.dark_blue end
    if n == 2 then return color.dark_purple end
    if n == 3 then return color.dark_green end
    if n == 4 then return color.brown end
    if n == 5 then return color.dark_grey end
    if n == 6 then return color.light_grey end
    if n == 7 then return color.white end
    if n == 8 then return color.red end
    if n == 9 then return color.orange end
    if n == 10 then return color.yellow end
    if n == 11 then return color.green end
    if n == 12 then return color.blue end
    if n == 13 then return color.lavender end
    if n == 14 then return color.pink end
    if n == 15 then return color.light_peach end
end

function pset(color, x, y, ...)
    if type(color) == "number" then
        local c =  numberToColor(math.floor(color % 15)) 
        love.graphics.setColor (love.math.colorFromBytes( c ))
        love.graphics.points( x, y, ... )
    else
        local c = color
        love.graphics.setColor (love.math.colorFromBytes( c ))
        love.graphics.points( x, y, ... )
    end
    love.graphics.setColor( 1, 1, 1, 1 )
end

function spr(drawable, x, y, r, sx, sy, ox, oy, kx, ky)
    love.graphics.draw(drawable, x, y, r, sx, sy, ox, oy, kx, ky)
end

