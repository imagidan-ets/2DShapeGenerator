using Luxor
using Distributions
include("../lib/readablecolor.jl")
include("../lib/randomrgbfromcolor.jl")

colors = ["gray", "red", "blue", "green", "yellow", "purple", "brown", "orange", "white", "black"]
alphanumeric = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]

x = 300

for color in colors
    for char in alphanumeric
        for i in 1:3
            rgb_color = random_rgb_from_color(color)
            text_color = generate_readable_color(rgb_color)
            Drawing(2*x, x, "../shapes/semi-circles/$(color)_$(char)_$(i).png")
            origin()
            sethue(rgb_color)
            pie(0, -(x*0.98)/2, x*0.98, 0, pi, :fill)
            sethue(text_color)
            setfont("Arial", (5/6)*x)
            settext(char, Point(0, 0), halign="center", valign="center", angle=-180)
            finish()
        end
    end
end