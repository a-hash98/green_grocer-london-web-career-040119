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
  if cart.length != 0
    apply_coupons(cart, coupons)
    apply_clearance(cart)
  end
  cost = 0
  for i in cart
    cost = cost+i[:price].to_i
  end
  if cost > 100
    cost = cost*0.9
  end
  return cost
end
