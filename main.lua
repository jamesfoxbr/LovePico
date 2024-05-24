---@diagnostic disable: undefined-global

require("src/lovepico")

function love.load()
    Annikka = love.graphics.newImage("images/Annikka.png")

end

function love.update(dt)

end

function love.draw()
    startCanvas(color.black)
    for y=0, 128 do
        for x=0, 128 do
            pset(math.random(15), x, y)
        end
    end
    
    
    endCanvas()
end

