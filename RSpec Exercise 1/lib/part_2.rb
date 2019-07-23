def hipsterfy(str)
 vol="aioue"
 part1=""
 part2=""
 i=str.length-1
     while i>=0
       if vol.include?(str[i])
         part1=str[0...i]  
         part2=str[i+1..-1]
         return part1 + part2
       end
       i-=1
    end
  return str   
end
  

def vowel_counts (str) 
 str1=str.downcase   
 vol="aioue"

 hash=Hash.new(0)
 str1.each_char do |ch|
    if vol.include?(ch)
        hash[ch]+=1

    end
end
hash
end


def caesar_cipher(msg,num)
  alpha=("a".."z").to_a
  str=""
  msg.each_char do |ch|
  if alpha.include?(ch)
    old_i=alpha.index(ch)
    new_i=old_i+num
    str<< alpha[new_i % 26]
  elsif
    str<<ch
  end
end
str
end