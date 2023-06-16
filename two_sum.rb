def two_sum?(arr, target_sum)
    
end

def brute_force(arr, target_sum)
    arr.each do |ele|
        arr.each do |ele2|
            return true if ele + ele2 == target_sum
        end
    end
    false
end

def sorting(arr, target_sum)
  sorted_arr = arr.sort
    (0...sorted_arr.length).each do |i|
        num2 = target_sum - sorted_arr[i]
        # p my_bsearch(sorted_arr, num2)
        return true if !my_bsearch(sorted_arr, num2).nil?
    end
    false
end

def my_bsearch(arr, target)
    return nil if arr.empty?
    mid = arr.length / 2
    if arr[mid] == target
      return mid
    elsif arr[mid] < target
      i = my_bsearch(arr[mid + 1..-1], target)
      i.nil? ? nil : mid + 1 + i
    else
      my_bsearch(arr[0...mid], target)
    end
end
arr = [0, 1, 5, 7]
p sorting(arr, 8) # => should be true
p sorting(arr, 10) # => should be false

def hash_map(arr, target_sum)
    bank = {}
    arr.each do |x|
        num2 = target_sum - x
        if bank[num2]
            return true
        else
            bank[x] = true
        end
    end
    return false
end 
