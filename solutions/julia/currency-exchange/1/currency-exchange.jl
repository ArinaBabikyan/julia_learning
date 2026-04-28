function exchange_money(budget, exchange_rate)
    budget / exchange_rate
end

function get_change(budget, exchanging_value)
    budget - exchanging_value
end

function get_value_of_bills(denomination, number_of_bills)
    floor(denomination * number_of_bills)
end

function get_number_of_bills(amount, denomination)
    floor(amount / denomination)
end

function get_leftover_of_bills(amount, denomination)
    amount - get_value_of_bills(denomination, get_number_of_bills(amount, denomination))
end

function exchangeable_value(budget, exchange_rate, spread, denomination)
    new_exchange_rate = (spread/100 + 1)exchange_rate
    exchanged = exchange_money(budget, new_exchange_rate)
    bills = get_number_of_bills(exchanged, denomination)
    get_value_of_bills(denomination, bills)
end
