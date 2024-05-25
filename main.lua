---@diagnostic disable: undefined-global, lowercase-global

require("src/lovepico")

function _init()
    Annikka = love.graphics.newImage("images/Annikka.png")
    rotate = 0
end

function _update(dt)
    rotate = rotate + 1 * dt
end

function _draw()
    local color = 11
    for y=0, 127 do
        for x=0, 127 do
            if y > 10 and y < 50 and x > 10 and x < 50  then color = 8 end
            pset(color, x, y) -- All math functions from pico exist in lua just add "math." before like the math.random() example
            color = 11
        end
    end
    -- colors os the sprite can be anything not just pico colors unless you decide to use the pico palette
    -- you need load the image first before draw here (see love.load function above)
    --spr(Annikka, 64, 64, rotate, 1, 1, Annikka:getWidth() / 2, Annikka:getHeight() / 2)
end

