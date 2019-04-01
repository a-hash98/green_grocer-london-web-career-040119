def consolidate_cart(cart)

end

def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  for i in cart
    current_price = i[:price].to_i
    i[:price] = 0.8*current_price
  end
  return cart
end

def checkout(cart, coupons)
  # code here
end
