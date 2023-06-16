def my_bsearch(target)
    return nil if self.empty?
    mid = self.length / 2
    if self[mid] == target
      return mid  
    elsif self[mid] < target
      i = self[mid + 1..-1].my_bsearch(target)
      i.nil? ? nil : mid + 1 + i
    else
      self[0...mid].my_bsearch(target)
    end
  end