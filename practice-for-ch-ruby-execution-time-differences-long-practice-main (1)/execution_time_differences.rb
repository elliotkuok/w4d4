def my_min_i(list)
    ans = list[0]
    list.each do |num|
        list.each do |num1|
            if num1 < ans
                ans = num1
            end
        end
    end
    ans
end

def my_min_ii(list)
    ans = list[0]
    list.each do |num|
        if ans > num
            ans = num
        end
    end
    ans
end

def largest_contiguous_subsum(list)
    # ans = 0
    subarrs = []
    list.each_with_index do |num, i|
        list.each_with_index do |num1, i1|
            subarrs << list[i..i1]
        end
    end

    ans = 0
    subarrs.each do |subarr|
        ans = subarr.sum if ans < subarr.sum
    end
    ans
end

def largest_contiguous_subsum_ii(list)
    largest_sum = list[0]
    current_sum = list[0]

    (1...list.length).each do |i|
        current_sum = [list[i], current_sum + list[i]].max
        largest_sum = [largest_sum, current_sum].max
    end

    largest_sum

end

list = [5, 3, -7]
p largest_contiguous_subsum_ii(list)

# possible sub-sums
# [5]           # => 5
# [5, 3]        # => 8 --> we want this one
# [5, 3, -7]    # => 1
# [3]           # => 3
# [3, -7]       # => -4
# [-7]          # => -7
