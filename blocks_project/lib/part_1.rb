def select_even_nums(arr)
 arr.select(&:even?) 
end

def reject_puppies(arr)
arr.reject{|hash| hash["age"]<3}
end


def count_positive_subarrays(arr)
    arr.count{|subarr| subarr.sum>0}

end

def aba_translate(str)
 vol="aioue"
 new_str=""
    str.each_char do |ch|
        if vol.include?(ch)
         new_str<<ch+"b"+ ch
        else 
         new_str<<ch
        end
    end
  new_str
end
 def aba_array(arr)
  arr.map do |el|
    aba_translate(el)
  end
 end