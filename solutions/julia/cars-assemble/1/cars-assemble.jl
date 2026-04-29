function success_rate(speed)
    if speed == 0
        return 0
    elseif speed <= 4 
        return 1
    elseif speed <= 8
        return 0.9
    elseif speed <= 9
        return 0.8
    end
    return 0.77
    
end

function production_rate_per_hour(speed)
    speed * 221 * success_rate(speed)
end

function working_items_per_minute(speed)
    floor(Int, production_rate_per_hour(speed) / 60)
end

@show working_items_per_minute(6)
