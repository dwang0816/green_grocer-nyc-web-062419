def consolidate_cart(cart)
  # code here
  item_list = []
  consolidated = cart.uniq
  consolidated.each {|hash| hash.values[0][:count] = 0 }
  cart.each { |hash| item_list << hash.keys }
  item_list.flatten.each do |item|
    consolidated.each do |hash|
      if hash.keys[0] == item
        hash.values[0][:count] += 1
      end
    end
  end
    return_hash = {}
    consolidated.each do |hash|
      return_hash[hash.keys.first] = hash.values.first
    end
    return_hash
end

def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
