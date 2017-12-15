class LRUCache
  def initialize(size)
    @cache = Array.new(size)
  end

  def count
    # returns number of elements currently in cache
    @cache.count
  end

  def add(el)
    # adds element to cache according to LRU principle
    prep_cache(el)
    @cache << el
  end

  def show
    # shows the items in the cache, with the LRU item first
    puts @cache
  end

  private # helper methods go here!

  def prep_cache(el)
    flag = @cache.include?(el)
    index = nil
    @cache.each_with_index do |elem, i|
      if flag
        if el == elem
          index = i
        end
      else
        @cache[i] = @cache[i + 1]
      end
    end
    @cache.delete_at(index) if flag
  end


end
