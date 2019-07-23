def my_map(arr,&prc)
 new_arr=[]
 arr.each {|el| new_arr<< prc.call(el)}
new_arr
end

def my_select(arr,&prc)
 new_arr=[]
 arr.each do |el|
  new_arr << el if prc.call(el)
 end
 new_arr
end

def my_count(arr,&prc)
    count=0
   arr.each do |el|
    count+=1 if prc.call(el)
   end
  count
end

def my_any?(arr,&prc)
 arr.each do |el|
   if prc.call(el)
    return true
   end
 end
 false
end

def my_all?(arr,&prc)
 arr.each do |el|
  if prc.call(el)
    next
  else
    return false
  end

 end
true
end


def my_none?(arr,&prc)
 arr.each do |el|
    if prc.call(el)==true
        return false
    end
  end
  true

end


























