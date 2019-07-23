def reverser(str,&prc)
 prc.call(str.reverse)
end

def word_changer(sent,&prc)
 words=sent.split(" ")
 new_arr=words.map do |word|
  prc.call(word)
 end
 new_arr.join(" ")
end

def greater_proc_value(num,prc1,prc2)

 [prc1.call(num),prc2.call(num)].max

end

def and_selector (arr,prc1,prc2)

    arr.select{|el| prc1.call(el)&& prc2.call(el)}

end

def alternating_mapper(arr,prc1,prc2)
    new_arr=[]
  arr.each_with_index do |el,i|
    if i.even?
        new_arr<<prc1.call(el)
    else
        new_arr<<prc2.call(el)
    end
  end
  new_arr

end



