---@diagnostic disable: undefined-global, lowercase-global

require("src/lovepico")

function _init()
    Annikka = love.graphics.newImage("images/Annikka.png")

end

function _update(dt)

end

function _draw()
    for y=0, 128 do
        for x=0, 128 do
            pset(math.random(15), x, y) -- All math functions from pico exist in lua just add "math." before like the math.random() example
        end
    end
    -- colors os the sprite can be anything not just pico colors unless you decide to use the pico palette
    -- you need load the image first before draw here (see love.load function above)
    spr(Annikka, 8, 1)
end

