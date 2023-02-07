using Distributions

function random_rgb_from_color(color)
    if color == "white"
        num = rand(Uniform(235/255, 1))
        return (num, num, num)
    elseif color == "black"
        num = rand(Uniform(0, 25/255))
        return (num, num, num)
    elseif color == "gray"
        num = rand(Uniform(100/255, 200/255))
        return (num, num, num)
    elseif color == "red"
        return (rand(Uniform(200/255, 1)), rand(Uniform(0, 50/255)), rand(Uniform(0, 50/255)))
    elseif color == "blue"
        return (rand(Uniform(0, 50/255)), rand(Uniform(0, 50/255)), rand(Uniform(200/255, 1)))
    elseif color == "green"
        return (rand(Uniform(0, 50/255)), rand(Uniform(150/255, 1)), rand(Uniform(0, 50/255)))
    elseif color == "yellow"
        num = rand(Uniform(200/255, 1))
        return (num, num, rand(Uniform(0, 50/255)))
    elseif color == "purple"
        return (rand(Uniform(150/255, 200/255)), rand(Uniform(0, 50/255)), rand(Uniform(150/255, 200/255)))
    elseif color == "brown"
        num = rand(Uniform(0, 20))
        return ((139+num)/255, (69+num)/255, (19+num)/255)
    elseif color == "orange"
        return (rand(Uniform(220/255,1)), rand(Uniform(150/255, 180/255)), rand(Uniform(0, 50/255)))
    end
end



