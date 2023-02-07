using Luxor
using Distributions
include("../lib/readablecolor.jl")
include("../lib/randomrgbfromcolor.jl")

colors = ["brown", "red", "orange", "yellow", "green", "blue", "purple", "black", "gray", "white"]
alphanumeric = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
angles = [0, 90]

x = 300

for color in colors
    for char in alphanumeric
        for i in 1:3
            rand_flt = rand(Uniform(1.5, 3))
            angle = rand(angles)
            height = (2*x)/rand_flt
            rgb_color = random_rgb_from_color(color)
            text_color = generate_readable_color(rgb_color)
            Drawing(2*x, round(height), "../shapes/rectangles/$(color)_$(char)_$(i).png")
            origin()
            sethue(rgb_color)
            rect(-x*0.98, -(height*0.98)/2, 2*x*0.98, height*0.98, :fill)
            sethue(text_color)
            setfont("Arial", 200)
            settext(char, Point(0, 0), halign="center", valign="center", angle=angle)
            finish()
        end
    end
end