using Luxor
using Distributions
include("../lib/readablecolor.jl")
include("../lib/randomrgbfromcolor.jl")

colors = ["brown", "red", "orange", "yellow", "green", "blue", "purple", "black", "gray", "white"]
alphanumeric = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]

x = 300

for color in colors
    for char in alphanumeric
        for i in 1:3
            rgb_color = random_rgb_from_color(color)
            text_color = generate_readable_color(rgb_color)
            Drawing(2*x, (53/60)*2*x, "../shapes/hexagons/$(color)_$(char)_$(i).png")
            origin()
            sethue(rgb_color)
            ngon(0, 0, x*0.98, 6, :fill)
            sethue(text_color)
            setfont("Arial", (3/2)*x)
            settext(char, Point(-(0.5/10)*x, 0), halign="center", valign="center", angle=-90)
            finish()
        end
    end
end