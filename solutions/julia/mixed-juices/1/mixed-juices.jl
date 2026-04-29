function time_to_mix_juice(juice)
    if juice == "Pure Strawberry Joy"
        return 0.5
    elseif juice == "Energizer" || juice == "Green Garden"
        return 1.5
    elseif juice == "Tropical Island"
        return 3
    elseif juice == "All or Nothing"
        return 5
    end
    return 2.5
end

function wedges_from_lime(size)

end

function limes_to_cut(needed, limes)
    count = 0
   for lime in limes
       if needed <= 0
           break
       end
       if lime == "small"
           needed -= 6
       elseif lime == "medium"
           needed -= 8
       else 
           needed -= 10
       end
       count += 1
   end
    return count
end

function order_times(orders)
    times = Float64[]
    for mix in orders
        push!(times, time_to_mix_juice(mix))
        
    end
    return times
end

function remaining_orders(time_left, orders)
    
    times = order_times(orders)
    for index in eachindex(times)
        if time_left > 0
            time_left = time_left - times[index]
            popfirst!(orders)
        else
            break
        end 
    end
    return orders
       
end

@show remaining_orders(5, ["Energizer", "Tropical Island"])
