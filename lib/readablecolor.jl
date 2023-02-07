using Colors

function generate_readable_color(bg_color)
    while true
        r = rand(0:255)
        g = rand(0:255)
        b = rand(0:255)
        random_color = (r, g, b)

        l1 = relative_luminance(random_color)
        l2 = relative_luminance(bg_color)

        contrast1 = (max(l1, l2) + 0.05) / (min(l1, l2) + 0.05)
        if contrast1 > 5.5
            return random_color ./ 255
        end
    end
end

function relative_luminance(color)
    r, g, b = color ./ 255
    return 0.2126 * r + 0.7152 * g + 0.0722 * b
end