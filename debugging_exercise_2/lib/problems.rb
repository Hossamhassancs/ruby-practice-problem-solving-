
# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.
def largest_prime_factor(num)
 div=num
 while div>=2 
  return div if num%div==0 && is_prime?(div)
  div-=1
 end
end
def is_prime?(number)
    (2...number).each do |factor|
      return false if number % factor == 0
    end

    number > 1
end  

def unique_chars?(str)
 hash=Hash.new(0)
 str.each_char do |ch|
    hash[ch]+=1
 end
  if hash.has_value?(2)
    return false
  else
    return true
  end

end

def dupe_indices(arr)
  hash=Hash.new{|h,k| h[k]=[]}
  arr.each_with_index do |el,i|
    hash[el]<<i
  end
  

hash.select{|k,v| v.length>1 }

end

def ana_array(arr1,arr2)
  hash1=Hash.new(0)
  hash2=Hash.new(0)
  arr1.each do |el|
    hash1[el]+=1
  end
  arr2.each do |el|
    hash2[el]+=1
  end
   
   if hash1==hash2
    return true
   else
    return false
   end

end







