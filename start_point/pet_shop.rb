

def pet_shop_name(name)
  return name[:name]
end


def total_cash(shop)
  return shop[:admin][:total_cash]
end

def add_or_remove_cash(shop, cash)
total = shop[:admin][:total_cash] += cash
return total
end

# def add_or_remove_cash(total_cash, cash)
# total_cash += cash
# return total_cash
# end

def pets_sold(shop)
  return shop[:admin][:pets_sold]
end

def increase_pets_sold(shop, number)
  return shop[:admin][:pets_sold] += number
end

def stock_count(shop)
  return shop[:pets].length
end

def pets_by_breed (shop, type)
pet_count = []
 for pet in shop[:pets]
   if(pet[:breed] == type)
    pet_count << pet[:breed]
   end
 end
return pet_count
end

def pets_by_breed (shop, type)
pet_count = []
 for pet in shop[:pets]
   if(pet[:breed] == type)
    pet_count << pet[:breed]
   end
 end
return pet_count
end


def find_pet_by_name(shop, name)
for animals in shop[:pets]
  if animals[:name] == name
    return animals
  end
end
return nil
end


def remove_pet_by_name(shop, name)
  for pets in shop[:pets]
    if pets[:name] == name
     shop[:pets].delete(pets)
     end
  end
end

def add_pet_to_stock(shop, newpet)
 result = shop[:pets].push(newpet)
  return result.length
end

def customer_pet_count(customers)
  customers[:pets].length
end

# def test_add_pet_to_customer
#   customer = @customers[0]
#   add_pet_to_customer(customer, @new_pet)
#   assert_equal(customer_pet_count(customer),1)
# end

def add_pet_to_customer(customers, newpet)
 updated_count = customers[:pets].push(newpet)
 return updated_count.length
end