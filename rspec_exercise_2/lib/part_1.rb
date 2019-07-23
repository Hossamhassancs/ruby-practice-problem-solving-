
def partition (arr , n)
    new_arr=[[],[]]
    arr.each do |el|
        if el < n
            new_arr[0] << el
        else
            new_arr[1]<<el
        end
    end
    new_arr
end


def merge (hash1,hash2)
    new_hash={}

    hash1.each do |k,v|
     new_hash[k] = v
    end

    hash2.each do |k,v|
        new_hash[k] = v
    end
    new_hash
end

def censor(str, array)
    arr2= str.split(' ')
    volwes="aeiou"
    arr2.each do |word|
        byebug
        if array.in?(word.downcase)
         str.gsub(volwes, "*")
        end
    end
end

def power_of_two?(num)
    i=1
   while i <= num
       
        if num == i
            return true
        end
        i=i*2

   end


    return false
end


def censor(str,arr)
  words=str.split(" ")
  new_str=""
  vol="aioue"
    new_arr = words.map do |word|
        if arr.include?(word.downcase) 
            reomve_star(word)
        else
            word
    end
end


              
new_arr.join(" ")

end

def reomve_star(word)
 vol="aoiue"
 new_str=""
 word.each_char do |ch|
    if vol.include?(ch.downcase)
        new_str<<"*"
    else
      new_str<<ch
    end
end
new_str

end


  





