def sluggish_octopus(arr) #bubble sort
  result = []
  i,j = 0
  while i < arr.length
    j = 0 + i
    while j < arr.length - i - 1
      arr[j], arr[j + 1] = arr[j + 1], arr[j] if arr[j] > arr[j + 1]
      j += 1
    end
    i+=1
  end
  result[-1]
end

def dominant_octopus(arr) #merge sort

  result = arr.merge_sort
  result[-1]
end

def clever_octopus(arr) #linear search
  longest = ""
  arr.each {|el| longest = el if el.length > longest.length}
  longest
end






class Array
  #this should look familiar
  def merge_sort(&prc)
    prc ||= Proc.new { |x, y| x <=> y }

    return self if count <= 1

    midpoint = count / 2
    sorted_left = self.take(midpoint).merge_sort(&prc)
    sorted_right = self.drop(midpoint).merge_sort(&prc)

    Array.merge(sorted_left, sorted_right, &prc)
  end

  private
  def self.merge(left, right, &prc)
    merged = []

    until left.empty? || right.empty?
      case prc.call(left.first, right.first)
      when -1
        merged << left.shift
      when 0
        merged << left.shift
      when 1
        merged << right.shift
      end
    end

    merged.concat(left)
    merged.concat(right)

    merged
  end
end
