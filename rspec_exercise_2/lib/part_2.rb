def palindrome?(str)
len=str.length
    (0...len/2).each do |i|
        if str[i] != str[len-i-1]
            return false
        end
    end
    return true
end





def substrings(str)
 new_arr=[]
    str.each_char.with_index do |ch1,i1|
         str.each_char.with_index do |ch2,i2|
            if i2 == i1
                new_arr << ch1
            elsif i2>i1
                 new_arr<<str[i1..i2]
            end
        end
    end
new_arr
end



=begin
 def palindrome_substrings(str)
    new_arr=[]
    if str==str.reverse
        new_arr<< str
    end 
    str.each_char.with_index do |ch,i|
        if ch==str[i+2]
            new_arr<<str[i..i+2]
        end
    end
    new_arr

end
=end
def  palindrome_substrings(str) 

  substrings(str).select {|word| palindrome?(word)&&word.length>1  }
 
end




