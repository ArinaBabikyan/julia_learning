function get_item(stack, position)
    if 1 <= position <= length(stack)
        stack[position]
    end
end

function set_item!(stack, position, replacement_card)
    if 1 <= position <= length(stack)
        stack[position] = replacement_card
    end
    return stack
end

function insert_item_at_top!(stack, new_card)
    push!(stack, new_card)
end

function remove_item!(stack, position)
    if 1 <= position <= length(stack)
        deleteat!(stack, position)
    end
end

function remove_item_from_top!(stack)
    if length(stack) > 0
        pop!(stack)
    end
    return stack
end

function insert_item_at_bottom!(stack, new_card)
    pushfirst!(stack, new_card)
end

function remove_item_at_bottom!(stack)
    if length(stack) > 0
        popfirst!(stack)
    end
    return stack
end



function check_size_of_stack(stack, stack_size)
     length(stack) == stack_size
end

